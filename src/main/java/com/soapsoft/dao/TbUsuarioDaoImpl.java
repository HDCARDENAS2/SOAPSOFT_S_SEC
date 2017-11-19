/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.soapsoft.dao;

import com.soapsoft.Util.LlaveValor;
import com.soapsoft.model.TbUsuario;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/*
 * @author hdcardenas dropimax@gmail.com
 */
public class TbUsuarioDaoImpl extends GenericDaoImpl<TbUsuario, Integer> implements TbUsaurioDao{
    
   
    @Override
    public List<Map<String,Object>> fn_validar_usuario_map(String nombre,String contrasena){
    
        List<Map<String,Object>>  resultado = null;
        
        try{ 
            
            String query = "SELECT * FROM tb_usuario WHERE usuario = :p_nombre_usuario AND contrasena = :p_contrasena ";
            
            ArrayList<LlaveValor> parametros = new ArrayList<>();
            parametros.add(new LlaveValor("p_nombre_usuario", nombre));
            parametros.add(new LlaveValor("p_contrasena", contrasena));
            
            resultado = this.Query(query, parametros);
            
        } catch (Exception e) {
            throw e;
        }
        
        return resultado;
    }
     
    @Override
    public List<TbUsuario> fn_validar_usuario_objeto(String nombre,String contrasena){
    
        List<TbUsuario> resultado = null;
        
        try{ 
            
            String query = "SELECT Id,creadoEn,nombre_usuario as NombreUsuario FROM tb_usuario WHERE usuario = :p_nombre_usuario AND contrasena = :p_contrasena ";
            
            ArrayList<LlaveValor> parametros = new ArrayList<>();
            parametros.add(new LlaveValor("p_nombre_usuario", nombre));
            parametros.add(new LlaveValor("p_contrasena", contrasena));
            
            resultado = this.Query(query, parametros,TbUsuario.class);
            
        } catch (Exception e) {
            throw e;
        }
        
        return resultado;
        
      
    }
    
}
