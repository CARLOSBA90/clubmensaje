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
  <script src="https://cdn.tiny.cloud/1/b7dhb8dy7o7uz7k5qfkdwst9niett7tys9uc0k8dtfva637j/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>

  <!-- Template Main CSS File -->
  <link href="${recursos}/css/style.css" rel="stylesheet">
  
  <script src="https://cdn.tiny.cloud/1/b7dhb8dy7o7uz7k5qfkdwst9niett7tys9uc0k8dtfva637j/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
  


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
            <li><a href="/portal/">Cerrar sesion</a></li>
          </ol>
        </div>

      </div>
    </section><!-- detalle -->

    <!-- =======  ======= -->
    <spring:url value="/panel/guardar" var="urlForm"></spring:url>
	<form action=${urlForm} method="post">
		<div class="container-fluid p-1">
			<div class="row justify-content-md-center">
				<div class="col-10">
					<div class="form-group row">
						<label for="titulo" class="col-sm-2 col-form-label">Titulo</label>
						<div class="col-sm-10 p-2">
							<input type="text" class="form-control" id="titulo"
								placeholder="Titulo nueva noticia" name="titulo">
						</div>
					</div>
					<div class="form-group row">
						<label for="categoria" class="col-sm-2 col-form-label">Categoria</label>
						<div class="col-sm-10 p-2">
							<select class="custom-select" name="categoria">
							<option value="Sucesos" selected>Sucesos</option>
							<option value="Deportes">Deportes</option>
						    <option value="Musica">Musica</option>
							<option value="Ocio y Entrenimiento">Ocio y Entrenimiento</option>
							<option value="Recetas">Recetas</option>
							<option value="Ciencia y Tecnologia">Ciencia y Tecnologia</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<textarea  name="contenido" id="contenido">
                          Contenido de noticia..!
                        </textarea>
					</div>

					<div class="form-group row">
						<label for="estado" class="col-sm-2 col-form-label">Estado</label>
						<div class="col-sm-10 p-2">
							<select class="custom-select" name="estado">
							<option value="Activo" selected>Activo</option>
							<option value="Inactivo">Inactivo</option>
							</select>
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
	</form>

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