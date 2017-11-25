package com.soapsoft.model;
// Generated 25/11/2017 12:16:48 AM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * TbDetalleProduccion generated by hbm2java
 */
@Entity
@Table(name="tb_detalle_produccion"
    ,catalog="soap_soft"
)
public class TbDetalleProduccion  implements java.io.Serializable {


     private int id;
     private TbDetalleProduccion tbDetalleProduccion;
     private TbProductoTerminado tbProductoTerminado;
     private int cantidad;
     private String creadoPor;
     private Date creadoEn;
     private String modificadoPor;
     private Date modificadoEn;
     private Set tbDetalleProduccions = new HashSet(0);

    public TbDetalleProduccion() {
    }

	
    public TbDetalleProduccion(int id, TbDetalleProduccion tbDetalleProduccion, TbProductoTerminado tbProductoTerminado, int cantidad, String creadoPor, Date creadoEn) {
        this.id = id;
        this.tbDetalleProduccion = tbDetalleProduccion;
        this.tbProductoTerminado = tbProductoTerminado;
        this.cantidad = cantidad;
        this.creadoPor = creadoPor;
        this.creadoEn = creadoEn;
    }
    public TbDetalleProduccion(int id, TbDetalleProduccion tbDetalleProduccion, TbProductoTerminado tbProductoTerminado, int cantidad, String creadoPor, Date creadoEn, String modificadoPor, Date modificadoEn, Set tbDetalleProduccions) {
       this.id = id;
       this.tbDetalleProduccion = tbDetalleProduccion;
       this.tbProductoTerminado = tbProductoTerminado;
       this.cantidad = cantidad;
       this.creadoPor = creadoPor;
       this.creadoEn = creadoEn;
       this.modificadoPor = modificadoPor;
       this.modificadoEn = modificadoEn;
       this.tbDetalleProduccions = tbDetalleProduccions;
    }
   
     @Id 

    
    @Column(name="ID", unique=true, nullable=false)
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="id_detalle_produccion", nullable=false)
    public TbDetalleProduccion getTbDetalleProduccion() {
        return this.tbDetalleProduccion;
    }
    
    public void setTbDetalleProduccion(TbDetalleProduccion tbDetalleProduccion) {
        this.tbDetalleProduccion = tbDetalleProduccion;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="id_producto_terminado", nullable=false)
    public TbProductoTerminado getTbProductoTerminado() {
        return this.tbProductoTerminado;
    }
    
    public void setTbProductoTerminado(TbProductoTerminado tbProductoTerminado) {
        this.tbProductoTerminado = tbProductoTerminado;
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

@OneToMany(fetch=FetchType.LAZY, mappedBy="tbDetalleProduccion")
    public Set getTbDetalleProduccions() {
        return this.tbDetalleProduccions;
    }
    
    public void setTbDetalleProduccions(Set tbDetalleProduccions) {
        this.tbDetalleProduccions = tbDetalleProduccions;
    }




}


