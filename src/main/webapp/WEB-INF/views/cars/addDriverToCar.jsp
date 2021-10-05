<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
    <style>
        body {
            background: #DFE2ED;
            font-family: Gilroy, Arial, sans-serif;
        }
        .center {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            padding: 10px;
            background: #E95C41;
            border-radius: 1rem;
            text-align: center;
        }
        h1, h3 {
            color: #ffffff;
        }
    </style>
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="anonymous">
</head>
<body>
<div class="center">
    <h1>Fill in the form:</h1>
    <form method="POST" action="${pageContext.request.contextPath}/cars/add">
        <label for="driver_id">Driver ID:</label><br>
        <input type="number" id="driver_id" name="driver_id" required><br>
        <label for="car_id">Car ID:</label><br>
        <input type="number" id="car_id" name="car_id" required><br><br>
        <button type="submit">Confirm</button>
    </form>
</div>
</body>
</html>