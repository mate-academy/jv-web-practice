<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
    <h1><a href="${pageContext.request.contextPath}/">Taxi service</a></h1>
    <h2>Add driver to car</h2>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
        <table>
            <tr>
                <td>Set car</td>
                <td>Set driver</td>
            </tr>
            <tr>
                <td><select name="carId" required="required"><c:forEach items="${cars}" var="car">
                    <option value="${car.id}"><c:out value="${car.manufacturer.name} ${car.model}"></c:out></option>
                </c:forEach>
                </select>
                </td>
                <td><select name="driver[]" multiple="multiple" size="5" required="required">
                    <c:forEach items="${drivers}" var="driver">
                        <option value="${driver.id}">
                            <c:out value="${driver.name} ${driver.licenseNumber}"></c:out>
                        </option>
                    </c:forEach>
                </select>
                </td>
            </tr>
        </table>
        <button type="submit">Submit</button>
    </form>

</body>
</html>
