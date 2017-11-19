/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.soapsoft.dao;

import com.soapsoft.model.TbUsuario;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.transform.Transformers;
import org.hibernate.type.DateType;
import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;

/*
 * @author hdcardenas dropimax@gmail.com
 */
public class TbUsuarioDaoQuery {
    
  
    public TbUsuario fn_validar_usuario(String nombre,String contrasena){
    
        TbUsuario resultado = null;
        TbUsuarioDaoImpl dao_usuario2 = new TbUsuarioDaoImpl();   
        
        try{ 
            Query query = dao_usuario2.session.createSQLQuery(
            "SELECT id,creadoEn,nombre_usuario as NombreUsuario FROM tb_usuario WHERE usuario = :p_nombre_usuario AND contrasena = :p_contrasena ")
            .addScalar("id", new IntegerType()         
            ).addScalar("creadoEn", new DateType()
            ).addScalar("NombreUsuario", new StringType());
            
            query.setParameter("p_nombre_usuario", nombre);
            query.setParameter("p_contrasena", contrasena);

            query.setResultTransformer(Transformers.aliasToBean(TbUsuario.class));

            List<TbUsuario> list = query.list() ;

            for (TbUsuario iterator : list){
               resultado = iterator;
               System.err.println(" exploto "+ iterator.getId()+" <-> "+iterator.getCreadoEn()+" "+iterator.getNombreUsuario());
            } 

        } catch (Exception e) {
            throw e;
        }
        
        return resultado;
   }
    
}
