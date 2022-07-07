<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>ADDING MANUFACTURER TO DB</title>
</head>
<body>
<h1>CREATE MANUFACTURER:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Manufacturer name <input type="text" name="name"><br>
  Country <input type="text" name="country"><br>
  <button type="submit">CONFIRM</button>
</form>
<tr>
  <td><a href="${pageContext.request.contextPath}/index">back to the main menu</a></td>
</tr>
</body>
</html>
