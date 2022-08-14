<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bud Inventory</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
 rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" 
 crossorigin="anonymous">
</head>
<body>



<table class="table table-striped table-hover">
		<thead class="table-light">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Strain</th>
				<th>THC %</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="bud" items="${buds}">

				<tr>
					<td>${bud.id}</td>
					<td><a href="getBud.do?cid=${bud.id}">${bud.name}</a></td>
					<td><a href="getBud.do?cid=${bud.id}">${bud.strain}</a></td>
					<td><a href="getBud.do?cid=${bud.id}">${bud.thcPercent}</a></td>
					
					
				</tr>
				
			</c:forEach>
		</tbody>
	</table>

</body>
</html>