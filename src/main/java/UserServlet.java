
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dvops.maven.eclipse.Recipe;
import com.dvops.maven.eclipse.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserServlet() {
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

		String action = request.getServletPath();
		try {
			switch (action) {
			case "/insert":
				break;
			case "/delete":
				break;
			case "/UserServlet/edit":
				showEditForm(request, response);
				break;
			case "/UserServlet/update":
				updateUser(request, response);
				break;
			case "/UserServlet/userprofile":
				listUser(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}

	}

	// method to get parameter, query database for existing user data and redirect
	// to user edit page
	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {

		HttpSession session = request.getSession();
		// SELECT_USER_BY_ID SQL prepared statement: getting the user's id from the
		// session storage
		String query = "select * from users where id = " + session.getAttribute("userId");
		User existingUser = new User((int) (session.getAttribute("userId")), "", "", "");

		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(query);) {
			preparedStatement.setString(1, (String) session.getAttribute("user"));
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();
			// Step 4: Process the ResultSet object
			while (rs.next()) {
				String username = rs.getString("username");
				String email = rs.getString("email");
				String password = rs.getString("password");
				existingUser = new User((int) (session.getAttribute("userId")), username, email, password);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		// Step 5: Set existingUser to request and serve up the userEdit form
		request.setAttribute("user", existingUser);
		request.getRequestDispatcher("/editProfile.jsp").forward(request, response);
	}

	// method to update the user table base on the form data
	private void updateUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		
		HttpSession session = request.getSession();
		
		// Step 1: Retrieve value from the request
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		
		String query = "update users set username =  ?, email = ? where username =" + session.getAttribute("user");
		
		// Step 2: Attempt connection with database and execute update user SQL query
		try (Connection connection = getConnection();
			PreparedStatement statement = connection.prepareStatement(query);) {
			statement.setString(1, username);
			statement.setString(3, email);
			int i = statement.executeUpdate();
		}
		// Step 3: redirect back to UserServlet (note: remember to change the url to
		// your project name)
		response.sendRedirect("UserServlet");
	}

	// listUser function to connect to the database and retrieve the user's record
	// and display in the profile.jsp
	private void listUser(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {

		HttpSession session = request.getSession();
		// SELECT_USER_BY_ID SQL prepared statement: getting the user's id from the
		// session storage
		String query = "select * from users where id = " + session.getAttribute("userId");

		List<User> user = new ArrayList<>();
		try (Connection connection = getConnection();

				// Step 5.1: Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(query);) {

			// Step 5.2: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 5.3: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("id");
				String username = rs.getString("username");
				String email = rs.getString("email");
				String password = rs.getString("password");
				System.out.println(username + "'s profile");
				user.add(new User(id, username, email, password));

			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}

		// set the listUser attribute to be pass to the profile.jsp
		request.setAttribute("listUser", user);
		request.getRequestDispatcher("profile.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
