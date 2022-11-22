<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Driver form</title>
</head>
<body>
  <form method = "GET" action = "${pageContext.request.contextPath}/drivers/register">
    First Name: <input type = "text" name = "first_name">
    <br />
    Last Name: <input type = "text" name = "last_name" />
    <input type = "submit" value = "Submit" />
  </form>
</body>
</html>
