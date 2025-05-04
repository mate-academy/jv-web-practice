<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Driver</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <style>
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
        input {
            border-radius: 5px;
            border: 1px solid grey;
            padding: 0 5px;
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
    <div style="width: fit-content">
        <div class="title__wrapper">
            <a
                    href="${pageContext.request.contextPath}/"
                    class="home"
                    title="home"
                    style="color: lightslategray"
            >
                <i class="material-icons" style="font-size: 20px">home</i>
            </a>
            <h1>Edit Driver</h1>
        </div>
        <form method="post" action="${pageContext.request.contextPath}/drivers/edit?${driver.id}">
            <div class="form__field">
                <h3>Driver ID</h3>
                <input type="text" name="driver_id" readonly="true" value="${driver.id}">
            </div>
            <div class="form__field">
                <h3>Driver name</h3>
                <input type="text" name="driver_name" value="${driver.name}">
            </div>
            <div class="form__field">
                <h3>Driver`s licence number</h3>
                <input type="text" name="driver_licence_number" value="${driver.licenseNumber}">
            </div>
            <div class="actions">
                <button type="submit" class="actions__submit">Save Driver</button>
                <a class="button button--return" href="${pageContext.request.contextPath}/drivers">Return</a>
            </div>
        </form>
    </div>
</body>
</html>
