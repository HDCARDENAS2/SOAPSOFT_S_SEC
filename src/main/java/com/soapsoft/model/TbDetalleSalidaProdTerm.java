package com.soapsoft.model;
// Generated 25/11/2017 12:16:48 AM by Hibernate Tools 4.3.1


import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * TbDetalleSalidaProdTerm generated by hbm2java
 */
@Entity
@Table(name="tb_detalle_salida_prod_term"
    ,catalog="soap_soft"
)
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
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="ID", unique=true, nullable=false)
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="id_producto_terminado", nullable=false)
    public TbProductoTerminado getTbProductoTerminado() {
        return this.tbProductoTerminado;
    }
    
    public void setTbProductoTerminado(TbProductoTerminado tbProductoTerminado) {
        this.tbProductoTerminado = tbProductoTerminado;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="id_salida_prod_terminado", nullable=false)
    public TbSalidaProdTerminado getTbSalidaProdTerminado() {
        return this.tbSalidaProdTerminado;
    }
    
    public void setTbSalidaProdTerminado(TbSalidaProdTerminado tbSalidaProdTerminado) {
        this.tbSalidaProdTerminado = tbSalidaProdTerminado;
    }

    
    @Column(name="cantidad", nullable=false)
    public int getCantidad() {
        return this.cantidad;
    }
    
    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    
    @Column(name="creadoPor", nullable=false, length=50)
    public String getCreadoPor() {
        return this.creadoPor;
    }
    
    public void setCreadoPor(String creadoPor) {
        this.creadoPor = creadoPor;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="creadoEn", nullable=false, length=19)
    public Date getCreadoEn() {
        return this.creadoEn;
    }
    
    public void setCreadoEn(Date creadoEn) {
        this.creadoEn = creadoEn;
    }

    
    @Column(name="modificadoPor", length=50)
    public String getModificadoPor() {
        return this.modificadoPor;
    }
    
    public void setModificadoPor(String modificadoPor) {
        this.modificadoPor = modificadoPor;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="modificadoEn", length=19)
    public Date getModificadoEn() {
        return this.modificadoEn;
    }
    
    public void setModificadoEn(Date modificadoEn) {
        this.modificadoEn = modificadoEn;
    }




}

