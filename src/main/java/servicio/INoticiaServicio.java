package servicio;

import java.util.List;
import modelo.Noticia;

public interface INoticiaServicio {
	List<Noticia> buscar();
	Noticia buscarPorId(int id);
	void guardarNoticia(Noticia noticia);
}
