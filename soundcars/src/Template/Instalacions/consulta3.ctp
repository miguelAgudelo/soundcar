<div class="form-horizontal">
     <fieldset>
    <legend>Consulta de instalacion por tecnico</legend>
   
    <div class="form-group">
      <label for="Tiposolicitud" class="col-lg-2 control-label">Ingrese las fechas</label>
      <div class="col-lg-10">
<?php

echo "<form action=index3 method='Post'>"
                                              
                                          ?>
  <?php                             
                                     
                                    echo $this->Form->input('date1', ['label'=>'fecha inicio','type'=>'date','dateFormat' => 'YMD']);
                                    echo $this->Form->input('date2', ['label'=>'fecha fin','type'=>'date','dateFormat' => 'YMD']);
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