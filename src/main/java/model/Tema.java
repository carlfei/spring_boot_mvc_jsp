package model;

import lombok.AllArgsConstructor;
import lombok.Data;


@Data
@AllArgsConstructor
public class Tema {
   private int idTema;
   private String tema;


    @Override
    public String toString() {
        return tema;
    }
   
}
