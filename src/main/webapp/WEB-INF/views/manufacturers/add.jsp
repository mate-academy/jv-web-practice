<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<h1>Please the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Manufacturer's name <input type="text" name="name"><br>
  Manufacturer's country <input type="text" name="country"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
