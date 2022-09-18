<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ALL drivers</title>
</head>
<body>
    <jsp:include page="../header.jsp"/>

    <h1>List drivers.</h1>

    <hr>

    <table>
        <tr>
            <td>ID</td>
            <td>|</td>
            <td>NAME</td>
            <td>|</td>
            <td>LICENSE NUMBER</td>
            <td>|</td>
            <td>|</td>
            <td>OPERATIONS</td>
        </tr>

        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td> ${driver.id} </td>
                <td>|</td>
                <td> ${driver.name} </td>
                <td>|</td>
                <td> ${driver.licenseNumber} </td>
                <td>|</td>
                <td>|</td>
                <td><a href='drivers/${driver.id}'>
                    <input type="button" value="EDIT" style="background-color: orange"></a></td>
                <td><a href='drivers/delete/${driver.id}'>
                    <input type="button" value="DELETE" style="background-color: red"></a></td>
            </tr>
        </c:forEach>
    </table>

    <hr>

    <jsp:include page="../footer.jsp"/>
</body>
</html>
