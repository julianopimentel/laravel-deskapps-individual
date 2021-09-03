<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;


class BaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table(config::get('database.connections.tenant.schema').'.config_system')->insert([
            'name' => 'DeskApps',
            'timezone' => 'America/Manaus',
            'c' => 'R$',
            'obg_last_name' => '1',
        ]);
        
        DB::table(config::get('database.connections.tenant.schema').'.config_meta')->insert([
            'ano' => date('Y'),
        ]);

        DB::table(config::get('database.connections.tenant.schema').'.config_email')->insert([
            'created_at' => date('Y/m/d'),
        ]);

        DB::table(config::get('database.connections.tenant.schema').'.roles')->insert([
            'name' => 'Admin',
            'add_people' => '1',
			'edit_people' => '1',
            'view_people' => '1',
            'delete_people' => '1',
            //precadastro
            'edit_precadastro' => '1',
            'view_precadastro' => '1',
            //grupo
			'add_group' => '1',
            'add_group_people' => '1',
            'edit_group' => '1',
            'view_group' => '1',
            'delete_group' => '1',
            'delete_group_group' => '1',
            //recado
			'add_message' => '1',
            'edit_message' => '1',
            'view_message' => '1',
            'delete_message' => '1',
            //financeiro
			'add_entrada_financial' => '1',
            'add_retirada_financial' => '1',
            'edit_financial' => '1',
            'view_financial' => '1',
            'delete_financial' => '1',
            //calendar
            'add_calendar' => '1',
            'edit_calendar' => '1',
            'view_calendar' => '1',
			'delete_calendar' => '1',
            //home
            'home_financeiro' => '1',
            'home_financeiro_valores' => '1',
            'home_grupo' => '1',
            'home_social' => '1',
            //dash
            'view_periodo' => '1',
			'view_dash' => '1',
			'view_detail' => '1',
			'view_resumo_financeiro' => '1',
            //settings
            'settings_general' => '1',
			'settings_email' => '1',
			'settings_meta' => '1',
			'settings_social' => '1',
            'settings_roles' => '1',
        ]);

        DB::table(config::get('database.connections.tenant.schema').'.roles')->insert([
            'name' => 'Membro',
            'add_people' => '0',
			'edit_people' => '0',
            'view_people' => '0',
            'delete_people' => '0',
            //precadastro
            'edit_precadastro' => '0',
            'view_precadastro' => '0',
            //grupo
			'add_group' => '0',
            'add_group_people' => '0',
            'edit_group' => '0',
            'view_group' => '0',
            'delete_group' => '0',
            'delete_group_group' => '0',
            //recado
			'add_message' => '0',
            'edit_message' => '0',
            'view_message' => '0',
            'delete_message' => '0',
            //financeiro
			'add_entrada_financial' => '0',
            'add_retirada_financial' => '0',
            'edit_financial' => '0',
            'view_financial' => '0',
            'delete_financial' => '0',
            //calendar
            'add_calendar' => '0',
            'edit_calendar' => '0',
            'view_calendar' => '0',
			'delete_calendar' => '0',
            //home
            'home_financeiro' => '1',
            'home_financeiro_valores' => '1',
            'home_grupo' => '1',
            'home_social' => '1',
            //dash
            'view_periodo' => '0',
			'view_dash' => '0',
			'view_detail' => '0',
			'view_resumo_financeiro' => '0',
            //settings
            'settings_general' => '0',
			'settings_email' => '0',
			'settings_meta' => '0',
			'settings_social' => '0',
            'settings_roles' => '0',
        ]);

        DB::table(config::get('database.connections.tenant.schema').'.config_social')->insert([
            'created_at' => date('Y/m/d'),
        ]);
    }
}