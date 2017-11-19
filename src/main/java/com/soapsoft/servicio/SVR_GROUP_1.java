/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.soapsoft.servicio;

import com.soapsoft.dao.TbUsuarioDaoImpl;
import com.soapsoft.model.TbUsuario;
import java.util.List;
import java.util.Map;
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
       
          TbUsuarioDaoImpl consulta = new  TbUsuarioDaoImpl();   

          List<Map<String,Object>> resultado = consulta.fn_validar_usuario_map(nombre, contrasena);
          
          for (Map iterator : resultado){
               System.out.println(iterator.toString());
               System.err.println(" datos >"+ iterator.get("ID")+" <-> "+iterator.get("creadoEn")+" "+iterator.get("nombre_usuario"));
          }
         
          List<TbUsuario> resultado_2 = consulta.fn_validar_usuario_objeto(nombre, contrasena);
          
          for (TbUsuario iterator : resultado_2){
               System.err.println(" datos2 > "+ iterator.getId()+" <-> "+iterator.getCreadoEn()+" "+iterator.getNombreUsuario());
          }
          
          
          if(!resultado_2.isEmpty()){
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
