<%--
  Created by IntelliJ IDEA.
  User: Андрій
  Date: 15.12.2022
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Create driver</title>
    </head>
    <body>
    <h2><i>Fill the form below</i></h2>
    <form method="post" action="${pageContext.request.contextPath}/add/driver">
        Name <input type="text" name="driver_name"> <br>
        License number <input type="text" name="license_number"> <br>
        <button type="submit">Create driver</button>
    </form>
    </body>
</html>
