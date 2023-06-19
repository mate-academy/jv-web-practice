<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
<h1>Create new driver</h1>
<form method = "post" action="${pageContext.request.contextPath}/drivers/add">
  Name <input type="text" name="name"><br>
  Licence number <input type="text" name="license_number"><br>
  <button type = 'submit'>Confirm and submit</button>
</form>
    <a href="${pageContext.request.contextPath}/index">return to home page</a><br>
</body>
</html>
