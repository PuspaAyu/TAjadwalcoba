<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "jadwal_bus".
 *
 * @property integer $id_jadwal
 * @property string $tanggal
 * @property string $jam_berangkat
 * @property integer $id_bus
 * @property integer $id_pegawai
 * @property string $jam_datang
 * @property integer $id_izin
 * @property integer $id_jurusan
 */
class JadwalBus extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'jadwal_bus';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['tanggal', 'jam_berangkat', 'id_bus', 'id_pegawai', 'jam_datang', 'id_izin', 'id_jurusan'], 'required'],
            [['tanggal', 'jam_berangkat', 'jam_datang'], 'safe'],
            [['id_bus', 'id_pegawai', 'id_izin', 'id_jurusan'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_jadwal' => 'Id Jadwal',
            'tanggal' => 'Tanggal',
            'jam_berangkat' => 'Jam Berangkat',
            'id_bus' => 'Id Bus',
            'id_pegawai' => 'Id Pegawai',
            'jam_datang' => 'Jam Datang',
            'id_izin' => 'Id Izin',
            'id_jurusan' => 'Id Jurusan',
        ];
    }
}
