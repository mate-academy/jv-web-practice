<%--
  Created by IntelliJ IDEA.
  User: glebo
  Date: 03.02.2023
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Driver Creation</title>
</head>
<body>
<h1>Please fill in the form</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  Name <input type="text" name="name"><br>
  License Number <input type="text" name="license number"><br>
  <button type="submit">Confirm</button>
</form>

</body>
</html>
