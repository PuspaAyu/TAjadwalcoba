<?php

namespace frontend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\GetJadwal;

/**
 * GetJadwalSearch represents the model behind the search form of `frontend\models\GetJadwal`.
 */
class GetJadwalSearch extends GetJadwal
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_getJadwal', 'id_getBus', 'id_getPegawai'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = GetJadwal::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id_getJadwal' => $this->id_getJadwal,
            'id_getBus' => $this->id_getBus,
            'id_getPegawai' => $this->id_getPegawai,
        ]);

        return $dataProvider;
    }
}
