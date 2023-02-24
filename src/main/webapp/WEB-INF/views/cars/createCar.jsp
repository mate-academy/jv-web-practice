<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <style>
        .page__wrapper {
            width: fit-content;
        }
        h1 {
            font-size: 18px;
            margin: 0;
            padding: 0;
        }
        h3 {
            font-size: 16px;
            margin: 0;
            padding: 0;
        }
        .actions__submit {
            background-color: cornflowerblue;
        }

        .actions__reset {
            background-color: lightcoral;
        }

        .form__field {
            margin: 5px 0;
        }
        input {
            width: 100%;
            border-radius: 5px;
            border: 1px solid grey;
            padding: 0 5px;
            height: 25px;
        }
        select {
            width: 100%;
            height: 25px;
            padding: 0 20px 0 5px;
            border-radius: 5px;
            border: 1px solid grey;
        }
        button {
            border: none;
            border-radius: 5px;
            padding: 5px 10px;
            cursor: pointer;
        }
        .button {
            display: block;
            width: fit-content;
            border-radius: 5px;
            padding: 5px 10px;
            cursor: pointer;
            text-decoration: none;
            color: black;
        }
        .button--return {
            background-color: lightblue;
        }
        .actions {
            display: flex;
            gap: 20px;
        }
        .title__wrapper {
            display: flex;
            gap: 10px;
            height: 28px;
            align-items: center;
        }
    </style>
</head>
<body>
<div class="page__wrapper">
    <div class="title__wrapper">
        <a
                href="${pageContext.request.contextPath}/"
                class="home"
                title="home"
                style="color: lightslategray"
        >
            <i class="material-icons" style="font-size: 20px">home</i>
        </a>
        <h1>Create new Car</h1>
    </div>
    <form method="post" action="${pageContext.request.contextPath}/cars/create">
        <div class="form__field">
            <label for="car_model">Model</label>
            <input type="text" name="car_model" id="car_model">
        </div>
        <div class="form__field">
            <label for="car_manufacturer_id">Manufacturer</label><br>
            <select name="car_manufacturer_id" id="car_manufacturer_id" required>
                <c:forEach items="${manufacturers}" var="manufacturer">
                    <option value="${manufacturer.id}">${manufacturer.name} (${manufacturer.country})</option>
                </c:forEach>
            </select>
        </div>
        <div class="actions">
            <button type="submit" class="actions__submit">Create Car</button>
            <button type="reset" class="actions__reset">Reset</button>
            <a class="button button--return" href="${pageContext.request.contextPath}/cars">Cancel</a>
        </div>
    </form>
</div>
</body>
</html>
