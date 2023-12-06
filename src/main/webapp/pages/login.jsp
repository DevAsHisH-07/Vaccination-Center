<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #e0e0e0;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px;
        }

        h1 {
            margin: 0;
        }

        h2 {
            text-align: center;
            margin-top: 10px;
        }

        form {
            width: 50%;
            margin: 0 auto;
        }

        table.center {
            margin-left: auto;
            margin-right: auto;
            width: 100%;
        }

        input[type=text], [type=email], [type=password], [type=date] {
            width: calc(100% - 24px);
            padding: 12px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit], button {
            width: calc(100% - 24px);
            background-color: #4285f4; /* Blue color, change to your preferred color */
            color: white;
            padding: 14px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type=submit]:hover, button:hover {
            background-color: #1a73e8; /* Darker blue on hover, change to your preferred color */
        }

        .error-message {
            text-align: center;
            margin-top: 10px;
        }

        div.align-center {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<header><h1 align="center">VACCINATION PORTAL LOGIN</h1></header>
<h2 align="center">WELCOME</h2>
<hr>
<form action="dashboard" method="post">

<h2 align="center"><b>Login</b></h2>
	<table class="center">
	   
		<tbody>
			<tr>
				<td><label for="email">Email:</label></td>
				<td><input type="email" name="email" placeholder="Enter Email" ><br></td>
			</tr>
			<tr>
			    <td><label for="password">Enter Password:</label></td>
				<td><input type="password" name= "password" placeholder="Enter Password"><br></td>
			    
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td></td><td><input type="submit" value="LOGIN" /></td>
			</tr>
		</tfoot>
	</table>
	
</form>

<div class="error-message" align="center">
    <c:if test="${not empty message}">
        <span style="color: red;">${message}</span>
    </c:if>
</div>

<div align="center">
<form action="register">
	<button>REGISTER</button>
</form>
</div>
</body>
</html>