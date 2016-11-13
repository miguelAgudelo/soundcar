

    <h3><?= __('Carros') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th><?= $this->Paginator->sort('id') ?></th>
                <th><?= $this->Paginator->sort('descripcion') ?></th>
                <th><?= $this->Paginator->sort('cliente') ?></th>
                <th><?= $this->Paginator->sort('creado') ?></th>
                <th><?= $this->Paginator->sort('modificado') ?></th>
                <th class="actions"><?= __('Acciones') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($carros as $carro): ?>
            <tr>
                <td><?= $this->Number->format($carro->id) ?></td>
                <td><?= h($carro->descripcion) ?></td>
                <td><?= $carro->has('cliente') ? $this->Html->link($carro->cliente->full, ['controller' => 'Clientes', 'action' => 'view', $carro->cliente->id]) : '' ?></td>
                <td><?= h($carro->created) ?></td>
                <td><?= h($carro->modified) ?></td>
                <td class="actions">
                    <?php echo $this->Html->link(__('<i class="fa fa-eye"></i>'), array('action' => 'view', $carro->id), array('class' => 'btn btn-sm btn-success', 'escape' => false, 'button title' => 'VER')); ?>
                    
                   <?php echo $this->Form->postLink(__('<i class="fa fa-trash"></i>'), array('action' => 'delete', $carro->id), array('class' => 'btn btn-sm btn-danger', 'escape' => false, 'button title' => 'ELIMINAR'), array('confirm' => __('Are you sure you want to delete # {0}?', $carro->id))); ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
        </ul>
        <p><?= $this->Paginator->counter() ?></p>
    </div>

