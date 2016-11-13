<div class="instalacions index large-9 medium-8 columns content">
    
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <td colspan="2"><h3>Panel de consultas para las instalaciones</h3></td>
            </tr>
        </thead>
        <tbody>
            <tr>
            <td>Consulta por nombre de tecnico</td> <td><?= $this->Form->postButton('ir', array('controller'=>'instalacions','action'=>'consultanombre'))?></td>
            </tr>
             <tr>
            <td>Consulta por fecha especifica de instalacion</td> <td><?= $this->Form->postButton('ir', array('controller'=>'instalacions','action'=>'consultafecha'))?></td>
            </tr>
             <td>Consulta por nombre de tecnico y fecha especifica</td> <td><?= $this->Form->postButton('ir', array('controller'=>'instalacions','action'=>'consulta2'))?></td>
            </tr>
             <tr>
            <td>Consulta entre perido de tiempo por fechas</td> <td><?= $this->Form->postButton('ir', array('controller'=>'instalacions','action'=>'consulta3'))?></td>
            </tr>
             <td>Consulta por nombre de tecnico y perido de tiempo por fechas</td> <td><?= $this->Form->postButton('ir', array('controller'=>'instalacions','action'=>'consulta4'))?></td>
            </tr>
             <tr>
        </tbody>
    </table>