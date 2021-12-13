<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/index.jsp"></jsp:include>
<h2>Please, fill the fields below to add new car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <table>
        <tr>
            <td>Model:</td>
            <td><label><input type="text" name="model"></label></td>
        </tr>
        <tr>
            <td>Manufacturer id:</td>
            <td><label><input type="number" name="manufacturer_id"></label></td>
        </tr>
    </table>
    <button type="submit">Add new car</button>
</form>
</body>
</html>