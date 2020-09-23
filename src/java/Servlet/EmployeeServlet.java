/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Been.Employee;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONException;

/**
 *
 * @author rusha
 */
public class EmployeeServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EmployeeServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EmployeeServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

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
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nic=request.getParameter("nic");
        String epfNo=request.getParameter("epfNo");
        String etfNo=request.getParameter("etfNo");
        String name=request.getParameter("name");
        String address=request.getParameter("address");
        String bank=request.getParameter("bank");
        String bankAccount=request.getParameter("bankAccount");
        String contactNo=request.getParameter("contactNo");
        String title=request.getParameter("title");
        String basic=request.getParameter("basic");
        String department=request.getParameter("department");
        String manager=request.getParameter("manager");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        String role=request.getParameter("role");
        
        Employee employee = new Employee();
        employee.setNic(nic);
        employee.setEpfNo(epfNo);
        employee.setEtfNo(etfNo);
        employee.setName(name);
        employee.setAddress(address);
        employee.setBank(bank);
        employee.setBankAccount(bankAccount);
        employee.setContactNo(contactNo);
        employee.setTitle(title);
        employee.setBasic(basic);
        employee.setDepartment(department);
        employee.setManager(manager);
        employee.setEmail(email);
        employee.setPassword(password);
        employee.setRole(role);
        employee.setStatus("ACTIVE");
        
        System.out.println(epfNo);
         try {
            if (employee.newEmployee()){
                response.sendRedirect("Employee.jsp");
            }
            else
            {
                response.sendRedirect("Employee.jsp");
            }
        } catch (JSONException ex) {
            Logger.getLogger(AllowanceServlet.class.getName()).log(Level.SEVERE, null, ex);
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
    }// </editor-fold>

}
