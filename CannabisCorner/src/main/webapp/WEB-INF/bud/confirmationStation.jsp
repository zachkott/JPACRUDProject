<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="https://www.jazzradio.com/"><h4>Canna Club</h4></a>
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


<title>Confirmation Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
</head>
<body>
<c:choose>
		<c:when test="${createdBud}">
			<h1>Created Bud!</h1>
			<li>ID: ${bud.id}</li>
			<li>Name: ${bud.name}</li>
			<li>Strain: ${bud.strain}</li>
			<li>THC: ${bud.thcPercent}%</li>
			<li>CBD: ${bud.cbdPercent}%</li>
			<li>Effects: ${bud.effects}</li>
			<li>Common Usage: ${bud.commonUsage}</li>
			<li>Origin: ${bud.origin}</li>
			<li>Lineage: ${bud.lineage}</li>
			<li>Description: ${bud.description}</li>
			
			
			<form action="deleteBud.do" method="GET" name="id">
		<label for="deleteBud">ID: </label> <input type="text" name="id"
			value="${bud.id}" placeholder="Delete by ID"> <input
			class="btn btn-danger" type="submit" value="Delete This Bud">
			<br>
		</form>
		
		<form action="updateBudForm.do" method="GET"name="id">
		<label for="updateBud"> ID:</label> <input type="text" name="id"
			value="${bud.id}" placeholder="Delete by ID"> <input
			class="btn btn-warning" type="submit" value="Update Bud Info">
	</form>
	
	<form action="index.do">
				<input class="btn btn-success" type="submit" value="Home">
			</form>

		</c:when>
		<c:otherwise>
			<h3>Unable to Create Bud </h3>
			<form action="index.do">
			<input class="btn btn-success" type="submit" value="Home">
			
			</form>
		</c:otherwise>


	</c:choose>

</body>
</html>