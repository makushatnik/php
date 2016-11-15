<li>
	<!--h4 class="panel-title"-->
		<?php if (isset($category['childs'])): ?>
		<a data-toggle="collapse" data-parent="#accordian"
			href="<?= \yii\helpers\Url::to(['category/view', 'id' => $category['id']]) ?>">
		<?php else: ?>
		<a href="<?= \yii\helpers\Url::to(['category/view', 'id' => $category['id']]) ?>">
		<?php endif; ?>
			<?= $category['name']; ?>
			<?php if (isset($category['childs'])): ?>
				<span class="badge pull-right"><i class="fa fa-plus"></i></span>
			<?php endif; ?>
		</a>
	<!--/h4-->
	<?php if (isset($category['childs'])): ?>
		<ul>
			<?= $this->getMenuHtml($category['childs']) ?>
		</ul>
	<?php endif; ?>
</li>