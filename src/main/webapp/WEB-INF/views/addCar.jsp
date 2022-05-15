<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>addCar</title>
</head>
<body>
<h1>Create a new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"/><br>
    Manufacturer <select name="manufacturer_id" required="required">
    <option value="">Choice a model</option>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <option value="<c:out value="${manufacturer.id}"/>">
            <table>
                <tr>
                    <td><c:out value="${manufacturer.name}"/></td>
                    <td><c:out value="${manufacturer.country}"/></td>
                </tr>
            </table>
        </option>
    </c:forEach>
</select><br>
    <button type="submit">Create Car</button>
</form>
</body>
</html>
