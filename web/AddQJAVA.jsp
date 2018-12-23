
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Question For JAVA</title>
         <style>
           #qno
           {
               width: 200px;
               height: 50px;
           }
           #que
           {
               width: 250px;
               height: 50px;
           }
       </style>
    </head>
    <body style="background-image:url(img/82.jpg)">
 <form method="post" action="addqjavaservlet">
            <center>
            <table>
                <tr>
                    <td>
                        <font size="7"> <b> ADD QUESTIONS:</b></font>
                    </td>
                </tr>
            </table>
                <table>
               <tr>
                    <td>
                        <b>Enter question Number:</b>
                    </td>
                    <td>
                        <input type="text" name="qno" id="qno" placeholder="Enter question no"></input>
                    </td>
                </tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <tr>
                    <td>
                        <b>Enter Question:</b> 
                    </td>
                    <td>
                        <input type="text" name="que" id="que" placeholder="Enter Question"></input>
                    </td>
                </tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <tr>
                    <td>
                        Enter Option 1:
                    </td>
                    <td>
                        <input type="text" name="op1" id="op1" placeholder="Enter Option 1"></input>
                    </td>
                </tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <tr>
                    <td>
                        Enter Option 2:
                    </td>
                    <td>
                        <input type="text" name="op2" id="op2" placeholder="Enter Option 2"></input>
                    </td>
                </tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                  <tr>
                    <td>
                        Enter Option 3:
                    </td>
                    <td>
                        <input type="text" name="op3" id="op3" placeholder="Enter Option 3"></input>
                    </td>
                </tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <tr>
                    <td>
                        Enter Option 4:
                    </td>
                    <td>
                        <input type="text" name="op4" id="op4" placeholder="Enter Option 4"></input>
                    </td>
                </tr>
                
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <tr>
                    <td>
                        Enter Answer:
                    </td>
                    <td>
                        <input type="text" name="ans" id="ans" placeholder="Enter Answer"></input>
                    </td>
                </tr>
                
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <tr>
                    <td>
                        
                    </td>
                   
                    <td>
                        <input type="submit" value="submit"></input>
                    </td>
                </tr>
            </table>
            </center>
        </form>
        <form method="post" action="AddQJAVA.jsp">
           <center> <table>
                <tr>
                <td>
                    
                        <input type="submit" value="Reset"></input>
                    </td>
                    <td>
                        <a href="mainpage.jsp">Back</a>
                    </td>
                </tr>
            </table>
               </center>
        </form> 
    </body>
</html>
