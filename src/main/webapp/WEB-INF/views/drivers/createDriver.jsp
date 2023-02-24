<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
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
            <h1>Create new Driver</h1>
        </div>
        <form method="post" action="${pageContext.request.contextPath}/drivers/create">
            <div class="form__field">
                <h3>Driver name</h3>
                <input type="text" name="driver_name">
            </div>
            <div class="form__field">
                <h3>Driver`s licence number</h3>
                <input type="text" name="driver_licence_number">
            </div>
            <div class="actions">
                <button type="submit" class="actions__submit">Create Driver</button>
                <button type="reset" class="actions__reset">Reset</button>
                <a class="button button--return" href="${pageContext.request.contextPath}/drivers">Cancel</a>
            </div>
        </form>
    </div>
</body>
</html>
