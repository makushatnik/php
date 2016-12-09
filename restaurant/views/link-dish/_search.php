<?php

use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use yii\widgets\ActiveForm;
use app\models\dishes\Ingredient;

$ingrs = ['-1' => 'Не выбрано'];
$ingrs = array_merge($ingrs, ArrayHelper::map(
    Ingredient::find()->where(['<>', 'hidden', 1])->all(), 'id', 'name'
));
?>

<div class="dish-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'post',
    ]); ?>

    <?= $form->field($model, 'param1')->dropDownList($ingrs) ?>

    <?= $form->field($model, 'param2')->dropDownList($ingrs) ?>

    <?= $form->field($model, 'param3')->dropDownList($ingrs) ?>

    <?= $form->field($model, 'param4')->dropDownList($ingrs) ?>

    <?= $form->field($model, 'param5')->dropDownList($ingrs) ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
