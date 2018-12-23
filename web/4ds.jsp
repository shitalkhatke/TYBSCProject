<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.beans.Statement"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DS Test</title>
    </head>
    <body style="background-image:url(img/83.jpg)">
       <form method="post" action="chkdsans">
            <center>
                <table>
                    <tr>
                        <td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                        <td>
                            <a href="chotest.jsp">Log Out</a> 
            
                        </td>
                    </tr>
                </table>
            </center>
         <table>
                <tr>
                    <td>
                        Enter Name:
                    </td>
                     <td>
                        <input type="text" name="txtnm"></input>
                    </td>
                </tr>
                 <tr>
                    <td>
                        Enter class:
                    </td>
                     <td>
                        <input type="text" name="txtcls"></input>
                    </td>
                </tr>
                 <tr>
                    <td>
                        Enter subject:
                    </td>
                     <td>
                        <input type="text" name="txtsub"></input>
                    </td>
                </tr>
            </table>
         
                <% 
       java.sql.Connection con;
       java.sql.Statement st;
       java.sql.ResultSet rs;
       
       con=null;
       st=null;
       rs=null;
      //int i=0;
       //ArrayList<Integer> ar=new ArrayList<Integer>();
        try
            {
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
           
             st=con.createStatement();
            
           
                        
                    
          
                         
                      rs=st.executeQuery("select * from dstestq1 where qno=1");
                        while(rs.next())
                                      {
                                   
                                      out.println("<br>"+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                              
                                   
                         rs=st.executeQuery("select * from dstestq1 where qno=2");
                        while(rs.next())
                                      {
                            
                                      out.println(""+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm1' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm1' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm1' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm1' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                    
                                    
                           
                         rs=st.executeQuery("select * from dstestq1 where qno=3");
                        while(rs.next())
                                      {
                                      out.println(""+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm2' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm2' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm2' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm2' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                      

                         
                         rs=st.executeQuery("select * from dstestq1 where qno=4");
                        while(rs.next())
                                      {
                                      out.println(""+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm3' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm3' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm3' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm3' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                              
                          
                        
                         rs=st.executeQuery("select * from dstestq1 where qno=5");
                        while(rs.next())
                                      {
                                      out.println(""+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm4' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm4' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm4' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm4' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                    
             
                         rs=st.executeQuery("select * from dstestq1 where qno=6");
                        while(rs.next())
                                      {
                                      out.println(""+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm5' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm5' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm5' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm5' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                    
                         rs=st.executeQuery("select * from dstestq1 where qno=7");
                        while(rs.next())
                                      {
                                      out.println(""+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm6' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm6' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm6' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm6' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                    
                            
                         rs=st.executeQuery("select * from dstestq1 where qno=8");
                        while(rs.next())
                                      {
                                      out.println(""+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm7' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm7' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm7' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm7' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                     
                            
                         rs=st.executeQuery("select * from dstestq1 where qno=9");
                        while(rs.next())
                                      {
                                      out.println(""+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm8' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm8' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm8' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm8' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                    
                          
                         rs=st.executeQuery("select * from dstestq1 where qno=10");
                        while(rs.next())
                                      {
                                      out.println(""+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm9' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm9' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm9' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm9' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                    
                           
                            
                         
                       
                       
            }
        catch(Exception e)
                 {
        
                  }
        %> 
        <table>
            <tr>
             <td><input type="submit" value="save"></input> </td>
            <td> <a href="login.jsp">Log Out</a></td>
             </tr>
             </table>
      </form> 
    </body>
</html>
