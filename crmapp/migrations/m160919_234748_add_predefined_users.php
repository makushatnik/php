<?php

use yii\db\Migration;
use app\models\user\UserRecord;

class m160919_234748_add_predefined_users extends Migration
{
    public function up()
    {
        $this->createUser('user','user');
        $this->createUser('admin','s3cret');
        $this->createUser('manager','manager');
    }

    public function down()
    {
        $this->delete('users');

        return true;
    }

    private function createUser($username, $password) {
        $user = new UserRecord();
        $user->attributes = compact('username', 'password');
        $user->save();
    }
}
