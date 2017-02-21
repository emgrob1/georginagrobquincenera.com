<?php echo $this->tag->form(array('/products/register')); ?>
<fieldset>
<div>
	<label> Registers </label><br/>
	<label for = "username">Username</label>
	<div> <?php echo $this->tag->textField(array('username')); ?> </div>
	
	<div> <label for = "password">Email</label>
	<div><?php echo $this->tag->textField(array('password')); ?> </div>
	
	<div> <input type = "hidden" name = "active" value = "Y"> </div>
</div>
<div> <?php echo $this->tag->submitButton(array('Register')); ?> </div>
</fieldset>
<?php echo $this->tag->endform(); ?>
