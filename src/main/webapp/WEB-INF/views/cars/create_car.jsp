<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<section>
    <h2>Create car: </h2>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        Model: <input type="text" name="model"><br>
        Manufacturer id: <input type="number" name="manufacturer_id"><br>
        <button type="submit">create</button>
    </form>
    <br>
    <div>
        <a href="/">home</a>
    </div>
</section>

</body>
</html>
