<?php

namespace app\controllers;

use Yii;
use app\models\customer\EmailRecord;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * EmailController implements the CRUD actions for EmailRecord model.
 */
class EmailController extends SubmodelController
{
    public $recordClass = 'app\models\customer\EmailRecord';
}
