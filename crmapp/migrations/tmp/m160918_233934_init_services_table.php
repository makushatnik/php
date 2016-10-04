<?php

use yii\db\Migration;

class m160918_233934_init_services_table extends Migration
{
    public function up()
    {
		$this->createTable(
			'service',
			[
				'id' => 'pk',
				'name' => 'string unique',
				'hourly_rate' => 'integer'
			]
		);
    }

    public function down()
    {
        $this->dropTable('services');

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
