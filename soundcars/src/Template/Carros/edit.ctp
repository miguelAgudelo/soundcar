
<div class="container">
<div class="col-lg-6 col-lg-offset-3 text-center">
    <div class="form-area"> 
    <?= $this->Form->create($carro) ?>
    <fieldset>
        <legend><?= __('Edit Carro') ?></legend>
        <?php
            echo $this->Form->input('descripcion');
            echo $this->Form->input('cliente_id', ['options' => $clientes]);
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
    </div>
</div>
