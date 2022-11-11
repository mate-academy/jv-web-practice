<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>New car</title>
</head>
<body>
<h2>Enter info of new car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/new">
    <label>
        Model:
        <input type="text" name="model"/>
    </label>
    <br/>
    <label>
        Manufacturer id:
        <input type="number" name="manufacturer_id">
    </label>
    <br/>
    <button type="submit">Create</button>
</form>
</body>
</html>
