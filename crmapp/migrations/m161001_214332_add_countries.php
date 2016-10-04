<?php
use yii\db\Migration;
use app\models\Country;

class m161001_214332_add_countries extends Migration
{
    public function up()
    {
        $this->createCountry('AU','Australia',18886000);
        $this->createCountry('BR','Brasil',170115000);
        $this->createCountry('CA','Canada',1147000);
        $this->createCountry('CN','China',1277558000);
        $this->createCountry('DE','Germany',82164700);
        $this->createCountry('FR','France',59225700);
        $this->createCountry('GB','United Kingdom',59623400);
        $this->createCountry('IN','India',1013662000);
        $this->createCountry('RU','Russia',146934000);
        $this->createCountry('US','United States',278357000);
    }

    public function down()
    {
        $this->delete('countries');
    }

    private function createCountry($code, $name, $population) {
        $rec = new Country();
        $rec->attributes = compact('code', 'name', 'population');
        $rec->save();
    }
}
