<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bud Details</title>

</head>
<body>

	<h1>Bud Profile</h1>

	<div>
<c:choose>
<c:when test="${! empty bud}">

		<h2>${bud.name}</h2>
		<ul>
			<li>ID: ${bud.id}</li>
			<li>Strain: ${bud.strain}</li>
			<li>THC: ${bud.thcPercent}%</li>
			<li>CBD: ${bud.cbdPercent}%</li>
			<li>Effects: ${bud.effects}</li>
			<li>Common Usage: ${bud.commonUsage}</li>
			<li>Origin: ${bud.origin}</li>
			<li>Lineage: ${bud.lineage}</li>
			<li>Description: ${bud.description}</li>
		</ul>

	<form action="deleteBud.do" method="GET"name="id">
		<label for="deleteBud"> ID:</label> <input type="text" name="id"
			value="${bud.id}" placeholder="Delete by ID"> <input
			class="btn btn-secondary" type="submit" value="Delete This Bud">
	</form>
	
	<form action="updateBudForm.do" method="GET"name="id">
		<label for="updateBud"> ID:</label> <input type="text" name="id"
			value="${bud.id}" placeholder="Delete by ID"> <input
			class="btn btn-secondary" type="submit" value="Update Bud Info">
	</form>
	<form action="index.do">
	<input class ="btn btn-secondary" type="submit" value ="Home">
	</form>
	</c:when>
	
	
	<c:otherwise>
	<p>Bud Not Found</p>
	<form action="index.do">
	<input class ="btn btn-secondary" type="submit" value ="Back">
	</form>
	
	</c:otherwise>
	</c:choose>
	</div>
</body>
</html>