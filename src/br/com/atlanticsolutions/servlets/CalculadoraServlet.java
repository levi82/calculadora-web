package br.com.atlanticsolutions.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalculadoraServlet
 */
public class CalculadoraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CalculadoraServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double numero1 = Double.parseDouble(request.getParameter("n1"));
		double numero2 = Double.parseDouble(request.getParameter("n2"));
		String calculo = null;
		
		if (request.getParameter("Somar") != null) {
			if (request.getParameter("Somar").equals("Somar")) {
				calculo = "A soma é: " + (numero1 + numero2);
			}
		} else if(request.getParameter("Subtrair") != null) {
			 if(request.getParameter("Subtrair").equals("Subtrair")) {
					calculo = "A subtração é: " + (numero1 - numero2);
				}
		}
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("calculadora.jsp");
		
		request.setAttribute("soma", calculo);
		
		requestDispatcher.forward(request,response);
	}

}
