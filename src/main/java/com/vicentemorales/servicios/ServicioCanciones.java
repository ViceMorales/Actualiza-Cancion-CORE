package com.vicentemorales.servicios;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vicentemorales.modelos.Cancion;
import com.vicentemorales.repositorios.RepositorioCanciones;

@Service
public class ServicioCanciones {
	@Autowired
	RepositorioCanciones repositorioCanciones;
	
	public List<Cancion> obtenerTodasLasCanciones(){
		return repositorioCanciones.findAll();
	}
	
	public Cancion obtenerCancionPorId(Long idCancion) {
		return this.repositorioCanciones.findById(idCancion).orElse(null);
	}
	
	public Cancion agregarCancion(Cancion cancionesNuevo) {
   		return this.repositorioCanciones.save(cancionesNuevo);
	}
	public Cancion actualizarCancion(Cancion cancionActualizar) {
   		return this.repositorioCanciones.save(cancionActualizar);
	}

}
