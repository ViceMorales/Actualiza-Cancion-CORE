<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Detalle de Cancion</h1>
	<p>
		<b>Titulo: ${cancion.titulo}</b>
	<p>
		<b>Artista: ${cancion.artista}</b>
	<p>
		<b>Album: ${cancion.album}</b>
	<p>
		<b>Genero: ${cancion.genero}</b>
	<p>
		<b>Idioma: ${cancion.idioma}</b>
	<div>
		<button>
		<a href="/canciones"> Regresar a canciones </a>
		</button>
	</div>
		<button>
		<a href="/canciones/formulario/editar/${cancion.id}">Editar cancion</a>
		</button>
		<form action="/canciones/eliminar/${cancion.id}" method="POST">
			<input type="hidden" name="_method" value="DELETE"/>
			<button> Eliminar </button>
		</form>
	</div>
	
	
</body>
</html>