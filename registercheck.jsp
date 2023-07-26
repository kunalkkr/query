<%@ page session="false"%>
<%@ include file="header.jsp" %>
<%@ page import="con.MySQLConnection"%>
<html>
<body>

<%
    String username=request.getParameter("username");
    String pass=request.getParameter("password");
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    boolean b=MySQLConnection.registerUser(username,pass,name,email);
    if(b==true){
        response.sendRedirect("login.jsp");
    }
    else{
        out.println("bavli booch detail shi daal");
    }
%>
</body>
</html>