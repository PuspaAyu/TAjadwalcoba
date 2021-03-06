<?php

namespace frontend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\Karcis;

/**
 * KarcisSearch represents the model behind the search form about `frontend\models\Karcis`.
 */
class KarcisSearch extends Karcis
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_karcis', 'karcis_pergi', 'karcis_pulang'], 'integer'],
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
        $query = Karcis::find();

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
            'id_karcis' => $this->id_karcis,
            'karcis_pergi' => $this->karcis_pergi,
            'karcis_pulang' => $this->karcis_pulang,
        ]);

        return $dataProvider;
    }
}
