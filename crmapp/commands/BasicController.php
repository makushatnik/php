<?php

namespace app\commands;

use yii\helpers\Console;
use yii\console\Controller;

/**
* A basic controller for Yii2 Application
*/
class BasicController extends Controller
{
	/**
	* Outputs Hello, John!
	*/
    public function actionIndex()
    {
        echo "Hello John!";
        return 0;
    }

    /**
    * Outputs "$name lives in $city"
    * @param string $name - The name of the person
    * @param string $city - The city $name lives in
    * @return 0
    */
    public function actionLivesIn($name, $city="Chicago")
    {
    	echo "$name lives in $city";
    	return 0;
    }

    /**
    * Outputs each element of input array on a new line
    * @param array $arr - The comma separated list of elements
    * @return 0
    */
    public function actionList(array $arr)
    {
    	foreach ($arr as $k) {
    		echo "$k\n";
    	}
    	return 0;
    }

    /**
    * Returns successfully IF $shouldRun is set to any positive number greater than 0
    *
    * @param int $shouldRun
    * @return int
    */
    public function actionShouldRun($shouldRun = -1)
    {
    	if ((int)$shouldRun < 0) {
    		echo 'The $shouldRun argument must be an positive non-zero integer'."\n";
    		return 1;
    	}
    	return 0;
    }

    /**
    * Outputs text in bold and cyan
    * @return 0
    */
    public function actionColors()
    {
    	$this->stdout("Waiting on important things to happen...\n", Console::BOLD);
    	$yay = $this->ansiFormat('Yay!', Console::FG_CYAN);
    	echo "$yay! We're done!\n";
    	return 0;
    }
}
