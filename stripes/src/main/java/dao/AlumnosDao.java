/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import domain.Alumnos;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Emerson
 */
public class AlumnosDao {

    ConeccionBD con;

    public void RegistrarAlumno(Alumnos a) throws SQLException {

        Statement stmt = null;

        try {
            con = new ConeccionBD();
            if (con.getConeccion() != null) {
                System.out.println(con.getConeccion());
                stmt = con.getConeccion().createStatement();
                String sql = "INSERT INTO alumnos "
                        + "VALUES (" + a.getCodigo() + ",'" + a.getNombre() + "', '" + a.getApellidoP() + "'," + a.getEdad() + ")";
                stmt.executeUpdate(sql);
                stmt.close();
                con.getConeccion().close();
            } else {
                    System.out.println("no me SSconecte");
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ConeccionBD.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}

// public Integer buscarCodigo(Alumnos  alumnos){
//         
//       
//            Statement  stmt=null;
//            int codigo=0;
//           try {
//             con=new ConeccionBD();
//             stmt = con.getConeccion().createStatement();
//            
//            String sql = "SELECT a.codigo FROM alumnos a "
//                    + "WHERE a.codigo= "+alumnos.getCodigo(); 
//          ResultSet res= stmt.executeQuery(sql);
//          
//          Integer resCodigo= new Integer(res.getInt("codigo"));
//               if(resCodigo!=null){
//                   codigo=res.getInt("codigo");
//                   
//               }
//                
//        } catch (SQLException ex) {
//            Logger.getLogger(ConeccionBD.class.getName()).log(Level.SEVERE, null, ex);
//        } finally {
//                try {
//                    stmt.close();
//                } catch (SQLException ex) {
//                    Logger.getLogger(AlumnosDao.class.getName()).log(Level.SEVERE, null, ex);
//                }
//                try {
//                    con.getConeccion().close();
//                } catch (SQLException ex) {
//                    Logger.getLogger(AlumnosDao.class.getName()).log(Level.SEVERE, null, ex);
//                }
//        }
//           
//       return codigo;
//         
//     }

