<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <title>Driver List</title>
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

        table {
            border-collapse: collapse;
            margin-top: 10px;
        }
        tr {
            border-top: 1px solid grey;
            border-bottom: 1px solid grey;
        }

        tr th {
            background-color: transparent;
        }

        tr:nth-of-type(2n) {
            background-color: lightgray;
        }
        .drivers th {
            text-align: start;
        }
        th.index,
        th.id {
            min-width: 20px;
        }
        th, td {
            padding: 8px 20px;
        }
        th.name,
        th.licence{
            min-width: 50px;
        }
        th.actions {
            min-width: 60px;
        }
        .button {
            display: block;
            padding: 5px 10px;
            border-radius: 5px;
            text-decoration: none;
            color: black;
        }

        .button--create {
            background-color: cornflowerblue;
        }
        .button--delete {
            background-color: red;
        }
        .button--edit {
            background-color: darkseagreen;
        }
        .actions__buttons {
            display: flex;
            justify-content: start;
            gap: 20px;
        }
        .title__wrapper {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        a.home {
            color: lightslategrey;
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
            <h1 class="title">Driver List</h1>
            <a
                    class="button button--create"
                    href="${pageContext.request.contextPath}/drivers/create"
            >New Driver</a>
        </div>

        <table class="drivers">
            <tr>
                <th class="index"></th>
                <th class="id">ID</th>
                <th class="name">Name</th>
                <th class="licence">Licence</th>
                <th class="actions"></th>
            </tr>
            <c:forEach items="${drivers}" var="driver" varStatus="loop">
                <tr>
                    <td>${loop.index + 1}</td>
                    <td>${driver.id}</td>
                    <td>${driver.name}</td>
                    <td>${driver.licenseNumber}</td>
                    <td>
                        <div class="actions__buttons">
                            <a class="button button--delete" href="${pageContext.request.contextPath}/drivers/delete?driverId=${driver.id}">Delete</a>
                            <a class="button button--edit" href="${pageContext.request.contextPath}/drivers/edit?driverId=${driver.id}">Edit</a>
                        </div>
                    </td>
                </tr>
            </c:forEach>
        </table>

    </div>

</body>
</html>
