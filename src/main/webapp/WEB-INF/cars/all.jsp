<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of all cars</title>
</head>
<body>
<h1>List of all cars</h1>
<table>
    <tr>
        <td style="text-align: center">ID</td>
        <td style="text-align: center">MODEL</td>
        <td style="text-align: center">MANUFACTURER</td>
        <td style="text-align: center">COUNTRY</td>
        <td style="text-align: center">DRIVER</td>
    </tr>
    <%--@elvariable id="cars" type="java.util.List"--%>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td style="text-align: center"><c:out value="${car.model}"/></td>
            <td style="text-align: center"><c:out value="${car.manufacturer.name}"/></td>
            <td style="text-align: center"><c:out value="${car.manufacturer.country}"/></td>
            <td>
                <table>
                    <tr>
                        <td style="text-align: center">Driver</td>
                        <td style="text-align: center">Driver License</td>
                    </tr>
                    <c:forEach items="${car.drivers}" var="driver">
                        <tr>
                            <td><c:out value="${driver.name}"/></td>
                            <td style="text-align: center"><c:out
                                    value="${driver.licenseNumber}"/></td>
                        </tr>
                    </c:forEach>
                </table>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                <button type="submit">delete</button>
            </a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
