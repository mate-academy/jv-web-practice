<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Add car</title>
    </head>
    <body>
        <a href="${pageContext.request.contextPath}/index"><- back</a>
        <h1>Add new car</h1>
		<form method="post" action="${pageContext.request.contextPath}/cars/add">
			Model <input type="text" name="model"><br>
			Manufacturer ID <input type="text" name="manufacturer_id"><br>
			<button type="submit">Add</button>
		</form>
    </body>
</html>