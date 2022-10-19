<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete manufacturer</title>
</head>
<body>
<h1>Delete manufacturer:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturer/delete">
    <div>
        Manufacturer: <select type="number" name="manufacturer_id">
        <c:forEach var="manufacturer" items="${manufacturers}">
            <option value="<c:out value="${manufacturer.id}"/>"><c:out value="${manufacturer.name}"/></option>
        </c:forEach>
    </select>
    </div>

    <div>
        <button type="submit">Delete</button>
    </div>

</form>
</body>
</html>
