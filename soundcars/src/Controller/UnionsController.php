<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Unions Controller
 *
 * @property \App\Model\Table\UnionsTable $Unions
 */
class UnionsController extends AppController
{

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Carros', 'Clientes']
        ];
        $unions = $this->paginate($this->Unions);

        $this->set(compact('unions'));
        $this->set('_serialize', ['unions']);
    }

    /**
     * View method
     *
     * @param string|null $id Union id.
     * @return \Cake\Network\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $union = $this->Unions->get($id, [
            'contain' => ['Carros', 'Clientes']
        ]);

        $this->set('union', $union);
        $this->set('_serialize', ['union']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $union = $this->Unions->newEntity();
        if ($this->request->is('post')) {
            $union = $this->Unions->patchEntity($union, $this->request->data);
            if ($this->Unions->save($union)) {
                $this->Flash->success(__('The union has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The union could not be saved. Please, try again.'));
            }
        }
        $carros = $this->Unions->Carros->find('list', ['limit' => 200]);
        $clientes = $this->Unions->Clientes->find('list', ['limit' => 200]);
        $this->set(compact('union', 'carros', 'clientes'));
        $this->set('_serialize', ['union']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Union id.
     * @return \Cake\Network\Response|void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $union = $this->Unions->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $union = $this->Unions->patchEntity($union, $this->request->data);
            if ($this->Unions->save($union)) {
                $this->Flash->success(__('The union has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The union could not be saved. Please, try again.'));
            }
        }
        $carros = $this->Unions->Carros->find('list', ['limit' => 200]);
        $clientes = $this->Unions->Clientes->find('list', ['limit' => 200]);
        $this->set(compact('union', 'carros', 'clientes'));
        $this->set('_serialize', ['union']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Union id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $union = $this->Unions->get($id);
        if ($this->Unions->delete($union)) {
            $this->Flash->success(__('The union has been deleted.'));
        } else {
            $this->Flash->error(__('The union could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
