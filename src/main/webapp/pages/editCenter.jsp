<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Center</title>
    <style type="text/css">
table.container{
margin-left : auto ;
margin-right: auto

}
    input[type=text] ,[type=email] ,[type=password] ,[type=date]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=submit] {
  width: 100%;
  background-color: #3498db;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-color: #2980b9;
}
</style>
</head>
<body>
                              <h2 align="center" ><b>EDIT CENTER</b></h2>
   <form action="updateCenter" method="post">
        <input type="hidden" name="id" value="${center.id}">
        <table class="container">

		<tbody>

			<tr>
				<td><label for="centerName">CENTER NAME: </label></td>
				<td><input type="text" name="centerName" value="${center.centerName}" placeholder="ENTER CLINIC NAME" ><br></td>				
			</tr>
			<tr>
			<td><label for="city">SELECT CITY:</label></td>
		    <td><select name="city" id="city">
		      <option value="city">${center.city}</option>
              <option value="Bengalore">Bangalore</option>
              <option value="Chennai">Chennai</option>
              <option value="Hyderbad">Hyderbad</option>
              <option value="Pune">Pune</option>
              <option value="Madurai">Madurai</option>
              <option value="Punjab">Punjab</option>
              <option value="Ladak">Ladak</option>
              <option value="Coimbatore">Coimbatore</option>
            </select></td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td></td>
				<td><input type="submit" value="Update"/></td>				
			</tr>
		</tfoot>
	</table>
        
  </form>
  
  
<div class="error-message" align="center">
    <c:if test="${not empty message}">
        <span style="color: red;">${message}</span>
    </c:if>
</div>
    
</body>
</html>
