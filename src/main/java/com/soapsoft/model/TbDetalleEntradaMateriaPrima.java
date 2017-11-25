package com.soapsoft.model;
// Generated 24/11/2017 11:36:10 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * TbDetalleEntradaMateriaPrima generated by hbm2java
 */
public class TbDetalleEntradaMateriaPrima  implements java.io.Serializable {


     private Integer id;
     private TbEntradaMateriaPrima tbEntradaMateriaPrima;
     private TbMateriaPrima tbMateriaPrima;
     private int cantidad;
     private String creadoPor;
     private Date creadoEn;
     private String modificadoPor;
     private Date modificadoEn;

    public TbDetalleEntradaMateriaPrima() {
    }

	
    public TbDetalleEntradaMateriaPrima(TbEntradaMateriaPrima tbEntradaMateriaPrima, TbMateriaPrima tbMateriaPrima, int cantidad, String creadoPor, Date creadoEn) {
        this.tbEntradaMateriaPrima = tbEntradaMateriaPrima;
        this.tbMateriaPrima = tbMateriaPrima;
        this.cantidad = cantidad;
        this.creadoPor = creadoPor;
        this.creadoEn = creadoEn;
    }
    public TbDetalleEntradaMateriaPrima(TbEntradaMateriaPrima tbEntradaMateriaPrima, TbMateriaPrima tbMateriaPrima, int cantidad, String creadoPor, Date creadoEn, String modificadoPor, Date modificadoEn) {
       this.tbEntradaMateriaPrima = tbEntradaMateriaPrima;
       this.tbMateriaPrima = tbMateriaPrima;
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
    public TbEntradaMateriaPrima getTbEntradaMateriaPrima() {
        return this.tbEntradaMateriaPrima;
    }
    
    public void setTbEntradaMateriaPrima(TbEntradaMateriaPrima tbEntradaMateriaPrima) {
        this.tbEntradaMateriaPrima = tbEntradaMateriaPrima;
    }
    public TbMateriaPrima getTbMateriaPrima() {
        return this.tbMateriaPrima;
    }
    
    public void setTbMateriaPrima(TbMateriaPrima tbMateriaPrima) {
        this.tbMateriaPrima = tbMateriaPrima;
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


