<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<div id=missionstatement class="text-bg-dark p-3">Cannabis | People | Coffee | Jazz</div>

<head>
<meta charset="UTF-8">
<title>Update Bud</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
</head>
<body>
<h1>Update Bud Info</h1>


	
	<form action="updateBud.do" method="POST">
	<input type ="hidden" name ="id" value="${bud.id}">
			<label for="name">Name of Strain:</label> 
			<input type="text" name="name" value="${bud.name}"required="true"> 
			<br>
			<label
				for="strain">Strain:</label> 
				<select name="strain">
				<option value="Sativa">Sativa</option>
				<option value="Indica">Indica</option>
				<option value="Hybrid">Hybrid</option>
			
				
				</select><br>
				
		    <label for="thcPercent">THC %:</label> 
		    <input type="text"  onkeypress="return (event.charCode !=8 && event.charCode ==0 || ( event.charCode == 46 || (event.charCode >= 48 && event.charCode <= 57)))" name="thcPercent" value="${bud.thcPercent}"required> <!-- can only enter numbers -->
			<br>
			<label for="cbdPercent">CBD %:</label> 
			<input type="text" onkeypress="return (event.charCode !=8 && event.charCode ==0 || ( event.charCode == 46 || (event.charCode >= 48 && event.charCode <= 57)))" name="cbdPercent" value="${bud.cbdPercent}"required> <!--can only enter numbers and decimals  -->
			<br> 
			<label for="effects">Effects:</label>
			<input type="text" name="effects" value="${bud.effects}"required > 
			<br> 
			<label for="commonUsage">Common Usage:</label>
			<input type="text" name="commonUsage" value="${bud.commonUsage}" required > 
			<br> 
			<label for="origin">Origin:</label>
			<input type="text" name="origin" value="${bud.origin}" required> 
			<br> 
			<label for="lineage">Lineage:</label>
			<input type="text" name="lineage"value="${bud.lineage}" required> <!--can only enter numbers  -->
			<br> 
			<label for="description">Description:</label>
			<textarea name="description"  value="${bud.description}" required></textarea>
			<br>

			<input class="btn btn-secondary" type="submit" value="Update Bud">



		</form>

</body>
</html>