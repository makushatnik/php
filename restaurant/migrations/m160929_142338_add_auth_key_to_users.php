<?php

use yii\db\Migration;

class m160929_142338_add_auth_key_to_users extends Migration
{
    public function up()
    {
        $this->addColumn('users', 'auth_key', 'string UNIQUE');
    }

    public function down()
    {
        $this->dropColumn('users', 'auth_key');
    }
}
