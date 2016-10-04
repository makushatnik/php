<?php

use yii\db\Migration;

class m161001_213324_init_countries extends Migration
{
    public function up()
    {
        $this->createTable(
            'countries',
            [
                'code' => 'char(2) not null primary key',
                'name' => 'char(52)',
                'population' => 'int(11) not null default 0'
            ],
            'ENGINE=InnoDB'
        );
    }

    public function down()
    {
        $this->dropTable('countries');
    }
}
