<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a new Car</title>
</head>
<body style="display:flex; flex-direction:column; justify-content:center; text-align: center">
    <h10><a style="text-decoration: none" href="${pageContext.request.contextPath}/menu">&#8592;Back to menu</a></h10>
    <h1>Adding a new Car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add" style="display:flex; justify-content:center">
            <table border="4">
                <tr>
                    <td>Car Model:</td>
                    <td><input type="text" name="carModel"></td>
                </tr>
                <tr>
                    <td>Car Manufacturer: </td>
                    <td><select id="manufacturer-choice" name="manufacturerId" style="width: 100%">
                        <c:forEach items="${manufacturers}" var="manufacturer">
                            <option c:out value="${manufacturer.id}">
                                   Id:${manufacturer.id} '${manufacturer.name} ${manufacturer.country}'
                            </option>
                        </c:forEach>
                    </select></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><button type="submit">Create</button></td>
                </tr>
            </table>
</form>
</body>
</html>
