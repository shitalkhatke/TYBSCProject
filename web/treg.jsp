

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teacher Registration</title>
    </head>
    <body style="background-image:url(img/76.jpg)">
        
 <table>
       <tr>
            <td>
                
            </td>
             <td>
                 
             </td>
        </tr>
        </table>
       <h1>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp TEACHER REGISTRATION</h1>

        <form method="post" action="tregservlet">
            <center>
            <table>
                <tr>
                   <td>
                    ENTER FULL NAME:
                    </td>
                    <td>
                   <input type="text" name="txtfnm" id="txtfnm"></input>   
                    </td>
                </tr>
                
                <tr>
                </tr> 
                
              
                <tr>
                   <td>
                    ENTER USERNAME:
                    </td>
                    <td>
                   <input type="text" name="txtunm" id="txtunm"></input>   
                    </td>
                </tr>
                
                <tr>
                </tr> 
               
                
                <tr>
                   <td>
                    ENTER PASSWORD:
                    </td>
                    <td>
                   <input type="password" name="passr" id="passr"></input>   
                    </td>
                </tr>
                
                <tr>
                </tr> 
                
                <tr>
                   <td>
                    CONFIRM PASSWORD:
                    </td>
                    <td>
                   <input type="password" name="passcr" id="passcr" ></input>   
                    </td>
                </tr>
                
                <tr>
                </tr> 
                
                <tr>
                    <td>
                    MOBILE NUMBER:    
                    </td>
                    <td>
                    <input type="text" name="txtmo" >
                    </td>
                </tr>
                <tr>
                </tr>
                
                <tr>
                    <td>
                        <input type="submit" value="submit"></input>
                    </td>
                   
                </tr>
            
               
                 <tr>
                 <td>   
                <a href="tlogin.jsp">Back</a>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                 </td>
                    
                </tr>
             
            </table>
                </center>
        </form>
        <form action="treg.jsp" method="post"> 
            <center>
            <table>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
        <input type="submit" value="Reset">
        <td></tr>
                </table>
                </center>
       </form>

    </body>
</html>
