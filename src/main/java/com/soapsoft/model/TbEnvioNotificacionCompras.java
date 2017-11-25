package com.soapsoft.model;
// Generated 24/11/2017 11:36:10 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * TbEnvioNotificacionCompras generated by hbm2java
 */
public class TbEnvioNotificacionCompras  implements java.io.Serializable {


     private Integer id;
     private String tipoNotificacion;
     private String descripcion;
     private String creadoPor;
     private Date creadoEn;
     private String modificadoPor;
     private Date modificadoEn;

    public TbEnvioNotificacionCompras() {
    }

	
    public TbEnvioNotificacionCompras(String tipoNotificacion, String descripcion, String creadoPor, Date creadoEn) {
        this.tipoNotificacion = tipoNotificacion;
        this.descripcion = descripcion;
        this.creadoPor = creadoPor;
        this.creadoEn = creadoEn;
    }
    public TbEnvioNotificacionCompras(String tipoNotificacion, String descripcion, String creadoPor, Date creadoEn, String modificadoPor, Date modificadoEn) {
       this.tipoNotificacion = tipoNotificacion;
       this.descripcion = descripcion;
       this.creadoPor = creadoPor;
       this.creadoEn = creadoEn;
       this.modificadoPor = modificadoPor;
       this.modificadoEn = modificadoEn;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getTipoNotificacion() {
        return this.tipoNotificacion;
    }
    
    public void setTipoNotificacion(String tipoNotificacion) {
        this.tipoNotificacion = tipoNotificacion;
    }
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public String getCreadoPor() {
        return this.creadoPor;
    }
    
    public void setCreadoPor(String creadoPor) {
        this.creadoPor = creadoPor;
    }
    public Date getCreadoEn() {
        return this.creadoEn;
    }
    
    public void setCreadoEn(Date creadoEn) {
        this.creadoEn = creadoEn;
    }
    public String getModificadoPor() {
        return this.modificadoPor;
    }
    
    public void setModificadoPor(String modificadoPor) {
        this.modificadoPor = modificadoPor;
    }
    public Date getModificadoEn() {
        return this.modificadoEn;
    }
    
    public void setModificadoEn(Date modificadoEn) {
        this.modificadoEn = modificadoEn;
    }




}


