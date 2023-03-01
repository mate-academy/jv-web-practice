<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<h1>Fill in all blanks, please</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Manufacturer name=<input type="text" name="name"><br>
  Manufacturer country=<input type="text" name="country"><br>
  <button type="submit">confirm</button>
</form>
</body>
</html>
