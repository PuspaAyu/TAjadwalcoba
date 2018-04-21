<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "jadwal".
 *
 * @property int $id_jadwal
 * @property int $id_bus
 * @property int $id_pegawai
 */
class Jadwal extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'jadwal';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_bus', 'id_pegawai'], 'required'],
            [['id_bus', 'id_pegawai'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_jadwal' => 'Id Jadwal',
            'id_bus' => 'Id Bus',
            'id_pegawai' => 'Id Pegawai',
        ];
    }
}
