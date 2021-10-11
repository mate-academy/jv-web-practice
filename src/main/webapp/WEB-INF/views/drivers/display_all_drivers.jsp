<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>display all drivers</title>
    </head>
    <body>
    <table>
        <tr>
            <th>id</th>
            <th>Name</th>
            <th>License Number</th>
        </tr>
        <c:forEach var="driver" items="${drivers}">
            <tr>
                <th>${driver.getId()}</th>
                <th>${driver.getName()}</th>
                <th>${driver.getLicenseNumber()}</th>
            </tr>
        </c:forEach>
    </table>
    </body>
</html>
