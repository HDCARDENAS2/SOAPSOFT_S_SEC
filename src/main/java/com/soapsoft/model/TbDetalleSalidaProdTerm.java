package com.soapsoft.model;
// Generated 24/11/2017 11:36:10 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * TbDetalleSalidaProdTerm generated by hbm2java
 */
public class TbDetalleSalidaProdTerm  implements java.io.Serializable {


     private Integer id;
     private TbProductoTerminado tbProductoTerminado;
     private TbSalidaProdTerminado tbSalidaProdTerminado;
     private int cantidad;
     private String creadoPor;
     private Date creadoEn;
     private String modificadoPor;
     private Date modificadoEn;

    public TbDetalleSalidaProdTerm() {
    }

	
    public TbDetalleSalidaProdTerm(TbProductoTerminado tbProductoTerminado, TbSalidaProdTerminado tbSalidaProdTerminado, int cantidad, String creadoPor, Date creadoEn) {
        this.tbProductoTerminado = tbProductoTerminado;
        this.tbSalidaProdTerminado = tbSalidaProdTerminado;
        this.cantidad = cantidad;
        this.creadoPor = creadoPor;
        this.creadoEn = creadoEn;
    }
    public TbDetalleSalidaProdTerm(TbProductoTerminado tbProductoTerminado, TbSalidaProdTerminado tbSalidaProdTerminado, int cantidad, String creadoPor, Date creadoEn, String modificadoPor, Date modificadoEn) {
       this.tbProductoTerminado = tbProductoTerminado;
       this.tbSalidaProdTerminado = tbSalidaProdTerminado;
       this.cantidad = cantidad;
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
    public TbProductoTerminado getTbProductoTerminado() {
        return this.tbProductoTerminado;
    }
    
    public void setTbProductoTerminado(TbProductoTerminado tbProductoTerminado) {
        this.tbProductoTerminado = tbProductoTerminado;
    }
    public TbSalidaProdTerminado getTbSalidaProdTerminado() {
        return this.tbSalidaProdTerminado;
    }
    
    public void setTbSalidaProdTerminado(TbSalidaProdTerminado tbSalidaProdTerminado) {
        this.tbSalidaProdTerminado = tbSalidaProdTerminado;
    }
    public int getCantidad() {
        return this.cantidad;
    }
    
    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
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


