<%@ page session="false"%>
<%@ include file="header.jsp" %>
<html>
<head>
  <title>Login Page</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="container">
    <div class="header">
      <h1>Login</h1>
    </div>
    <div class="content">
      <form action="logincheck.jsp" method="post">
        <div class="form-group">
          <label for="username">Username</label>
          <input type="text" name="username" id="username" class="form-control">
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" name="password" id="password" class="form-control">
        </div>
        <div class="form-group">
          <input type="submit" value="Login" class="btn btn-primary">
        </div>
      </form>
      If not register yet...<a href="register.jsp">Register</a>
    </div>
    <div class="footer">
      <p>Copyright 2023</p>
    </div>
  </div>
</body>
</html>
