<%@ page session="false"%>
<%@ page import="con.MySQLConnection"%>
<%@ page import="con.FindTableName"%>
<%@ page import="java.sql.ResultSet"%>
<%
    HttpSession s=request.getSession(false); 
    int count1=0;
    String str=request.getParameter("inputField");
    String tabnam=FindTableName.tableName(str); 
    ResultSet r=MySQLConnection.selectQ("select count(*) from " + tabnam);
       if(r.next()){
          count1=r.getInt(1);
          out.println(count1);
        }
    if(count1==0){
        s.setAttribute("message","no record found");
        response.sendRedirect("select_query.jsp");
    }

    s.setAttribute("query",str);
    s.setAttribute("totalrecord",count1);
    response.sendRedirect("table.jsp?pageno=1");
%>