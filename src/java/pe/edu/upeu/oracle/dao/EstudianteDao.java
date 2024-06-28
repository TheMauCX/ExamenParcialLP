/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package pe.edu.upeu.oracle.dao;

import java.util.List;
import pe.edu.upeu.oracle.entity.Estudiante;

/**
 *
 * @author USER
 */
public interface EstudianteDao {
    public int createEstudiante(Estudiante car);
    public int updateEstudiante(Estudiante car);
    public int deleteEstudiante(int id);
    public Estudiante readEstudiante(int id);
    public List<Estudiante> readAllEstudiante();
}
