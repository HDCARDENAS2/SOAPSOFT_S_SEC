/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.soapsoft.dao;

import com.soapsoft.model.TbUsuario;
import java.util.List;
import java.util.Map;

/*
 * @author hdcardenas dropimax@gmail.com
 */
public interface TbUsaurioDao extends GenericDao<TbUsuario, Integer>{
         
   public List<Map<String,Object>> fn_validar_usuario_map(String nombre,String contrasena);
   public List<TbUsuario> fn_validar_usuario_objeto(String nombre,String contrasena);
    
}
