<%@page import="java.util.LinkedList"%>
<%@page import="entidades.*"%>
<%@page import="logic.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Empleados</title>
<!-- Bootstrap core CSS -->
  <link href="style/mainpage/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="style/mainpage/modern-business.css" rel="stylesheet">
  
 <!-- Estilo para el listado de clientes -->
 <link href="style/clientes-admin/listado-clientes.css" rel="stylesheet">
 
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
 
     <!-- Custom styles for this template -->
  <link href="style/clientes-admin/confirmacion.css" rel="stylesheet">
  
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<% LinkedList<Persona> le = (LinkedList<Persona>)request.getAttribute("empleados");
%>
</head>
<body>

<!-- Page Content -->
  <div class="container">
 <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="mainpage-admin.jsp">Supermercado</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item ">
            <a class="nav-link" href="mainpage-admin.jsp">Home
              
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="ListCategorias">Categor�as</a>
          </li>
          <li class="nav-item">
           <a class="nav-link" href="ListDescuentos">Descuentos</a>
          </li>
          <li class="nav-item ">
	            <a class="nav-link" href="ListClientes">Clientes</a>
	         
          </li>
          <li class="nav-item active">
	            <a class="nav-link" href="ListEmpleados">Empleados</a>
	            <span class="sr-only">(current)</span>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="ListProductos">Productos</a>
          </li>
          <li class="nav-item">
             <a class="nav-link" href="ListPedidos">Pedidos</a>
          </li>
          <li class="nav-item">
             <form action="Inicio" method="get">
              	<a class="nav-link" href="">Cerrar Sesi�n</a>
          	  </form>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  </div>
  
 <hr> 
 <div class="container bootstrap snippets bootdey">
    <div class="row">
        <div class="col-lg-12">
            <div class="main-box no-header clearfix">
                <div class="main-box-body clearfix">
                    <div class="table-responsive">
                        <table class="table user-list">
                            <thead>
                                <tr>
                                <th align="center"><span>ID</span></th>
                                <th align="center"><span>Nombre</span></th>
                                <th align="center"><span>Apellido</span></th>
                                <th align="center"><span>Tipo Doc</span></th>
                                <th align="center"><span>N�mero Doc</span></th>
                                <th align="center"><span>Telefono</span></th>
                                <th align="center"><span>Direcci�n</span></th>
                                <th align="center"><span>Email</span></th>
                                <th align="center"><span>CUIL</span></th>
                                <th align="center"><span>Fecha de Ingreso</span></th>
                               
                                <th>&nbsp;</th>
                                </tr>
                            </thead>
                            <tbody>
	                           <% for (Persona per : le) { %>
	                    			<tr>
	                    			<td><%=per.getIdPersona() %></td>
                                    <td><%=per.getNombre()%></td>
                                    <td><%=per.getApellido() %></td>
                                    <td><%=per.getTipoDoc()%> </td>
                                    <td><%=per.getNroDoc()%> </td>
                                    <td><%=per.getTelefono() %> </td>
                                    <td><%=per.getDireccion()%> </td>
                                    <td><%=per.getEmail()%> </td>
                                    <td><%=per.getCuil()%> </td>
                                    <td><%=per.getFechaIngreso()%></td>
                                     <td style="width: 10%;">
                                        
                                        <a href="BuscarEmpleado?id=<%=per.getIdPersona()%>" class="table-link text-info">
                                            <span class="fa-stack">
                                                <i class="fa fa-square fa-stack-2x"></i>
                                                <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                            </span>
                                        </a>
                                        <a  href="DeleteEmpleado?id=<%=per.getIdPersona()%>" class="table-link danger" onclick="return confirm('Se eliminar� el empleado. Desea confirmar?');" >
                                            <span class="fa-stack">
                                                <i class="fa fa-square fa-stack-2x"></i>
                                                <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                            </span>
                                            
                                        </a>
                                    
                                    </td>
                                   
    
	                    		</tr>
	                    		   
	                    		
	                    		<% } %>
	                    		
                    			</tbody>	
                        </table>
                    </div>
                </div>
            </div>
            <span style="text-align: right; vertical-align: bottom;">
			
			<div class="w3-container">	 
			<form action="crear-empleado.jsp" method="post">
				<button class="w3-button w3-xlarge w3-circle w3-teal" type="submit" >+</button>
				<a href="crear-empleado.jsp"> Agregar Empleado</a>
			</form>
			</div>
			
			</span>
        </div>
    </div>
</div>




</body>
</html>