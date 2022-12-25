package service;

import java.util.List;

import model.Cliente;
import model.Libro;

public interface Ventas {
	void nuevaVenta(Cliente cliente,List<Libro> libros);
}
