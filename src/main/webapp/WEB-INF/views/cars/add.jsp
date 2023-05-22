<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Please fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <table>
        <tr>
            <td>Model</td>
            <td><input type="text" name="model"></td>
        </tr>
        <tr>
            <td>Manufacturer</td>
            <td>
                <select name="manufacturer_id">
                    <c:forEach items="${manufacturers}" var="manufacturer">
                        <option value="${manufacturer.id}">
                            <c:out value="${manufacturer.name}"/>
                        </option>
                    </c:forEach>
                </select>
            </td>
        </tr>
    </table>
    <button type="submit">add car</button>
</form>
</body>
</html>
