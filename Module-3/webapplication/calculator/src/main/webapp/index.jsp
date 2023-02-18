<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<h2>Simple Calculator</h2>
<form method="get" action="/calculate">
    <label>First operand: </label><br/>
    <input type="text" name="firstNum" placeholder="" value=""/><br/>
    <label>Operator: </label><br/>
    <select name="operator" id="operator">
        <option value="plus">Plus</option>
        <option value="minus">Minus</option>
        <option value="multi">Multiply</option>
        <option value="divide">Divide</option>
    </select><br/>
    <label>Second operand: </label><br/>
    <input type="text" name="secondNum" placeholder="" value="0"/><br/>
    <input type = "submit" id = "submit" value = "Calculate"/>
</form>
</body>
</html>