<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <style>
        h1 {
            text-align: center;
            margin-top: 200px
        }

        h2 {
            text-align: center;
        }

        table {
            margin-left: 660px;
        }
    </style>
    <title>All drivers</title>
</head>
<body>
<h1>All drivers:</h1>
<table border="1">
    <tr>
        <th>NAME</th>
        <th>LICENSE NUMBER</th>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <th><c:out value="${driver.name}"/></th>
            <th><c:out value="${driver.licenseNumber}"/></th>
        </tr>
    </c:forEach>
</table>
<h2><a href="${pageContext.request.contextPath}/index">Back to main menu</a></h2>
</body>
</html>
