/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hetro
 */
public class register extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {

            RequestDispatcher rd = null;
            String Name = request.getParameter("name");
            String Email = request.getParameter("email");
            String Pass = request.getParameter("pass");
            String RePass = request.getParameter("re_pass");
            String Contact = request.getParameter("contact");
            String Adhhar = request.getParameter("Addharcard");
            
            

            if (!Name.equals("") || !Email.equals("") || !Pass.equals("") || !RePass.equals("") || !Contact.equals("")) {
                if (Pass.equals(RePass)) {
                    if (Contact.length() == 10) {
                        try {
                            Class.forName("com.mysql.jdbc.Driver");

                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/het", "root", "");
                            Statement s = con.createStatement();

                            ResultSet rs = s.executeQuery("SELECT * FROM Accounts WHERE (Mobile='" + Contact + "' AND Password='" + Pass + "') OR (Email='" + Email + "' AND Password='" + Pass + "')");

                            if (rs.next() == false) {
                                PreparedStatement ps = con.prepareStatement("insert into Accounts(Name,Email,Mobile,Password,Addharcard)values(?,?,?,?,?)");

                                ps.setString(1, Name);
                                ps.setString(2, Email);
                                ps.setString(3, Contact);
                                ps.setString(4, Pass);
                                ps.setString(5, Adhhar);
                                int rowCount = ps.executeUpdate();

                                rd = request.getRequestDispatcher("registration.jsp");

                                if (rowCount > 0) {
                                    request.setAttribute("status", "success");
                                } else {

                                    request.setAttribute("status", "failed");
                                }
                                rd.forward(request, response);

                            } else {
                                out.write("Account all ready created");
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }

                    } else {
                        rd = request.getRequestDispatcher("registration.jsp");
                        request.setAttribute("status", "ContactNotValid");
                        rd.forward(request, response);
                    }
                } else {
                    rd = request.getRequestDispatcher("registration.jsp");
                    request.setAttribute("status", "PswNotMatch");
                    rd.include(request, response);

                }
            } else {
                rd = request.getRequestDispatcher("registration.jsp");
                request.setAttribute("status", "NotFilled");
                rd.forward(request, response);

            }

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
        processRequest(request, response);
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
