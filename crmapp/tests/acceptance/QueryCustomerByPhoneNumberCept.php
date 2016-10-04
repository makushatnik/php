<?php 
$I = new Step\Acceptance\CRMOperatorSteps($scenario);
$I->wantTo('add two different customers to database');

$I->amInAddCustomerUI();
$first = $I->imagineCustomer();
$I->fillCustomerDataForm($first);
$I->submitCustomerDataForm();

$I->seeIAmInListCustomersUI();

$I->amInAddCustomerUI();
$second = $I->imagineCustomer();
$I->fillCustomerDataForm($second);
$I->submitCustomerDataForm();

$I->seeIAmInListCustomersUI();

$I = new Step\Acceptance\CRMUserSteps($scenario);
$I->wantTo('query the customer info using his phone number');

$I->amInQueryCustomerUI();
$I->fillInFormFieldWithDataFrom($first);
$I->clickSearchButton();

$I->seeIAmInListCustomersUI();
$I->seeCustomerInList($first);
$I->dontSeeCustomerInList($second);