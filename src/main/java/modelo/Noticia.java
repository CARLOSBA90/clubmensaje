package modelo;

import java.util.Date;

public class Noticia {
	
	private int id;
	private int seccion; /// Secciones: actualidad, regional, deportes, entrenimiento, tecnologia, recetario
    private String titulo;
    private Date fecha;
    private String contenido;
    private String imagen; /// link de la imagen
    private String descripcionImagen; /// Derechos de autor sobre la imagen
    private int vistas;  // registra numero de veces visitados dicha noticia
    private String autor;
    private boolean estado;
    
	public Noticia(String titulo, Date fecha, String contenido) {
		this.titulo = titulo;
		this.fecha = fecha;
		this.contenido = contenido;
	}
	public Noticia(int id, int seccion, String titulo, Date fecha, String contenido, String imagen,
			String descripcionImagen, int vistas, String autor) {
		this.id = id;
		this.seccion = seccion;
		this.titulo = titulo;
		this.fecha = fecha;
		this.contenido = contenido;
		this.imagen = imagen;
		this.descripcionImagen = descripcionImagen;
		this.vistas = vistas;
		this.autor = autor;
	}
	
	public Noticia(int id, String titulo, String contenido, boolean estado) {
		this.id = 1;
		this.titulo = titulo;
		this.contenido = contenido;
		this.estado = estado;
		this.fecha = new Date();
	}
	
	public Noticia(int id, String titulo, Date fecha, String contenido, String imagen) {
		this.id = id;
		this.titulo = titulo;
		this.contenido = contenido;
		this.fecha = fecha;
		this.imagen = imagen;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSeccion() {
		return seccion;
	}
	public void setSeccion(int seccion) {
		this.seccion = seccion;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public String getContenido() {
		return contenido;
	}
	public void setContenido(String contenido) {
		this.contenido = contenido;
	}
	public String getImagen() {
		return imagen;
	}
	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	public String getDescripcionImagen() {
		return descripcionImagen;
	}
	public void setDescripcionImagen(String descripcionImagen) {
		this.descripcionImagen = descripcionImagen;
	}
	public int getVistas() {
		return vistas;
	}
	public void setVistas(int vistas) {
		this.vistas = vistas;
	}
	public String getAutor() {
		return autor;
	}
	public void setAutor(String autor) {
		this.autor = autor;
	}
	public boolean isEstado() {
		return estado;
	}
	public void setEstado(boolean estado) {
		this.estado = estado;
	}
	@Override
	public String toString() {
		return "Noticia [id=" + id + ", titulo=" + titulo + ", fecha=" + fecha + ", contenido=" + contenido
				+ ", estado=" + estado + "]";
	}
	
	
	
	
    
    
}
