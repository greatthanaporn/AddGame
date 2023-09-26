<%-- 
    Document   : AddGame
    Created on : Aug 15, 2023, 7:52:01?PM
    Author     : Thanaporn Fonglom
--%>

<h2>Add Game</h2>
<form action="AddNewGame">
    <table>
        <tr><td>Name:</td><td><input type="text" name="GameName"></td>
        <tr><td>Type:</td>
            <td>
                <select name="GameType">
                    <option value="RPG">RPG</option>
                    <option value="FPS">FPS</option>
                    <option value="Racing">Racing</option>  
                </select>
            </td>
        </tr>
        <tr><td>Difficulty</td>
            <td>
                <input type="radio" name="Difficulty" value="Low">Low
                <input type="radio" name="Difficulty" value="Medium">Medium
                <input type="radio" name="Difficulty" value="Max">Max
            </td>
        </tr>
        <tr><td>Price:</td><td><input type="text" name="price"></td></tr>
        <tr><td>Game Name:</td><td><input type="text" name="GameName"></td>
        <tr><td>&nbsp;</td><td><input type="submit" value="Add"></td></tr>
    </table>
</form>