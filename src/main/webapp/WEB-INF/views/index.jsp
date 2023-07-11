<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin panel</title>
    <style>

        body {
            background-color: #3f3f3f;
        }
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .title {
            margin-bottom: 2em;
            text-align: center;
        }

        .title h1 {
            font-size: 40px;
            color: #ffffff;
        }

        .createSection {
            text-align: center;
        }

        .createSection h2 {
            color: #ffffff;
        }

        .editSection {
            text-align: center;
        }

        .editSection h2 {
            color: #ffffff;
        }

        .displaySection {
            text-align: center;
        }

        .displaySection h2 {
            color: #ffffff;
        }


        .button-50 {
            padding: 0.6em 2em;
            border: none;
            outline: none;
            color: rgb(255, 255, 255);
            background: #111;
            cursor: pointer;
            position: relative;
            z-index: 0;
            border-radius: 10px;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
            margin-bottom: 1em;
        }


    </style>
</head>
<body>
<div class="container">
    <div class="title">
        <h1>Hello, user!</h1>
    </div>

    <div class="createSection">
        <h2>Create</h2>
        <button class="button-50" onclick="location.href='${pageContext.request.contextPath}/drivers/add'">
            Create a driver
        </button>
        <button class="button-50" onclick="location.href='${pageContext.request.contextPath}/manufacturers/add'">
            Create a manufacturer
        </button>
        <button class="button-50" onclick="location.href='${pageContext.request.contextPath}/cars/add'">
            Create a car
        </button>
    </div>

    <div class="editSection">
        <h2>Edit</h2>
        <button class="button-50" onclick="location.href='${pageContext.request.contextPath}/cars/drivers/add'")>
            Add a driver to car
        </button>
    </div>

    <div class="displaySection">
        <h2>Display</h2>
        <button class="button-50" onclick="location.href='${pageContext.request.contextPath}/drivers'">
            Display all drivers
        </button>
        <button class="button-50" onclick="location.href='${pageContext.request.contextPath}/manufacturers'">
            Display all manufacturers
        </button>
        <button class="button-50" onclick="location.href='${pageContext.request.contextPath}/cars'">
            Display all cars
        </button>
    </div>
</div>
</body>
</html>