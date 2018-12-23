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
@WebServlet(name = "slservlet", urlPatterns = {"/slservlet"})
public class slservlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String  unm=request.getParameter("txtunm");
       String  pass=request.getParameter("pass");
       int flag=0;
     

        try 
        {
                     
            int u=unm.length();
            int p=pass.length();
          
            if(u<=0||p<=0)
            {
              JOptionPane.showMessageDialog(null," plz fill up all information"); 
                 RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
                    rd.forward(request, response);
           
               
            }
           else if(p<5)
            {
                 JOptionPane.showMessageDialog(null," password length should be atlest 6 ");
                RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
                rd.forward(request, response);
           
               
            }
            else
            {
            Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
           out.println("connected");
            Statement st=con.createStatement();
          
             ResultSet re=st.executeQuery("select * from registers ");
        
        while(re.next())
        {
           String u1=re.getString(2); 
           String pa=re.getString(3); 
          
           if(u1.equals(unm)&& pa.equalsIgnoreCase(pass))
           {
               flag=1;
           }
        }
       if(flag==1)
        {
            JOptionPane.showMessageDialog(null," login successfull");
            RequestDispatcher rd=request.getRequestDispatcher("/chotest.jsp");
                rd.forward(request, response);
           
        }
        else
        {
            JOptionPane.showMessageDialog(null," login failed");
        
            RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
                rd.forward(request, response);
        }
        
            
        } 
                  
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
