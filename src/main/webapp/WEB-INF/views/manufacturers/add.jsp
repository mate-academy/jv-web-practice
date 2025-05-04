<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Add new manufacturer</title>
    </head>
    <body>
        <h1>Fill the form</h1>
        <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
            <div>
                <label>Name:</label>
                <input type="text" name="name"/>
            </div>
            <div>
                <label>Country:</label>
                <input type="text" name="country"/>
            </div>
            <div>
                <button type="submit">Add manufacturer</button>
            </div>
        </form>
    </body>
</html>
