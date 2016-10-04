<?php

use yii\db\Migration;

class m160919_185128_init_users_table extends Migration
{
    public function up()
    {
        $this->createTable(
                'users',
                [
                    'id' => 'pk',
                    'username' => 'string UNIQUE',
                    'password' => 'string'
                ]
            );
    }

    public function down()
    {
        $this->dropTable('users');

        return true;
    }

    /*
    // Use safeUp/safeDown to run migration code within a transaction
    public function safeUp()
    {
    }

    public function safeDown()
    {
    }
    */
}
