<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Add driver</title>
    </head>
    <body>
        <h1>Fill the form</h1>
        <form method="post" action="${pageContext.request.contextPath}/drivers/add">
            <div>
                <label>Name:</label>
                <input type="text" name="name">
            </div>
            <div>
               <label>License number:</label>
               <input type="text" name="license_number"/>
            </div>
            <div>
                <button type="submit">Add driver</button>
            </div>
        </form>
    </body>
</html>