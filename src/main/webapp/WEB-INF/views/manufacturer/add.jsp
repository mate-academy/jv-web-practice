<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Add manufacturer</title>
    </head>
    <body>
        <a href="${pageContext.request.contextPath}/index"><- back</a>
        <h1>Add new manufacturer</h1>
		<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
			Name <input type="text" name="name"><br>
			Country <input type="text" name="country"><br>
			<button type="submit">Add</button>
		</form>
    </body>
</html>