<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="includes/header.jsp" %>
<%@include file="includes/mainmenu.jsp" %>
<h3>Car card</h3>
<form method="post">
    <table border="1">
        <tr>
            <td>MODEL:</td>
            <td><input name="model" value="${car.model}" type="text" ></td>
        </tr>
        <tr>
            <td>MANUFACTURER:</td>
            <td>
                <input list="manufacturerslist" name="manufacturer_id">
                <datalist id="manufacturerslist">
                    <c:forEach items="${manufacturers}" var="manufacturer">
                    <option value="${manufacturer.id}">${manufacturer.name} - ${manufacturer.country}</option>
                    </c:forEach>
                </datalist>
            </td>
        </tr>
        <tr>
            <td  colspan="2" align="right" ><input type="submit" value="Save"></td>
        </tr>
    </table>
</form>
<%@include file="includes/footer.jsp" %>
