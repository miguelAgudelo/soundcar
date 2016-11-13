<div class="container">
<div class="col-lg-6 col-lg-offset-3 text-center">
    <div class="form-area"> 
    <h3><?= h($carro->descripcion) ?></h3>
    <table class="vertical-table">
        <tr>
            <th><?= __('Descripcion') ?></th>
            <td><?= h($carro->descripcion) ?></td>
        </tr>
        <tr>
            <th><?= __('Cliente') ?></th>
            <td><?= $carro->has('cliente') ? $this->Html->link($carro->cliente->full, ['controller' => 'Clientes', 'action' => 'view', $carro->cliente->id]) : '' ?></td>
        </tr>
        
        <tr>
            <th><?= __('Creado') ?></th>
            <td><?= h($carro->created) ?></td>
        </tr>
        <tr>
            <th><?= __('Modificado') ?></th>
            <td><?= h($carro->modified) ?></td>
        </tr>
    </table>
</div>
    <div class="related">
        <h3><?= __('Registro De Clientes') ?></h3>
        <?php if (!empty($carro->clientes)): ?>
        <table cellpadding="0" cellspacing="0">
            <tr>
                <th><?= __('Id') ?></th>
                <th><?= __('Cliente') ?></th>
                <th><?= __('Creado') ?></th>
                
               
            </tr>
            <?php foreach ($carro->clientes as $clie): ?>
            <tr>
                <td><?= h($clie->id) ?></td>
                <td><?= $this->Html->link(__($clie->full), ['controller' => 'Clientes', 'action' => 'view', $clie->id]) ?></td>
                <td><?= h($clie->created) ?></td>
              
              
            </tr>
            <?php endforeach; ?>
        </table>
        <?php endif; ?>    
</div>
    </div>
</div>
 