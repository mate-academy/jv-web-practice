<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 38097
  Date: 05.04.2023
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Creating Car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"><br>
    Manufacturer <select name="manufacturer_id">
                    <c:forEach items="${manufacturers}" var="manufacturer">
                        <option value="${manufacturer.id}">
                            <c:out value="${manufacturer.id}" />
                            <c:out value="${manufacturer.name}" />
                        </option>
                    </c:forEach>
                 </select><br>
    <button type="submit">submit</button>
</form>
</body>
</html>
