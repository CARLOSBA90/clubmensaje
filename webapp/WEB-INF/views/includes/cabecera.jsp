 <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <!-- ======= Cabecera ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <div class="logo me-auto">
        <h1><a href="#">Club Mensaje</a></h1>
        <!--logo-->
      </div>
      
       <c:set var="path" value="${pageContext.request.contextPath}"/>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto " href="#direccion">Sucesos</a></li>
          <li><a class="nav-link scrollto" href="#">Deportes</a></li>
          <li><a class="nav-link scrollto" href="#">Música</a></li>
          <li><a class="nav-link scrollto" href="#">Ocio y Entrenimiento</a></li>
          <li><a class="nav-link scrollto" href="#">Recetas</a></li>
          <li><a class="nav-link scrollto" href="#">Ciencia y Tecnología</a></li>
          <li class="dropdown"><a href="#"><span>Accesos(desarrollo)</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="${path}/panel/control">Login</a></li>
               <li><a href="${path}/panel/acceso">Panel</a></li>
              <li><a href="${path}/panel/nuevo">Nueva noticia</a></li>
              <li><a href="#">Otros 4</a></li>
              <li class="dropdown"><a href="#"><span>Otros 1</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="#">Seccion 1</a></li>
                  <li><a href="#">Seccion 2</a></li>
                  <li><a href="#">Seccion 3</a></li>
                  <li><a href="#">Seccion 4</a></li>
                  <li><a href="#">Seccion 5</a></li>
                </ul>
              </li>
             
            </ul>
          </li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header>