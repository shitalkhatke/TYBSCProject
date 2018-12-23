
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Courses</title>
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
    <body style="background-image:url(img/87.jpg)">
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

        <div style="text-align: center"><img src="img/co1.jpg"width="500"height="150"/
                                             style="text-align: center"><img src="img/co2.jpg"width="410"height="150"/
                                             style="text-align: center"><img src="img/co3.jpg"width="410"height="150"/></div>
         <tr>
                    <td>
                    <center><font size="5" face="Arial"><b>we offer follwing three years degree courses recognized by university of pune.</b></font></center>
                   </td>    

                </tr>
                <td>&nbsp;</td>
                        
                    
        <form method="post" action="index.jsp">
            
        <table border="4" align="center" width="600"height="375">
            <tr style="background-color: greenyellow">
                <td>
                Course Name
                </td>
                 <td>
                Intake capacity
                </td>
                 <td>
                Eligibility criteria
                </td>
                 <td>
                Future Scope
                </td>
            </tr>
            <tr style="background-color: aquamarine">
                <td>
                    B.C.S( Bachelor of Computer Science)
                </td>
                <td>
                    80 seats
                </td>
                <td>
                    passed HSC exam with Maths
                </td>
                <td>
                    Better job opportunities in IT comapanies.
                </td>
            </tr>
            <tr style="background-color: aquamarine">
                <td>
                    B.C.A( Bachelor of Computer Application)
                </td>
                <td>
                    80 seats
                </td>
                <td>
                    passed HSC exam from any stream
                </td>
                <td>
                    Better job opportunities in IT comapanies.
                </td>
            </tr>
            <tr style="background-color: aquamarine">
                <td>
                    B.B.A( Bachelor of Business Administration)
                </td>
                <td>
                    80 seats
                </td>
                <td>
                    passed HSC exam from any stream
                </td>
                <td>
                    Better job opportunities in Business Organization.
                </td>
            </tr>
            </table>
            
            <tr>
                
                <td></td>
                <td></td>
                <td style="background-color:coral">
                    <input type="submit" value="Back"></input>
                </td>
            </tr>
       
        </form>
    </body>
</html>
