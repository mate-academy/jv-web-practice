<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver Registration</title>
</head>
<body>
<h1>Please input information about driver</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  Name <input type="text" name="Driver name"><br>
  License number <input type="text" name="Driver license number"><br>
  <button type="submit">Confirm</button>
</form>
<td><a href="${pageContext.request.contextPath}/">back to menu</a></td>
</body>
</html>
