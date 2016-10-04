<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\grid\ActionColumn;
use yii\bootstrap\ActiveForm;
use yii\data\ActiveDataProvider;

/* @var $this yii\web\View */
/* @var $model app\models\customer\CustomerRecord */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="customer-record-form">

    <?php $form = ActiveForm::begin(['layout' => 'horizontal']); ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'birth_date')->textInput() ?>

    <?= $form->field($model, 'notes')->textarea(['rows' => 6]) ?>

	<?php if (!$model->isNewRecord): ?>
		<h2>Phones</h2>
		<?= GridView::widget([
			'dataProvider' => new ActiveDataProvider([
				'query' => $model->getPhones(),
				'pagination' => false
			]),
			'columns' => [
				'number',
				[
					'class' => ActionColumn::className(),
					'controller' => 'phone',
					'header' => Html::a(
						'<i class="glyphicon glyphicon-plus"></i>&nbsp;Add New',
						['phone/create', 'relation_id' => $model->id]
					),
					'template' => '{update}{delete}'
				]
			]
		]);?>

		<h2>Addresses</h2>
		<?= GridView::widget([
			'dataProvider' => new ActiveDataProvider([
				'query' => $model->getAddresses(),
				'pagination' => false
			]),
			'columns' => [
				[
					'label' => 'Address',
					'value' => function($model) {
						return implode(', ',
							array_filter($model->getAttributes(['country','state','city','street','building','apartment']))
						);
					}
				],
				'purpose',
				[
					'class' => ActionColumn::className(),
					'controller' => 'address',
					'header' => Html::a(
						'<i class="glyphicon glyphicon-plus"></i>&nbsp;Add New',
						['address/create', 'relation_id' => $model->id]
					),
					'template' => '{update}{delete}'
				]
			]
		]);?>

		<h2>Emails</h2>
		<?= GridView::widget([
			'dataProvider' => new ActiveDataProvider([
				'query' => $model->getEmails(),
				'pagination' => false
			]),
			'columns' => [
				'address',
				'purpose',
				[
					'class' => ActionColumn::className(),
					'controller' => 'email',
					'header' => Html::a(
						'<i class="glyphicon glyphicon-plus"></i>&nbsp;Add New',
						['email/create', 'relation_id' => $model->id]
					),
					'template' => '{update}{delete}'
				]
			]
		]);?>
	<?php endif?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
