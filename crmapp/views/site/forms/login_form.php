<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\bootstrap\Alert;
use app\components\EchoWidget;
use app\components\GreetingWidget;

/* @var $this yii\web\View */
/* @var $model app\models\UserForm */
/* @var $form ActiveForm */
?>
<div class="site-login">
    <?php if (Yii::$app->user->isGuest): ?>
        <div class="body-content">
            <?php if (Yii::$app->session->hasFlash('warning')): ?>
                <?= Alert::widget([
                    'options' => ['class' => 'alert alert-warning'],
                    'body' => Yii::$app->session->getFlash('warning')
                ]); ?>
            <?php endif; ?>


            <div class="site-forms-login_form">
                <?php $form = ActiveForm::begin([
                        'id' => 'login-form',
                        'options' => ['class' => 'form-horizontal']
                    ]); ?>

                    <?= $form->field($model, 'email')->input('email') ?>
                    <?= $form->field($model, 'password')->passwordInput() ?>
                
                    <div class="form-group">
                        <?= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
                    </div>
                <?php ActiveForm::end(); ?>

                <?= Alert::widget([
                    'options' => ['class' => 'alert-info'],
                    'body' => 'This is a bootstrap alert widget'
                ]); ?>
                <br>
                <?= GreetingWidget::widget(['name' => 'John']); ?>
                <br>
                <? EchoWidget::begin(); ?>
                    <?= "Echo this!" ?>
                <? EchoWidget::end(); ?>

            </div><!-- site-forms-login_form -->


        </div>
    <?php else: ?>
        <?= Alert::widget([
            'options' => ['class' => 'alert alert-info'],
            'body' => 'You are already logged in. To login as a different user, logout first'
        ]); ?>
    <?php endif; ?>
</div>
