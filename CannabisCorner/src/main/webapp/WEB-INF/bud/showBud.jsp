<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bud Details</title>

</head>
<body>

	<h1>Bud Profile</h1>

	<div>
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
	</div>

	<form action="deleteBud.do" method="GET"name="id">
		<label for="deleteBud"> ID:</label> <input type="text" name="id"
			value="${bud.id}" placeholder="Delete by ID"> <input
			class="btn btn-secondary" type="submit" value="Delete This Bud">
	</form>
</body>
</html>