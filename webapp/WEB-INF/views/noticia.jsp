<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <spring:url value="/resources" var="recursos"></spring:url>
  <c:set var="path" value="${pageContext.request.contextPath}"/>
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
<jsp:include page="includes/cabecera.jsp"></jsp:include>
<main id="main">
    <!-- ======= Sub seccion ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <ol>
            <li><a href="/portal/">Inicio</a></li>
            <li><a href="">Seccion</a></li>
            <li>Titulo noticia</li>
          </ol>
        </div>

      </div>
    </section><!-- detalle -->

    <!-- =======  ======= -->
 	<div class="container-fluid">
		<div class="row m-1 p-2">
			<div class="col-md-10">
						<div class="card bg-light mb-3 p-2">
								<img class="card-img-top" src="${recursos}/images/${noticia.imagen}"
									alt="imagen">
								<div class="card-body">
									<h5 class="card-title">${noticia.titulo}</h5>
									<p class="card-text">
										Fecha:
										<fmt:formatDate value="${noticia.fecha}" pattern="dd-MM-yyyy" />
									<p>
										<br> ${noticia.contenido}

									</p>
									<p class="card-text">
										<a role="button" class="btn btn-success" href="${path}">Volver</a>
									</p>
								</div>
						</div>
				
			</div>

			<div class="col-2"><img src="${recursos}/images/ads.png"
									alt="imagen"></div>
			
		</div>
	</div>

  </main><!-- Fin #main -->

<jsp:include page="includes/pie.jsp"></jsp:include>

	<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="${recursos}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${recursos}/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="${recursos}/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="${recursos}/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Template Main JS File -->
  <script src="${recursos}/js/main.js"></script>
	

</body>
</html>