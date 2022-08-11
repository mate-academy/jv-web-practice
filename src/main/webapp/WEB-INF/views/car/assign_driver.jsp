<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Driver assignment</title>
</head>
<body>
<h2>Please fill form below for driver assignment</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/assign">
    <table>
        <tr>
            <td>Chose car</td>
            <td align="right">
                <select name="carId">
                    <c:forEach items="${cars}" var="car">
                        <option value="<c:out value="${car.id}" />">
                            <c:out value="${car.manufacturer.name}" />
                            <c:out value="${car.model}" />
                        </option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>Chose driver</td>
            <td align="right">
                <select name="driverId">
                    <c:forEach items="${drivers}" var="driver">
                        <option value="<c:out value="${driver.id}" />">
                            <c:out value="${driver.name}" />
                            <c:out value="${driver.licenseNumber}" />
                        </option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                <button type="submit">Assign driver</button>
            </td>
        </tr>
    </table>
    <br>
    <br>
    Please <a href="${pageContext.request.contextPath}/cars/add">add required car</a> or
        <a href="${pageContext.request.contextPath}/drivers/add">add required driver</a>
        before assignment if not available
    <br>
    <br>
    <a href="${pageContext.request.contextPath}/">Return to main menu</a>
    <br>
</form>
</body>
</html>
