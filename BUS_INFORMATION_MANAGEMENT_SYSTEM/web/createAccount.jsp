<%-- 
    Document   : createAccount
    Created on : Apr 14, 2019, 2:45:44 PM
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
        <center><h1><strong>Create Account </strong></h1></center>
    <center>
        <form action="CreateAccount" method="POST">
            <div>
            <table>
                <tr>
                    <td><b>Name</b></td>
                    <td><input type="text" class="form-control" name="name" placeholder="Name"></td>
                </tr>
                <tr>
                    <td><b>Mobile No</b></td>
                    <td><input type="text" class="form-control" name="mobileNo" placeholder="Mobile No"></td>
                </tr>
                <tr>
                    <td><b>Email</b></td>
                    <td><input type="text" class="form-control" name="email" placeholder="Email"></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center"><input class="btn btn-success" type="submit" value="Create"></td>
                </tr>
                
                
                
            </table>
                
                
        </div>
        </form>
        <form action="LOGIN.jsp" method="POST">
                <tr>
                <a href="${pageContext.request.contextPath}/jsp/LOGIN.jsp">click</a>
                </tr>
        </form>
    </center>
    </body>
</html>
