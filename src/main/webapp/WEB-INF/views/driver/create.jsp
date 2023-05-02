<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Driver Creation</title>
</head>
<body>
<h1>Please fill in the form</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  Name <input type="text" name="name" required><br>
  License Number <input type="text" name="license number" required><br>
  <button type="submit">Confirm</button>
</form>

</body>
</html>
