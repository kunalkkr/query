<%@ page import="con.MySQLConnection"%>
<%@ page import="con.FindTableName"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%@ page session="false"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Table</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        @media screen and (max-width: 600px) {
            table {
                border: 0;
            }
            table caption {
                font-size: 1.3em;
            }
            table thead {
                display: none;
            }
            table tr {
                margin-bottom: 10px;
                display: block;
                border-bottom: 2px solid #ddd;
            }
            table td {
                display: block;
                text-align: right;
                font-size: 13px;
                border-bottom: 1px dotted #ccc;
            }
            table td:last-child {
                border-bottom: 0;
            }
        }
    </style>
</head>
<body>
    <%
        HttpSession s=request.getSession(false); 
        int count=0;
        String str=(String)s.getAttribute("query");
        int count1=(int)s.getAttribute("totalrecord");
        out.println(count1);
        int pagNo=Integer.parseInt(request.getParameter("pageno"));
        ResultSet rs=MySQLConnection.selectQ(str);
    %>
    <table>
        <thead>
            <tr>
            <% 
                ResultSetMetaData rsmd=rs.getMetaData();
                count=rsmd.getColumnCount();
                 for(int i=1;i<=count;i++)
                {
                    out.println("<th>");
                    out.println(rsmd.getColumnName(i));
                    String columnName=rsmd.getColumnName(i);
                    if(columnName.contains("pass")){
                        out.println("kk");
                        response.sendRedirect("passTableAccess.jsp");
                    }
                    
                    out.println(rsmd.getColumnTypeName(i));
                    out.println("</th>");
                }
            %>
            </tr>
        </thead>
        <tbody>

            <% 
                rs.absolute(pagNo*10-10);
                int loop=0;
                while(rs.next()){
                    loop++;
                    if(loop>10)
                        break;
                    out.println("<tr>");
                    for(int i=1;i<=count;i++){
                    out.println("<td>");
                    out.println(rs.getString(i));
                    out.println("</td>");
                    }
                    out.println("</tr>");
                }
                
            %>
        </tbody>
    </table>

<%
int previous=pagNo-1;
if(previous>1)
    out.print("<a href='?pageno="+ previous + " "+"'>Previous</a>");

 int totalPage=(count1 / 10)+1;
 int max=totalPage;
 if(totalPage>10)
    max=10;
int i=1;
if(pagNo>5){
    i=pagNo-5;
    max=pagNo+4;
}
if(max> totalPage)
    max=totalPage;


 for(; i<=max; i++){
    out.print("<a href=?pageno="+i+">" + i+ " "+"</a>");
 }

int next=pagNo+1;
if(next<=totalPage)
    out.print("<a href='?pageno="+next+"'>Next</a>");

%>


</body>
</html>
