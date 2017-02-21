<html>
{{ partial('partials/header')}}

<body>
	<div class="body clearfix">

  <div class="div-table">

 <div class="headRow">

<h3>Profile page</h3>

	<form id='register' action = 'register/submit' method='post'
    accept-charset='UTF-8'>
<fieldset >
<legend>Register</legend>
<input type='hidden' name='submitted' id='submitted' value='1'/>
<label for='name' >Your Full Name*: </label>
<input type='text' name='name' id='name' maxlength="50" />
<label for='email' >Email Address*:</label>
<input type='text' name='email' id='email' maxlength="50" />
 
<label for='username' >UserName*:</label>
<input type='text' name='username' id='username' maxlength="50" />
 
<label for='password' >Password*:</label>
<input type='password' name='password' id='password' maxlength="50" />
<input type='submit' name='submit' value='Submit' />

</fieldset>
</form>
	</div>
	</div>
	</div>
	<div class="spacer">
</div>
{{partial('partials/footer')}}

</body>
</html>
