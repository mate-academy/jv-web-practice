<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Create Driver</title>
</head>
<body>
<h1>Creating driver Form</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  Name <label>
  <input type="text" name="name">
</label><br>
  License number <label>
  <input type="text" name="license_number">
</label><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
