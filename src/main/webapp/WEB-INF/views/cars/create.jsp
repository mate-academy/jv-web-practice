<%--
  Created by IntelliJ IDEA.
  User: ihor
  Date: 6/20/23
  Time: 6:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>this is page for adding new car</h1>--%>
<%--<form method="post"action="${pageContext.request.contextPath}/index.jsp">--%>
<%--Manufacturer <input type = "text" name="Manufacturer"><br>--%>
<%--Model <input type = "text" name="model"><br>--%>
<%--<a><</a>--%>
<%--<button type="submit">confirm</button>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>
%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create CAR</title>
</head>
<body>
<h1>Create car using these fields</h1>
<form method="post" action="${pageContext.request.contextPath}/newCar">
    Model <input type="text" name="Model"><br>
    Manufacturer id <input type="number" name="ManufacturerID"><br>
    <button type="submit">create</button>
</form>
</body>
</html>