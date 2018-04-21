<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "izin".
 *
 * @property integer $id_izin
 * @property string $tgl_izin
 * @property string $jenis_izin
 */
class Izin extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'izin';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['tgl_izin', 'jenis_izin'], 'required'],
            [['tgl_izin'], 'safe'],
            [['tgl_izin'], 'default', 'value' => null],
            [['jenis_izin'], 'string', 'max' => 20],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_izin' => 'Id Izin',
            'tgl_izin' => 'Tgl Izin',
            'jenis_izin' => 'Jenis Izin',
        ];
    }
}
