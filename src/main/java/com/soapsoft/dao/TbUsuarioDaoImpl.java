/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.soapsoft.dao;

import com.soapsoft.model.TbUsuario;
import java.util.Iterator;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.transform.Transformers;

/*
 * @author hdcardenas dropimax@gmail.com
 */
public class TbUsuarioDaoImpl extends GenericDaoImpl<TbUsuario, Integer> implements TbUsaurioDao{
    
    
    public TbUsuario fn_validar_usuario(String nombre,String contrasena) throws HibernateException{
    
        TbUsuario resultado = null;
 
         startOperation();
         String sql = "SELECT * FROM tb_usuario WHERE usuario = :p_nombre_usuario AND contrasena = :p_contrasena ";
         SQLQuery query = session.createSQLQuery(sql); 
         query.setParameter("p_nombre_usuario", nombre);
         query.setParameter("p_contrasena", contrasena);
         query.setResultTransformer(Transformers.aliasToBean(com.soapsoft.model.TbUsuario.class) );
         List data = query.list();
         for (Iterator iterator = data.iterator(); iterator.hasNext();){
            resultado = (TbUsuario) iterator.next(); 
         }       
         return resultado;
   }
    
}
