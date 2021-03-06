<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crear cuenta</title>

  <!-- Bootstrap core CSS -->
  <link href="style/mainpage/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="style/mainpage/modern-business.css" rel="stylesheet">
  
   <!--  <link href="style/login/login.css" rel="stylesheet"> -->
   
     
    <link href="style/login/login.css" rel="stylesheet">
   
  
</head>
<body>

 <!-- Navigation -->
	  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	    <div class="container">
	      <a class="navbar-brand" href="index.jsp">Supermercado</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="navbar-toggler-icon"></span>
	      </button>
	      <div class="collapse navbar-collapse" id="navbarResponsive">
	        <ul class="navbar-nav ml-auto">
	           <li class="nav-item ">
	            <a class="nav-link" href="login.jsp">Iniciar Sesi�n
	             
	            </a>
          	  </li>
	          <li class="nav-item active">
	            <a class="nav-link" href="registro.jsp">Registrarse</a>
	             <span class="sr-only">(current)</span>
	          </li>
	          
	        </ul>
	      </div>
	    </div>
	  </nav>
  
<div class="container-fluid">
  <div class="row no-gutter">
    <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
    <div class="col-md-8 col-lg-6">
      <div class="login d-flex align-items-center py-5">
        <div class="container">
          <div class="row">
            <div class="col-md-9 col-lg-8 mx-auto ">
              <h3 class="login-heading mb-4 text-center">Cre� tu cuenta</h3>
              
              <form action="AddClientes" method="post">
               
                <div class="form-label-group">
                  <input type="text" name="name" id="inputName" class="form-control" placeholder="Nombre" required >
                  <label for="inputEmail">Nombre</label>
                </div>

                <div class="form-label-group">
                  <input type="text" name="surname" id="inputSurname" class="form-control" placeholder="Apellido" required>
                  <label for="inputPassword">Apellido</label>
                </div>

				
                <div class="form-label-group">
                  <input type="text" name="tipoDoc" id="inputTipo" class="form-control" placeholder="Tipo doc" required>
                  <label for="inputPassword">Tipo Documento</label>
                </div>
                
                <div class="form-label-group">
                  <input type="text" name="nroDoc" id="inputNro" class="form-control" placeholder="Nro doc" required>
                  <label for="inputPassword">Nro Documento</label>
                </div>
             
                <div class="form-label-group">
                  <input type="text" name="tel" id="inputTel" class="form-control" placeholder="Telefono" required>
                  <label for="inputPassword">Tel�fono</label>
                </div>
                
                <div class="form-label-group">
                  <input type="text" name="direc" id="inputDirec" class="form-control" placeholder="Direcci�n" required>
                  <label for="inputPassword">Direcci�n</label>
                </div>
                
                <div class="form-label-group">
                  <input type="email" name="email" id="inputEmail" class="form-control" placeholder="Email" required>
                  <label for="inputPassword">Email</label>
                </div>
                
                <div class="form-label-group">
                  <input type="password" name="pass" id="inputPass" class="form-control" placeholder="Contrase�a" required>
                  <label for="inputPassword">Contrase�a</label>
                </div>
                
                <form action="AddClientes" method="post">
                <button class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit" onclick="return confirm('Se agregar� un nuevo cliente. Desea confirmar?')">Agregar</button>
                </form>
                
                <div class="text-center">
                  Ya ten�s cuenta? <a  href="login.jsp">Ingres�</a></div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>