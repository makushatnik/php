<?php

use yii\db\Migration;

class m160929_115707_init_ingredients_table extends Migration
{
    public function up()
    {
        $this->createTable(
            'ingredients',
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
        $this->dropTable('ingredients');
    }
}
