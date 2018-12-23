package temp;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.swing.*;

@WebServlet(name = "result", urlPatterns = {"/result"})
public class result extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         String name=request.getParameter("txtnm");
        String cls=request.getParameter("txtcls");
        String sub=request.getParameter("txtsub");
        int c=0;
        int flag=0;
        try
        {
            
             Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
           
           Statement  st=con.createStatement();
            
           
                        
                    
          
                         
                     ResultSet rs=st.executeQuery("select * from results1");
                        while(rs.next())
                                      {
                                         String nms=rs.getString(1);
                                         String nmt=rs.getString(2);
                                         String nme=rs.getString(3);
                                         if(name.equals(nms)&& cls.equals(nmt) && sub.equals(nme))
                               
                                         {
                                       c=c+(rs.getInt(4));
                                        flag=1;
                                         }
                                          }
                        if(flag==1)
                        {
                            JOptionPane.showMessageDialog(null," Your Score is "+c+" Out of 20");  
                           RequestDispatcher rd=request.getRequestDispatcher("/resultfrm.jsp");
                       rd.forward(request, response);
                        }
                        
                                         if(flag==0)
                                          {
                                       JOptionPane.showMessageDialog(null," Invalid user");  
                                       RequestDispatcher rd=request.getRequestDispatcher("/resultfrm.jsp");
                                       rd.forward(request, response);
                                          }
        

        }
        catch(Exception e)
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
