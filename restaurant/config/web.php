<?php

$params = require(__DIR__ . '/params.php');

$config = [
    'id' => 'restaurant',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'modules' => [
        'admin' => [
            'class' => 'app\modules\admin\AdminModule',
            'layout' => 'admin'
        ],
        'yii2images' => [
            'class' => 'rico\yii2images\Module',
            'imagesStorePath' => 'upload/store',
            'imagesCachePath' => 'upload/cache',
            'graphicsLibrary' => 'GD',
        ],
    ],
    'components' => [
        'request' => [
            'cookieValidationKey' => 'ylBZJxM614JYkI9VlU5fovpZWQpnPwfR',
            'baseUrl' => ''
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'user' => [
            'identityClass' => 'app\models\User',
            'enableAutoLogin' => true,
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        // 'security' => [
        //     'passwordHashStrategy' => 'password_hash'
        // ],
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
                'all_messages' => [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
                'problems' => [
                    'class' => 'yii\log\EmailTarget',
                    'levels' => ['error'],
                    'message' => [
                        'to' => 'makushatnik@yandex.ru'
                    ]
                ]
            ],
        ],
        'db' => require(__DIR__ . '/db.php'),
        
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
                'admin' => 'admin/default',
                '/profile/<id:[\d-]+>' => 'site/profile',
                '<action:(login|logout|about|register|contact|index)>' => 'site/<action>',
            ],
        ],
        'authManager' => [
            'class' => 'yii\rbac\DbManager',
            'defaultRoles' => ['quest']
        ],
    ],
    'params' => $params,
];

if (YII_ENV_DEV) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = [
        'class' => 'yii\debug\Module',
    ];

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
        'class' => 'yii\gii\Module',
    ];
}

return $config;
