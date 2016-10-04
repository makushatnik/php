<?php

use yii\db\Migration;

class m161002_154314_add_email_to_users extends Migration
{
    public function up()
    {
        $this->addColumn('users','email','char(50)');
        $this->addColumn('users','first_name','char(30)');
        $this->addColumn('users','last_name','char(30)');
        //$this->addColumn('users','role_id','int');
        $this->addColumn('users','created_at','int');
        $this->addColumn('users','updated_at','int');

        // $this->createTable(
        // 	'roles'
        // 	[
        // 		'id' => 'pk',
        // 		'name' => 'char(30)'
        // 	],
        // 	'ENGINE=InnoDB'
        // );

        // $this->addForeignKey('users_roles_fk','users','role_id','roles','id');
    }

    public function down()
    {
        //$this->dropForeignKey('users_roles_fk');

        $this->dropColumn('users','email');
        $this->dropColumn('users','first_name');
        $this->dropColumn('users','last_name');
        //$this->dropColumn('users','role_id');
        $this->dropColumn('users','created_at');
        $this->dropColumn('users','updated_at');

        //$this->dropTable('roles');
    }
}
