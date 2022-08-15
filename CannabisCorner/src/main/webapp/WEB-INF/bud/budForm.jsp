<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#"><h4>Canna Club</h4></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
      <form action="index.do">
	<input class ="btn btn-success" type="submit" value ="Home">
	</form>
      </li>
      <li class="nav-item">
        <form action="addForm.do" method="GET">
		<div class="form-group">
			<input class="btn btn-success" type="submit" value="Add Bud" />
		</div>
	</form>
      </li>
      <li class="nav-item">
      <form action="showAllBud.do" method="GET">
		<div class="form-group">
			<input class="btn btn-success" type="submit" value="Show All" />
		</div>
	</form>
      
      </li>
    </ul>
   <br>  
    <span class="navbar-text">
    				 Cannabis | Comedy | Coffee | Jazz
    </span>
    
  </div>
<form action ="getBud.do"class="form-inline">
    <input class="form-control" type="text" name="cid" required>
    <button class="btn btn-success" type="submit">Find Bud</button>
  </form>
</nav>
<head>
<meta charset="UTF-8">
<title>Add Bud</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
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
	
	<form action="index.do">
		<input class ="btn btn-success" type="submit" value ="Home">
	</form>
	
</body>
</html>