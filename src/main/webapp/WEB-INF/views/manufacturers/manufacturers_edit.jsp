<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers edit</title>
</head>
<body>
  <h1>Manufacturers Form Menu!</h1>
  <form method="post" action="${pageContext.request.contextPath}/manufacturers/edit">
    Name <input type="text" name="name"><br>
    Country <input type="text" name="country"><br>
    <button type="submit">Confirm</button>
  </form>
</body>
</html>
