<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Bud</title>
</head>
<body>
<h1>Add A Bud</h1>

<div>
		<form action="addBud.do" method="POST">
			<label for="name">Name of Strain:</label> 
			<input type="text" name="name"required="true"> 
			<br>
			<label
				for="strain">Strain:</label> 
				<select name="strain">
				<option value="Sativa">Sativa</option>
				<option value="Indica">Indica</option>
				<option value="Hybrid">Hybrid</option>
			
				
				</select><br>
				
		    <label for="thcPercent">THC %:</label> 
		    <input type="text" onkeypress="return (event.charCode !=8 && event.charCode ==0 || ( event.charCode == 46 || (event.charCode >= 48 && event.charCode <= 57)))" name="thcPercent" required> <!-- can only enter numbers -->
			<br>
			<label for="cbdPercent">CBD %:</label> 
			<input type="text" onkeypress="return (event.charCode !=8 && event.charCode ==0 || ( event.charCode == 46 || (event.charCode >= 48 && event.charCode <= 57)))" name="cbdPercent" required> <!--can only enter numbers and decimals  -->
			<br> 
			<label for="effects">Effects:</label>
			<input type="text" name="effects" required > <!--can only enter numbers  -->
			<br> 
			<label for="commonUsage">Common Usage:</label>
			<input type="text" name="commonUsage" > <!--can only enter numbers  -->
			<br> 
			<label for="origin">Origin:</label>
			<input type="text" name="origin" > <!--can only enter numbers  -->
			<br> 
			<label for="lineage">Lineage:</label>
			<input type="text" name="lineage" > <!--can only enter numbers  -->
			<br> 
			<label for="description">Description:</label>
			<textarea name="description"></textarea>
			<br>

			<input class="btn btn-secondary" type="submit" value="Add Bud">



		</form>
	</div>

</body>
</html>