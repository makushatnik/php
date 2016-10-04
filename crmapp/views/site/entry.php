<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
?>
<?php $form = ActiveForm::begin(); ?>
	<?= $form->field($model, 'name') ?>
	<?= $form->field($model, 'email') ?>
	<?= $form->field($model, 'email')->checkbox(['label' => 'My First Checkbox']) ?>
	<div class="form-group">
		<?= Html::submitButton('Send', ['class' => 'btn btn-primary']); ?>
	</div>
<?php ActiveForm::end(); ?>