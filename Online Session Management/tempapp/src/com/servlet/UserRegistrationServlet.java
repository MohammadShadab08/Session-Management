package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.UserDao;
import com.bean.UserBean;


/**
 * Servlet implementation class UserRegistrationServlet
 */
@WebServlet("/UserRegistrationServlet")
public class UserRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		String fullname = request.getParameter("fullname");		
		String studclass = request.getParameter("studclass");		
		String phoneNo = request.getParameter("phoneNo");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");		
		String password = request.getParameter("password");		
		String status = "Active";

		UserBean b = new UserBean();
		

		b.setFullname(fullname);		
		b.setStudclass(studclass);
	    b.setPhoneNo(phoneNo);
	    b.setEmail(email);
	    b.setGender(gender);
		b.setPassword(password);
		b.setStatus(status);

		UserDao dao = new UserDao();

		if (dao.InsertUserData(b)) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Registration Successful')");
			out.println("location='AdminHomePage.jsp';");
			out.println("</script>");
		} else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Registration UnSuccessful')");
			out.println("location='Userregistration.jsp';");
			out.println("</script>");
		}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
