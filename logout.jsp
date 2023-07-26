
<html>
<head>
    <title>Logout</title>
</head>
<body>
    <h1>You have been logged out. Landing to login page...</h1>
   
</body>
</html>
 <%
        session.invalidate();
       try{
        Thread.sleep(3000);
       }
       catch (InterruptedException e) {
            e.printStackTrace();
        }
        response.sendRedirect("login.jsp");
       
    %>