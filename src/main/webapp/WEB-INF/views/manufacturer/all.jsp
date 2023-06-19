<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>All manufacturers</title>
    </head>
    <body>
        <a href="${pageContext.request.contextPath}/index"><- back</a>
        <h1>All manufacturers:</h1>
        <table>
        	<tr>
        	    <td>ID</td>
        		<td>NAME</td>
        		<td>COUNTRY</td>
                <td>DELETE</td>
        	</tr>
        	<c:forEach items="${manufacturers}" var="manufacturer">
        		<tr>
        		    <td><c:out value="${manufacturer.getId()}" /></td>
        			<td><c:out value="${manufacturer.getName()}" /></td>
        			<td><c:out value="${manufacturer.getCountry()}" /></td>
                    <td>
                        <a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.getId()}">
                            delete
                        </a>
                    </td>
        		</tr>
        	</c:forEach>
        </table>
    </body>
</html>