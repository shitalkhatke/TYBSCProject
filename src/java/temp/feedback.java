package temp;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.swing.*;

@WebServlet(name = "feedback", urlPatterns = {"/feedback"})
public class feedback extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         String name=request.getParameter("txtnm");
        String addr=request.getParameter("txtadd");
        String con1=request.getParameter("con");
        String email=request.getParameter("txtemail");
        String phno=request.getParameter("phno");
        String fd=request.getParameter("fd");
        
        try 
        {
            
          int sf=name.length();
        int su=addr.length();
        int sp=con1.length();
        int scp=email.length();
        int pno=phno.length();
        int pno1=fd.length();
            if(sf<=0||su<=0||sp<=0||scp<=0||pno<=0||pno1<=0)
            {
                JOptionPane.showMessageDialog(null," plz fill up all information"); 
                RequestDispatcher rd=request.getRequestDispatcher("/Feedback.jsp");
                 rd.forward(request, response);
           
            }
            
            
        Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
           out.println("connected");
           Statement  st=con.createStatement();
         
        st.executeUpdate("insert into feedback values('"+name+"','"+addr+"','"+con1+"','"+email+"','"+phno+"','"+fd+"')");
        JOptionPane.showMessageDialog(null," Record inserted successfully"); 
         RequestDispatcher rd=request.getRequestDispatcher("/Feedback.jsp");
         rd.forward(request, response);
           
        } 
        catch(Exception ee) 
        {            
            
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
