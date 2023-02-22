<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration manufacturer</title>
</head>
<body>
    <h1>Add manufacturer</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/addManufacturer">
    <label>
        NAME
        <input type="text" name="name">
    </label><br>

    <label>
        COUNTRY
        <input type="text" name="country">
    </label><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
