/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Emerson
 */
public class ConeccionBD {

    private Connection coneccion = null;
    Statement stmt = null;

    public Connection getConeccion() {
        return coneccion;
    }

    public ConeccionBD() {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            coneccion = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/inmobiliaria", "root", "");
        } catch (Exception e) {
            System.out.println(e);
        }
    }

//    public void RegistrarAlumno() throws SQLException {
//
//        try {
//            stmt = coneccion.createStatement();
//
//            if (stmt == null) {
//                System.out.println("nulooooo!!");
//            }
//
//            String sql = "INSERT INTO alumnos "
//                    + "VALUES (200, 'Zara', 'Ali', 18)";
//            stmt.executeUpdate(sql);
//
//        } catch (SQLException ex) {
//            Logger.getLogger(ConeccionBD.class.getName()).log(Level.SEVERE, null, ex);
//        } finally {
//            stmt.close();
//            coneccion.close();
//        }
//
//    }
//
//    public static void main(String args[]) throws SQLException {
//        ConeccionBD con = new ConeccionBD();
//        Connection con2;
//        con2 = con.getConeccion();
//
//        // create a Statement from the connection
//        Statement statement = con2.createStatement();
//
////// insert the data
//        statement.executeUpdate("INSERT INTO Customers " + "VALUES (1001, 'Simpson', 'Mr.', 'Springfield', 2001)");
//
//        if (con2 != null) {
//            System.out.println("conectado!!");
//            con.RegistrarAlumno();
//        } else {
//            System.out.println("EEROR");
//        }
//    }
}
