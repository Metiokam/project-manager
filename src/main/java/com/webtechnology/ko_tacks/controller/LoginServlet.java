package com.webtechnology.ko_tacks.controller;

import com.webtechnology.ko_tacks.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private UserDao userDAO;
	
	/**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init() {
      userDAO = new UserDao(); // Instancie le DAO
    }
    
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email == null || email.isEmpty() || password == null || password.isEmpty()) {
            request.setAttribute("error", "Tous les champs doivent être remplis.");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            return;
        }

        try {
			if (userDAO.validate(email, password)) {
			    HttpSession session = request.getSession();
			    session.setAttribute("userEmail", email);
			    response.sendRedirect("home.jsp"); // Page d'accueil
			} else {
			    request.setAttribute("error", "Email ou mot de passe incorrect.");
			    request.getRequestDispatcher("Login.jsp").forward(request, response);
			}
		} catch (IOException | ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    
    /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("Login.jsp").forward(request, response);
    }
}
