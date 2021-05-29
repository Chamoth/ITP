<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>


<link href="./Styles/Semantic-UI-CSS-master/semantic.css" rel="stylesheet" type="text/css" >
<link href="./Styles/bootstrap-5.0.0-beta3-dist/css/bootstrap.css" rel="stylesheet" type="text/css" >
<script src="./Styles/Semantic-UI-CSS-master/semantic.js"></script>

<link href="./Styles/log_home.css" rel="stylesheet" type="text/css" >

</head>
<body >


<div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div>Pizza<span>Mania</span></div>
		</div>
		<br>
		<div class="login">
				<form action="validatelogin" method="post" class="row g-3 needs-validation" novalidate>
				
				<div >
				    <input type="text" name="username" placeholder="username" required>
				    <div class="invalid-feedback er">
				      Please enter the User Name.
				    </div>
				  </div>
				  
				  <div >
				    <input type="password" placeholder="password"  name="password" required>
				    <div class="invalid-feedback er">
				      Please enter the Password.
				    </div>
				    <br><br>
				  </div>
				  
				  <div>
				  <button class="ui toggle button bss" name="submit" type="submit">
				  Login
				  </button>
				  </div>
				  
		   </form>
		</div>

				
</body>
<script type="text/javascript">
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  var forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
})()


function showpw() {
  var x = document.getElementById("pwInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
</html>