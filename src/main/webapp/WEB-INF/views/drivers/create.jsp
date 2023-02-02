<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create a driver</title>
</head>
<body>
<h1>Parameters</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
  Name <input type="text" name="name"><br>
  License number <input type="text" name="license_number"><br>
  <button type="submit">Create</button>
</form>
</body>
</html>
