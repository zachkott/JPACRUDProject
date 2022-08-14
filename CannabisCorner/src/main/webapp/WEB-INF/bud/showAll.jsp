<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<table class="table table-striped table-hover">
		<thead class="table-light">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Rating</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="bud" items="${buds}">

				<tr>
					<td>${bud.id}</td>
					<td><a href="getBud.do?cid=${bud.id}">${bud.name}</a></td>
					<td><a href="getBud.do?cid=${bud.id}">${bud.strain}</a></td>
					
				</tr>
				
			</c:forEach>
		</tbody>
	</table>

</body>
</html>