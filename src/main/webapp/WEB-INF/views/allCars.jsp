<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
    <h1><a href="${pageContext.request.contextPath}/">Taxi service</a></h1>
    <h2>All cars</h2>
    <a href="${pageContext.request.contextPath}/cars/add"><button>Add new car</button></a>
    <table border="1" style="width: 100%;">
        <tr>
            <td>id</td>
            <td>manufacturer</td>
            <td>model</td>
            <td>drivers</td>
            <td></td>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.id}"/></td>
                <td><c:out value="${car.manufacturer.name}"/></td>
                <td><c:out value="${car.model}"/></td>
                <td><c:forEach items="${car.drivers}" var="driver">
                    <table>
                        <tr>
                            <td><c:out value="id:${driver.id}"/> </td>
                        </tr>
                        <tr>
                            <td><c:out value="${driver.name}"/></td>
                        </tr>
                        <tr>
                            <td><c:out value="${driver.licenseNumber}"/></td>
                        </tr>
                    </table>
                </c:forEach> </td>
                <td><form method="post" action="${pageContext.request.contextPath}/cars">
                <button type="submit" name="deleteCar" value="${car.id}">delete</button>
                </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
