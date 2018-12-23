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

@WebServlet(name = "chkcans", urlPatterns = {"/chkcans"})
public class chkcans extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String name=request.getParameter("txtnm");
        String cls=request.getParameter("txtcls");
        String sub=request.getParameter("txtsub");
        
        String nm1=request.getParameter("nm");
        String nm2=request.getParameter("nm1");
        String nm3=request.getParameter("nm2");
        String nm4=request.getParameter("nm3");
        String nm5=request.getParameter("nm4");
        String nm6=request.getParameter("nm5");
        String nm7=request.getParameter("nm6");
        String nm8=request.getParameter("nm7");
        String nm9=request.getParameter("nm8");
        String nm10=request.getParameter("nm9");
         
        try 
        {
            int count=0;int s=0;
            Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
          
          Statement st=con.createStatement();
      
          String nm11=""; String nm12="";String nm13=""; String nm14="";
          String nm15=""; String nm16="";String nm17=""; String nm18="";
          String nm19=""; String nm20="";
        ResultSet  rs=st.executeQuery("select * from ctestq1 where qno=1");
                        while(rs.next())
                                      {
                                  
                                       nm11=rs.getString(7);
                                      }
                                      if(nm11.equals(nm1))
                                      {
                                           
                                          count=count+2;
                                     
                                      }
                                      else 
                                      {
                                     }
                                   
                                  
           rs=st.executeQuery("select * from ctestq1 where qno=2");
                        while(rs.next())
                                      {
                                   
                                       nm12=rs.getString(7);
                                      if(nm12.equals(nm2))
                                      {
                                          count=count+2; s=count;
                                      }
                                      else 
                                      {
                                      }
                                       }
                         rs=st.executeQuery("select * from ctestq1 where qno=3");
                        while(rs.next())
                                      {
                                   
                                       nm13=rs.getString(7);
                                      if(nm13.equals(nm3))
                                      {
                                          count=count+2; s=count;
                                      }
                                      else 
                                      {
                                      }
                                       }
                         rs=st.executeQuery("select * from ctestq1 where qno=4");
                        while(rs.next())
                                      {
                                   
                                       nm14=rs.getString(7);
                                      if(nm14.equals(nm4))
                                      {
                                          count=count+2; s=count;
                                      }
                                      else 
                                      {
                                      }
                                       }
                         rs=st.executeQuery("select * from ctestq1 where qno=5");
                        while(rs.next())
                                      {
                                   
                                       nm15=rs.getString(7);
                                      if(nm15.equals(nm5))
                                      {
                                          count=count+2; s=count;
                                      }
                                      else 
                                      {
                                      }
                                       }
                         rs=st.executeQuery("select * from ctestq1 where qno=6");
                        while(rs.next())
                                      {
                                   
                                       nm16=rs.getString(7);
                                      if(nm16.equals(nm6))
                                      {
                                          count=count+2; s=count;
                                      }
                                      else 
                                      {
                                      }
                                       }
                         rs=st.executeQuery("select * from ctestq1 where qno=7");
                        while(rs.next())
                                      {
                                   
                                       nm17=rs.getString(7);
                                      if(nm17.equals(nm7))
                                      {
                                          count=count+2; s=count;
                                      }
                                      else 
                                      {
                                      }
                                       }
                         rs=st.executeQuery("select * from ctestq1 where qno=8");
                        while(rs.next())
                                      {
                                   
                                       nm18=rs.getString(7);
                                      if(nm18.equals(nm8))
                                      {
                                          count=count+2; s=count;
                                      }
                                      else 
                                      {
                                      }
                                       }
                         rs=st.executeQuery("select * from ctestq1 where qno=9");
                        while(rs.next())
                                      {
                                   
                                       nm19=rs.getString(7);
                                      if(nm19.equals(nm9))
                                      {
                                          count=count+2; s=count;
                                      }
                                      else 
                                      {
                                      }
                                       }
                         rs=st.executeQuery("select * from ctestq1 where qno=10");
                        while(rs.next())
                                      {
                                   
                                       nm20=rs.getString(7);
                                      if(nm20.equals(nm10))
                                      {
                                          count=count+2;
                                          s=count;
                                      }
                                      else 
                                      {
                                      }
                                      }
        
     
      
       
          st.executeUpdate("insert into results1 values('"+name+"','"+cls+"','"+sub+"',"+count+")");
          JOptionPane.showMessageDialog(null," Your Score is "+count+" Out of 20");  
         RequestDispatcher rd=request.getRequestDispatcher("/1.jsp");
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
