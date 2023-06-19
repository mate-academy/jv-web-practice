<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Add driver</title>
    </head>
    <body>
        <a href="${pageContext.request.contextPath}/index"><- back</a>
        <h1>Add new driver</h1>
		<form method="post" action="${pageContext.request.contextPath}/drivers/add">
			Name <input type="text" name="name"><br>
			License number <input type="text" name="license_number"><br>
			<button type="submit">Add</button>
		</form>
    </body>
</html>