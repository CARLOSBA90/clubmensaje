 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <c:set var="path" value="${pageContext.request.contextPath}"/>
  <!-- ======= Cabecera ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <div class="logo me-auto">
        <h1><a href="#">Club Mensaje</a></h1>
      </div>
    </div>
  </header>
  
     <!-- ======= Sub seccion ======= -->
    <section class="breadcrumbs">
      <div class="container">
        <div class="d-flex justify-content-between align-items-center">
          <ol>
            <li><a href="${path}">Inicio</a></li>
            <li><a href="${path}/panel/acceso">Mis noticias</a></li> 
            <li><a href="${path}/panel/nuevo">Nueva noticia</a></li> 
            <!-- <li><a href="${path}/panel/estadisticas">Estadisticas</a></li> -->
            <li><a href="${path}/panel/cerrar">Cerrar sesion</a></li>
          </ol>
        </div>

      </div>
    </section><!-- detalle -->