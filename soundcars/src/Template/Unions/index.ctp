<div class=" col-lg-12 text-center">
    <h3><?= __('Unions') ?></h3>
    <div class=" table-responsive">
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th><?= $this->Paginator->sort('id') ?></th>
                <th><?= $this->Paginator->sort('carro_id') ?></th>
                <th><?= $this->Paginator->sort('cliente_id') ?></th>
                <th><?= $this->Paginator->sort('creado') ?></th>
                
                <th class="actions"><?= __('Acciones') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($unions as $union): ?>
            <tr>
                <td><?= $this->Number->format($union->id) ?></td>
                <td><?= $union->has('carro') ? $this->Html->link($union->carro->descripcion, ['controller' => 'Carros', 'action' => 'view', $union->carro->id]) : '' ?></td>
                <td><?= $union->has('cliente') ? $this->Html->link($union->cliente->full, ['controller' => 'Clientes', 'action' => 'view', $union->cliente->id]) : '' ?></td>
                <td><?= h($union->created) ?></td>
                
                <td class="actions">
                   
                      <?php echo $this->Form->postLink(__('<i class="fa fa-trash"></i>'), array('action' => 'delete', $union->id), array('class' => 'btn btn-sm btn-danger', 'escape' => false, 'button title' => 'ELIMINAR'), array('confirm' => __('Are you sure you want to delete # {0}?', $union->id))); ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
        </div>
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
        </ul>
        <p><?= $this->Paginator->counter() ?></p>
    </div>

</div>