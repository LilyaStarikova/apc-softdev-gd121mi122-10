<?php

namespace app\controllers;

use yii\web\Controller;
use app\models\Users;

class UsersController extends Controller{
	public function actionIndex(){
		$Users =Users::find()->all();

		return $this-> render('index',['users=>$users']);

	}
}