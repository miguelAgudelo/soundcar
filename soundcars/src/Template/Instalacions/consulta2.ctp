
<div class="form-horizontal">
     <fieldset>
    <legend>Consulta de instalacion por tecnico</legend>
   
    <div class="form-group">
      <label for="Tiposolicitud" class="col-lg-2 control-label">Ingrese el nombre del tecnico</label>
      <div class="col-lg-10">
<?php

echo "<form action=index2 method='Post'>"
                                              
                                          ?>
  <?php                             
                                     echo $this->Form->input('nombre', ['options'=>$user]);
                                    echo $this->Form->input('date', ['label'=>'fecha especifica','type'=>'date','dateFormat' => 'YMD']);
                                    ?>
      </div>
    </div>
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">   
<?php
  echo $this->Form->submit('consultar', array(
      'div' => 'form-group',
      'class' => 'btn btn-primary'
  ));
  echo "</form>"
  ?>  
      </div>
    </div>
     </fieldset>
</div>
<script type="text/javascript">
    $(document).on('ready',function(){
      
        $('#nombre').select2();
       
    });
</script>
<script type="text/javascript">
    $(document).on('ready',function(){
      
        $('#nombre').select2();
       
    });
</script>