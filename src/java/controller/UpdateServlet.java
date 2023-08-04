/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CategoryDAO;
import dal.JobDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
 * @author admin
 */
@WebServlet(name = "UpdateServlet", urlPatterns = {"/update"})
public class UpdateServlet extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String jobID = request.getParameter("JobID");
        JobDAO jdao = new JobDAO();
        Job job = jdao.getJobByID(jobID);
        request.setAttribute("job", job);
        CategoryDAO CategoryDAO = new CategoryDAO();
        List<Category> listC = CategoryDAO.getAllCategory();
        request.setAttribute("listC", listC);
        request.setAttribute("selectedCategoryID", job.getCategoryId());
        request.setAttribute("selectedType", job.getType());
        request.getRequestDispatcher("Edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String jid = request.getParameter("jid");
        String aid = request.getParameter("aid");
        String name = request.getParameter("jName");
        String company = request.getParameter("company");
        String logo = request.getParameter("logo");
        String location = request.getParameter("location");
        String CategoryID = request.getParameter("CategoryID");
        String desc = request.getParameter("desc");
        String jd = request.getParameter("jd");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String closingDate = request.getParameter("closingDate");
        String type = request.getParameter("type");
        String salary = request.getParameter("salary");
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();
        String publicDate = dtf.format(now);
        JobDAO dao = new JobDAO();
        dao.save(Integer.parseInt(jid),Integer.parseInt(aid), name, company, logo, CategoryID, type, salary, desc, jd, location, publicDate, closingDate, phone, email);
        response.sendRedirect("managejobs");

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
