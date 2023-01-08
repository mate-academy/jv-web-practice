<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Creation of Driver</title>
</head>
<body>
<h1>Please fill the form below to add driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  Name <input type="text" name="name" required><br>
  License Number <input type="text" name="license_number" required><br>
  <button type="submit">Add</button>
</form>
</body>
</html>
