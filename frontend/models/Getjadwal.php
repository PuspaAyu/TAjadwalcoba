<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "getjadwal".
 *
 * @property int $id_getJadwal
 * @property int $id_getBus
 * @property int $id_getPegawai
 *
 * @property Getbus $getBus
 */
class Getjadwal extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'getjadwal';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_getBus', 'id_getPegawai'], 'required'],
            [['id_getBus', 'id_getPegawai'], 'integer'],
            [['id_getBus'], 'exist', 'skipOnError' => true, 'targetClass' => Getbus::className(), 'targetAttribute' => ['id_getBus' => 'id_getBus']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_getJadwal' => 'Id Get Jadwal',
            'id_getBus' => 'Id Get Bus',
            'id_getPegawai' => 'Id Get Pegawai',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGetBus()
    {
        return $this->hasOne(Getbus::className(), ['id_getBus' => 'id_getBus']);
    }
}
