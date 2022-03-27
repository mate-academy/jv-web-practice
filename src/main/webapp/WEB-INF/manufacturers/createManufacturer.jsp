<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Manufacturer</title>
</head>
<body>
<h1>Create Manufacturer</h1>
<h2> </h2>
<h3>Please write name and country manufacturer's</h3>
<form methods="post" action="${pageContext.request.contextPath}/manufacturers/createManufacturer">
    <font color=blue>
        Name <input type="text" name="name"><br>
        Country <input type="text" name="country"><br>
        <button type="submit">Confirm</button>
    </font>
</form>
</body>
</html>
