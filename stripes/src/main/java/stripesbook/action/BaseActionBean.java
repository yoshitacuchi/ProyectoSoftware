/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stripesbook.action;

import net.sourceforge.stripes.action.ActionBean;
import net.sourceforge.stripes.action.ActionBeanContext;

/**
 *
 * @author Emerson
 */
public class BaseActionBean implements ActionBean{
ActionBeanContext abc;
    
    @Override
    public void setContext(ActionBeanContext abc) {
        this.abc=abc;
           
    }

    @Override
    public ActionBeanContext getContext() {
            return abc;
    }
    
    
}
