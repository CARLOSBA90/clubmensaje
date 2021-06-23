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
<jsp:include page="includes/cabecera.jsp"></jsp:include>
<main id="main">
    <!-- ======= Sub seccion ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <ol>
            <li><a href="noticia/90">Inicio</a></li>
            <li><a href="">Seccion</a></li>
            <li>Titulo noticia</li>
          </ol>
        </div>

      </div>
    </section><!-- detalle -->

    <!-- =======  ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">
         <c:forEach items="${ noticia }" var="noticias">
          <div class="col-12">
            <div class="portfolio-info">
              <h3>${noticias.titulo} </h3>
              Fecha: <fmt:formatDate value="${noticias.fecha}" pattern="dd-MM-yyyy"/>
               <p>
               <br>
               ${noticias.contenido}
              </p>
            </div>
          </div>
          <br>
          
         </c:forEach>
          
          <div class="col-lg-12">
            <div class="portfolio-details-slider swiper-container">
              <div class="swiper-wrapper align-items-center">

                <div class="swiper-slide">
                  <img src="${recursos}/images/boruto.png" alt="">
                </div>

                <div class="swiper-slide">
                  <img src="${recursos}/images/cloud.png" alt="">
                </div>

                <div class="swiper-slide">
                  <img src="${recursos}/images/spring.jpg" alt="">
                </div>

              </div>
              <div class="swiper-pagination"></div>
            </div>
          </div>
        
        

      </div>
    </section><!-- Fin seccion -->

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