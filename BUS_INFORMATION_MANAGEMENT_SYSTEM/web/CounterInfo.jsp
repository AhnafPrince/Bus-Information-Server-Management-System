<%-- 
    Document   : CounterInfo
    Created on : Apr 15, 2019, 3:31:15 PM
    Author     : ahnaf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet"> 
        <style>
            to{
                padding: 10px;
            }
            
            div{
                width: 60%;
                border: 1px solid black;
                border-radius: 5px;
                background-color: grey;
            }
        </style>
    </head>
    <body>
        <center><h1><strong> Counter Information </strong></h1></center>
    <center>
        <form action="CounterInfo" method="POST">
            <div>
            <table>
                <tr>
                    <td><b>Location</b></td>
                    <td><input type="text" class="form-control" name="location" placeholder="ex: Dhaka"></td>
                </tr>
                
                 <td colspan="2" style="text-align: center"><input class="btn btn-success" type="submit" value="Search"></td>
                
            </table>
        </div>
        </form>
    </center>
    </body>
</html>
