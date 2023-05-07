<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<hr />
<br />
<h1>Add new driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    <table>
        <tr>
            <td><label for="name">Name:</label></td>
            <td><input type="text" id="name" name="name"><br /></td>
        </tr>
        <tr>
            <td><label for="licenseNumber">License number:</label></td>
            <td><input type="text" id="licenseNumber" name="licenseNumber"><br /></td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Add to DB">
                <input type="reset" value="reset">
            </td>
        </tr>
    </table>
</form>
