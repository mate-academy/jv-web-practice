<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a Car</title>
    <style>
        body {
            background-color: #3f3f3f;
            color: #ffffff;
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        h1 {
            text-align: center;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 2em;
        }

        label {
            margin-top: 1em;
        }

        input[type="text"],
        select {
            width: 200px;
            padding: 0.5em;
            border-radius: 5px;
            border: none;
            background-color: #ffffff;
        }

        button[type="submit"],
        .back {
            margin-top: 1em;
            padding: 0.5em 2em;
            border: none;
            border-radius: 5px;
            background-color: #111;
            color: #ffffff;
            font-size: 16px;
            cursor: pointer;
        }

        .back {
            background-color: #777777;
        }
    </style>
</head>
<body>
<h1>Create a Car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <label for="model">Model</label>
    <input type="text" id="model" name="model" required pattern="[a-zA-Z0-9\s]+"
           title="The input can only contain letters, numbers and/or spaces.">
    <label for="manufacturer">Manufacturer</label>
    <select id="manufacturer" name="manufacturer" required>
        <c:forEach var="manufacturer" items="${manufacturers}">
            <option value="${manufacturer.id}">${manufacturer.name}</option>
        </c:forEach>
    </select>
    <label for="driver">Driver</label>
    <select id="driver" name="driver_id" required>
        <c:forEach var="driver" items="${drivers}">
            <option value="${driver.id}">${driver.name}</option>
        </c:forEach>
    </select>
    <button type="submit">Confirm</button>
</form>
<button class="back" onclick="history.back()">Go back</button>
</body>
</html>