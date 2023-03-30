<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1 style="color: #003293; text-align: center">SERVICE</h1>

<form style="text-align:center" method="post" action="${pageContext.request.contextPath}/index">
    <a href="${pageContext.request.contextPath}/cars">
        <button style="width:50%;background-color:#125004;text-align:center" type="button">
            <h2 style="color:#3057b6; background-color: yellow">CAR SERVICE</h2></button>
    </a><br>
    <a href="${pageContext.request.contextPath}/drivers">
        <button style="width:50%;background-color:#125004;text-align:center" type="button">
            <h2 style="color:#3057b6; background-color: yellow">DRIVER SERVICE</h2></button>
    </a><br>
    <a href="${pageContext.request.contextPath}/manufacturers">
        <button style="width:50%;background-color:#125004;text-align:center" type="button">
            <h2 style="color:#3057b6; background-color: yellow">MANUFACTURER SERVICE</h2></button>
    </a><br>

</form>
</body>
</html>
