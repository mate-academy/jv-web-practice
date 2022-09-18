<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Manufacturer Registration</title>
</head>
<body>
<h1>Please input information about manufacturer</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Name <input type="text" name="manufacturer_name"><br>
  Country <input type="text" name="manufacturer_country"><br>
  <button type="submit">Confirm</button>
</form>
<td><a href="${pageContext.request.contextPath}/">back to menu</a></td>
</body>
</html>
