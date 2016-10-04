<?php

use yii\db\Migration;

class m160919_213930_add_auth_key_column_to_users extends Migration
{
    public function up()
    {
        $this->addColumn('users', 'auth_key', 'string UNIQUE');
    }

    public function down()
    {
        $this->dropColumn('users', 'auth_key');

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
