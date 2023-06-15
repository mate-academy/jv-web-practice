<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <style>
    h1 {text-align: center;}
    form {text-align: center;}
  </style>
</head>
<head>
    <title>Creating manufacturer</title>
</head>
<body>
<h1>Create new manufacturer</h1>
  <form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
  </form>
</body>
</html>
