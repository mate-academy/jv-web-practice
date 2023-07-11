<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a Manufacturer</title>
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

        input[type="text"] {
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
<h1>Create a Manufacturer</h1>
<form method="POST" action="${pageContext.request.contextPath}/manufacturers/add">
    <label for="name">Name</label>
    <input type="text" id="name" name="name" required pattern="[A-Za-z\s]+"
           title="The input can only contain letters and spaces.">
    <label for="country">Country</label>
    <input type="text" id="country" name="country" required pattern="[A-Za-z\s]+"
           title="The input can only contain letters and spaces.">
    <button type="submit">Confirm</button>
</form>
<button class="back" onclick="history.back()">Go back</button>
</body>
</html>