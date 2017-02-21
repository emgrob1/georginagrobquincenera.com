{{ form("/products/register")}}
<fieldset>
<div>
	<label> Registers </label><br/>
	<label for = "username">Username</label>
	<div> {{text_field("username")}} </div>
	
	<div> <label for = "password">Email</label>
	<div>{{ text_field("password") }} </div>
	
	<div> <input type = "hidden" name = "active" value = "Y"> </div>
</div>
<div> {{ submit_button("Register") }} </div>
</fieldset>
{{ endForm() }}
