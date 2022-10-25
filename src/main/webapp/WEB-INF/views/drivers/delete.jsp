<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>deleted driver</title>
    <h1>enter id</h1>
    <table>
        <tr>
            <th >ID</th>
            <th >NAME</th>
            <th >LICENSE_NUMBER</th>
        </tr>
        <c:forEach var="driver" items="${drivers}">
            <tr>
                <td>
                    <c:out value="${driver.id}"/>
                </td>
                <td>
                    <c:out value="${driver.name}"/>
                </td>
                <td>
                    <c:out value="${driver.licenseNumber}"/>
                </td>
            </tr>
            <tb>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">DELETE</a>
            </tb>
        </c:forEach>
    </table>
</head>
<body>

</body>
</html>
