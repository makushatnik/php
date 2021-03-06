<?php
namespace app\utils;

use yii\grid\DataColumn;
use yii\helpers\Html;
use app\assets\AuditColumnBundle;
use app\models\user\UserRecord;

class AuditColumn extends DataColumn
{
	public function init() {
		$this->label = $this->label ?:'Audit';
		//$this->attribute = $this->attribute ?: 'id';
		$this->content = [$this, 'makeAuditCellContent'];
		AuditColumnBundle::register($this->grid->view);
	}

	protected function makeAuditCellContent($model) {
		$id = $this->formatID($model);
		$audit = $this->makeAuditPopoverElement($this->getAuditValues($model));

		return sprintf('%s&nbsp;%s', $id, $audit);
	}

	protected function formatID($model) {
		return sprintf("%07d", $model->id);
	}

	protected function makeAuditPopoverElement($values) {
		return Html::tag(
				'span',
				'',
				[
					'class' => 'audit-toggler glyphicon glyphicon-list',
					'data-toggle' => 'popover',
					'data-html' => 'true',
					'data-title' => 'Audit',
					'data-content' => $this->makePopoverContent($values)
				]
			);
	}

	protected function makePopoverContent($values) {
		$formatter = function($pair) {
			return sprintf(
					'<div><strong>%s:</strong>&nbsp;%s</div>',
					$pair[0],
					$pair[1]
				);
		};

		$appender = function($accum, $value) {
			return $accum.$value;
		};

		return array_reduce(array_map($formatter, $values), $appender, "");
	}

	protected function getAuditValues($model) {
		return [
			[
				$model->getAttributeLabel('created_at'),
				date('d.m.Y', $model->created_at)
			],
			[
				$model->getAttributeLabel('created_by'),
				UserRecord::findOne($model->created_by)->username
			],
			[
				$model->getAttributeLabel('updated_at'),
				date('d.m.Y', $model->updated_at)
			],
			[
				$model->getAttributeLabel('updated_by'),
				UserRecord::findOne($model->updated_by)->username
			]
		];
	}
}