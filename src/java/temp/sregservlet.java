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

@WebServlet(name = "sregservlet", urlPatterns = {"/sregservlet"})
public class sregservlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String sfnm=request.getParameter("txtfnm");
        String sunm=request.getParameter("txtunm");
        String spass=request.getParameter("passr");
        String scpass=request.getParameter("passcr");
        String phno=request.getParameter("txtmo");
        String cls=request.getParameter("txtcls");
        
        try 
        {
            
          int sf=sfnm.length();
        int su=sunm.length();
        int sp=spass.length();
        int scp=scpass.length();
        int pno=phno.length();
        
            if(sf<=0||su<=0||sp<=0||scp<=0||pno<=0)
            {
                JOptionPane.showMessageDialog(null," plz fill up all information"); 
                RequestDispatcher rd=request.getRequestDispatcher("/sreg.jsp");
                 rd.forward(request, response);
           
            }
            else if(sp<5)
            {
                JOptionPane.showMessageDialog(null," password length should be atlest 6 ");
                RequestDispatcher rd=request.getRequestDispatcher("/sreg.jsp");
                rd.forward(request, response);
           
            }
            else if(spass.equalsIgnoreCase(scpass))
            {
                
            }
            else
            {
              JOptionPane.showMessageDialog(null," password and confirm password should be same"); 
                RequestDispatcher rd=request.getRequestDispatcher("/sreg.jsp");
                 rd.forward(request, response);
              
            }
            
            
        Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
           out.println("connected");
           Statement  st=con.createStatement();
          
        st.executeUpdate("insert into registers values('"+sfnm+"','"+sunm+"','"+spass+"','"+scpass+"',"+phno+",'"+cls+"')");
        JOptionPane.showMessageDialog(null," Record inserted successfully"); 
         RequestDispatcher rd=request.getRequestDispatcher("/sreg.jsp");
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
