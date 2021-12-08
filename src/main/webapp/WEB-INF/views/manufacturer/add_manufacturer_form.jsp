<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add manufacturer</title>
    </head>
    <body>
        <h1>Please the form below, to add new manufacturer</h1>
        <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
            <table>
                <tr>
                    <td>Name:</td> <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>Country:</td> <td><input type="text" name="country"></td>
                </tr>
            </table>
                <button type="submit">Submit</button>
        </form>
    </body>
</html>
