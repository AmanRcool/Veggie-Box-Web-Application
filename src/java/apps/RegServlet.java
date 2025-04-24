/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package apps;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DB.DbConnection;

/**
 *
 * @author Analyze
 */
public class RegServlet extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String name = request.getParameter("name");
            String emailid = request.getParameter("emailid");
            String contc = request.getParameter("contc");
            String addrs = request.getParameter("addrs");
            String city = request.getParameter("city");
            String gendr = request.getParameter("gendr");
            String uname = request.getParameter("uname");
            String pswd = request.getParameter("pswd");


            String ut = request.getParameter("ut");
          
            DbConnection db = new DbConnection();
            db.pstmt = db.con.prepareStatement("INSERT INTO registration(nname,email,contact,address,city,gender) VALUES(?,?,?,?,?,?,?,?)");

            db.pstmt.setString(1, name);
            db.pstmt.setString(2, emailid);
            db.pstmt.setString(3, contc);
            db.pstmt.setString(4, addrs);
            db.pstmt.setString(5, city);
            db.pstmt.setString(6, gendr);
           
            int i1 = db.pstmt.executeUpdate();

            db.pstmt = db.con.prepareStatement("INSERT INTO login(uname,pswd,tpe) VALUES(?,?,?");

            db.pstmt.setString(1, uname);
            db.pstmt.setString(2, pswd);
            db.pstmt.setString(3, ut);
            int i2 = db.pstmt.executeUpdate();
            if (i1 > 0 && i2 > 0) {
                response.sendRedirect("index.jsp");
            } else {
                response.sendRedirect("registration.jsp");

            }


        } catch (Exception e) {
            //e.printStackTrace();
           System. out.println(e);

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
