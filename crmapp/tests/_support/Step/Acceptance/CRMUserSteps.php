<?php
namespace Step\Acceptance;

class CRMUserSteps extends \AcceptanceTester
{
	function amInQueryCustomerUI() {
		$I = $this;
		$I->amOnPage('/customer/query');
	}
	
	function fillInFormFieldWithDataFrom($customerData) {
		$I = $this;
		$I->fillField('phone_number', $customerData['PhoneRecord[number]']);
	}
	
	function clickSearchButton() {
		$I = $this;
		$I->click('Search');
	}
	
	function seeIAmInListCustomersUI() {
		$I = $this;
		$I->seeCurrentUrlMatches('/customer/');
	}
	
	function seeCustomerInList($customerData) {
		$I = $this;
		$I->see($customerData['CustomerRecord[name]'], '#search_results');
	}
	
	function dontSeeCustomerInList($customerData) {
		$I = $this;
		$I->dontSee($customerData['CustomerRecord[name]'], '#search_results');
	}

	public function seeLargeBodyOfText() {
		$I = $this;
		$text = $I->grabTextFrom('p');
		$I->seeContentIsLong($text);
	}

	public function seeIAmInLoginFormUI() {
		$I = $this;
		$I->seeCurrentUrlEquals('/site/login');
	}

	public function fillLoginForm($user) {
		$I = $this;
		$I->fillField('LoginForm[username]', $user['UserRecord[username]']);
		$I->fillField('LoginForm[password]', $user['UserRecord[password]']);
	}

	public function submitLoginForm() {
		$I = $this;
		$I->click('button[type=submit]');
		$I->wait(1);
	}

	public function seeIAmAtHomepage() {
		$I = $this;
		$I->seeCurrentUrlEquals('/');
	}

	public function seeUsername($user) {
		$I = $this;
		$I->see($user['UserRecord[username]']);
	}

	public function dontSeeUsername($user) {
		$I = $this;
		$I->dontSee($user['UserRecord[username]']);
	}
}