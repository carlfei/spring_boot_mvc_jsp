<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

<script type="text/javascript">

	function validarUsuario(){
		if(document.getElementById("usuario").value.trim()!=""){
			return true;
		}else{
			alert("El usuario debe tener valor");
			return false;
		}
	}
	function validarPwd(){
		if(document.getElementById("password").value==document.getElementById("repetirpwd").value){
			return true;
		}else{
			alert("Los password no coinciden!");
			return false;
		}
	}
	function validarEmail(){
		var email=document.getElementById("email").value;
		if(email.includes(".")&&email.includes("@")){
			return true;
		}else{
			alert("mail no correcto");
			return false;
		}
	}
	function validarTelefono(){
		var telefono=document.getElementById("telefono").value;
		if((telefono.startsWith("6")||telefono.startsWith("9"))&&telefono.length>7){
			return true;
		}else{
			alert("tlf no correcto");
			return false;
		}
	}
	function validar(){
		return validarUsuario()&&validarPwd()&&validarEmail()&&validarTelefono();
	}

</script>

</head>
<body>
<div class="container">
	<h1>Alta de contacto</h1>
	<form action="doRegistrar" method="post" onsubmit="return validar()">
		<div class="form-group">
			<label>Usuario:</label><input type="text" name="usuario" id="usuario" class="form-control" onblur="validarUsuario();" style="width:30%" placeholder="Usuario" />
		</div>
		<div class="form-group">
			<label>Contrase�a:</label><input type="password" name="password" id="password" class="form-control" style="width:30%" placeholder="password" />
		</div>
		<div class="form-group">
			<label>Repetir Contrase�a:</label><input type="password" name="repetirpwd" id="repetirpwd" class="form-control" style="width:30%" placeholder="password" />
		</div>
		<div class="form-group">
			<label>Email:</label><input type="text" name="email" id="email" class="form-control" style="width:30%" placeholder="Email"/>
		</div>
		<div class="form-group">
			<label>Tel�fono:</label><input type="number" name="telefono" id="telefono" class="form-control" style="width:30%" placeholder="telefono"/>
		</div>
		<button type="submit" class="btn btn-default">Registrar</button>
		
	</form>
	<br/><br/>
</div>
</html>