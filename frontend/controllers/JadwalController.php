<?php

namespace frontend\controllers;
use yii\filters\VerbFilter;
use frontend\models\Jadwal;
use frontend\models\Pegawai;
use frontend\models\Bus;
use Yii;
use yii\db\Query;
use yii\helpers\ArrayHelper;


class JadwalController extends \yii\web\Controller
{
    public function actionIndex()
    {
    	//$Jadwalbus = JadwalBus::find()->all();
    	$query	= new Query;
    	$query->select('bus.*, pegawai.*')
    			->from('bus')
    			->join('LEFT JOIN', 'pegawai', 'pegawai.id_pegawai=bus.id_bus');

    	$command	= $query->createCommand();
    	$Jadwalbus = $command->queryAll();

        return $this->render('index', ['Jadwal'=>$Jadwalbus]);
    }

}
