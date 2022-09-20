<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h2>Create new manufacturer:</h2>
<table>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
        Name <input required type="text" name="manufacturer_name">,<br>
        Country <input required type="text" name="country">,<br>
        <button type="submit">Confirm</button>
    </form>
</table>
</body>
</html>
