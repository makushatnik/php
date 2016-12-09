<?php

use yii\db\Migration;

class m160929_121244_init_dishes_table extends Migration
{
    public function up()
    {
        $this->createTable(
            'dishes',
            [
                'id' => 'pk',
                'name' => 'string',
                'notes' => 'text',
                'hidden' => 'bool DEFAULT 0',
                'img_url' => 'string'
            ],
            'ENGINE=InnoDB'
        );
    }

    public function down()
    {
        $this->dropTable('dishes');
    }
}
