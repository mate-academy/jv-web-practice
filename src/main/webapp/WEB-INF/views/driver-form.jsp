<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Driver form</title>
</head>
<body>
  <form method = "POST" action = "${pageContext.request.contextPath}/driver/create">
    Name: <input type = "text" name = "name"><br />
    License number: <input type = "text" name = "license_number"/>
    <input type = "submit" value = "Submit" />
  </form>
</body>
</html>
