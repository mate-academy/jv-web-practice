<%--
  Created by IntelliJ IDEA.
  User: Upgrade
  Date: 1/5/2023
  Time: 8:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
html>
<head>
    <title>Create driver</title>
</head>
<body>
<form method="post"
      action="${pageContext.request.contextPath}/drivers/add">
    Model <input type="text" name="name"
                 required><br>
    MLicense number <input type="text" name="license_number"
                  required><br>
    <button type="submit">Create driver</button>
</form>
</body>
</html>
