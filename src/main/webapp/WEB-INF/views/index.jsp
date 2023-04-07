<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>UI for taxi db</title>
    <style>
        <%@include file="/WEB-INF/css/table.css" %>
    </style>
</head>
<body>
<h3>UI for taxi db</h3>
<table class="tg">
    <thead>
    <tr>
        <th class="tg-4n5g">Drivers</th>
        <th class="tg-4n5g">Cars</th>
        <th class="tg-4n5g">Manufacturers</th>
    </tr>
    </thead>
    <tbody>
        <tr>
            <td class="tg-0lax"><a href="${pageContext.request.contextPath}/drivers/all">getAll</a></td>
            <td class="tg-0lax"></td>
            <td class="tg-0lax"></td>
        </tr>
        <tr>
            <td class="tg-0lax"><a href="${pageContext.request.contextPath}/drivers/add">addDriver</a></td>
            <td class="tg-0lax"><a href="${pageContext.request.contextPath}/cars/add">addCar</a></td>
            <td class="tg-0lax"><a href="${pageContext.request.contextPath}/manufacturers/add">addManufacturer</a></td>
        </tr>
        <tr>
            <td class="tg-0lax"></td>
            <td class="tg-0lax"><a href="${pageContext.request.contextPath}/cars/link/driver">linkDriver</a></td>
            <td class="tg-0lax"></td>
        </tr>
    </tbody>
</table>

</body>
</html>
