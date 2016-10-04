<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;
use yii\helpers\VarDumper;
use yii\web\Controller;
use yii\web\HttpException;
use app\models\EntryForm;
use app\models\LoginForm;
use app\models\ContactForm;
use app\models\UserForm;

class SiteController extends AppController
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['login','logout','register'],
                'rules' => [
                    [
                        'actions' => ['login','register'],
                        'allow' => true,
                        'roles' => ['?']
                    ],
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
            'accessSecure' => [
                'class' => AccessControl::className(),
                'only' => ['secure'],
                'rules' => [
                    [
                        'roles' => ['admin'],
                        'allow' => true
                    ]
                ],
                'denyCallback' => function($rule, $action) {
                    if (Yii::$app->user->isGuest) {
                        Yii::$app->session->setFlash('warning', 'You must be authenticated to access this page');
                        return $this->redirect('login-form');
                    } else {
                        throw new HttpException('403',"You are not allowed to access this page");
                    }
                }
            ]
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('homepage');
		//return 'Our CRM';
    }

    /**
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }
        return $this->render('login', [
            'model' => $model,
        ]);
    }

    public function actionLoginForm()
    {
        $model = new UserForm(['scenario' => 'login']);

        if ($model->load(Yii::$app->request->post())) {
            if ($model->login()) return $this->redirect('secure');
        }

        return $this->render('forms/login_form', [
            'model' => $model,
        ]);
    }

    public function actionRegisterForm()
    {
        $model = new UserForm(['scenario' => 'register']);

        if ($model->load(Yii::$app->request->post())) {
            if ($model->validate()) {
                // form inputs are valid, do something here
                return;
            }
        }

        return $this->render('forms/register_form', [
            'model' => $model,
        ]);
    }

    public function actionSecure()
    {
        echo "<pre>";
        VarDumper::dump(Yii::$app->user->identity->attributes);
        echo "</pre>";
    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    /**
     * Displays contact page.
     *
     * @return string
     */
    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['adminEmail'])) {
            Yii::$app->session->setFlash('contactFormSubmitted');

            return $this->refresh();
        }
        return $this->render('contact', [
            'model' => $model,
        ]);
    }

    /**
     * Displays about page.
     *
     * @return string
     */
    public function actionAbout()
    {
        return $this->render('about');
    }

    public function actionDocs() {
        return $this->render('docindex.md');
    }

    public function actionEntry() {
        $model = new EntryForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            return $this->render('entry-confirm', compact('model'));
        }
        return $this->render('entry', compact('model'));
    }
}
