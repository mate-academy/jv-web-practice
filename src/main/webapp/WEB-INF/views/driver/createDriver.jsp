<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<form name="createDriver" method="post" action="${pageContext.request.contextPath}/drivers/create">
    Name: <input type="text" name="name"/> <br/>
    LicenseNumber: <input type="text" name="licenseNumber"/> <br/>
    <input type="submit" value="create"/>
</form>
</body>
</html>
