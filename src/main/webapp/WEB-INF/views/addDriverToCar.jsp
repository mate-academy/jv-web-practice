<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car`s divers</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/index.jsp"></jsp:include>
<h2> Please, complete the form below, to add driver to car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <table>
        <tr><td>Car ID:</td>
            <td><label><input type="text" name="car_id"></label></td>
        </tr>
        <tr><td>Driver ID:</td>
            <td><label><input type="text" name="driver_id"></label></td>
        </tr>
    </table>
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>
