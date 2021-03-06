package servlets;

import java.io.IOException;
import java.sql.Date;
import java.util.Calendar;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entidades.Persona;
import logic.PersonaController;

/**
 * Servlet implementation class AddClientes
 */
@WebServlet("/AddClientes")
public class AddClientes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddClientes() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		//response.getWriter().append("Hola: ").append(nombre);		
		
		Persona per= new Persona();
		Persona cli= new Persona();
		PersonaController ctrl= new PersonaController();
		
		String nombre= request.getParameter("name");
		
		String apellido= request.getParameter("surname");
				
		String tDoc= request.getParameter("tipoDoc");
		
		String nDoc= request.getParameter("nroDoc");
		

		String telefono= request.getParameter("tel");
		
		String direccion= request.getParameter("direc");
		
		String email= request.getParameter("email");

		String pass= request.getParameter("pass");

		
		per.setTipoDoc(tDoc);
		per.setNroDoc(nDoc);
		per.setNombre(nombre);
		per.setApellido(apellido);
		per.setTelefono(telefono);
		per.setDireccion(direccion);
		per.setEmail(email);
		per.setPassword(pass);
		per.setCuil("");
		per.setFechaIngreso(null);
		//per.setCliente(true);
		//per.setEmpleado(false);
		Date hoy = new Date(System.currentTimeMillis()); 
		java.sql.Date timeNow = new Date(Calendar.getInstance().getTimeInMillis());
		//Date hoy= new Date(System.currentTimeMillis());
		per.setFechaRegistro(timeNow);

		//String pass2= request.getParameter("psw-repeat");
		//per.setPassword(pass2);
		
		//DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
		  // LocalDateTime now = LocalDateTime.now(); 
		cli=ctrl.addPersona(per);
		//LinkedList<Persona> personas = new LinkedList<Persona>();
		//personas=ctrl.listarClientes();
		
		request.setAttribute("nuevoCliente", cli);
		//request.setAttribute("listado", personas);
		request.getRequestDispatcher("registro-aceptado.jsp").forward(request, response);
			
			
			
		}
	
			//cartel de q esta mal
		
	}


