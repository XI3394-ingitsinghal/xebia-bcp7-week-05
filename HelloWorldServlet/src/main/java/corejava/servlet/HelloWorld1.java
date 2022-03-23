package corejava.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloWorld1
 */
@WebServlet("/HelloWorld1")
public class HelloWorld1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	* Default constructor.
	*/
	public HelloWorld1() {
	}

	/*
	* This method will handle all GET request.
	*/
	protected void doGet(HttpServletRequest request,
	HttpServletResponse response) throws ServletException, IOException {

	System.out.println("Hello World");
	}

	/*
	* This method will handle all POST request
	*/
	protected void doPost(HttpServletRequest request,
	HttpServletResponse response) throws ServletException, IOException {

	}

}
