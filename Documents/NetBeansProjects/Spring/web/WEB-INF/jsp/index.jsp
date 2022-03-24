<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="public/css/newcss.css" rel="stylesheet" type="text/css"/>
        <script src="public/JS/newjavascript.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Raleway:ital,wght@1,100&display=swap" rel="stylesheet">
       
        <title>Pets</title>
    </head>
    <body style="background-color:#11111">
    <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">PETS</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a id="len1" class="nav-link active" aria-current="page" href="listarClientes.htm">Usuario</a>
        </li>
        <ul class="navbar-nav">
        <li class="nav-item">
          <a id="len2" class="nav-link active" aria-current="page" href="listarMascotas.htm">Mascota</a>
        </li>
        <ul class="navbar-nav">
        <li class="nav-item">
            <a id="len3" class="nav-link active" aria-current="page" href="listar_Adopciones.htm">Adoptar</a>
        </li>
      </ul>
    </div>
  </div>
            <nav class="navbar navbar-dark bg-dark">
  <div class="container-fluid">
    <form class="d-flex">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
  </div>
</nav>
</nav>
    
    <div id="is">
        <h1>ENCUENTRA TU ALMA GEMELA</h1><br>
        <h2>Adopciones</h2>
    </div>
    <div align="center">
        <img src='<c:url value="public/img/pets.jpg"/>' style="width: 400px; height: 400px;">   
    </div> 
    <br>
</body>
<footer class="bg-dark text-center text-white">
  <!-- Grid container -->
 

  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    © 2020 Copyright:
    <a class="text-white" href="https://mdbootstrap.com/">DanielGallo.Adsi</a>
  </div>
  <!-- Copyright -->
</footer>
</html>



