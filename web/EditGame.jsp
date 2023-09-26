<%-- 
    Document   : EditGame
    Created on : Aug 15, 2023, 9:34:25?PM
    Author     : Thanapron Fonglom
--%>

<%@page import="model.Game" %>

<h2>Edit Game</h2>

<%
    Game game = (Game) session.getAttribute("game");
    out.println("Old game: " + game.getName() + ", " + game.getType() + ",");
    out.println(game.getDifficulty()+"difficulty" + "," + game.getPrice() +  "," + game.getGame() +"<br/>");
%>

<form action="AddNewGame">
    <table>
        <tr><td>Name:</td>
            <td><input type="text" name="GameName" value="<%= game.getName() %>"></td>
        <tr><td>Type:</td>
            <td>
                <select name="GameType">
                    <option value="RPG">RPG</option>
                    <option value="FPS">FPS</option>
                    <option value="Racing">Racing</option>  
                </select>
            </td>
        </tr>
       <tr><td>Difficulty:</td>
            <td>
                <input type="radio" name="Difficulty:" value="Low">Low
                <input type="radio" name="Difficulty:" value="Medium">Medium
                <input type="radio" name="Difficulty:" value="Max">Max
            </td>
        </tr>
        <tr><td>Price:</td><td><input type="text" name="price" value="<%= game.getPrice() %>"></td></tr>
        <tr><td>Game Name:</td><td><input type="text" name="gameName" value="<%= game.getGame()%>"></td>
        <tr><td>&nbsp;</td><td><input type="submit" value="Edit"></td></tr>
    </table>
</form>
        
<% session.removeAttribute("food"); %>
