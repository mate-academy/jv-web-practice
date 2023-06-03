<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New driver</title>
</head>
<body>
<h1>Add new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/new">
  Name: <input type="text" name="name"></br>
  License number: <input type="text" name="licenseNumber"> </br>
  <button>Create</button>
</form>
</body>
</html>
