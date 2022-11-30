import static javax.swing.JOptionPane.showMessageDialog;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		
		// Step 1: Initialize a PrintWriter object to return the html values via the response
		PrintWriter out = response.getWriter();
		
		// Step 2: retrieve the two parameters from the request from the web form
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/nourish", "root", "password");
		
			Statement st = con.createStatement();
			ResultSet rs;
			rs = st.executeQuery("select * from users where username='" + username + "' and password='" +password + "'");
			if (rs.next()) {
				HttpSession session = request.getSession();
				session.setAttribute("user", username);
				System.out.println(username);
		        response.sendRedirect("HomeServlet");
		    } else {
		    	response.sendRedirect("login.jsp");
		    	showMessageDialog(null, "Invalid username or password. Try again");	
		    }
			
		}
		//Step 8: catch and print out any exception
		catch (Exception exception) {
			System.out.println(exception);
		out.close();
		}
		
		doGet(request, response);
	}
}
