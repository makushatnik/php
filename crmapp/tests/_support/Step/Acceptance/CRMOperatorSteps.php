<?php
namespace Step\Acceptance;

class CRMOperatorSteps extends \AcceptanceTester
{
	function amInAddCustomerUI() {
		$I = $this;
		$I->amOnPage('/customer/add');
	}
	
	function imagineCustomer() {
		$faker = \Faker\Factory::create();
		return [
			'CustomerRecord[name]' => $faker->name,
			'CustomerRecord[birth_date]' => $faker->date('Y-m-d'),
			'CustomerRecord[notes]' => $faker->sentence(8),
			'PhoneRecord[number]' => $faker->phoneNumber,
		];
	}
	
	function fillCustomerDataForm($fieldsData) {
		$I = $this;
		foreach ($fieldsData as $key => $value) {
			$I->fillField($key, $value);
		}
	}
	
	function submitCustomerDataForm() {
		$I = $this;
		$I->click('Submit');
	}
	
	public function seeIAmInListCustomersUI() {
		$I = $this;
		$I->seeCurrentUrlMatches('/customer/');
	}
	
	function amInListCustomersUI() {
		$I = $this;
		$I->amOnPage('/customer');
	}
}