<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\UserForm */
/* @var $form ActiveForm */
?>
<div class="site-forms-register_form">

    <?php $form = ActiveForm::begin([
    		'id' => 'login-form',
    		'options' => ['class' => 'form-horizontal']
    	]); ?>

        <?= $form->field($model, 'email')->input('email') ?>
        <?= $form->field($model, 'password')->passwordInput() ?>
        <?= $form->field($model, 'name')->textInput()->hint('Please enter your name')->label('Your name') ?>
    
        <div class="form-group">
            <?= Html::submitButton(Yii::t('app', 'Submit'), ['class' => 'btn btn-primary']) ?>
        </div>
    <?php ActiveForm::end(); ?>

</div><!-- site-forms-register_form -->
