<?php
namespace App\Model\Table;

use App\Model\Entity\Instalacion;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Instalacions Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Clientes
 * @property \Cake\ORM\Association\BelongsTo $Productos
 */
class InstalacionsTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        parent::initialize($config);

        $this->table('instalacions');
        $this->displayField('id');
        $this->primaryKey('id');

        $this->addBehavior('Timestamp');

        $this->belongsTo('Users', [
            'foreignKey' => 'user_id',
            'joinType' => 'INNER'
        ]);

        $this->belongsTo('Clientes', [
            'foreignKey' => 'cliente_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Productos', [
            'foreignKey' => 'producto_id',
            'joinType' => 'INNER'
        ]);
    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator)
    {
        $validator
            ->integer('id')
            ->allowEmpty('id', 'create');

        $validator
            ->integer('valor')
            ->requirePresence('valor', 'create')
            ->notEmpty('valor');

        $validator
            ->numeric('porcentaje')
            ->requirePresence('porcentaje', 'create')
            ->notEmpty('porcentaje');

        $validator
            ->numeric('gananciat')
            ->requirePresence('gananciat', 'create')
            ->notEmpty('gananciat');

        return $validator;
    }

    /**
     * Returns a rules checker object that will be used for validating
     * application integrity.
     *
     * @param \Cake\ORM\RulesChecker $rules The rules object to be modified.
     * @return \Cake\ORM\RulesChecker
     */
    public function buildRules(RulesChecker $rules)
    {
        $rules->add($rules->existsIn(['user_id'], 'Users'));
        $rules->add($rules->existsIn(['cliente_id'], 'Clientes'));
        $rules->add($rules->existsIn(['producto_id'], 'Productos'));
        return $rules;
    }
}
