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
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.transform.Transformers;
import org.hibernate.type.IntegerType;

/*
 * @author hdcardenas dropimax@gmail.com
 */
public class TbUsuarioDaoImpl extends GenericDaoImpl<TbUsuario, Integer> implements TbUsaurioDao{
    
    
    public TbUsuario fn_validar_usuario(String nombre,String contrasena) throws HibernateException{
    
        TbUsuario resultado = null;
        startOperation();
        
           Query query = session.createSQLQuery(
            "SELECT id FROM tb_usuario WHERE usuario = :p_nombre_usuario AND contrasena = :p_contrasena ")
            .addScalar("id", new IntegerType()
            );
           
           query.setParameter("p_nombre_usuario", nombre);
           query.setParameter("p_contrasena", contrasena);
           
           query.setResultTransformer(Transformers.aliasToBean(TbUsuario.class));

           List<TbUsuario> list = query.list();
           
           for (TbUsuario iterator : list){
              resultado = iterator;
           }   
           
         return resultado;
   }
    
}
