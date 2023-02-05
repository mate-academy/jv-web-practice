<%--
  Created by IntelliJ IDEA.
  User: javak
  Date: 02/02/2023
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <td>
            <form method="get"
                  action="${pageContext.request.contextPath}/manufacturers/create">
                <button type="submit">
                    Add new manufacturer
                </button>
            </form>
        </td>
    </tr>
</table>

</body>
</html>
