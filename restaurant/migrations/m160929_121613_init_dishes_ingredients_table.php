<?php

use yii\db\Migration;

class m160929_121613_init_dishes_ingredients_table extends Migration
{
    public function up()
    {
        $this->createTable(
            'dishes_ingredients',
            [
                'dish_id' => 'int not null',
                'ingredient_id' => 'int not null',
                'quantity' => 'int default 1',
                'measure' => 'string'
            ],
            'ENGINE=InnoDB'
        );

        $this->addForeignKey('dishes_fk', 'dishes_ingredients', 'dish_id', 'dishes', 'id');
        $this->addForeignKey('ingredients_fk', 'dishes_ingredients', 'ingredient_id', 'ingredients', 'id');
    }

    public function down()
    {
        $this->dropForeignKey('dishes_fk', 'dishes_ingredients');
        $this->dropForeignKey('ingredients_fk', 'dishes_ingredients');
        $this->dropTable('dishes_ingredients');
    }
}
