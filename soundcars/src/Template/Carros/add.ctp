
<div class="container">
<div class="col-lg-6 col-lg-offset-3 text-center">
    <div class="form-area">  
       
        
    <?= $this->Form->create($carro) ?>
    <fieldset>
        <legend><?= __('Add Carro') ?></legend>
        <?php
           
            echo $this->Form->input('marca',['label'=>'marca','placeholder'=>'ingrese el auto del cliente']);
            echo $this->Form->input('year',['label'=>'Año','placeholder'=>'ingrese el auto del cliente']);
            echo $this->Form->input('modelo',['label'=>'modelo','placeholder'=>'ingrese el auto del cliente']);
            echo $this->Form->input('tipo',['label'=>'tipo de auto','options'=>['auto'=>'carro','camioneta'=>'camioneta']]);
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
    </div>
</div>
</div>
