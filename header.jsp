<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stylish Header Example</title>
    <style>
        /* Base header styles */
        header {
            background-color: #333;
            color: #fff;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        /* Logo or name styles */
        .logo {
            display: flex;
            align-items: center;
        }

        /* Logo image styles */
        .logo img {
            max-height: 40px;
            margin-right: 10px;
            border-radius: 50%;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.5);
        }

        /* Menu styles (you can customize this as needed) */
        nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
        }
        nav li {
            margin-left: 20px;
        }
        nav a {
            color: #fff;
            text-decoration: none;
            padding: 5px;
            border-bottom: 2px solid transparent;
            transition: border-bottom-color 0.3s ease-in-out;
        }
        nav a:hover {
            border-bottom-color: #fff;
        }

        /* Logout link styles */
        .logout-link {
            color: #ff5555;
            text-decoration: none;
            font-weight: bold;
            border: 2px solid #ff5555;
            padding: 5px 10px;
            border-radius: 5px;
            transition: background-color 0.3s ease-in-out;
        }
        .logout-link:hover {
            background-color: #ff5555;
            color: #fff;
        }

        /* Media queries for responsiveness */
        @media screen and (max-width: 768px) {
            /* Adjust the header layout for smaller screens */
            header {
                flex-direction: column;
            }
            nav ul {
                margin-top: 10px;
            }
            nav li {
                margin-left: 0;
            }
            .logo {
                margin-bottom: 10px;
            }
        }
    </style>
</head>
<body>
<%@ page session="false"%>

<% 
        String name;
         HttpSession ses=request.getSession(false); 
		 if(ses==null){
			 name="User";
		 }
         else{
            name=(String)ses.getAttribute("name");
         }
%>

    <header>
        <div class="logo">
            <!-- Logo image -->
            
            <!-- Name option -->
            <span>Welcome, <%= name %></span>
        </div>
        <nav>
            <!-- Menu options -->
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
                <!-- Add more menu items as needed -->
            </ul>
        </nav>
        <div>
            <!-- Logout option -->
                <a href="logout.jsp" class="logout-link"> <% if(ses!=null) out.println("Logout"); %></a>
            
        </div>
    </header>

    <!-- Your page content goes here -->

</body>
</html>
