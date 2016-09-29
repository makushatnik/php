<?php

use yii\db\Migration;

class m160929_194725_add_img_column_dishes extends Migration
{
    public function up()
    {
        $this->addColumn('dishes', 'img_url', 'string');
        $this->addColumn('ingredients', 'img_url', 'string');
    }

    public function down()
    {
        $this->dropColumn('dishes', 'img_url');
        $this->dropColumn('ingredients', 'img_url');
    }
}
