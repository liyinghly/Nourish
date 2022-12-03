
import static javax.swing.JOptionPane.showMessageDialog;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dvops.maven.eclipse.Comment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;

/**
 * Servlet implementation class AddCommentServlet
 */
@WebServlet("/AddCommentServlet")
public class AddCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddCommentServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	// variables used for database connections
	private String jdbcURL = "jdbc:mysql://localhost:3306/nourish";
	private String jdbcUsername = "root";
	private String jdbcPassword = "password";

	// Step 3: Implement the getConnection method which facilitates connection to
	// the database via JDBC

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return connection;
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");

		// Step 1: Initialize a PrintWriter object to return the html values via the
		// response

		HttpSession session = request.getSession();
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
		LocalDateTime now = LocalDateTime.now();

		// retrieving values for userId, recipeId, review
		int userId = (int) session.getAttribute("userId");
		int recipeId = (int) session.getAttribute("recipeId");
		String review = request.getParameter("review");
		
		System.out.println("userId: " + userId);
		System.out.println("recipeId: " + recipeId);

		String query = "insert into comments(recipeId, recipeName, userId, username, review, datePosted) values(?, ?, ?, ?, ?, ?)";
		System.out.print(query);
		// List<Comment> comment = new ArrayList<>();

		// Step 3: attempt connection to database using JDBC, you can change the
		// username and password accordingly using the phpMyAdmin > User Account
		// dashboard
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nourish", "root", "password");

			// Step 4: implement the sql query using prepared statement
			// (https://docs.oracle.com/javase/tutorial/jdbc/basics/prepared.html)
			PreparedStatement ps = con.prepareStatement(query);

			// Step 5: parse in the data retrieved from the web form request into the prepared statement accordingly
			ps.setInt(1, recipeId);
			ps.setString(2,  (String) session.getAttribute("recipeName"));
			ps.setInt(3, userId);
			ps.setString(4, (String) session.getAttribute("user"));
			ps.setString(5, review);
			ps.setString(6, dtf.format(now));
			
			// Step 6: perform the query on the database using the prepared statement
			int i = ps.executeUpdate();
			response.sendRedirect("RecipeDetailServlet?id=" + session.getAttribute("recipeId"));
			showMessageDialog(null, "Comment Added");

		}

		// Step 8: catch and print out any exception
		catch (Exception exception) {
			System.out.println(exception);
		}

		doGet(request, response);
	}

}
