<%@ page session="false"%>
<html>
<head>
  <title>Register</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <h1>Register</h1>
  <form action="registercheck.jsp" method="post">
   
    <div class="form-group">
      <label for="username">UserName</label>
      <input type="text" name="username" placeholder="UserName" class="form-control">
    </div>

    <div class="form-group">
      <label for="password">Password</label>
      <input type="password" name="password" id="password" class="form-control">
    </div>

    <div class="form-group">
      <label for="name">Name</label>
      <input type="text" name="name" placeholder="Name" class="form-control">
    </div>

    <div class="form-group">
      <label for="email">Email</label>
      <input type="email" name="email" id="email" class="form-control">
    </div>

    <div class="form-group">
      <input type="submit" value="Register" class="btn btn-primary">
    </div>

  </form>
</body>
</html>