<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi Service</title>
</head>
<body>
<div>
    <h1>Taxi Service</h1>
    <h2>Choose your action:</h2>
</div>
<form>
    <div>
        <input type="button" value="Cars" onClick='location.href="${pageContext.request.contextPath}/cars/all"'>
    </div>

    <div>
        <input type="button" value="Drivers" onClick='location.href="${pageContext.request.contextPath}/drivers/all"'>
    </div>

    <div>
        <input type="button" value="Manufacturers" onClick='location.href="${pageContext.request.contextPath}/manufacturers/all"'>
    </div>

</form>
</body>
</html>
