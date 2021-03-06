package servlets;

import java.io.IOException;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entidades.Pedido;
import entidades.Producto;
import logic.PedidoController;
import logic.ProductoController;

/**
 * Servlet implementation class DeleteProducto
 */
@WebServlet("/DeleteProducto")
public class DeleteProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteProducto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		
		ProductoController ctrl= new ProductoController();
		Producto prod= new Producto();
		int id = Integer.parseInt(request.getParameter("id"));
		prod.setIdProducto(id);
		prod=ctrl.getById(prod);
		prod=ctrl.deleteProducto(prod);
		
		request.setAttribute("productos", ctrl.listarProductos());
		request.getRequestDispatcher("ListProductos").forward(request, response);
		
		
	}

}


