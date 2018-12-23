
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
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
    <body style="background-image:url(img/85.jpg)">
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

           <form method="post" action="feedback">
               <center>
                   <table>
                       <tr>
                           <td>
                             Name:  
                           </td>
                           <td>
                               <input type="text" name="txtnm"></input> 
                           </td>
                       </tr>
                        <tr>
                           <td>
                             Address:  
                           </td>
                           <td>
                               <input type="text" name="txtadd"></input> 
                           </td>
                       </tr>
                        <tr>
                           <td>
                             Country:  
                           </td>
                           <td>
                               <select name="con">
                                   <option value="India">India</option>
                                   <option value="shrilanka">Shrilanka</option>
                                    <option value="china">china</option>
                                     <option value="Japan">Japan</option>
                                      <option value="USA">USA</option>
                                       <option value="Austrelia">Austrelia</option>
                                        <option value="Tokiyo">Tokiyo</option>
                                        </select>
                           </td>
                       </tr>
                        </tr>
                        <tr>
                           <td>
                             Email-Id:  
                           </td>
                           <td>
                               <input type="text" name="txtemail"></input> 
                           </td>
                       </tr>
                       </tr>
                        <tr>
                           <td>
                             Phone No:  
                           </td>
                           <td>
                               <input type="text" name="phno"></input> 
                           </td>
                       </tr>
                       </tr>
                        <tr>
                           <td>
                             Feedback Details:  
                           </td>
                           <td>
                               <textarea name="fd" rows="5" cols="22"></textarea> 
                           </td>
                       </tr>
                       </tr>
                        <tr>
                           <td>
                           
                           </td>
                           <td>
                               <input type="submit" name="submit"></input> 
                           </td>
                       </tr>
                       
                   </table>
               </center>
           </form>
        <center>
        <form method="post" action="Feedback.jsp">
            <table>
                <tr>
                    <td>
                    <input type="Submit" value="Reset"></input>
                    </td>
                </tr>
            </table>
        </form>
        </center>
        <center>
        <form method="post" action="index.jsp">
            <table>
                <tr>
                    <td>
                    <input type="Submit" value="Back"></input>
                    </td>
                </tr>
            </table>
        </form>
        </center>
    </body>
</html>
