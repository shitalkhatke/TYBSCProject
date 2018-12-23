
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Choose Test</title>
        <style>
                 ul
        {
           margin: 0px;
           padding: 0px;
          
        }   
 ul li
    {
    background-color:darkorchid;
    border: 0px solid white;
    width: 200px;
    height:60px;
    line-height:50px;
    float: left;
    text-align:center;
    list-style:none;
    }
    ul li a
{
    color:white;
    text-decoration: none;
    display:block;
}
ul li a:hover
{
   background-color:red; 
   
}
ul li ul li
{
    display:none;
}
ul li:hover ul li
{
    display: block;
}


        </style>
    </head>
    <body style="background-image: url(img/79.jpg)">
           
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <form method="post" action="login.jsp">
            <center>
            <table>
                <tr>
                    <td>
                        <font size="5">Choose Test For FYBCS:</font>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="1.jsp"><b>C TEST</b></a>
                    </td>
                     <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <a href="2db.jsp"><b>DBMS TEST</b></a>
                    </td>
                     <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                      <font size="5">  Choose Test For SYBCS:</font>
                    </td>
                </tr>
                <tr>
                <td>
                        <a href="3cpp.jsp"><b>C++ TEST</b></a>
                    </td>
                     <td>&nbsp;</td>
             </tr>
             <tr>
             <td>
                        <a href="4ds.jsp"><b>DS TEST</b></a>
                    </td>
                     <td>&nbsp;</td>
             </tr>
                <tr>
                                    
                     <td>
                        <font size="5">Choose Test For TYBCS:</font>
                    </td>
                     <td>&nbsp;</td>
                </tr>
                    <tr>
                    <td>
                        <a href="5java.jsp"><b>Java TEST</b></a>
                    </td>
                     <td>&nbsp;</td>
                                  
                </tr>
                      <tr>            
                    <td>
                        <a href="6php.jsp"><b>PHP TEST</b></a>
                    </td>
                                   <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Back"></input>
                    </td>
                    <td>
                        <a href="login.jsp">Log Out</a>
                    </td>
                </tr>
            </table>
                </center>
        </form>
      
    </body>
</html>
