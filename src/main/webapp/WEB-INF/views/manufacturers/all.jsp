<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<h1>
    List of manufacturers:
</h1>
<table>
    <tr>
        <th style="border: solid black 1px">
            ID
        </th>
        <th style="border: solid black 1px">
            BRAND
        </th>
        <th style="border: solid black 1px">
            COUNTRY
        </th>
        <th style="border: solid black 1px">
            DELETE
        </th>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td style="border: solid black 1px">
                <c:out value="${manufacturer.id}"/>
            </td>
            <td style="border: solid black 1px">
                <c:out value="${manufacturer.name}"/>
            </td>
            <td style="border: solid black 1px">
                <c:out value="${manufacturer.country}"/>
            </td>
            <td style="border: solid black 1px">
                <a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
                    delete
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
