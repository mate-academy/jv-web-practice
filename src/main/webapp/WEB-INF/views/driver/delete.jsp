<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi services</title>
</head>
<body>
<table valign="middle" align="center" border="BLACK" cellpadding="5">
    <caption>ALL DRIVERS</caption>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Licence number</th>
        <th>Operation</th>
    </tr>
    </thead>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td align="center"><c:out value="${driver.id}" /></td>
            <td align="center"><c:out value="${driver.name}" /></td>
            <td align="center"><c:out value="${driver.licenseNumber}" /></td>
            <td><a href="${pageContext.request.contextPath}
            /drivers/dodelete?id=${driver.id}"> Delete driver </a></td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="4" align="center"><a href="${pageContext.request.contextPath}/index">
            Home page</a></td>
    </tr>
</table>
</body>
</html>
