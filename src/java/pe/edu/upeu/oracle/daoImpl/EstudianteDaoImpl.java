/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pe.edu.upeu.oracle.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import pe.edu.upeu.oracle.config.Conexion;
import pe.edu.upeu.oracle.dao.EstudianteDao;
import pe.edu.upeu.oracle.entity.Estudiante;

/**
 *
 * @author USER
 */
public class EstudianteDaoImpl implements EstudianteDao {
private PreparedStatement ps;
private ResultSet rs;
private Connection cx= null;
    @Override
    public int createEstudiante(Estudiante estudiante) {
        String SQL= "INSERT INTO estudiante (nombres,apellidos,correo,telefono,idcarrera) VALUES(?,?,?,?,?)";
        int x = 0;
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL);
            ps.setString(1, estudiante.getNombres());
            ps.setString(2, estudiante.getApellidos());
            ps.setString(3, estudiante.getCorreo());
            ps.setInt(4, estudiante.getTelefono());
            ps.setInt(5, estudiante.getIdcarrera());
            x = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: "+e);
        }
        
        return x;
    }

    @Override
    public int updateEstudiante(Estudiante estudiante) {
        String SQL= "UPDATE estudiante SET nombres=? apellidos=? correo=? telefono=? idcarrera=? WHERE idestudiante=?";
        int x = 0;
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL);
            ps.setString(1, estudiante.getNombres());
            ps.setString(2, estudiante.getApellidos());
            ps.setString(3, estudiante.getCorreo());
            ps.setInt(4, estudiante.getTelefono());
            ps.setInt(5, estudiante.getIdcarrera());
            x = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: "+e);
        }
        
        return x;
    }

    @Override
    public int deleteEstudiante(int id) {
        String SQL= "DELETE FROM estudiante WHERE idestudiante=?";
        String SQL1= "UPDATE estudiante SET estado=0 WHERE idestudiante=?";
        int x = 0;
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL);
            ps.setInt(1, id);
            x = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: "+e);
        }
        
        return x;
    }

    @Override
    public Estudiante readEstudiante(int id) {
        Estudiante estudiante = new Estudiante(); 
        String SQL= "SELECT *FROM estudiante WHERE idestudiante=?";
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                estudiante.setIdestudiante(rs.getInt("idestudiante"));
                estudiante.setNombres(rs.getString("nombres"));
                estudiante.setApellidos(rs.getString("apellidos"));
                estudiante.setCorreo(rs.getString("correo"));
                estudiante.setTelefono(rs.getInt("telefono"));
                estudiante.setIdcarrera(rs.getInt("idcarrera"));
            }
        } catch (SQLException e) {
            System.out.println("Error: "+e);
        }
        
        return estudiante;
    }

    @Override
    public List<Estudiante> readAllEstudiante() {
        List<Estudiante> lista = new ArrayList<>(); 
        String SQL= "SELECT *FROM estudiante";
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL);
            rs = ps.executeQuery();
            while(rs.next()){
                Estudiante estudiante = new Estudiante(); 
                estudiante.setIdestudiante(rs.getInt("idestudiante"));
                estudiante.setNombres(rs.getString("nombres"));
                estudiante.setApellidos(rs.getString("apellidos"));
                estudiante.setCorreo(rs.getString("correo"));
                estudiante.setTelefono(rs.getInt("telefono"));
                estudiante.setIdcarrera(rs.getInt("idcarrera"));
                lista.add(estudiante);
            }
        } catch (SQLException e) {
            System.out.println("Error: "+e);
        }
        
        return lista;
    }
    
}
