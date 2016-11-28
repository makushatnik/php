<?php

use yii\helpers\Html;
//use yii\helpers\ArrayHelper;
use yii\widgets\ActiveForm;
use app\models\Category;
use app\components\MenuWidget;


/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Category */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="category-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

    <!--?= $form->field($model, 'parent_id')->dropDownList(ArrayHelper::map(
    	Category::find()->where(['<>', 'id', $model->id])->all(), 'id', 'name'
    )) ?-->

    <div class="form-group field-category-parent_id has-success">
        <label class="control-label" for="category-parent_id">Родитель</label>
        <select id="category-parent_id" class="form-control" name="Category[parent_id]">
            <option value="0">Главная</option>
            <?= MenuWidget::widget(['tpl' => 'select', 'model' => $model])?>
        </select>
    </div>

    <?= $form->field($model, 'keywords')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'description')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
