<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>VIEW CITIZEN</title>
</head>
<body>
     <!-- include dashboard -->
          <%@include file="dashboard.jsp" %>


       <h2 align = "center">LIST OF CITIZENS</h2>

        <table >
         <thead>
        <tr>
        <td colspan="7">
       <form id="form-1" action="addCitizen" method="post">
		 <input type="submit" value="ADD NEW CITIZENS" id="button-1"/>
        </form>
        </td>
    </tr>
        </thead>
        <tbody>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>City</th>
            <th>No. Of Doses</th>
            <th>Vaccination Status</th>
            <th>Vaccination Center</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${citizens}" var="citizen" varStatus="loop">
            <tr>
            <td>${citizen.id}</td>
            <td>${citizen.name}</td>
            <td>${citizen.city}</td>
            <td>${citizen.doses}</td>
            <td>${citizen.vaccinationStatus}</td>
            <td>${citizen.center.centerName}</td>
                <td class="view-edit-delete">
               
                <a href="<c:url value='viewCitizenById?id=${citizen.id}'/>">View</a>
                <a href="<c:url value='editCitizen?id=${citizen.id}'/>">Edit</a>
                <a href="<c:url value='deleteCitizen?id=${citizen.id}'/>">Delete</a>

                </td>
            </tr>
        </c:forEach>
        </tbody>
        <tfoot>
        <tr>    
            <td colspan="7">  Total ${citizenCount} citizens found.</td>
        </tr>
        </tfoot>
   </table>

<div class="error-message" align="center">
    <c:if test="${not empty message}">
        <span style="color: red;">${message}</span>
    </c:if>
</div>




</body>
</html>