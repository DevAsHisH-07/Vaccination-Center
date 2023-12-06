<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit citizen</title>
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


<h1 align="center">EDIT CITIZEN</h1>
<form action="updateCitizen">
        <input type="hidden" name="id" value="${citizen.id}">

	<table class="container">

		<tbody>
		    
			<tr>
				<td><label for="name">Citizen Name:</label></td>
				<td><input type="text" name="name" value="${citizen.name}" placeholder="ENTER NAME" ><br></td>				
			</tr>
			<tr>
			<td><label for="city">CITIZEN CITY:</label></td>
		    <td><select name="city" id="city">
		     <option value="${citizen.city}">${citizen.city}</option>
		     
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
			
			<tr>
			<td><label for="doses">No. Of Doses</label></td>
		    <td><select name="doses" id="doses">
		    <option value="${citizen.doses}">${citizen.doses}</option>
		      <option value="0">None</option>
              <option value="1">1</option>
              <option value="2">2</option>

            </select></td>
			</tr>
			<tr>
			<td><label for="centerName">CLINIC:</label></td>
		    <td>
                <select name="centerName" id="centerName">
                     <option value="${citizen.center.centerName}">${citizen.center.centerName}</option> 
                    <c:forEach items="${centers}" var="center">
                    
                        <option value="${center.centerName}">${center.centerName}</option>
                    </c:forEach>
                </select>
            </td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<th></th>
				<th><input type="submit" value="Submit"/></th>		
			</tr>
		</tfoot>
	</table>  
	
	<div class="error-message" align="center">
    <c:if test="${not empty message}">
        <span style="color: red;">${message}</span>
    </c:if>
</div>    
</form>
</body>
</html>
