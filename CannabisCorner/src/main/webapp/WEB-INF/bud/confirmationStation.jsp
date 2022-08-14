<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<div id=missionstatement class="text-bg-dark p-3">Cannabis | People | Coffee | Jazz</div>

<head>
<meta charset="UTF-8">


<title>Confirmation Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
</head>
<body>
<c:choose>
		<c:when test="${createdBud}">
			<h1>Created Bud!</h1>
			<li>ID: ${bud.id}</li>
			<li>Name: ${bud.name}</li>
			<li>Strain: ${bud.strain}</li>
			<li>THC: ${bud.thcPercent}%</li>
			<li>CBD: ${bud.cbdPercent}%</li>
			<li>Effects: ${bud.effects}</li>
			<li>Common Usage: ${bud.commonUsage}</li>
			<li>Origin: ${bud.origin}</li>
			<li>Lineage: ${bud.lineage}</li>
			<li>Description: ${bud.description}</li>
			
			
			<form action="deleteBud.do" method="GET" name="id">
		<label for="deleteBud">ID: </label> <input type="text" name="id"
			value="${bud.id}" placeholder="Delete by ID"> <input
			class="btn btn-secondary" type="submit" value="Delete This Bud">
			<br>
		</form>
		
		<form action="updateBudForm.do" method="GET"name="id">
		<label for="updateBud"> ID:</label> <input type="text" name="id"
			value="${bud.id}" placeholder="Delete by ID"> <input
			class="btn btn-secondary" type="submit" value="Update Bud Info">
	</form>
	
	<form action="index.do">
				<input class="btn btn-secondary" type="submit" value="Home">
			</form>

		</c:when>
		<c:otherwise>
			<h3>Unable to Create Bud </h3>
			<form action="index.do">
			<input class="btn btn-secondary" type="submit" value="Home">
			
			</form>
		</c:otherwise>


	</c:choose>

</body>
</html>