<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<br>
<a href = "${pageContext.request.contextPath}/index">Go to Main Page</a>
<br>
<h2>Fill the fields for create car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    <div>
        Model
        <input type="text" name="model" placeholder="Input model">
    </div>
    <br>
    <div>
        manufacturer
        <select name="manufacturer_id">
            <optgroup label="Choose manufacturer">
                <option value="1">BMW</option>
                <option value="2">Peugeot</option>
                <option value="3">Toyota</option>
            </optgroup>
        </select>
    </div>
    <br>
    <button type="submit">Confirm</button>
    <br>
</form>
</body>
</html>
