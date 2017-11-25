/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.soapsoft.servicio;

import com.soapsoft.dao.TbUsuarioDaoImpl;
import com.soapsoft.model.TbRolUsuario;
import com.soapsoft.model.TbUsuario;
import java.util.Date;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author PC
 */
@WebService(serviceName = "SVR_USUARIO")
public class SVR_USUARIO {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "fn_insertar_usuario")
    public String fn_insertar_usuario(@WebParam(name = "nombre_usuario") String nombre_usuario, @WebParam(name = "cedula") int cedula, @WebParam(name = "usuario") String usuario, @WebParam(name = "contrase\u00f1a") String contraseña, @WebParam(name = "estado_usuario") boolean estado_usuario, @WebParam(name = "creadoPor") String creadoPor, @WebParam(name = "modificadoPor") String modificadoPor, @WebParam(name = "id_rol") int id_rol) {
        TbRolUsuario rol=new TbRolUsuario();
        rol.setId(id_rol);
        TbUsuario obj=new TbUsuario(rol,nombre_usuario, cedula, usuario, contraseña, estado_usuario, creadoPor,new Date() ,modificadoPor);
        try{
            TbUsuarioDaoImpl dao= new TbUsuarioDaoImpl();
            dao.create(obj);
            return "Se Inserto el Usuario";
        }catch (Exception e){
            throw e;
            
        }
        
        
        
        
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "fn_borrar_usuario")
    public String fn_borrar_usuario(@WebParam(name = "ID") int ID) {
        
        try{
            TbUsuarioDaoImpl dao= new TbUsuarioDaoImpl();
            TbUsuario obj = dao.findById(ID);
            if(obj!=null){
                dao.create(obj);
                return "Se Elimino el Usuario";
            }else{
                return "Usuario no Existe";
            }
            
        }catch (Exception e){
            throw e;
            
        }
        
    }
    
    /**
     * Web service operation
     */
    @WebMethod(operationName = "fn_modificar_usuario")
    public String fn_modificar_usuario(@WebParam(name = "ID") int ID,@WebParam(name = "nombre_usuario") String nombre_usuario, @WebParam(name = "cedula") int cedula, @WebParam(name = "usuario") String usuario, @WebParam(name = "contrase\u00f1a") String contraseña, @WebParam(name = "estado_usuario") boolean estado_usuario, @WebParam(name = "creadoPor") String creadoPor, @WebParam(name = "modificadoPor") String modificadoPor, @WebParam(name = "id_rol") int id_rol) {
        TbRolUsuario rol=new TbRolUsuario();
        rol.setId(id_rol);
        try{
            
            TbUsuarioDaoImpl dao= new TbUsuarioDaoImpl();
            TbUsuario obj_modificar=dao.findById(ID);
            if(obj_modificar!=null){
                obj_modificar.setNombreUsuario(nombre_usuario);
                obj_modificar.setCedula(cedula);
                obj_modificar.setUsuario(usuario);
                obj_modificar.setContrasena(contraseña);
                obj_modificar.setEstadoUsuario(estado_usuario);
                obj_modificar.setModificadoEn(new Date());
                obj_modificar.setModificadoPor(modificadoPor);
                dao.update(obj_modificar);
                return "Se Modifico el Usuario"; 
            }else{
                return "Usuario no existe";
            }
            
        }catch (Exception e){
            throw e;
            
        }
        
        
        
        
    }

    /**
     * This is a sample web service operation
     */
    
}
