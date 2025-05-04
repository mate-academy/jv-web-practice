<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title style="text-align: center">Displaying all manufacturers in our service</title>
</head>
<body>
<h1 style="color: chocolate;font-size: 50px; text-align: center;">
    List of manufacturers:
</h1>
<table style="border:1px solid black;margin-left:auto;margin-right:auto;">
    <tr style="font-size: 30px;">
        <td style="text-align:center; padding: 15px">
            <b>ID</b>
        </td>
        <td style="text-align:center; padding: 15px">
            <b>NAME</b>
        </td>
        <td style="text-align:center; padding: 15px">
            <b>COUNTRY</b>
        </td>
        <td style="text-align:center; padding: 15px">
            <b>ACTION</b>
        </td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr style="font-size: 25px;">
            <td style="text-align:center; padding: 15px">
                <c:out value="${manufacturer.id}"/>
            </td>
            <td style="text-align:center; padding: 15px">
                <c:out value="${manufacturer.name}"/>
            </td>
            <td style="text-align:center; padding: 15px">
                <c:out value="${manufacturer.country}"/>
            </td>
            <td style="text-align:center; padding: 15px">
                <a href="/manufacturers/delete?id=${manufacturer.id}" style="color: firebrick; text-decoration: none">DELETE</a>
            </td>
        </tr>
    </c:forEach>
</table>
<h1 style="font-size: 30px; text-align: center; padding-top: 30px">
    <a href="/" style="color: grey; text-decoration: none">BACK TO MAIN PAGE</a>
</h1>
<img src="/img/addManu.gif" alt="Hi"
     style="margin-left: auto; margin-right: auto; width: 400px; height: 300px; display: block">
</body>
</html>
