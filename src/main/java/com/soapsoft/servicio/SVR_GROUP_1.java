/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.soapsoft.servicio;

import com.soapsoft.dao.TbUsuarioDaoImpl;
import com.soapsoft.dao.TbUsuarioDaoQuery;
import com.soapsoft.model.TbUsuario;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import org.hibernate.HibernateException;

/**
 *
 * @author PC
 */
@WebService(serviceName = "SVR_GROUP_1")
public class SVR_GROUP_1 {
    /**
     * Web service operation
     * @param nombre
     * @param contrasena
     * @return 
     */
    @WebMethod(operationName = "fn_login")
    public String fn_login(@WebParam(name = "nombre_usuario") String nombre, @WebParam(name = "contrasena") String contrasena) {   
      
        String mensaje = "" ;
 
        try {
       
          TbUsuarioDaoQuery consulta = new  TbUsuarioDaoQuery();   
          
          TbUsuario resultado = consulta.fn_validar_usuario(nombre, contrasena);
          
          if( resultado != null){
               mensaje = "El usuario existe";
          }else{
               mensaje = "El no usuario existe";
          }
        } catch (HibernateException e) {
            mensaje = "Ocurrio un error en la validacion del usuario ";
            throw e;
        } 
        
        return mensaje;
    }

 
}
