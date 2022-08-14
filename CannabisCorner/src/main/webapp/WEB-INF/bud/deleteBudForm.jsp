<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Bud</title>
</head>
<body>

<h1>Delete A Bud</h1>
<form action="deleteBud.do" method="GET">
		<label for="deleteBud"> </label> <input type="text" name="BudId"
			value="${bud.id}" placeholder="Delete by ID"> <input
			class="btn btn-secondary" type="submit" value="Submit">
	</form>

</body>
</html>