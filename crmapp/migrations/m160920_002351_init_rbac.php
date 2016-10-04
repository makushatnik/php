<?php
use Yii;
use yii\db\Migration;
use yii\base\InvalidConfigException;

class m160920_002351_init_rbac extends Migration
{
    protected function getAuthManager()
    {
        $authManager = Yii::$app->getAuthManager();
        if (!$authManager instanceof DbManager) {
            throw new InvalidConfigException('You should configure "authManager" component to use database before executing this migration.');
        }
        return $authManager;
    }

    public function up()
    {
        $this->execute(
                file_get_contents(Yii::getAlias('@yii/rbac/migrations/schema-mysql.sql'))
            );
    }

    public function down()
    {
        $authManager = $this->getAuthManager();
        //$this->db = $authManager->db;

        $this->dropTable($authManager->assignmentTable);
        $this->dropTable($authManager->itemChildTable);
        $this->dropTable($authManager->itemTable);
        $this->dropTable($authManager->ruleTable);
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
