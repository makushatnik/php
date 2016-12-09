<?php

use yii\db\Migration;

class m160929_135017_init_users_table extends Migration
{
    public function up()
    {
        $this->createTable(
            'users',
            [
                'id' => 'pk',
                'username' => 'string UNIQUE',
                'password' => 'string not null',
                'email' => 'string not null',
                'created_at' => 'int not null',
                'updated_at' => 'int not null',
                'auth_key' => 'string UNIQUE'
            ],
            'ENGINE=InnoDB'
        );
    }

    public function down()
    {
        $this->dropTable('users');
    }
}
