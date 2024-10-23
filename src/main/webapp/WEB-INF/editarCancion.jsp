<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Editar director</title>
	</head>
	<body>
		<h1>Editar director</h1>
		<table>
			<div>
			<form:form action="/canciones/procesa/editar/${cancion.id}" method="post" modelAttribute="cancion">
				<div>
				<input type="hidden" name="_method" value="PUT"/>
					<form:label path="titulo" >Titulo</form:label>
					<form:input path="titulo" type="text" />
					<form:errors path="titulo" />
				</div>
				<div>
					<form:label path="artista" for="artista">Artista</form:label>
					<form:input path="artista" type="text" id="artista" name="artista"/>
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
		</div>
		</table>
			<button>Editar</button>
		</form:form>
			<a href="/canciones">
			<button>
			Volver a lista de canciones
			</button></a>
	</body>
</html>