<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 25.10.2022
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Create car without driver</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <div>
        Model: <input type="text" name="model">
    </div>

    <div>
        Manufacturer ID: <select type="number" name="manufacturer_id">
        <c:forEach var="manufacturer" items="${manufacturers}">
            <option value="<c:out value="${manufacturer.id}"/>"><c:out value="${manufacturer.name}"/></option>
        </c:forEach>
    </select>
    </div>

    <div>
        <button type="submit">Confirm</button>
    </div>
  </form>
</body>
</html>
