<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\dishes\DishSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Calculations';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="dish-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php echo $this->render('_search', ['model' => $searchModel]); ?>

    <?php if(is_array($dishes)): ?>
        <table class="table table-responsive">
            <tr>
                <th width="5%">#</th>
                <th width="10%">Image</th>
                <th width="15%">Dish</th>
                <th width="40%">Notes</th>
                <th width="30%">Contains</th>
            </tr>
        <?php foreach($dishes as $dish): ?>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <a href="<?= Url::to(['dish/view', 'id' => $dish['id']]) ?>">
                        <?= Html::img("@web/img/dish/{$dish['img_url']}", [
                            'alt' => $dish['name'],
                            'width' => 100,
                            'height' => 100
                        ]) ?>
                    </a>
                </td>
                <td>
                    <a href="<?= Url::to(['dish/view', 'id' => $dish['id']]) ?>">
                        <?= $dish['name'] ?>
                    </a>
                </td>
                <td><?= $dish['notes'] ?></td>
                <td>
                    <ul>
                    <?php foreach($linkDishes as $link): ?>
                        <?php if($dish['id'] == $link['dish_id']): ?>
                        <li>
                            <?= $link['name'] ?> - <?= $link['quantity'] ?> (<?= $link['measure'] ?>)
                        </li>
                        <?php endif; ?>
                    <?php endforeach; ?>
                    </ul>
                </td>
            </tr>
        <?php endforeach; ?>
        </table>
    <?php else: ?>
        <div class="text-center" style="font-weight: bold;"><?= $dishes ?></div>
    <?php endif; ?>
</div>
