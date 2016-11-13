<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $instalacion->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $instalacion->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Instalacions'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Clientes'), ['controller' => 'Clientes', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Cliente'), ['controller' => 'Clientes', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Productos'), ['controller' => 'Productos', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Producto'), ['controller' => 'Productos', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="instalacions form large-9 medium-8 columns content">
    <?= $this->Form->create($instalacion) ?>
    <fieldset>
        <legend><?= __('Edit Instalacion') ?></legend>
        <?php
            echo $this->Form->input('cliente_id', ['options' => $clientes]);
            echo $this->Form->input('producto_id', ['options' => $productos]);
            echo $this->Form->input('valor');
            echo $this->Form->input('porcentaje');
            echo $this->Form->input('gananciat');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
