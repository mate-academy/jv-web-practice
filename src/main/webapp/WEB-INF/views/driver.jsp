<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="includes/header.jsp" %>
<%@include file="includes/mainmenu.jsp" %>
<h3>Driver card</h3>
<form action="driver" method="post">
<table>
    <tr>
        <td>user id</td>
        <td><input name="driver_id"  type="hidden" value="${driver.id}" readonly >${driver.id}</td>
    </tr>
    <tr>
        <td>driver name:</td>
        <td><input name="name" value="${driver.name}" type="text" ></td>
    </tr>
    <tr>
        <td>license number:</td>
        <td><input name="licensenumber" value="${driver.licenseNumber}" type="text" ></td>
    </tr>
    <tr>
        <td colspan="2" align="right"><input type="submit" value="Save"></td>
    </tr>
</table>
</form>
<%@include file="includes/footer.jsp" %>
