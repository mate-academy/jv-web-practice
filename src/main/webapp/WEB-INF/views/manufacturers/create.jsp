<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a manufacturer</title>
</head>
<body>
<h1>Please fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
  Manufacturer name <input type="text" name="name" required><br>
  Manufacturer country <input type="text" name="country" required><br>
  <button type="submit">Submit</button>
</form>
</body>
</html>
