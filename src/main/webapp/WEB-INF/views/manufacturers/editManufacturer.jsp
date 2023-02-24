<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Manufacturer</title>
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
        .actions {
            display: flex;
            gap: 20px;
        }
        .actions__submit {
            background-color: cornflowerblue;
        }

        .button--return {
            background-color: lightcoral;
        }

        .form__field {
            margin: 5px 0;
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
        button {
            border: none;
            border-radius: 5px;
            padding: 5px 10px;
            cursor: pointer;
        }
        input {
            width: 100%;
            border-radius: 5px;
            border: 1px solid grey;
            padding: 0 5px;
            height: 25px;
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
            <h1>Edit Manufacturer</h1>
        </div>
        <form method="post" action="${pageContext.request.contextPath}/manufacturers/edit?${manufacturer.id}">
            <div class="form__field">
                <h3>ID</h3>
                <input type="text" name="manufacturer_id" readonly="true" value="${manufacturer.id}">
            </div>
            <div class="form__field">
                <h3>Name</h3>
                <input type="text" name="manufacturer_name" value="${manufacturer.name}">
            </div>
            <div class="form__field">
                <h3>Country</h3>
                <input type="text" name="manufacturer_country" value="${manufacturer.country}">
            </div>
            <div class="actions">
                <button type="submit" class="actions__submit">Save Manufacturer</button>
                <a class="button button--return" href="${pageContext.request.contextPath}/manufacturers">Return</a>
            </div>
        </form>
    </div>
</body>
</html>
