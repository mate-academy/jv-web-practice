<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<h1>Create Driver</h1>
<h2> </h2>
<h3>Please write name and license number driver's</h3>
<form methods="post" action="${pageContext.request.contextPath}/drivers/createDriver">
    <font color=blue>
    Name <input type="text" name="name"><br>
    License Number <input type="text" name="licenceNumber"><br>
    <button type="submit">Confirm</button>
    </font>
</form>
</body>
</html>
