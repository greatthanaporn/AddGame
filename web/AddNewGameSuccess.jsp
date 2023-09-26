<%-- 
    Document   : addNewGameSuccess
    Created on : Aug 15, 2023, 7:52:01?PM
    Author     : Thanaponr Fonglom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Game" %>

<h2>Add Game Success</h2>
<%
    Game game = (Game) session.getAttribute("game");
%>
Name: <%= game.getName() %><br/>
Type: <%= game.getType() %><br/>
Difficulty: <%= game.getDifficulty() %><br/>
price: <%= game.getPrice() %><br/>
Game Name: <%= game.getGame() %><br/>
<a href="EditGame.jsp">Edit</a><br/>  <a href="index.html">Home</a><br/> 
</table>

