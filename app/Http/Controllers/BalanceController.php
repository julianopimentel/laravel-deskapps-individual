<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests\ValidationMoneyFormRequest;
use App\Models\Balance;
use App\Models\Status;
use App\Models\People;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;
use App\Models\Historic;
use App\Models\Institution;
use App\Models\User;

class BalanceController extends Controller
{

    private $totalPagesPaginate = 12;

    public function index(Historic $historic)
    {
        $this->pegar_tenant();
        $historics = Historic::with('status')->with('statuspag') 
                    ->orderby('id','desc')
                    ->paginate(7);   
                    
        $types = $historic->type();  
        $conta = session()->get('key');
        $balance = Balance::where('account_id', $conta)->first();
        $amount = number_format($balance ? $balance->amount : 0, '2', ',', '.');
        return view('balance.index',compact('amount', 'historics', 'types'));
    }

    public function depositar()
    {
        $this->pegar_tenant();
        $peoples = People::all()->sortBy('name');
        $statuspag = Status::all()->where("type",'pagamento');
        $statusfinan = Status::all()->where("type",'financial')->where('class','entrada');
        return view('balance.depositar', ['peoples' => $peoples, 'statusfinan' => $statusfinan],compact('statuspag'));
    }
    
    //autocompleto pessoa
    public function dataAjax(Request $request)
    {
        $this->pegar_tenant();
        $data = People::select("id","name","email")
        ->orderby('name', 'asc')
        ->get();
        if($request->has('q')){
            $search = $request->q;
            $data = People::select("id","name","email")
                    ->where('name','LIKE',"%$search%")
                    ->orderby('name', 'asc')
                    ->get();
        }
        return response()->json($data);
    }


    public function depositStore(ValidationMoneyFormRequest $request)
    {
        $this->pegar_tenant();
        $conta = session()->get('key');
        $balance = Balance::where('account_id', $conta)->first()->firstOrCreate([]);
        $response = $balance->deposit($request->valor, $request->pag, $request->date_lancamento, $request->observacao, $request->tipo, $request->itemName);
        if ($response['success']) {
            return redirect('financial')
                ->with('success', $response['message']);
        }

        return redirect()
            ->back()
            ->with('error', $response['message']);
    }

    public function withdraw()
    {
        $this->pegar_tenant();
        $peoples = People::all()->sortBy('name');
        $statuspag = Status::all()->where("type",'pagamento');
        $statusfinan = Status::all()->where("type",'financial')->where('class','retira');
        return view('balance.withdraw', ['peoples' => $peoples, 'statusfinan' => $statusfinan],compact('statuspag'));

    }

    public function withdrawStore(ValidationMoneyFormRequest $request)
    {
        $this->pegar_tenant();
        $conta = session()->get('key');
        $balance = Balance::where('account_id', $conta)->first()->firstOrCreate([]);
        $response = $balance->withdraw($request->valor, $request->pag, $request->date_lancamento, $request->observacao, $request->tipo, $request->itemName);
        if ($response['success']) {
            return redirect('financial')
                ->with('success', $response['message']);
        }

        return redirect()
            ->back()
            ->with('error', $response['message']);
    }

    public function historic(Historic $historic)
    {
        $this->pegar_tenant();
        $historics = Historic::with('status')->with('statuspag')
                    ->orderby('id','desc')
                    ->paginate($this->totalPagesPaginate);   
                    
        $types = $historic->type();            
        $statuspag = Status::all()->where("type",'pagamento');
        $statusfinan = Status::all()->where("type",'financial');

        return view('balance.historics', compact('historics', 'types', 'statuspag', 'statusfinan'));
    }

    public function searchHistoric(Request $request, Historic $historic)
    {
        $this->pegar_tenant();
        $dataForm = $request->except('_token');
        $historics =  $historic->search($dataForm, $this->totalPagesPaginate);
        $types = $historic->type();

        $statuspag = Status::all()->where("type",'pagamento');
        $statusfinan = Status::all()->where("type",'financial');

        return view('balance.historics', compact('historics', 'types', 'dataForm', 'statuspag', 'statusfinan'));
    }

    public function show($id)
    {
        $this->pegar_tenant();
        $codigo = session()->get('key');
        $historics = Historic::find($id);
        $account = Institution::find($codigo);

        $people = People::find($historics->user_id_transaction);

        $statuspag = Status::find($historics->pag);
        $statusfinan = Status::find($historics->tipo);

        $usuario = User::find($historics->user_id);

        return view('balance.detail', compact( 'historics', 'account', 'people', 'statuspag', 'statusfinan', 'usuario'));
    }
}