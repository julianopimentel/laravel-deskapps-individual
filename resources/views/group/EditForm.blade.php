@if ($appPermissao->edit_group == true)
@extends('layouts.base')
@section('content')
<div class="container-fluid">
            <div class="fade-in">
              <div class="row">
                <div class="col-sm-12">
                  <div class="card">
                    <div class="card-header"><strong>Dados do grupo</strong> <small>Pessoa responsável</small></div>
                    <div class="card-body">
                        <form method="POST" action="{{ route('group.edit',$group->id) }}">
                            @csrf
                            @method('PUT')
                            {!! csrf_field() !!}
                      <div class="row">
                        <div class="col-sm-12">
                          <div class="form-group">
                            <label for="name">Nome</label>
                            <input class="form-control" id='name_group' name='name_group' value="{{ $group->name_group }}" type="text" placeholder="Nome do grupo">
                          </div>
                        </div>
                      </div>
                      <!-- /.row-->
                      <div class="row">
                        <div class="col-sm-6">
                          <div class="form-group">
                            <label for="ccnumber">Tipo</label>
                            <input class="form-control" id='tipo' name="tipo" value="{{ $group->type }}" type="text" placeholder="Tipo de grupo">
                          </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                              <label for="ccnumber">Ativo</label>
                              <select class="form-control" id='status_id' name="status_id">
                                @foreach($statuses as $status)
                                @if( $status->id == $group->status_id )
                                    <option value="{{ $status->id }}" selected="true">{{ $status->name }}</option>
                                @else
                                    <option value="{{ $status->id }}">{{ $status->name }}</option>
                                @endif
                                @endforeach
                            </select>
                            </div>
                          </div>
                      </div>
                      <!-- /.row-->
                      <div class="row">
                        <div class="col-sm-12">
                          <label for="ccyear">Responsável</label>
                          <div class="form-group">
                            <select class="itemName form-control" id="itemName" name="itemName"></select>
                        </div>
                        </div>
                      </div>

                      <div class="row">
                        <div class="col-sm-12">
                        <label for="ccmonth">Observação</label>
                        <textarea class="form-control"  id='note'  name="note" rows="3" placeholder="Content..">{{$group->note}}</textarea>
                      </div>
                    </div>
                    <br>
                      <button class="btn btn-primary" type="submit">Save</button>
                      <a class="btn btn-dark" href="{{ route('group.index') }}">Return</a>
                    </form>
                    </div>
                  </div>
                                        <!-- /.row-->
                  </div>  

                <!-- /.col-->
              </div>
              <!-- /.row-->
            </div>
          </div>

          <script type="text/javascript">
            $('.itemName').select2({
              placeholder: 'Select an item',
              
              ajax: {
                url: '/select2-autocomplete-people',
                dataType: 'json',
                delay: 250,
                processResults: function (data) {
                  return {
                    results:  $.map(data, function (item) {
                          return {
                              text: item.name,
                              id: item.id
                          }
                      })
                  };
                },
                cache: true
              }
            });
            </script>
    <script>
        $("#name_group").on("input", function() {
            $(this).val($(this).val().toUpperCase());
        });
    </script>
@endsection

@section('javascript')

@endsection
@else
@include('errors.redirecionar')
@endif
