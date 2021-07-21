<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<form name="createCar" method="post" action="${pageContext.request.contextPath}/cars/create">
    Model: <input type="text" name="model"/> <br/>
    ManufacturerId: <input type="number" name="manufacturerId"/> <br/>
    <input type="submit" value="create"/>
</form>
</body>
</html>
