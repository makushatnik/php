<?php
use app\models\user\UserRecord;
use \Codeception\Test\Unit;

class RoleHierarchyTest extends Unit
{
    /**
     * @var \FunctionalTester
     */
    // protected $tester;

    /** @var yii\web\User */
    private $user;

    protected function _before()
    {
        $this->user = Yii::$app->user;
    }

    protected function _after()
    {
        $this->user->logout();
    }

    // // tests
    public function defaultRoleIsGuest() {
        $this->assertFalse($this->user->can('admin'));
        $this->assertFalse($this->user->can('manager'));
        $this->assertFalse($this->user->can('user'));
        $this->assertTrue($this->user->can('quest'));
    }

    public function PredefinedUserRoles() {
        return [
            ['admin',   ['admin' => true, 'manager' => true, 'user' => true, quest => true]],
            ['manager', ['admin' => false, 'manager' => true, 'user' => true, quest => true]],
            ['user', ['admin' => false, 'manager' => false, 'user' => true, quest => true]]
        ];
    }

    public function PredefinedUserHasProperRoles($username, $rbac) {
        $identity = UserRecord::findOne(compact($username));
        $this->user->login($identity);
        foreach ($rbac as $role => $allowed) {
            $this->assertEquals($allowed, $this->user->can($role));
        }
    }
}