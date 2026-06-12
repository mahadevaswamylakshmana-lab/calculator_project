<%@ page language="java" %>

<%
String result = "";

try {
    String num1Str = request.getParameter("num1");
    String num2Str = request.getParameter("num2");
    String operation = request.getParameter("operation");

    if(num1Str != null && num2Str != null && operation != null) {

        double num1 = Double.parseDouble(num1Str);
        double num2 = Double.parseDouble(num2Str);
        double res = 0;

        switch(operation) {
            case "add":
                res = num1 + num2;
                break;
            case "subtract":
                res = num1 - num2;
                break;
            case "multiply":
                res = num1 * num2;
                break;
            case "divide":
                res = num1 / num2;
                break;
        }

        result = String.valueOf(res);
    }
}
catch(Exception e){
    result = "Error";
}
%>

<html>
<head>
    <title>Calculator Application</title>
</head>
<body>

<h2>Calculator</h2>

<form method="post">

    Number 1:
    <input type="text" name="num1"/>

    <br><br>

    Number 2:
    <input type="text" name="num2"/>

    <br><br>

    <select name="operation">
        <option value="add">Addition</option>
        <option value="subtract">Subtraction</option>
        <option value="multiply">Multiplication</option>
        <option value="divide">Division</option>
    </select>

    <br><br>

    <input type="submit" value="Calculate"/>

</form>

<br>

<h3>Result: <%= result %></h3>

</body>
</html>
