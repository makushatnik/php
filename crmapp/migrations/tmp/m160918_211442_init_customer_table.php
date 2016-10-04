<?php

use yii\db\Migration;

class m160918_211442_init_customer_table extends Migration
{
    public function up()
    {
		$this->createTable(
			'customer',
			[
				'id' => 'pk',
				'name' => 'string',
				'birth_date' => 'date',
				'notes' => 'text'
			],
			'ENGINE=InnoDB'
		);
    }

    public function down()
    {
        $this->dropTable('customer');

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
