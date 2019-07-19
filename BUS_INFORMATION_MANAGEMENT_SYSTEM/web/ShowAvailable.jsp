<%-- 
    Document   : ShowAvailable
    Created on : Apr 14, 2019, 11:57:22 PM
    Author     : ahnaf
--%>
<%@page import="ErrorCorrection.AvailableData"%> 
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    
        
        <table border ="1" width="500" align="center"> 
         <tr bgcolor="00FF7F"> 
          <th><b>BNUM</b></th> 
          <th><b>BTYPE </b></th> 
          <th><b>Total_Seats</b></th>
          <th><b>Fare</b></th>
         </tr> 
        <%-- Fetching the attributes of the request object 
             which was previously set by the servlet  
              
        --%>  
        <%ArrayList<AvailableData> std =  
            (ArrayList<AvailableData>)request.getAttribute("data"); 
        for(AvailableData s:std){%> 
        <%-- Arranging data in tabular form 
        --%> 
            <tr> 
                <td><%=s.getBnum() %></td> 
                <td><%=s.getBtype() %></td> 
                <td><%=s.getTotalSeats() %></td>
                <td><%=s.getFare() %></td>
            </tr> 
            <%}%> 
        </table>  
     
        
    </body>
</html>
