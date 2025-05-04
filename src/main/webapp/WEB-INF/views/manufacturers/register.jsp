<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Registration</title>
</head>
<body>
<h1>Please fill the form below to register new manufacturer</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/register">
  Name <input type="text" name="name"><br>
  Country <input type="text" name="country"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>