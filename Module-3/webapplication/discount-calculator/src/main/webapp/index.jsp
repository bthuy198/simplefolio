<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Currency Converter</title>
</head>
<body>
<h2>Discount calculator</h2>
<form method="get" action="/display-percent">
    <label>Product Description: </label><br/>
    <input type="text" name="productName" placeholder="enter description" value=""/><br/>
    <label>List price: </label><br/>
    <input type="text" name="vnd" placeholder="price" value="0"/><br/>
    <label>Discount Percent(%): </label><br/>
    <input type="text" name="percent" placeholder="percent" value="0"/><br/>
    <input type = "submit" id = "submit" value = "Calculate"/>
</form>
</body>
</html>