/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.CategoryDAO;
import dal.JobDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Job;

/**
 *
 * @author thinh
 */
@WebServlet(name = "SearchServlet", urlPatterns = {"/searchjob"})
public class SearchServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SearchServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        JobDAO JobDAO = new JobDAO();
        CategoryDAO CategoryDAO = new CategoryDAO();
        List<Category> listC = CategoryDAO.getAllCategory();
        String tittle = request.getParameter("tittle");
        String categoryID = request.getParameter("category");
        String location = request.getParameter("location");
        int cateID = Integer.parseInt(categoryID);
        String indexPage = request.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        int count = JobDAO.countJobBySearch(cateID, location, tittle);
        int endPage = count / 12;
        if (count % 12 != 0) {
            endPage++;
        }
        List<Job> list = JobDAO.pagingBySearch(index, tittle, cateID, location);
        request.setAttribute("search", tittle);
        request.setAttribute("selectedCategoryId", cateID);

        request.setAttribute("allCategory", listC);
        request.setAttribute("listJ", list);
        request.setAttribute("end", endPage);
        request.setAttribute("tag", index);
        request.setAttribute("count", count);
        request.getRequestDispatcher("All_Jobs.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
