<%-- 
    Document   : Available
    Created on : Apr 14, 2019, 9:56:17 PM
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
    <center><h1><strong> BOOKING </strong></h1></center>
    <center>
        <form action="Available" method="POST">
            <div>
            <table>
                <tr>
                    <td><b>From</b></td>
                    <td><input type="text" class="form-control" name="from" placeholder="Enter City"></td>
                </tr>
                <tr>
                    <td><b>To</b></td>
                    <td><input type="text" class="form-control" name="to" placeholder="Enter City"></td>
                </tr>
                <tr>
                    <td><b>Journey Date</b></td>
                    <td><input type="text" class="form-control" name="journeyDate" placeholder="ex: 10-01-2019"></td>
                </tr>
                <tr>
                    <td><b>Departure Time</b></td>
                    <td><input type="text" class="form-control" name="departureTime" placeholder="ex: 08:00am"></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center"><input class="btn btn-success" type="submit" value="Search"></td>
                </tr>
            </table>
        </div>
        </form>
    </center>
    
    
    </body>
</html>
