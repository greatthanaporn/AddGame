<%-- 
    Document   : addNewFoodSuccess
    Created on : Jul 16, 2023, 1:23:02 PM
    Author     : wasana.ngaogate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Food, java.util.Arrays" %>

<h2>เพิ่มอาหารสำเร็จ</h2>
<%
    Food food = (Food) session.getAttribute("food");
%>
ชื่อ: <%= food.getName() %><br/>
ประเภท: <%= food.getType() %><br/>
สารอาหาร: <%= Arrays.toString(food.getNutrient()) %><br/>
รสเผ็ด: <%= food.getSpicy() %><br/>
ราคา: <%= food.getPrice() %><br/>
</table>

