<?php
namespace app\filters\auth;

use yii\filters\auth\AuthMethod;
use yii\web\UnauthorizedHttpException;

/**
* 
*/
class HeaderParamAuth extends AuthMethod
{
	public $tokenParam = 'x-auth-token';

	public function authenticate($user, $req, $res)
	{
		$accessToken = $req->getHeaders()[$this->tokenParam];
		if (is_string($accessToken))
		{
			$identity = $user->loginByAccessToken($accessToken, get_class($this));
			if ($identity !== null) return $identity;
		}

		if ($accessToken !== null) $this->handleFailure($response);
		return null;
	}

	public function handleFailure($response)
	{
		throw new UnauthorizedHttpException(
			"The token you are using has is either invalid, or has expired. Please re-authenticate to continue your session.");
	}
}