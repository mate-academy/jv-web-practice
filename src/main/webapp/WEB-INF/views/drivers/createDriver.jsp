<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create_Driver</title>
</head>
<body>
<h1>Create driver </h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  <br>Driver's name: <input type="text" name="name"><br>
  <br>License number: <input type="text" name="license_number"><br>
  <button type="submit">Submit</button>
</form>
<td><a href="${pageContext.request.contextPath}/index">Back to taxi</a></td><br>
</body>
</html>
