<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Taxi service</title>
    </head>
    <body>
        <h1>Заповніть інформацію про виробника</h1>
        <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
            Назва компанії <input type="text" name="name"><br>
            Країна <input type="text" name="country"><br>
            <button type="submit">Додати</button>
        </form>
    </body>
</html>