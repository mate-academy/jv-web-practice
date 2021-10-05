<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all drivers</title>
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
        table {
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #646464;
            padding: 5px;
        }
        h1, h3 {
            color: #ffffff;
        }
    </style>
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="anonymous">
</head>
<body>
<div class="center">
    <h1>Drivers list:</h1>
    <table>
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>License number</td>
            <td>Action</td>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}" /></td>
                <td><c:out value="${driver.name}" /></td>
                <td><c:out value="${driver.licenseNumber}" /></td>
                <td>
                    <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                        <button>Delete driver</button>
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table><br><br>
    <a href="${pageContext.request.contextPath}/"><button>Main page</button></a>
</div>
</body>
</html>