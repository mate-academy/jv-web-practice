<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>All drivers</title>
    </head>
    <body>
        <a href="${pageContext.request.contextPath}/index"><- back</a>
        <h1>All drivers:</h1>
        <table>
        	<tr>
        	    <td>ID</td>
        		<td>NAME</td>
        		<td>LICENSE NUMBER</td>
                <td>DELETE</td>
        	</tr>
        	<c:forEach items="${drivers}" var="driver">
        		<tr>
        		    <td><c:out value="${driver.getId()}" /></td>
        			<td><c:out value="${driver.getName()}" /></td>
        			<td><c:out value="${driver.getLicenseNumber()}" /></td>
                    <td>
                        <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.getId()}">
                            delete
                        </a>
                    </td>
        		</tr>
        	</c:forEach>
        </table>
    </body>
</html>