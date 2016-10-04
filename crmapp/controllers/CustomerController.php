<?php

namespace app\controllers;

use app\models\customer\Customer;
use app\models\customer\CustomerRecord;
use app\models\customer\Phone;
use app\models\customer\PhoneRecord;
use yii\data\ArrayDataProvider;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;

class CustomerController extends AppController
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                    	'actions' => ['add'],
                    	'roles' => ['manager'],
                    	'allow' => true
                    ],
                    [
                    	'actions' => ['index', 'query'],
                    	'roles' => ['user'],
                    	'allow' => true
                    ]
                ]
            ]
        ];
    }

    public function actionIndex() {
		$number = \Yii::$app->request->get('phone_number');
		$records = $this->getRecordsByPhoneNumber($number);
		$data = $this->wrapIntoDataProvider($records);
		//debug($data);
		//return var_dump($data);
		//$data = $dataProvider->allModels;
		return $this->render('index', compact('data'));
		//echo $dataProvider."<br>";
		//return debug($dataProvider);
		//return var_dump($records);
	}
	
	public function actionAdd() {
		$customer = new CustomerRecord();
		$phone = new PhoneRecord();
		
		if ($this->load($customer, $phone, $_POST)) {
			$this->store($this->makeCustomer($customer, $phone));
			return $this->redirect('/customer/');
		}
		
		return $this->render('add', compact('customer','phone'));
	}
	
	public function actionQuery() {
		return $this->render('query');
	}
	
	private function wrapIntoDataProvider($data) {
		return new ArrayDataProvider(
			[
				'allModels' => $data,
				'pagination' => false
			]
		);
	}
	
	private function getRecordsByPhoneNumber($number) {
		$phoneRecord = PhoneRecord::findOne(['number' => $number]);
		if (!$phoneRecord) return [];
		
		$customerRecord = CustomerRecord::findOne($phoneRecord->customer_id);
		if (!$customerRecord) return [];
		
		return [$this->makeCustomer($customerRecord, $phoneRecord)];
	}
	
	private function load(CustomerRecord $customer, PhoneRecord $phone, array $post) {
		return $customer->load($post)
			and $phone->load($post)
			and $customer->validate()
			and $phone->validate(['number']);
	}
	private function store(Customer $customer) {
		$customerRecord = new CustomerRecord();
		$customerRecord->name = $customer->name;
		$customerRecord->birth_date = $customer->birth_date->format('Y-m-d');
		$customerRecord->notes = $customer->notes;
		$customerRecord->save();
		
		foreach ($customer->phones as $phone) {
			$phoneRecord = new PhoneRecord();
			$phoneRecord->number = $phone->number;
			$phoneRecord->customer_id = $customerRecord->id;
			$phoneRecord->save();
		}
	}
	
	private function makeCustomer(CustomerRecord $customerRecord, PhoneRecord $phoneRecord) {
		$name = $customerRecord->name;
		$birth_date = new \DateTime($customerRecord->birth_date);
		
		$customer = new Customer($name, $birth_date);
		$customer->notes = $customerRecord->notes;
		$customer->phones[] = new Phone($phoneRecord->number);
		
		return $customer;
	}
}
