<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacturer to DB</title>
</head>
<body>
    <h1>Create new manufacturer</h1>
        <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
            Manufacturer_name <input type="text" name="name"><br>
            Manufacturer_country <input type="text" name="manufacturerCountry"><br>
            <button type="  submit">Confirm</button>
        </form>
</body>
</html>
