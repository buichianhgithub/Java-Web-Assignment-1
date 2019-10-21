package gbc.assignment.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gbc.assignment.connection.DatabaseAccess;

@WebServlet(name = "s1", urlPatterns = { "/login" })
public class AuthenticationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AuthenticationServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("firstname");
		session.invalidate();
		response.sendRedirect("login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		try {
			Connection conn = DatabaseAccess.connectDataBase();
			if (conn != null) {
				PreparedStatement preparedStatement = conn
						.prepareStatement("select * from users where email = ? and password = ?");

				preparedStatement.setString(1, username);
				preparedStatement.setString(2, password);
				System.out.println(preparedStatement);
				ResultSet rs = preparedStatement.executeQuery();
				if (rs.next()) {
					String fName = rs.getString("firstname");
					String lName = rs.getString("lastname");
					String email = rs.getString("email");
					String pass = rs.getString("password");
					String role = rs.getString("role");
					// System.out.println("Role: "+role);

					if (role.equals("admin")) {
						HttpSession session = request.getSession();
						session.setAttribute("first_name", fName);
						session.setAttribute("last_name", lName);
						session.setAttribute("email", email);
						session.setAttribute("pass", pass);

						response.sendRedirect("dashboard.jsp");
					}
					if (role.equals("client")) {
						// do something else
					}

				} else {
					response.setContentType("text/html");
					PrintWriter pw = response.getWriter();
					pw.write("<p style='color:red;'>Invalid Credentials</p>");
					request.getRequestDispatcher("login.jsp").include(request, response);
				}
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	

}
