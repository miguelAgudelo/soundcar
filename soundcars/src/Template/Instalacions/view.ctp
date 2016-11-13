<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Instalacion'), ['action' => 'edit', $instalacion->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Instalacion'), ['action' => 'delete', $instalacion->id], ['confirm' => __('Are you sure you want to delete # {0}?', $instalacion->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Instalacions'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Instalacion'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Clientes'), ['controller' => 'Clientes', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Cliente'), ['controller' => 'Clientes', 'action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Productos'), ['controller' => 'Productos', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Producto'), ['controller' => 'Productos', 'action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="instalacions view large-9 medium-8 columns content">
    <h3><?= h($instalacion->id) ?></h3>
    <table class="vertical-table">
        <tr>
            <th><?= __('Cliente') ?></th>
            <td><?= $instalacion->has('cliente') ? $this->Html->link($instalacion->cliente->full, ['controller' => 'Clientes', 'action' => 'view', $instalacion->cliente->id]) : '' ?></td>
        </tr>
        <tr>
            <th><?= __('Producto') ?></th>
            <td><?= $instalacion->has('producto') ? $this->Html->link($instalacion->producto->full, ['controller' => 'Productos', 'action' => 'view', $instalacion->producto->id]) : '' ?></td>
        </tr>
        <tr>
            <th><?= __('Id') ?></th>
            <td><?= $this->Number->format($instalacion->id) ?></td>
        </tr>
        <tr>
            <th><?= __('Valor') ?></th>
            <td><?= $this->Number->format($instalacion->valor) ?></td>
        </tr>
        <tr>
            <th><?= __('Porcentaje') ?></th>
            <td><?= $this->Number->format($instalacion->porcentaje) ?></td>
        </tr>
        <tr>
            <th><?= __('Gananciat') ?></th>
            <td><?= $this->Number->format($instalacion->gananciat) ?></td>
        </tr>
        <tr>
            <th><?= __('Created') ?></th>
            <td><?= h($instalacion->created) ?></td>
        </tr>
        <tr>
            <th><?= __('Modified') ?></th>
            <td><?= h($instalacion->modified) ?></td>
        </tr>
    </table>
</div>
