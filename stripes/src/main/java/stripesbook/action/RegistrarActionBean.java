/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stripesbook.action;

import dao.AlumnosDao;
import domain.Alumnos;
import java.sql.SQLException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import net.sourceforge.stripes.action.ActionBean;
import net.sourceforge.stripes.action.ActionBeanContext;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.StreamingResolution;
import net.sourceforge.stripes.action.UrlBinding;
import net.sourceforge.stripes.validation.Validate;
import net.sourceforge.stripes.validation.ValidateNestedProperties;
import net.sourceforge.stripes.validation.ValidationErrors;
import net.sourceforge.stripes.validation.ValidationMethod;
import org.xml.sax.ErrorHandler;

/**
 *
 * @author Emerson
 */
@UrlBinding("/registrar.action")
public class RegistrarActionBean extends BaseActionBean {

    @ValidateNestedProperties({
        @Validate(field = "codigo", required = true)
    })
    private Alumnos alumnos;

    @DefaultHandler
    public Resolution ejecutar() {/* (3) */

        AlumnosDao alumnosDao = new AlumnosDao();

        System.out.println(alumnos.getCodigo());
        if (alumnos.getCodigo() != null) {

            try {
                alumnosDao.RegistrarAlumno(alumnos);
            } catch (SQLException ex) {
                Logger.getLogger(RegistrarActionBean.class.getName()).log(Level.SEVERE, null, ex);
                return new StreamingResolution("text/html", "repetido");
            }
            return new StreamingResolution("text/html", "ok");
        } else {

            return new StreamingResolution("text/html", "nok");
        }

    }

//    @ValidationMethod
//    public void validarCodigoDuplicado(ValidationErrors errors) {
//         AlumnosDao alumnosDao= new AlumnosDao();
//       Integer codigo=  alumnosDao.buscarCodigo(alumnos);
//         if(codigo==alumnos.getCodigo()){
//          //  errors.add("error", new Message);
//         }
//        
//    }
//       
//    
    public void setAlumnos(Alumnos alumnos) {
        this.alumnos = alumnos;
    }

    public Alumnos getAlumnos() {
        return alumnos;
    }

}
