<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\dishes\DishRecord */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Calculations', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="dish-record-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <a href="<?= Url::to(['dish/view', 'id' => $model->id]) ?>">
        <?= Html::img("@web/img/dish/{$model->img_url}", ['alt' => $model->name]) ?>
    </a>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
        ],
    ]) ?>

    <?php if(count($linkDishes) > 0): ?>
        <table class="table">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Quantity</th>
                    <th>Measure</th>
                </tr>
            </thead>
            <tbody>
            <?php foreach($linkDishes as $link): ?>
                <tr>
                    <td><?= $link['name'] ?></td>
                    <td><?= $link['quantity'] ?></td>
                    <td><?= $link['measure'] ?></td>
                </tr>
            <?php endforeach; ?>
            </tbody>
        </table>
    <?php endif; ?>

    <p>Комментарий:<br><i><?= $model->notes ?></i><p>

</div>
