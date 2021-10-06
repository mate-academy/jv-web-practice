<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all cars controller</title>
</head>
<body>
<h1>
    There are all the cars in our DB:
</h1>
<table>
    <tr>
        <td>id</td>
        <td>model</td>
        <td>manufacturer</td>
        <td>country</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /> </td>
            <td><c:out value="${car.model}" /> </td>
            <td><c:out value="${car.manufacturer.name}" /> </td>
            <td><c:out value="${car.manufacturer.country}" /> </td>
               <table>
                <tr>
                    <td>driver's name</td>
                    <td>license number</td>
                </tr>
                    <c:forEach items="${car.drivers}" var="driver">
                        <tr>
                            <td><c:out value="${driver.name} " /></td>
                            <td><c:out value="${driver.licenseNumber}" /> </td>
                        </tr>
                    </c:forEach>
               </table>
            <td><a href="${pageContext.request.contextPath}/car-delete?id=${car.id}">delete car ${car.id}</a><br></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
