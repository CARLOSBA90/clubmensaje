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
  <c:set var="path" value="${pageContext.request.contextPath}"/>
</head>
<body>
<jsp:include page="../includes/cabeceraPanel.jsp"></jsp:include>
    <!-- =======  ======= -->
 	<div class="container-fluid">
		<div class="row m-1 p-2">
		<div class="col-10">
				<div class="alert alert-danger" role="alert">Error en guardar noticia: <br> ${mensaje}</div>
					<div><a href="javascript:history.back()">Volver</a></div>
			</div>		
		</div>
	</div>


	<!-- Fin seccion -->
  <!-- Vendor JS Files -->
  <script src="${recursos}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${recursos}/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="${recursos}/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="${recursos}/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Template Main JS File -->
  <script src="${recursos}/js/main.js"></script>
	

</body>
</html>