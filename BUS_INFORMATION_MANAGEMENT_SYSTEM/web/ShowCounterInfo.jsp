<%-- 
    Document   : ShowCounterInfo
    Created on : Apr 15, 2019, 4:03:14 PM
    Author     : ahnaf
--%>

<%@page import="ErrorCorrection.ConnectionInfoData"%> 
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
          <th><b>ENUM</b></th> 
          <th><b>Location </b></th> 
          <th><b>Phone NO</b></th>
          
         </tr> 
        <%-- Fetching the attributes of the request object 
             which was previously set by the servlet  
              
        --%>  
        <%ArrayList<ConnectionInfoData> std =  
            (ArrayList<ConnectionInfoData>)request.getAttribute("data"); 
        for(ConnectionInfoData s:std){%> 
        <%-- Arranging data in tabular form 
        --%> 
            <tr> 
                <td><%=s.getEmnum() %></td> 
                <td><%=s.getLocation() %></td> 
                <td><%=s.getPnum() %></td>
                
            </tr> 
            <%}%> 
        </table>  
     
        
    </body>
</html>