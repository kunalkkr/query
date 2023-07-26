 <%@ page session="false"%>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Pass word access table</title> 
  </head> 
  <body> 
    <%= " <h1>You dont access Password related table</h1> " %>
   
  </body> 
</html>

 <%
        request.getSession(false); 
        try{Thread.sleep(3000);}catch(Exception e){}
            
    response.sendRedirect("select_query.jsp");
    
 %>