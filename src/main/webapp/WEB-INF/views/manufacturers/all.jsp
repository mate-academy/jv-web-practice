<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
</head>


<body>
<h1>
    List of manufacturers:
</h1>
<table>
    <tr>
        <th style="border: solid black 1px">
            ID
        </th>
        <th style="border: solid black 1px">
            BRAND
        </th>
        <th style="border: solid black 1px">
            COUNTRY
        </th>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td style="border: solid black 1px">
                <c:out value="${manufacturer.id}"/>
            </td>
            <td style="border: solid black 1px">
                <c:out value="${manufacturer.name}"/>
            </td>
            <td style="border: solid black 1px">
                <c:out value="${manufacturer.country}"/>
            </td>
        </tr>
    </c:forEach>

</table>

    <h3>
        You can delete manufacturer:
    </h3>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/all">
        Manufacturer Id <input type="text" name="manufacturerId">
        <br>
        <button type="submit">Submit</button>
    </form>


</body>
</html>








