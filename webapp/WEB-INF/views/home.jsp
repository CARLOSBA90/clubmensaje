<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<spring:url value="/resources" var="recursos" />
</head>
<body>
	<h1>BIENVENIDO!!</h1>
	<ul>
		<c:forEach items="${ noticia }" var="noticias">
			<li>${noticias.titulo}</li>
			<li><fmt:formatDate value="${noticias.fecha}" pattern="dd-MM-yyyy"/></li>
			<li>${noticias.contenido}</li>
		</c:forEach>

	</ul>
<img src="${recursos}/images/boruto.png" alt="boruto" width="500" height="300">
</body>
</html>