package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.UserDao;
import com.bean.UserBean;


/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		UserDao dao=new UserDao();
		//UserBean user;// = new UserBean();
		UserBean user=dao.CheckUser(email, password);
		
		if(user == null) {
			out.println("<script type=\"text/javascript\">");
			 out.println("alert('No Such User Present...')");
			 out.println("location='Userlogin.jsp';");
			 out.println("</script>");
		}
		else if((user.getEmail()!=null && user.getEmail()!="") && (user.getPassword()!=null && user.getPassword()!=""))
		{
			if(user.getStatus().equals("Active"))
			{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Login Successful')");
			out.println("location='UserHome.jsp';");
			out.println("</script>");
			out.print("welcome"+email);
			HttpSession session=request.getSession();  
	        session.setAttribute("email",user.getEmail());  
	        session.setAttribute("fullname", user.getFullname());
	        session.setAttribute("id", user.getId());
	        session.setAttribute("phoneNo", user.getPhoneNo());
	        session.setAttribute("studclass", user.getStudclass());
	        session.setAttribute("gender", user.getGender());
	        
		    }
			else {
				request.setAttribute("ErrMsg", "Wait for activation of your account!...");
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Wait For Activation')");
				out.println("location='Userlogin.jsp';");
				out.println("</script>");
			}
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
