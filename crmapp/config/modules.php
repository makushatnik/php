<?php

$directory = __DIR__.'/../modules';
$cachedConfig = __DIR__.'/../runtime/modules.config.php';

if (file_exists($cachedConfig)) return require_once($cachedConfig);
else {
	$response = [];
	foreach (new Iterator(new DirectoryIterator($directory)) as $filename) {
		if ($filename.isDot() || strpos($filename->getFileName(),".") !== false) continue;

		$path = $filename->getPathname();
		if (file_exists($path.'/config/main.php')) {
			$config = require($path.'/config/main.php');
			$module = ['class' => 'app\\modules\\'.$filename->getFileName.'\Module'];
			foreach ($config as $k => $v) {
				$module[$k] = $v;
			}
			$response[$filename->getFileName] = $module;
		} else {
			$response[$filename->getFileName] = 'app\\modules\\'.$filename->getFileName.'\Module';
		}
	}

	$encoded = serialize($response);
	file_put_contents($cachedConfig, '<?php return unserialize(\''.$encoded.'\');');

	return $response;
}