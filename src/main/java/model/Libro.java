package model;

import lombok.AllArgsConstructor;
import lombok.Data;


@Data
@AllArgsConstructor
public class Libro {
    private int isbn;
    private String titulo;
    private String autor;
    private double precio;
    private int paginas;
    private int idTema;


    @Override
    public String toString() {
        return titulo;
    }
    
}
