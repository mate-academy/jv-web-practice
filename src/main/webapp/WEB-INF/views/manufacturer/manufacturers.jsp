<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <title>Manufacturers</title>
    </head>
    <body style="background-color: whitesmoke">
        <h1 style="text-decoration: none; color: dimgray">Manufacturers page</h1>
        <button style="color: aliceblue;font-size: 20px; background-color: dimgray; border: none">
            <a style="text-decoration: none; color: whitesmoke" href="${pageContext.request.contextPath}/">
                To main page
            </a>
        </button>
        <table>
            <tr>
                <td>Manufacturer name</td>
                <td>Manufacturer country</td>
            </tr>
            <jsp:useBean id="manufacturers" scope="request" type="java.util.List"/>
            <c:forEach items="${manufacturers}" var="manufacturer">
                <tr>
                    <td><c:out value="${manufacturer.name}"/></td>
                    <td><c:out value="${manufacturer.country}"/></td>
                    <td>
                        <button  style="color: aliceblue; font-size: 20px; background-color: dimgray; border: none">
                            <a style="text-decoration: none; color: whitesmoke" href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
                                Delete manufacturer
                            </a>
                        </button>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td>
                    <button  style="color: aliceblue; font-size: 20px; background-color: dimgray; border: none">
                        <a style="text-decoration: none; color: whitesmoke" href="${pageContext.request.contextPath}/manufacturers/add">
                           Add new manufacturers
                        </a>
                    </button>
                </td>
            </tr>
        </table>
    </body>
</html>
