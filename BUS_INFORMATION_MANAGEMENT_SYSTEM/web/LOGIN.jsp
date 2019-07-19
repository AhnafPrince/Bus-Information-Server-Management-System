
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
    <center><h1><strong> LOGIN </strong></h1></center>
    <center>
        <form action="LOGIN" method="POST">
            <div>
            <table>
                <tr>
                    <td><b>Username</b></td>
                    <td><input type="text" class="form-control" name="userName" placeholder="Mobile no"></td>
                </tr>
                <tr>
                    <td><b>Password</b></td>
                    <td><input type="text" class="form-control" name="passWord" placeholder="Name"></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center"><input class="btn btn-success" type="submit" value="LOGIN"></td>
                </tr>
            </table>
        </div>
        </form>
    </center>
    </body>
</html>
