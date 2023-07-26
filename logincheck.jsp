<%@ page session="false"%>
<%@ page import="con.MySQLConnection"%>
<html>
<body>

<%
    String username=request.getParameter("username");
    String pass=request.getParameter("password");
    String name=MySQLConnection.checkUser(username,pass);
    if(name!=null){
        HttpSession s=request.getSession();
        s.setAttribute("name",name);
        s.setAttribute("username",username);
        response.sendRedirect("select_query.jsp");
    }
    else{
        out.println("bavli booch register karle");
    }
%>
</body>
</html>