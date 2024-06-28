/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package pe.edu.upeu.oracle.dao;

import java.util.List;
import pe.edu.upeu.oracle.entity.Carrera;

/**
 *
 * @author USER
 */
public interface CarreraDao {
    public int createCarrera(Carrera car);
    public int updateCarrera(Carrera car);
    public int deleteCarrera(int id);
    public Carrera readCarrera(int id);
    public List<Carrera> readAllCarrera();
    public boolean buscarCarrera(String nombre);
}
