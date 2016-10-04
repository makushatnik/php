<?php
use yii\helpers\Json;
use app\models\service\ServiceRecord;
use Codeception\Test\Unit;
use Symfony\Component\Yaml\Yaml;

class ServicesListApiTest extends Unit
{
    /**
     * @var \ApiTester
     */
    // protected $tester;

    const apiUrl = '/modules/api/services/';
    // protected function _before()
    // {
    // }

    // protected function _after()
    // {
    // }

    /** @test */
    public function ReturnsValidJson()
    {
        $this->ReturnsValidResp(1);
    }

    /** @test */
    public function ReturnsValidYaml() {
        $this->ReturnsValidResp(2);
    }

    /** @test */
    public function HasJsonEndpoint() {
        $this->HasEndpoint(1);
    }

    /** @test */
    public function HasYamlEndpoint() {
        $this->HasEndpoint(2);
    }

    /**
        @param $type - 1 - 'json', 2 - 'yaml', default - 0 (error)
    */
    private function HasEndpoint($type = 0) {
        $this->tester->sendGET($this::apiUrl.($type === 1 ? 'json' : $type === 2 ? 'yaml' : 'error'));
        $response = $this->tester->grabResponse();

        $this->tester->canSeeResponseCodeIs(200);
        $this->assertNotEquals('', $response);
    }

    /**
        @param $type - 1 - 'json', 2 - 'yaml', default - 0 (error)
    */
    private function ReturnsValidResp($type = 0)
    {
        $expectedData = [];
        $expectedData[0] = $this->registerService();
        $expectedData[1] = $this->registerService();

        $this->tester->sendGET($this::apiUrl.($type === 1 ? 'json' : $type === 2 ? 'yaml' : 'error'));

        $response = $this->tester->grabResponse();
        $responseData = $type == 1 ? Json::decode($response) : Yaml::parse($response);

        $this->assertInternalType('array', $responseData);
        $this->assertEquals($expectedData[0], $responseData[0]);
        $this->assertEquals($expectedData[1], $responseData[1]);
    }

    private function registerService() {
        $service = $this->imagineService();

        $service->save();
        
        return $service->attributes;
    }

    private function imagineService() {
        $faker = \Faker\Factory::create();

        $service = new ServiceRecord();
        $service->name = $faker->sentence($words = 3);
        $service->hourly_rate = $faker->randomNumber($digits = 2);

        return $service;
    }
}