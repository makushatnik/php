<?php
namespace app\assets;

use yii\web\AssetBundle;
/**
* 
*/
class ApplicationUIAssetBundle extends AssetBundle
{
	public $sourcePath = '@app/assets/ui';
	public $css = [
        'css/main.css',
    ];
    public $js = [
    	'js/main.js'
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
        'app\assets\AuditColumnBundle'
    ];
}