<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "getbus".
 *
 * @property int $id_getBus
 * @property string $no_polisi
 * @property string $jam_operasional
 *
 * @property Getjadwal[] $getjadwals
 */
class Getbus extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'getbus';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['no_polisi', 'jam_operasional'], 'required'],
            [['jam_operasional'], 'safe'],
            [['no_polisi'], 'string', 'max' => 10],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_getBus' => 'Id Get Bus',
            'no_polisi' => 'No Polisi',
            'jam_operasional' => 'Jam Operasional',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGetjadwals()
    {
        return $this->hasMany(Getjadwal::className(), ['id_getBus' => 'id_getBus']);
    }
}
