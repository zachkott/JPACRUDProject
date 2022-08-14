<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deleted Confirmation</title>
</head>
<body>




	
			<h1>Bud Removed ${bud.id}</h1>
		<%-- 	<h2>Id: ${id}</h2> --%>
			<h2>Name: ${bud.name}</h2>
	<ul>
		<li>Strain: ${bud.strain}</li>
		<li>THC: ${bud.thcPercent}%</li>
		<li>CBD: ${bud.cbdPercent}%</li>
		<li>Effects: ${bud.effects}</li>
		<li>Common Usage: ${bud.commonUsage}</li>
		<li>Origin: ${bud.origin}</li>
		<li>Lineage: ${bud.lineage}</li>
		<li>Description: ${bud.description}</li>
	</ul>
	<form action="index.do">
				<input class="btn btn-secondary" type="submit" value="Home">
			</form>
		

	<%-- 	<c:otherwise>
			<h1>Unable to Delete Bud</h1>
			<form action="index.do">
				<input class="btn btn-secondary" type="submit" value="Home">
			</form>

		</c:otherwise> --%>






</body>
</html>