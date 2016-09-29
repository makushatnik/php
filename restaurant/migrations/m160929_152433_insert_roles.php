<?php

use yii\db\Migration;
use app\models\user\UserRecord;

class m160929_152433_insert_roles extends Migration
{
    private $rbac;

    private function createRole($roleName, $descr) {
        $user = $this->rbac->createRole($roleName);
        $user->description = $descr;
        $this->rbac->add($user);

        return $user;
    }

    private function assignRole($user, $username) {
        $this->rbac->assign(
            $user,
            UserRecord::findOne(['username' => $username])->id
        );
    }

    public function up()
    {
        $this->rbac = \Yii::$app->authManager;
        $quest = $this->createRole('quest', 'Nobody');
        $user = $this->createRole('user', 'Can use the query UI and nothing else');
        $manager = $this->createRole('manager', 'Can manage entities in database, but not users');
        $admin = $this->createRole('admin', 'Can do anything');

        $this->rbac->addChild($admin, $manager);
        $this->rbac->addChild($manager, $user);
        $this->rbac->addChild($user, $quest);

        $this->assignRole($user, 'user');
        $this->assignRole($manager, 'manager');
        $this->assignRole($admin, 'admin');
    }

    public function down()
    {
        $manager = \Yii::$app->authManager;
        $manager->removeAll();
    }
}
