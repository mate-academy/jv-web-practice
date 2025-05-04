<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Add driver to car</title>
    </head>
    <body>
        <a href="${pageContext.request.contextPath}/index"><- back</a>
        <h1>Add driver to car</h1>
		<form method="post" action="${pageContext.request.contextPath}/cars/add_driver">
			Car ID <input type="number" name="car_id"><br>
			Driver ID <input type="number" name="driver_id"><br>
			<button type="submit">Add</button>
		</form>
    </body>
</html>