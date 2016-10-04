<?php

use yii\db\Migration;

class m160921_215522_add_audit_fields_to_customer extends Migration
{
    public function up()
    {
        $this->addColumn('customer', 'created_at', 'integer');
        $this->addColumn('customer', 'created_by', 'integer');
        $this->addColumn('customer', 'updated_at', 'integer');
        $this->addColumn('customer', 'updated_by', 'integer');

        $this->addForeignKey('customer_created_by', 'customer', 'created_by', 'users', 'id');
        $this->addForeignKey('customer_updated_by', 'customer', 'updated_by', 'users', 'id');
    }

    public function down()
    {
        echo "m160921_215522_add_audit_fields_to_customer cannot be reverted.\n";

        return false;
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
