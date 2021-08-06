package servicio;
import java.util.List;
import modelo.Noticia;

/// Interfaz para el servicio Noticias, logica de negocios
public interface INoticiaServicio {
	List<Noticia> buscar();
	Noticia buscarPorId(int id);
	void guardarNoticia(Noticia noticia);
}
