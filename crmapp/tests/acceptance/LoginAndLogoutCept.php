<?php
use Step\Acceptance\CRMUserManagementSteps;
use Step\Acceptance\CRMUserSteps;

$I = new CRMUserManagementSteps($scenario);
$I->wantTo('check that login and logout work');

$I->amGoingTo('Register new User');

$I->amInListUsersUI();
$I->clickOnRegisterNewUserButton();
$I->seeIAmInAddUserUI();
$user = $I->imagineUser();
$I->fillUserDataForm($user);
$I->submitUserDataForm();

$I = new CRMUserSteps($scenario);
$I->amGoingTo('login');

$I->seeLink('login');
$I->click('login');
$I->seeIAmInLoginFormUI();
$I->fillLoginForm($user);
$I->submitLoginForm();

$I->seeIAmAtHomepage();
$I->dontSeeLink('login');
$I->seeUsername($user);
$I->seeLink('logout');

$I->amGoingTo('logout from arbitrary page');
$I->amInQueryCustomerUI();
$I->click('logout');

$I->seeIAmAtHomepage();
$I->dontSeeUsername($user);
$I->dontSeeLink('logout');
$I->seeLink('login');