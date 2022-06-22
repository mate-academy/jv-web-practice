<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>creat driver</title>
</head>
<body>
  <h1>Hello ! I can add a new driver to db</h1>
  <form method="post" action="${pageContext.request.contextPath}/createDriver">
    Name<input type="text" name="name"><br>
    License number<input type="text" name="licenseNumber"><br>
    <button type="submit">Confirm</button>
  </form>
</body>
</html>
