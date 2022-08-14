<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JPA Crud Project</title>


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">

</head>
<body>

	<h1>Cannabis Corner</h1>

	<form action="getBud.do" method="GET">
		<div class="form-group">
			Cannabis ID: <input class="form-control" type="text" name="cid" required> <input
				class="btn btn-primary" type="submit" value="Show Bud" />
		</div>
	</form>

	<form action="addForm.do" method="GET">
		<div class="form-group">
			<input class="btn btn-primary" type="submit" value="Add Bud" />
		</div>
	</form>
	
	<form action="showAllBud.do" method="GET">
		<div class="form-group">
			<input class="btn btn-primary" type="submit" value="Show All" />
		</div>
	</form>


	
</body>
</html>