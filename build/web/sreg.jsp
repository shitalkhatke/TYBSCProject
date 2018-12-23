
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Registration</title>
    </head>
    <body style="background-image:url(img/83.jpg)">
        <center>
       <table>
       <tr>
            <td>
                
            </td>
             <td>
                 
             </td>
        </tr>
        </table>
       <h1>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp STUDENT REGISTRATION</h1>

        <form action="sregservlet" method="post">
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
                   <input type="text" name="txtunm" id="txtrufnm"></input>   
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
                   <input type="password" name="passcr" id="passcr"></input>   
                    </td>
                </tr>
                
                <tr>
                </tr> 
                
                <tr>
                    <td>
                    MOBILE NUMBER:    
                    </td>
                    <td>
                    <input type="text" name="txtmo" id="txtmo">
                    </td>
                </tr>
                <tr>
                </tr>
                <tr>
                   <td>
                    CHOOSE CLASS:
                    </td>
                    <td>
                        <select name="txtcls">
                            <option value="SELECT">SELECT</option>
                            <option value="FYBCS">FYBCS</option>
                            <option value="SYBCS">SYBCS</option>
                            <option value="TYBCS">TYBCS</option>
                        </select>   
                    </td>
                </tr>
                <tr>
                </tr>
                
                
                <tr>
                    <td>
                        <input type="submit" value="submit"></input>
                    </td>
                    <td>
                <a href="login.jsp">Back</a>
            </td>
                </tr>

            </table>
            </center>
        </form>
        <form action="sreg.jsp" method="post">
            <center>
        <input type="submit" value="Reset">
        </center>
       </form>
    </body>
</html>
