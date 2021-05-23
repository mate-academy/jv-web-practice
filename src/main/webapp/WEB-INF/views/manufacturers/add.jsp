<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a manufacturer</title>
</head>
<body>
<h1>Enter information about the manufacturer:</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <input type="text" name="manufacturerName"><br>
    Country <input type="text" name="manufacturerCountry"><br>
    <button type="submit">Confirm</button>

</form>
</body>
</html>