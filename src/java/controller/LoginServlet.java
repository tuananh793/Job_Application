/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author thinh
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        Cookie arr[] = request.getCookies();
        if (arr != null) {
            for (Cookie o : arr) {
                if (o.getName().equals("userC")) {
                    request.setAttribute("username", o.getValue());
                }
                if (o.getName().equals("passC")) {
                    request.setAttribute("password", o.getValue());
                }
            }
        }
        request.getRequestDispatcher("Login.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        String remember = request.getParameter("remember");
        UserDAO dao = new UserDAO();
        Account a = dao.login(username, password);
        if (a == null) {
            request.setAttribute("mess", "Sai thông tin đăng nhập!");
            request.setAttribute("username", username);
            request.setAttribute("password", password);
            request.getRequestDispatcher("Login.jsp").forward(request, response);           
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("acc", a);
            Cookie u = new Cookie("userC", username);
            Cookie p = new Cookie("passC", password);
            //Code Remember Me
            u.setMaxAge(60 * 60);
            if (remember != null) {
                p.setMaxAge(60 * 60);
            } else {
                p.setMaxAge(0);
            }
            response.addCookie(u);
            response.addCookie(p);
            if (a.getIsAdmin() == 1 ) {
                session.setAttribute("isAdmin", 1);
                
            }
            response.sendRedirect("home");
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold
}
