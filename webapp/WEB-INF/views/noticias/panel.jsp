<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <spring:url value="/resources" var="recursos"></spring:url>
<title>Club Mensaje</title>
  <!-- Vendor CSS Files -->
  <link href="${recursos}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${recursos}/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="${recursos}/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="${recursos}/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${recursos}/css/style.css" rel="stylesheet">

</head>
<body>
 <!-- ======= Cabecera ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <div class="logo me-auto">
        <h1><a href="#">Club Mensaje</a></h1>
     
      </div>
    </div>
  </header>
<main id="main">
    <!-- ======= Sub seccion ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <ol>
            <li><a href="/portal/">Inicio</a></li>
         <!--   <li><a href="/portal/">Mis noticias</a></li> -->
        <!--    <li><a href="/portal/">Estadisticas</a></li>  -->
            <li><a href="/portal/">Cerrar sesión</a></li>
          </ol>
        </div>

      </div>
    </section><!-- detalle -->

    <!-- =======  ======= -->
 	<div class="container-fluid">
		<div class="row m-1 p-2  d-flex justify-content-center">
		<div>Lista de noticias</div>
			<div class="col-10">
				<table class="table table-sm">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Titulo</th>
							<th scope="col">Fecha</th>
							<th scope="col">Sección</th>
							<th scope="col">Vistas</th>
							<th scope="col">Estado</th>
							<th scope="col">Editar</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${ noticia }" var="noticias">
						<tr>
							<th scope="row">${noticias.id}</th>
							<td>${noticias.titulo}</td>
							<td><fmt:formatDate value="${noticias.fecha}" pattern="dd-MM-yyyy" /></td>
							<c:set var = "seccion" scope = "session" value = "${noticias.seccion}"/>
							 <c:choose>
							  <c:when test = "${seccion == 1}">
							  <td>Sucesos</td>
							  </c:when>
							  <c:when test = "${seccion == 2}">
							  <td>Deportes</td>
							  </c:when>
							  <c:when test = "${seccion == 3}">
							  <td>Musica</td>
							  </c:when>
							  <c:when test = "${seccion == 4}">
							  <td>Ocio y Entrenimiento</td>
							  </c:when>
							  <c:when test = "${seccion == 5}">
							  <td>Recetas</td>
							  </c:when>
							  <c:when test = "${seccion == 6}">
							  <td>Ciencia y Tecnologia</td>
							  </c:when>
							</c:choose>
							<td> - </td>
							<c:set var = "estado" scope = "session" value = "${noticias.estado}"/>
							 <c:choose>
							  <c:when test = "${estado == true}">
							<td><a class="btn btn-success btn-sm" href="#" role="button">Activo</a></td>
							</c:when>
							  <c:otherwise>
							  <td><a class="btn btn-danger btn-sm" href="#" role="button">Inactivo</a></td>
							  </c:otherwise>
							</c:choose>
							<td><a class="btn btn-dark btn-sm" href="#" role="button">Editar</a></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>


	<!-- Fin seccion -->
  </main><!-- Fin #main -->
  <!-- Vendor JS Files -->
  <script src="${recursos}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${recursos}/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="${recursos}/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="${recursos}/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Template Main JS File -->
  <script src="${recursos}/js/main.js"></script>
	

</body>
</html>