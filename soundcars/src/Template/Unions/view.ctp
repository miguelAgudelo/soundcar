<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Union'), ['action' => 'edit', $union->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Union'), ['action' => 'delete', $union->id], ['confirm' => __('Are you sure you want to delete # {0}?', $union->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Unions'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Union'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Carros'), ['controller' => 'Carros', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Carro'), ['controller' => 'Carros', 'action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Clientes'), ['controller' => 'Clientes', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Cliente'), ['controller' => 'Clientes', 'action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="unions view large-9 medium-8 columns content">
    <h3><?= h($union->id) ?></h3>
    <table class="vertical-table">
        <tr>
            <th><?= __('Carro') ?></th>
            <td><?= $union->has('carro') ? $this->Html->link($union->carro->descripcion, ['controller' => 'Carros', 'action' => 'view', $union->carro->id]) : '' ?></td>
        </tr>
        <tr>
            <th><?= __('Cliente') ?></th>
            <td><?= $union->has('cliente') ? $this->Html->link($union->cliente->full, ['controller' => 'Clientes', 'action' => 'view', $union->cliente->id]) : '' ?></td>
        </tr>
        <tr>
            <th><?= __('Id') ?></th>
            <td><?= $this->Number->format($union->id) ?></td>
        </tr>
        <tr>
            <th><?= __('Created') ?></th>
            <td><?= h($union->created) ?></td>
        </tr>
        <tr>
            <th><?= __('Modified') ?></th>
            <td><?= h($union->modified) ?></td>
        </tr>
    </table>
</div>
