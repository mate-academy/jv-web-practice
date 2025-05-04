<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Creating Driver Form</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
  Name <input type="text" name="name"><br>
  Licence number <input type="text" name="licenceNumber"><br>
  <button type="submit">submit</button>
</form>
</body>
</html>
