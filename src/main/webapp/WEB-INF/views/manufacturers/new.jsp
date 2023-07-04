<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a manufacturer</title>
</head>
<body>
<h1>Create a manufacturer</h1>
<p><a href="${pageContext.request.contextPath}/manufacturers">Back</a></p>
<form action="${pageContext.request.contextPath}/manufacturers/new" method="post">
    <label for="manufacturer_name">Manufacturer's Name</label>
    <input type="text" id="manufacturer_name" name="name" required/><br/>
    <label for="manufacturer_country">Manufacturer's Country</label>
    <input type="text" id="manufacturer_country" name="country" required/><br/>
    <button type="submit" style="cursor: pointer">Create</button>
</form>
</body>
</html>
