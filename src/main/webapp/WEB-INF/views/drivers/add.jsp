
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Add Driver To Car</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/index.jsp"/>
<h3>Write driver and car id</h3>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label>
        Driver id
        <input type="text" name="driverId">
    </label><br>
    <label>
        Car id
        <input type="text" name="carId">
    </label><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
