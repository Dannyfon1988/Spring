<%-- 
    Document   : formMascota
    Created on : 14/02/2022, 09:54:16 AM
    Author     : SENA
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file ="../pieycuerpo/menu.jsp" %>

<!DOCTYPE html>
<html>
    <head>
<head>
         <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <meta name="copyright" content="MACode ID, https://macodeid.com">

  <title>Pets</title>

  <link rel="stylesheet" href="public/vendor/animate/animate.css">
  <link rel="stylesheet" href="public/css/bootstrap.css">
  <link rel="stylesheet" href="public/css/maicons.css">
  <link rel="stylesheet" href="public/vendor/owl-carousel/css/owl.carousel.css">
  <link rel="stylesheet" href="public/css/theme.css">
    </head>


<div class="page-section">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6">
            <h2 class="title-section">Agregar Nueva Mascota</h2>
            
            
          <div class="col-lg-6 py-3 wow fadeInUp">
            <div class="subhead">Inserta la informacion solicitada</div>
            
            <form:form commandName="mascotaBean1" method="post" enctype="multipart/form-data">
              <form:errors path="*" element="div" cssClass="alert"></form:errors>
            <div class=" justify-content-around col-md-20">
           
                        
            <form:label path="nombre">nombre</form:label> <br>
            <form:input path="nombre"></form:input><br><br>
            
            <form:label path="raza">raza</form:label> <br>
            <form:input path="raza"></form:input><br><br>
            
            <form:label path="tipo_animal">tipo_animal</form:label> <br>
            <form:input path="tipo_animal"></form:input><br><br>
            
            <form:label path="fotos" >foto</form:label> <br>
            <form:input path="fotos" class="form-control" type="file"></form:input><br><br>
           
            <form:button name="enviar" Class="btn btn-warning">enviar</form:button> <br><br>
            <br>
            <br>
            
               </div>
        </form:form>
           <a class="btn btn-darger" href="index.htm"><input class="btn btn-danger" type="button" value="Regresar" name="btnRegresar"/></a>
       
          
            
        </div>
        </div>
      </div> <!-- .container -->
    </div> <!-- .page-section -->
    
        <%@include file ="../pieycuerpo/pie.jsp" %>