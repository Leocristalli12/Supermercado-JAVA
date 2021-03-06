package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entidades.Categoria;
import logic.CategoriaController;
/**
 * Servlet implementation class DeleteEmpleado
 */
@WebServlet("/DeleteCategoria")
public class DeleteCategoria extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCategoria() {
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
		CategoriaController ctrl= new CategoriaController();
		Categoria cat = new Categoria();
		int id = Integer.parseInt(request.getParameter("id"));
		//response.getWriter().append("Served at: ").append(id);
		cat.setIdCategoria(id);
		cat =ctrl.getOne(cat);
		cat=ctrl.deleteCategoria(cat);
		request.setAttribute("categorias", ctrl.listarCategorias());
		request.getRequestDispatcher("ListCategorias").forward(request, response);
	
	}

}
