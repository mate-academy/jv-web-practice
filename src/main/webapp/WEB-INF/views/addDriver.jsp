<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/index.jsp"></jsp:include>
<h2>Please, fill the fields below to add new driver</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <table>
        <tr><td>Driver name:</td>
            <td><label><input type="text" name="name"></label></td>
        </tr>
        <tr><td>License number:</td>
            <td><label><input type="text" name="license_number"></label></td>
        </tr>
    </table>
    <button type="submit">Add new driver</button>
</form>
</body>
</html>
