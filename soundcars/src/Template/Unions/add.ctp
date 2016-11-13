<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List Unions'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Carros'), ['controller' => 'Carros', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Carro'), ['controller' => 'Carros', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Clientes'), ['controller' => 'Clientes', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Cliente'), ['controller' => 'Clientes', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="unions form large-9 medium-8 columns content">
    <?= $this->Form->create($union) ?>
    <fieldset>
        <legend><?= __('Add Union') ?></legend>
        <?php
            echo $this->Form->input('carro_id', ['options' => $carros]);
            echo $this->Form->input('cliente_id', ['options' => $clientes]);
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
