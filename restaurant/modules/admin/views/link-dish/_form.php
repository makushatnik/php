<?php

use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use yii\bootstrap\ActiveForm;
use app\models\dishes\Dish;
use app\models\dishes\Ingredient;

/* @var $this yii\web\View */
/* @var $model app\models\dishes\DishRecord */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="dish-record-form">

    <?php $form = ActiveForm::begin(['layout' => 'horizontal']); ?>

    <?= $form->field($model, 'ingredient_id')->dropDownList(ArrayHelper::map(
    	Ingredient::find()->where(['<>', 'hidden', 1])->all(), 'id', 'name'
    )) ?>

    <?= $form->field($model, 'dish_id')->dropDownList(ArrayHelper::map(
    	Dish::find()->where(['<>', 'hidden', 1])->all(), 'id', 'name'
    )) ?>

    <?= $form->field($model, 'quantity')->textInput(['value' => 1]) ?>

    <?= $form->field($model, 'measure')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>