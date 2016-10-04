<?php
use app\models\user\UserRecord;
use \yii\base\Security;

class PasswordHashingTest extends \Codeception\Test\Unit
{
    /**
     * @var \FunctionalTester
     */
    // protected $tester;

    // protected function _before()
    // {
    // }

    // protected function _after()
    // {
    // }

    // // tests
    // public function testMe()
    // {

    // }

    public function PasswordIsHashingWhenSavingUser() {
        $user = $this->imagineUserRecord();
        $pwd  = $user->password;
        $user->save();

        $saved = UserRecord::findOne($user->id);
        $security = new Security();
        $this->assertInstanceOf(get_class($user), $saved);
        $this->assertTrue(
                $security->validatePassword($pwd, $saved->password)
            )
    }

    public function PasswordIsNotRehashed() {
        $user = $this->imagineUserRecord();
        $user->save();

        $saved = UserRecord::findOne($user->id);
        $expected_hash = $saved->password;

        $saved->username = md5(time());
        $saved->save();

        $updated = UserRecord::findOne($user->id);
        
        $this->assertEquals($expected_hash, $saved->password);
        $this->assertEquals($expected_hash, $updated->password);
    }

    private function imagineUserRecord() {
        $faker = Faker\Factory::create();
        
        $user = new UserRecord();
        $user->username = $faker->word;
        $user->password = md5(time());
        return $user;
    }
}