<%--
  Created by IntelliJ IDEA.
  User: Mark
  Date: 24.11.2022
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
    <h1>Enter name and drivers license</h1>
    <form method="post" action="${pageContext.request.contextPath}/driver">
        Name <input type="text" name="name">
        License <input type="text" name="license_id">
        <button type="submit">Save</button>
    </form>
</body>
</html>
