package stripesbook.action;

import java.util.Date;
import java.util.Random;
import net.sourceforge.stripes.action.ActionBean;
import net.sourceforge.stripes.action.ActionBeanContext;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Emerson
 */
public class HelloActionBean implements ActionBean{

   
    
    private ActionBeanContext ctx;
    @Override
    public ActionBeanContext getContext() { return ctx; }
    @Override
    public void setContext(ActionBeanContext ctx) { this.ctx = ctx; }

    private Date date;/* (2) */
    public Date getDate() {
        return date;
    }
    @DefaultHandler
    public Resolution currentDate() {/* (3) */
        
        
        date = new Date();
        System.out.println("url+"+getContext().getRequest().getContextPath()); 
        return new ForwardResolution(VIEW);
    }
    
    public Resolution randomDate() {
        long max = System.currentTimeMillis();
        long random = new Random().nextLong() % max;
        date = new Date(random);
        
        
        
        return new ForwardResolution(VIEW);
    }
    private static final String VIEW = "jsp/hello.jsp";

}
