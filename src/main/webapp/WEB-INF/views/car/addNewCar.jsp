<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new car</title>
</head>
<body>
    <h1>Cars page</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        <table>
            <tr>
                <td>Model :</td>
                <td><input type="text" name="model" required></td>
            </tr>
            <tr>
                <td>Manufacturer :</td>
                <td><select name="manufacturerId" required>
                        <c:forEach items="${manufacturers}" var="manufacturer">
                            <option value="${manufacturer.id}">
                              ${manufacturer.name}
                            </option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td><button type="submit">Create new car</button></td>
            </tr>
        </table>
    </form>
</body>
</html>
