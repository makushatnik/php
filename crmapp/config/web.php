<?php

$params = require(__DIR__ . '/env/'.APPLICATION_ENV.'/params.php');

$config = [
    'id' => 'crmapp',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'components' => [
        'request' => [
            'cookieValidationKey' => '9r_9taWbJ2w-s2r7xvx6Zchu-Per6BTf',
			'baseUrl' => '',
            'parsers' => [
                'application/json' => 'yii\web\JsonParser'
            ]
        ],
        'response' => [
            'formatters' => [
                'yaml' => [
                    'class' => 'app\utils\YamlResponseFormatter'
                ]
            ],
            'format' => yii\web\Response::FORMAT_JSON,
            'charset' => 'UTF-8',
            'on beforeSend' => function($event) {
                $response = $event->sender;
                if ($response->data !== null) {
                    $return = ($response->statusCode == 200 ? $response->data : $response->data['message']);

                    $response->data = [
                        'success' => ($response->statusCode === 200),
                        'status' => $response->statusCode,
                        'response' => $return
                    ];
                }
            }
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'user' => [
            'identityClass' => 'app\models\user\UserRecord',
            'enableAutoLogin' => true,
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            'useFileTransport' => false,
            'messageConfig' => [
                'charset' => 'UTF-8',
                'from' => 'noreply@crmapp.me'
            ],
            'transport' => [
                'class' => 'Swift_MailTransport'
            ]
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'db' => require(__DIR__ . '/env/'.APPLICATION_ENV.'/db.php'),
        'view' => [
            'renderers' => [
                'md' => [
                    'class' => 'app\utils\MarkdownRenderer'
                ]
            ],
            'theme' => [
                'class' => yii\base\Theme::className(),
                'basePath' => '@app/themes/snovy'
            ]
        ],
        'urlManager' => [
            'enablePrettyUrl' => true,
            'enableStrictParsing' => true,
            'showScriptName' => false,
            'rules' => [
                // [
                //     'class' => 'app\utils\UsernameUrlRule'
                // ],

				//'<action>' => 'post/<action>',
            
				// 'post/<id:\d+>' => 'post/view',
				// 'post/page/<page:\d+>' => 'post/index',
				// 'post/' => 'post/index',
    //             'customer/<id:\d+>' => 'customer-records/view',
                [
                    'class' => 'yii\rest\UrlRule',
                    'controller' => 'api/users'
                ],
                [
                    'class' => 'yii\web\UrlRule',
                    'pattern' => 'api/default/<action>',
                    'route' => 'api/default/index'
                ]
            ],
        ],
        'authManager' => [
            'class' => 'yii\rbac\DbManager',
            'defaultRoles' => ['quest']
        ],
    ],
    'params' => $params,
	'modules' => [
        'firstLevel' => [
            'class' => 'app\utils\FirstModule',
            'modules' => [
                'secondLevel' => 'app\utils\SecondModule'
            ]
        ],
        'api' => [
            'class' => 'app\modules\api\ApiModule'
        ],
        'admin' => [
            'class' => 'app\modules\admin\Module',
        ]
	],
	'extensions' => require(__DIR__ . '/../vendor/yiisoft/extensions.php')
];

//if (YII_ENV_DEV) {
if (APPLICATION_ENV == "dev") {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = [
        'class' => 'yii\debug\Module',
    ];

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
        'class' => 'yii\gii\Module',
        'allowedIPs' => ['*']
    ];
}

return $config;
