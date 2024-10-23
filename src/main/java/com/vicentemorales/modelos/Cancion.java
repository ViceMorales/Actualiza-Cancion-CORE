package com.vicentemorales.modelos;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "canciones")
public class Cancion {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column
	@Size(min=5, message="Por favor proporciona el titulo")
	private String titulo;
	@Column
	@Size(min=3, message="Por favor proporciona el nombre del artista")
	private String artista;
	@Column
	@Size(min=3, message="Por favor proporciona el nombre del album")
	private String album;
	@Column
	@Size(min=3, message="Por favor proporciona el genero musical")
	private String genero;
	@Column
	@Size(min=3, message="Por favor proporciona el idioma")
	private String idioma;
	@Column
	private LocalDateTime fechaCreacion;
	@Column
	private LocalDateTime fechaActualizacion;
	public Cancion() {
		super();
		this.id = 0l;
		this.titulo = "";
		this.artista = "";
		this.album = "";
		this.genero = "";
		this.idioma = "";
		this.fechaCreacion = LocalDateTime.now();
		this.fechaActualizacion = LocalDateTime.now();
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getArtista() {
		return artista;
	}
	public void setArtista(String artista) {
		this.artista = artista;
	}
	public String getAlbum() {
		return album;
	}
	public void setAlbum(String album) {
		this.album = album;
	}
	public String getGenero() {
		return genero;
	}
	public void setGenero(String genero) {
		this.genero = genero;
	}
	public String getIdioma() {
		return idioma;
	}
	public void setIdioma(String idioma) {
		this.idioma = idioma;
	}
	public LocalDateTime getFechaCreaion() {
		return fechaCreacion;
	}
	public void setFechaCreaion(LocalDateTime fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}
	public LocalDateTime getFechaAtualizacion() {
		return fechaActualizacion;
	}
	public void setFechaAtualizacion(LocalDateTime fechaActualizacion) {
		this.fechaActualizacion = fechaActualizacion;
	}
	
	@PrePersist
	protected void onCrete() {
		fechaCreacion = LocalDateTime.now();
		fechaActualizacion = LocalDateTime.now();
	}
	@PreUpdate
	protected void onUpdate() {
		fechaActualizacion = LocalDateTime.now();
	}
}
