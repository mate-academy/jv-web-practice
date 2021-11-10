<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Driver</title>
</head>
<body>
<jsp:include page="../menu.jsp"></jsp:include>
<H1>Add new driver</H1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <table>
        <tr>
            <td>Name</td>
            <td><input type="text" name="driverName"></td>
        </tr>
        <tr>
            <td>LicenseNumber</td>
            <td><input type="text" name="licenseNumber"></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <button type="submit">Add</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
