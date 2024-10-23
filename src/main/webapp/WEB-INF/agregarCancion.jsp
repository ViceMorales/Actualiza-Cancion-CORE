<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agregar Cancion</title>
</head>
<body>
	<h1>Agregar Canciones</h1>
	<table>
		<div>
			<form:form action="/canciones/formulario/agregar/{idCancion}" method="post" modelAttribute="cancion">
				<div>
					<form:label path="titulo" for="titulo">Titulo</form:label>
					<form:input path="titulo" type="text" id="titulo" name="titulo" />
					<form:errors path="titulo" />
				</div>
				<div>
					<form:label path="artista" for="artista">Artista</form:label>
					<form:input path="artista" type="text" id="artista" name="artista" />
					<form:errors path="artista" />
				</div>
				<div>
					<form:label path="album" for="album">Album</form:label>
					<form:input path="album" type="text" id="album" name="album" />
					<form:errors path="album" />
				</div>
				<div>
					<form:label path="genero" for="genero">Genero</form:label>
					<form:input path="genero" type="text" id="genero" name="genero" />
					<form:errors path="genero" />
				</div>
				<div>
					<form:label path="idioma" for="idioma">Idioma</form:label>
					<form:input path="idioma" type="text" id="idioma" name="idioma" />
					<form:errors path="idioma" />
				</div>
	</table>
	<button>Agregar</button>
	</form:form>
	</div>
	<a href="/canciones">
		<button>Volver a lista de canciones</button>
	</a>
</body>
</html>