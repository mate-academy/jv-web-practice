<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
    <table>
        <tr>
            <td>car_id</td>
            <td>model</td>
            <td>manufacturer_id</td>
            <td>manufacturer_name</td>
            <td>manufacturer_country</td>
            <td>drivers</td>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.id}"/></td>
                <td><c:out value="${car.model}"/></td>
                <td><c:out value="${car.manufacturer.id}"/></td>
                <td><c:out value="${car.manufacturer.name}"/></td>
                <td><c:out value="${car.manufacturer.country}"/></td>
                <td>
                    <table>
                        <tr>
                            <td>driver_id</td>
                            <td>driver_name</td>
                            <td>driver_license_number</td>
                        </tr>
                        <c:forEach items="${car.drivers}" var="driver">
                            <tr>
                                <td><c:out value="${driver.id}"/></td>
                                <td><c:out value="${driver.name}"/></td>
                                <td><c:out value="${driver.licenseNumber}"/></td>
                            </tr>
                        </c:forEach>
                    </table>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/cars/delete?car_id=${car.id}">delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
