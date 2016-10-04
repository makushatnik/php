<?php

use yii\db\Migration;

class m160922_192452_init_email_table extends Migration
{
    public function up()
    {
        $this->createTable(
            'email',
            [
                'id' => 'pk',
                'purpose' => 'string',
                'address' => 'string',
                'customer_id' => 'int not null'
            ]
        );
        $this->addForeignKey('customer_email_fk', 'email', 'customer_id', 'customer', 'id');
    }

    public function down()
    {
        $this->dropForeignKey('customer_email_fk', 'email');
        $this->dropTable('email');

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
