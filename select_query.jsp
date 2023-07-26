
<html>
<head>
    <title>Single Input Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        
        form {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            margin: 20px auto;
            max-width: 400px;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 8px;
        }
        
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 4px;
        }
        
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <%@ page session="false"%>
    <%@ include file="header.jsp" %>

    <% 
        HttpSession s=request.getSession(false); 
		 if(s==null){
			 response.sendRedirect("login.jsp");
		 }
    %>

    <h1>Write Your Select Query</h1>
    <form action="selectToTable.jsp" method="post">

        <label for="inputField">Enter your text:</label>
        <input type="text" id="inputField" name="inputField" required>
        <input type="submit" value="Submit">
    </form>

    
</body>
</html>
