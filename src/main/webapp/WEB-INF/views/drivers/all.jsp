<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>TaxiService</title>
    </head>
    <body>
        <h1>All Drivers</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>name</th>
                <th>licenseNumber</th>
            </tr>
            <c:forEach items="${drivers}" var="driver">
                <tr>
                    <th><c:out value="${driver.id}"/></th>
                    <th><c:out value="${driver.name}"/></th>
                    <th><c:out value="${driver.licenseNumber}"/></th>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
