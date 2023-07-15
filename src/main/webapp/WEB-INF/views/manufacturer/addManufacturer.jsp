<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Manufacturer registration</title>
</head>
<body>
<h1>Please, fill the form with manufacturer's data</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Name <input type="text" name="name"><br>
  Country <input type="text" name="country"><br>
  <button type="submit">Add manufacturer</button>
</form>
</body>
</html>
