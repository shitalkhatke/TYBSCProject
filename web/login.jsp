
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Login</title>
                  <style>
             ul
        {
           margin: 0px;
           padding: 15px;
          
        }   
 ul li
    {
    background-color:darkorchid;
    border: 0px solid white;
    width: 184px;
    height:45px;
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
<body style="background-image:url(img/88.jpg)">
    <form>
        <table>
            <td>
            <div style="text-align: left"><img src="img/b.jpg"width="100"height="100"/></div>
            </td>               
                <td> 
                 
                <center><div style="text-align:right"></div><font size="8" face="Arial" color="Brown"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vidya Pratishthan College Of Indapur</b></font></center>
                  
                    </td> 
            </table>
        
          <ul>
                  <li><a href="index.jsp">Home</a></li>
                  <li><a href="campus.jsp">About Campus</a></li>
                   <li><a href="facility.jsp">student support Facilities</a></li>
                  <li><a href="cources.jsp">Courses Offered</a></li>
                   <li><a href="mainpage.jsp">Examination</a></li>
                    <li><a href="contact.jsp">Contact Details</a></li>
                     <li><a href="Feedback.jsp">Feedback</a></li>
          </ul>
          
           
           
            
           
        </form>

     <form method="post" action="slservlet">
     <center>
         <table>
             <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
             <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
             <tr>
                 <td>
                  <b> Enter Your Username:</b>  
                 </td>
                 <td>
                     <input type="text" name="txtunm"></input>
                 </td>
             </tr>
             <tr>
                 <td>
                   <b>Enter Your Password:</b>  
                 </td>
                 <td>
                     <input type="password" name="pass"></input>
                 </td>
             </tr> 
             <tr></tr>
             
             <tr>
                 <td>
                     <input type="submit" value="Login"></input>
                 </td>
                    
                 <td>
                     <a href="sreg.jsp"><b>New User</b></a></center>
                 </td>     
     
                 <td>
                  <a href="login.jsp">Reset</a>
                 </td>
                </tr>
                </form>
                <form method="post" action="mainpage.jsp">
                <tr>
                 <td>
                     <input type="submit" value="Back"></input>
                 </td>
                </tr>
                 </form>
         </table>
         </center>    
     </form>  
    </body>
</html>
