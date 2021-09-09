<?php

namespace App\Http\Controllers;

use App\Models\Auditoria;
use App\Models\Auditoria_global;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;


class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    protected function formatValidationErrors(Validator $validator)
    {
        return $validator->errors()->all();

    }
    //global tenant set
    public function pegar_tenant()
    {
        Config::set('database.connections.tenant.schema', session()->get('conexao')); 
    }
    
    public function adicionar_log($status, $type, $json)
    {
        $auditoria = Auditoria::firstOrCreate([]);
        $auditoria->log($status, $type, $json);
    }
    public function adicionar_log_global($status, $type, $json)
    {
        $auditoria = Auditoria_global::firstOrCreate([]);
        $auditoria->log_global($status, $type, $json);
    }
}
