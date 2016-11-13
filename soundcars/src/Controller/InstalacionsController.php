<?php
namespace App\Controller;
use Cake\ORM\TableRegistry;
use App\Controller\AppController;

/**
 * Instalacions Controller
 *
 * @property \App\Model\Table\InstalacionsTable $Instalacions
 */
class InstalacionsController extends AppController
{

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Clientes', 'Productos','Users']
        ];
        $instalacions = $this->paginate($this->Instalacions);
        $total=0;
        $this->set(compact('instalacions','total'));
        $this->set('_serialize', ['instalacions']);
    }

    public function panelconsulta()
    {
        $this->paginate = [
            'contain' => ['Clientes', 'Productos','Users']
        ];
        $instalacions = $this->paginate($this->Instalacions);

        $this->set(compact('instalacions'));
        $this->set('_serialize', ['instalacions']);
    }
     public function indexnombre()
    {  $t=$this->request->data["nombre"];
        $this->paginate = [
            'contain' => ['Clientes', 'Productos','Users']
        ];
      
        $instalacions = $this->paginate($this->Instalacions->find()->where(['user_id'=>$t]));

        $total=0;
        $this->set(compact('instalacions','total'));
        $this->set('_serialize', ['instalacions']);
         
    }

     public function consultanombre()
    {
        $instalacions = $this->paginate($this->Instalacions);
         $userTable = TableRegistry::get('Users');
        $user = $userTable->find('list', ['limit' => 200,'keyField' => 'id',
        'valueField' =>'username'])->where(['role'=>'tecnico'])->toArray();
        
        $this->set(compact('instalacions','user'));
        $this->set('_serialize', ['instalacions']);
    }

    public function indexfecha()
    {
       
        $date=$this->request->data['date'];
         $this->paginate = [
            'contain' => ['Clientes', 'Productos','Users']
        ];

        $instalacions = $this->paginate($this->Instalacions->find()->where(['YEAR(Instalacions.created)'=>$date['year'],'MONTH(Instalacions.created)' => $date['month'],'DAY(Instalacions.created)' => $date['day']]));
                
        $total=0;
        $this->set(compact('instalacions','total'));
        $this->set('_serialize', ['instalacions']);
    }

    public function consultafecha()
    { 
        $this->paginate = [
            'contain' => ['Clientes', 'Productos','Users']
        ];
      

        $this->set(compact('instalacions'));
        $this->set('_serialize', ['instalacions']);
         
    }
    
     public function consulta2()
    {
        $instalacions = $this->paginate($this->Instalacions);
         $userTable = TableRegistry::get('Users');
        $user = $userTable->find('list', ['limit' => 200,'keyField' => 'id',
        'valueField' =>'nombre'])->where(['role'=>'tecnico'])->toArray();
        $this->set(compact('instalacions','user'));
        $this->set('_serialize', ['instalacions']);
    }

     public function index2()
    {   
         $t=$this->request->data["nombre"];
       
        $date=$this->request->data['date'];
         $this->paginate = [
            'contain' => ['Clientes', 'Productos','Users']
        ];

        $instalacions = $this->paginate($this->Instalacions->find()->where(['YEAR(Instalacions.created)'=>$date['year'],'MONTH(Instalacions.created)' => $date['month'],'DAY(Instalacions.created)' => $date['day']])->andWhere(['Instalacions.user_id'=>$t]));
                
         $total=0;
        $this->set(compact('instalacions','total'));
        $this->set('_serialize', ['instalacions']);
    }

      public function consulta3()
    {
        $instalacions = $this->paginate($this->Instalacions);
       
        $this->set(compact('instalacions'));
        $this->set('_serialize', ['instalacions']);
    }

     public function index3()
    {   
         $date1=$this->request->data["date1"];
        $date2=$this->request->data['date2'];
       
         $this->paginate = [
            'contain' => ['Clientes', 'Productos','Users']
        ];

        $instalacions = $this->paginate($this->Instalacions->find()->where(function ($exp, $q) use ($date1,$date2)
            {return $exp
            ->gte('YEAR(Instalacions.created)',$date1['year'])
            ->gte('MONTH(Instalacions.created)',$date1['month'])
            ->gte('DAY(Instalacions.created)',$date1['day'])
            ->lte('YEAR(Instalacions.created)',$date2['year'])
            ->lte('MONTH(Instalacions.created)',$date2['month'])
            ->lte('DAY(Instalacions.created)',$date2['day']);
            }
            ));
                
        $total=0;
        $this->set(compact('instalacions','total'));
        $this->set('_serialize', ['instalacions']);
    }

      public function consulta4()
    {
        $instalacions = $this->paginate($this->Instalacions);
         $userTable = TableRegistry::get('Users');
        $user = $userTable->find('list', ['limit' => 200,'keyField' => 'id',
        'valueField' =>'username'])->where(['role'=>'tecnico'])->toArray();
        $this->set(compact('instalacions','user'));
        $this->set('_serialize', ['instalacions']);
    }

     public function index4()
    {    $t=$this->request->data["nombre"];
         $date1=$this->request->data["date1"];
        $date2=$this->request->data['date2'];
         $this->paginate = [
            'contain' => ['Clientes', 'Productos','Users']
        ];

        $instalacions = $this->paginate($this->Instalacions->find()->where(function ($exp, $q) use ($date1,$date2)
            {return $exp
            ->gte('YEAR(Instalacions.created)',$date1['year'])
            ->gte('MONTH(Instalacions.created)',$date1['month'])
            ->gte('DAY(Instalacions.created)',$date1['day'])
            ->lte('YEAR(Instalacions.created)',$date2['year'])
            ->lte('MONTH(Instalacions.created)',$date2['month'])
            ->lte('DAY(Instalacions.created)',$date2['day']);
            }
            )->andWhere(['Instalacions.user_id'=>$t]));
                
        $total=0;
        $this->set(compact('instalacions','total'));
        $this->set('_serialize', ['instalacions']);
    }
    /**
     * View method
     *
     * @param string|null $id Instalacion id.
     * @return \Cake\Network\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $instalacion = $this->Instalacions->get($id, [
            'contain' => ['Clientes', 'Productos']
        ]);

        $this->set('instalacion', $instalacion);
        $this->set('_serialize', ['instalacion']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $instalacion = $this->Instalacions->newEntity();
        if ($this->request->is('ajax')) {
            $va=$this->request->data['valor'];
            $por=$this->request->data['porcentaje'];
            $cien=100;
            $this->request->data['gananciat']=($por*$va)/$cien;
            $instalacion = $this->Instalacions->patchEntity($instalacion, $this->request->data);
            if ($this->Instalacions->save($instalacion)) {
                $this->Flash->success(__('The instalacion has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The instalacion could not be saved. Please, try again.'));
            }
        }
        $clientes = $this->Instalacions->Clientes->find('list', ['limit' => 200]);
        $productos = $this->Instalacions->Productos->find('list', ['limit' => 200]);
        $this->set(compact('instalacion', 'clientes', 'productos'));
        $this->set('_serialize', ['instalacion']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Instalacion id.
     * @return \Cake\Network\Response|void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $instalacion = $this->Instalacions->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $instalacion = $this->Instalacions->patchEntity($instalacion, $this->request->data);
            if ($this->Instalacions->save($instalacion)) {
                $this->Flash->success(__('The instalacion has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The instalacion could not be saved. Please, try again.'));
            }
        }
        $clientes = $this->Instalacions->Clientes->find('list', ['limit' => 200]);
        $productos = $this->Instalacions->Productos->find('list', ['limit' => 200]);
        $this->set(compact('instalacion', 'clientes', 'productos'));
        $this->set('_serialize', ['instalacion']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Instalacion id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $instalacion = $this->Instalacions->get($id);
        if ($this->Instalacions->delete($instalacion)) {
            $this->Flash->success(__('The instalacion has been deleted.'));
        } else {
            $this->Flash->error(__('The instalacion could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
