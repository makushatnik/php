<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model app\models\LoginForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = 'Register';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-register">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>Please fill out the following fields to register:</p>

    <?php $form = ActiveForm::begin([
        'id' => 'register-form',
        'options' => ['class' => 'form-horizontal'],
        'fieldConfig' => [
            'template' => "{label}\n<div class=\"col-lg-3\">{input}</div>\n<div class=\"col-lg-8\">{error}</div>",
            'labelOptions' => ['class' => 'col-lg-1 control-label'],
        ],
    ]); ?>

        <?= $form->field($model, 'username')->textInput(['autofocus' => true]) ?>

        <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'password')->passwordInput(['maxlength' => true])->hint('4 characters minimum') ?>
        <?= $form->field($model, 'password2')->passwordInput(['maxlength' => true])->hint('4 characters minimum') ?>

        <?= $form->field($model, 'rememberMe')->checkbox([
            'template' => "<div class=\"col-lg-offset-1 col-lg-3\">{input} {label}</div>\n<div class=\"col-lg-8\">{error}</div>",
        ]) ?>

        <div class="form-group">
            <div class="col-lg-offset-1 col-lg-11">
                <?= Html::submitButton('Register', ['class' => 'btn btn-primary', 'name' => 'register-button']) ?>
            </div>
        </div>

    <?php ActiveForm::end(); ?>

</div>
