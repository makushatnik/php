<?php

use yii\db\Migration;
use app\models\User;

class m160929_145747_add_predefined_users extends Migration
{
    public function up()
    {
        $this->createUser('user','1234','user@example.com');
        $this->createUser('admin','s3cret','admin@example.com');
        $this->createUser('manager','5678','manager@example.com');
    }

    public function down()
    {
        $this->delete('users');
    }

    protected function createUser($username, $password, $email) {
        $user = new User();
        $user->attributes = compact('username', 'password', 'email');
        $user->save();
    }
}
