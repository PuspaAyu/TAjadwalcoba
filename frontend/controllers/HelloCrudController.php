<?php

namespace frontend\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\helpers\Url;
use frontend\models\Bus;
use frontend\models\Pegawai;

class HelloCrudController extends Controller
{
	public function actions()
	{
		return [
			'error' => [
				'class' => 'yii\web\ErrorAction',
			],
		];
	}

	public function behaviors()
	{
		return[
			'access' => [
				'class' => AccessControl::className(),
				'only' => ['index',],
				'rules' => [
					[
						'actions' => ['index',],
						'allow' => true,
						'roles' => ['@'],
					],
				],
			],
		];
	}

	public function actionIndex()
	{
		$query = Bus::find();
		$bus = $query->orderBy('id_bus')->all();

		return $this->render('index',['bus'=>$bus]);
	}

	public function actionDetail($id){
		$bus = Bus::findOne(['id_bus'=>$id]);
		return $this->render('detail',['Bus'=>$bus]);
	}
}