<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
<jsp:include page="../includes/cabeceraPanel.jsp"></jsp:include>
    <!-- =======  ======= -->
	<spring:hasBindErrors name="noticia">
		<div class="alert alert-danger" role="alert">
			Error en guardar noticia: <br>${mensaje}</div>
	</spring:hasBindErrors>
	<spring:url value="/panel/guardar" var="urlForm"></spring:url>
	<form:form action="${urlForm}" modelAttribute="noticia" method="post" enctype="multipart/form-data" >
		<div class="container-fluid p-1">
			<div class="row justify-content-md-center">
				<div class="col-10">
					<div class="form-group row">
						<label for="titulo" class="col-sm-2 col-form-label">Titulo</label>
						<div class="col-sm-10 p-2">
							<form:input path="titulo" type="text" class="form-control" id="titulo"
								placeholder="Titulo nueva noticia" />
						</div>
					</div>
					<div class="form-group row">
						<label for="seccion" class="col-sm-2 col-form-label">Sección</label>
						<div class="col-sm-10 p-2">
							<form:select path="seccion" items="${secciones}" itemValue="id" itemLabel="nombre"></form:select>
						</div>
					</div>
					<div class="form-group row">
						<form:textarea path="contenido" placeholder="contenido de noticia" id="contenido" />
					</div>

					<div class="form-group row">
						<label for="estado" class="col-sm-2 col-form-label">Estado</label>
						<div class="col-sm-10 p-2">
							<form:select path="estado" class="custom-select" >
							<form:option value="true">Activo</form:option>
							<form:option value="false">Inactivo</form:option>
							</form:select>
						</div>
					</div>
					
					<div class="form-group row">
						<label for="cargarImagen" class="col-sm-2 col-form-label">Cargar Imagen</label>
						<div class="col-sm-10 p-2">
						 <input type="file" id="cargarImagen" name="cargarImagen" />
						</div>
					</div>

					<div class="form-group row">
						<div class="col-sm-6 p-2">
							<button type="submit" class="btn btn-primary">Guardar</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form:form>

	<!-- Fin seccion -->
  <!-- Vendor JS Files -->
  <script src="${recursos}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${recursos}/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="${recursos}/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="${recursos}/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="${recursos}/tinymce/tinymce.min.js"></script>
    <script>
      tinymce.init({
          selector: '#contenido',
          plugins: "textcolor, table lists code",
          toolbar: " undo redo | bold italic | alignleft aligncenter alignright alignjustify \n\
                    | bullist numlist outdent indent | forecolor backcolor table code",
          height : "290"
              
      });
    </script>
  <!-- Template Main JS File -->
  <script src="${recursos}/js/main.js"></script>

</body>
</html>