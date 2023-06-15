<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="includes/header.jsp" %>
<%@include file="includes/mainmenu.jsp" %>
<h3>Manufacturer card</h3>
<form method="post">
    <table>
        <tr>
            <td>Manufacturer:</td>
            <td><input name="name" type="text" ></td>
        </tr>
        <tr>
            <td>Country:</td>
            <td><input name="country" type="text" ></td>
        </tr>
        <tr>
            <td colspan="2" align="right"><input type="submit" value="Save"></td>
        </tr>
    </table>
</form>
<%@include file="includes/footer.jsp" %>
