<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.beans.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
         </head>
         <body style="background-image:url(img/84.jpg)">
             <form>
                <% 
       java.sql.Connection con;
       java.sql.Statement st;
       java.sql.ResultSet rs;
       
       con=null;
       st=null;
       rs=null;
       int i=0;
       ArrayList<Integer> ar=new ArrayList<Integer>();
        try
            {
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
           
             st=con.createStatement();
            
             out.println("created");
                        
                        for(int j=1;j<=10;j++)
                        ar.add(j);
                        Collections.shuffle(ar);
                       out.println("ar="+ar);
                        
          
                         for(i=0;i<9;i++)
                         {    
                            if(i==0)
                            {
                         rs=st.executeQuery("select * from ctestq where qno="+ar.get(i));
                        while(rs.next())
                                      {
                                   
                                      out.println("<br>"+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                    }          
                                                    else if(i==1){
                         rs=st.executeQuery("select * from ctestq where qno="+ar.get(i));
                        while(rs.next())
                                      {
                            
                                      out.println(""+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm1' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm1' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm1' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm1' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                    }          
                                    
                            else if(i==2){
                         rs=st.executeQuery("select * from ctestq where qno="+ar.get(i));
                        while(rs.next())
                                      {
                                      out.println(""+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm2' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm2' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm2' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm2' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                    }     

                         else if(i==3){
                         rs=st.executeQuery("select * from ctestq where qno="+ar.get(i));
                        while(rs.next())
                                      {
                                      out.println(""+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm3' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm3' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm3' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm3' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                    }          
                          
                           else if(i==4){
                         rs=st.executeQuery("select * from ctestq where qno="+ar.get(i));
                        while(rs.next())
                                      {
                                      out.println(""+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm4' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm4' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm4' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm4' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                    }
             else if(i==5){
                         rs=st.executeQuery("select * from ctestq where qno="+ar.get(i));
                        while(rs.next())
                                      {
                                      out.println(""+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm5' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm5' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm5' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm5' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                    } 
                            else if(i==6){
                         rs=st.executeQuery("select * from ctestq where qno="+ar.get(i));
                        while(rs.next())
                                      {
                                      out.println(""+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm6' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm6' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm6' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm6' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                    } 
                            else if(i==7){
                         rs=st.executeQuery("select * from ctestq where qno="+ar.get(i));
                        while(rs.next())
                                      {
                                      out.println(""+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm7' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm7' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm7' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm7' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                    } 
                            else if(i==8){
                         rs=st.executeQuery("select * from ctestq where qno="+ar.get(i));
                        while(rs.next())
                                      {
                                      out.println(""+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm8' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm8' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm8' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm8' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                    } 
                            else if(i==9){
                         rs=st.executeQuery("select * from ctestq where qno="+ar.get(i));
                        while(rs.next())
                                      {
                                      out.println(""+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm9' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm9' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm9' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm9' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                    } 
                            else if(i==10){
                         rs=st.executeQuery("select * from ctestq where qno="+ar.get(i));
                        while(rs.next())
                                      {
                                      out.println(""+rs.getString(2)+"<br>");
                                       out.println("<input type='radio' name='nm10' value="+rs.getString(3)+" >"+rs.getString(3)+"</input>");
                                       out.println("<input type='radio' name='nm10' value="+rs.getString(4)+" >"+rs.getString(4)+"</input>");   
                                       out.println("<input type='radio' name='nm10' value="+rs.getString(5)+" >"+rs.getString(5)+"</input>"); 
                                       out.println("<input type='radio' name='nm10' value="+rs.getString(6)+" >"+rs.getString(6)+"</input><br><br><br>");
                                       
                                          }
                        
                                    } 
                            
                         }
                       
                       
            }
        catch(Exception e)
                 {
        
                  }
        %> 
        <table>
            <tr>
             <td><input type="submit" value="save"></input> </td>
             </tr>
             </table>
      </form>
         </body>
</html>
