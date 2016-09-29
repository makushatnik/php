<?php

use yii\db\Migration;
use yii\base\InvalidConfigException;

class m160929_145303_init_rbac_tables extends Migration
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
        // $authManager = $this->getAuthManager();
        // $this->db = $authManager->db;

        // $this->dropTable($authManager->assignmentTable);
        // $this->dropTable($authManager->itemChildTable);
        // $this->dropTable($authManager->itemTable);
        // $this->dropTable($authManager->ruleTable);

        $this->dropTable('auth_assignment');
        $this->dropTable('auth_item_child');
        $this->dropTable('auth_item');
        $this->dropTable('auth_rule');
    }
}
