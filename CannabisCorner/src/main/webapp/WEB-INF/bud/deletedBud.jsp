<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<div id=missionstatement class="text-bg-dark p-3">Cannabis | People | Coffee | Jazz</div>

<head>
<meta charset="UTF-8">
<title>Deleted Confirmation</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
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