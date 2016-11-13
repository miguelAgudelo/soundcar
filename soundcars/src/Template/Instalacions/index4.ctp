  <h3><?= __('Instalaciones') ?></h3>
    <table class="table table-responsive" cellpadding="10" cellspacing="10">
        <thead>
            <tr>
                <th><?= $this->Paginator->sort('id') ?></th>
                <th><?= $this->Paginator->sort('tecnico') ?></th>
                <th><?= $this->Paginator->sort('cliente') ?></th>
                <th><?= $this->Paginator->sort('producto') ?></th>
                <th><?= $this->Paginator->sort('valor') ?></th>
                <th><?= $this->Paginator->sort('porcentaje') ?></th>
                <th><?= $this->Paginator->sort('ganancia del tecnico') ?></th>
                <th><?= $this->Paginator->sort('creado') ?></th>
                <th class="actions"><?= __('Eliminar') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($instalacions as $instalacion): ?>
            <tr>
                <td><?= $this->Number->format($instalacion->id) ?></td>
                <td><?= $instalacion->has('user') ? $this->Html->link($instalacion->user->nombre, ['controller' => 'Users', 'action' => 'view', $instalacion->user->id]) : '' ?></td>
                <td><?= $instalacion->has('cliente') ? $this->Html->link($instalacion->cliente->full, ['controller' => 'Clientes', 'action' => 'view', $instalacion->cliente->id]) : '' ?></td>
                <td><?= $instalacion->has('producto') ? $this->Html->link($instalacion->producto->full, ['controller' => 'Productos', 'action' => 'view', $instalacion->producto->id]) : '' ?></td>
                <td><?= $this->Number->format($instalacion->valor) ?></td>
                <td><?= $this->Number->format($instalacion->porcentaje) ?></td>
                <td><?= $this->Number->format($instalacion->gananciat) ?></td>
                <td><?= h($instalacion->created) ?></td>
                <td class="actions">
                   <?php echo $this->Form->postLink(__('<i class="fa fa-trash"></i>'), array('action' => 'delete', $instalacion->id), array('class' => 'btn btn-sm btn-danger', 'escape' => false, 'button title' => 'ELIMINAR'), array('confirm' => __('Are you sure you want to delete # {0}?', $instalacion->id))); ?> 
                </td>
            </tr>
            <?php 
            $total+=$instalacion->gananciat;
            endforeach; ?>
            <tr>
            <td>Total: </td>
                <td>
                   <?php echo $total ?>
                </td>
            </tr>
        </tbody>
    </table>
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
        </ul>
        <p><?= $this->Paginator->counter() ?></p>


