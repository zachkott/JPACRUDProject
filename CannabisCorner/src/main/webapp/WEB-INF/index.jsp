<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="https://www.jazzradio.com/">Canna Club</a>
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
<title>JPA Crud Project</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide">


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<link rel="stylesheet" href="CSS/homepage.css">

</head>


<body>


	<h1>Canna</h1>
	<h1>Club</h1>
	
<h4><em>Let's Jazz</em></h4>
<br>
<br>



	
</body>

</html>