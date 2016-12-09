<?php

use yii\helpers\Html;
use yii\helpers\Url;
//use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\dishes\DishSearchModel */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Calculations';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="linkdish-record-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <p>
        <?= Html::a('Create Calculation', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th>#</th>
				<th>
					<a href="<?= Url::to(['link-dish/index', 'sort' => 'img_url']) ?>" data-sort="img_url">Img Url</a>
				</th>
				<th>
					<a href="<?= Url::to(['link-dish/index', 'sort' => 'name']) ?>" data-sort="name">Name</a>
				</th>
				<th>
					<a href="<?= Url::to(['link-dish/index', 'sort' => 'id']) ?>" data-sort="id">ID</a>
				</th>
				<th>
					<a href="<?= Url::to(['link-dish/index', 'sort' => 'ingredients']) ?>" data-sort="ingredients">
						Contains
					</a>
				</th>
				<th class="action-column">
					<?= Html::a(
	                    '<i class="glyphicon glyphicon-plus"></i>&nbsp;Add New',
	                    ['link-dish/create']
                    )?>
				</th>
			</tr>
			<tr id="w0-filters" class="filters">
				<td>&nbsp;</td>
				<td><input type="text" class="form-control" name="DishSearch[img_url]"></td>
				<td><input type="text" class="form-control" name="DishSearch[name]"></td>
				<td><input type="text" class="form-control" name="DishSearch[notes]"></td>
				<td><input type="text" class="form-control" name="DishSearch[id]"></td><td>&nbsp;</td>
			</tr>
		</thead>
		<tbody>

	    <?php foreach($dishes as $dish): ?>
			<tr class="text-center">
				<td>&nbsp;</td>
				<td class="valign">
					<a href="<?= Url::to(['dish/view', 'id' => $dish['id']]) ?>">
				        <?= Html::img("@web/img/dish/{$dish['img_url']}", [
				        	'alt' => $dish['name'],
				        	'width' => 100,
				        	'height' => 100
				        ]) ?>
				    </a>
				</td>
				<td class="valign dish-name">
					<a href="<?= Url::to(['dish/view', 'id' => $dish['id']]) ?>">
						<?= $dish['name'] ?>
					</a>
				</td>
				<td class="valign"><?= $dish['id'] ?></td>
				<td class="valign">
					<ul>
						<?php foreach($linkDishes as $link): ?>
							<?php if($link['dish_id'] == $dish['id']): ?>
						<li>
							<?= $link['name'] ?> - <?= $link['quantity'] ?> (<?= $link['measure'] ?>)
						</li>
							<?php endif; ?>
						<?php endforeach; ?>
					</ul>
				</td>
				<td class="valign">
					<a href="<?= Url::to(['link-dish/view', 'id' => $dish['id']]) ?>" title="View" aria-label="View" data-pjax="0"><span class="glyphicon glyphicon-eye-open"></span></a> <a href="<?= Url::to(['link-dish/update', 'id' => $dish['id']]) ?>" title="Update" aria-label="Update" data-pjax="0"><span class="glyphicon glyphicon-pencil"></span></a> <a href="<?= Url::to(['link-dish/delete-all', 'id' => $dish['id']]) ?>" title="Delete" aria-label="Delete" data-confirm="Are you sure you want to delete this item?" data-method="post" data-pjax="0"><span class="glyphicon glyphicon-trash"></span></a>
				</td>
			</tr>
	    <?php endforeach; ?>

    	</tbody>
	</table>
</div>