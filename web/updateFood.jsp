<%-- 
    Document   : updateFood
    Created on : Jan 21, 2019, 7:50:23 PM
    Author     : Wasana Ngaogate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="model.Food" %>

<h2>แก้ไขอาหาร</h2>

<%
    Food food = (Food) session.getAttribute("food");
    out.println("ข้อมูลเดิม: " + food.getName() + ", " + food.getType());
    for(String n : food.getNutrient()){
        out.print(n + " ");
    }
    out.println(food.getSpicy() + "," + food.getPrice() + "<br/>");
%>

<form action="AddNewFood">
    <table>
        <tr><td>ชื่อ:</td>
            <td><input type="text" name="foodName" value="<%= food.getName() %>"></td>
        <tr><td>ประเภท:</td>
            <td>
                <select name="foodType">
                    <option value="ยำ">ยำ</option>
                    <option value="ผัด">ผัด</option>
                    <option value="แกง">แกง</option>  
                </select>
            </td>
        </tr>
        <tr><td>สารอาหารสำคัญ:</td>
            <td>
                <input type="checkbox" name="nutrient" value="โปรตีน">โปรตีน
                <input type="checkbox" name="nutrient" value="คาร์โบไฮเดรต">คาร์โบไฮเดรต<br>
                <input type="checkbox" name="nutrient" value="ไขมัน">ไขมัน
                <input type="checkbox" name="nutrient" value="วิตามิน">วิตามิน<br>
            </td>
        </tr>
        <tr><td>รสเผ็ด:</td>
            <td>
                <input type="radio" name="spicy" value="ไม่เผ็ด">ไม่เผ็ด
                <input type="radio" name="spicy" value="เผ็ดน้อย">เผ็ดน้อย
                <input type="radio" name="spicy" value="เผ็ดมาก">เผ็ดมาก
            </td>
        </tr>
        <tr><td>ราคา:</td><td><input type="text" name="price" value="<%= food.getPrice() %>"></td></tr>
        <tr><td>&nbsp;</td><td><input type="submit" value="เพิ่มอาหาร"></td></tr>
    </table>
</form>
        
<% session.removeAttribute("food"); %>