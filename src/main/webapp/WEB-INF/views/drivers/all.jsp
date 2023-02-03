<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>All drivers</title>
    </head>
    <body>
        <h1>
            List of drivers:
        </h1>
        <table>
            <tr>
                <th style="border: solid black 1px">
                    ID
                </th>
                <th style="border: solid black 1px">
                    NAME
                </th>
                <th style="border: solid black 1px">
                    LICENSE NUMBER
                </th>
                <th style="border: solid black 1px">
                    DELETE
                </th>
            </tr>
            <c:forEach items="${drivers}" var="driver">
                <tr>
                    <td style="border: solid black 1px">
                        <c:out value="${driver.id}"/>
                    </td>
                    <td style="border: solid black 1px">
                        <c:out value="${driver.name}"/>
                    </td>
                    <td style="border: solid black 1px">
                        <c:out value="${driver.licenseNumber}"/>
                    </td>
                    <td style="border: solid black 1px">
                        <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                            delete
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
