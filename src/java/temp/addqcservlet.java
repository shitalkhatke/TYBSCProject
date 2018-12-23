
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


@WebServlet(name = "addqcservlet", urlPatterns = {"/addqcservlet"})
public class addqcservlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        
        int qno=Integer.parseInt(request.getParameter("qno"));
        String qnm=request.getParameter("que");
        String op1=request.getParameter("op1");
        String op2=request.getParameter("op2");
        String op3=request.getParameter("op3");
        String op4=request.getParameter("op4");
        String ans=request.getParameter("ans");
        try 
        {
            int sf=ans.length();
        int su=qnm.length();
        int sp=op1.length();
        int scp=op2.length();
        int pno=op3.length();
        int pn=op4.length();

                        if(sf<=0||su<=0||sp<=0||scp<=0||pno<=0||pn<=0)
            {
                JOptionPane.showMessageDialog(null," plz fill up all information"); 
                RequestDispatcher rd=request.getRequestDispatcher("/AddQC.jsp");
                 rd.forward(request, response);
           
            }
                        else
                        {
                        }
            Class.forName("com.mysql.jdbc.Driver");
         Connection  con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
          // out.println("connected");
           Statement  st=con.createStatement();
          
        st.executeUpdate("insert into ctestq1 values("+qno+",'"+qnm+"','"+op1+"','"+op2+"','"+op3+"','"+op4+"','"+ans+"')");
        JOptionPane.showMessageDialog(null,"Record inserted successfully"); 
         RequestDispatcher rd=request.getRequestDispatcher("/AddQC.jsp");
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
