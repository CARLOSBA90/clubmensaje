package servicio;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Service;

import modelo.Noticia;

@Service
public class NoticiaServicioImple implements INoticiaServicio{
	
	private List<Noticia> lista = null;
	
	public NoticiaServicioImple() {
		System.out.println("Inyeccion de dependencias: clase NoticiaServicioImple");
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		try {
			lista = new LinkedList<>();
			lista.add(new Noticia(1, "Noticia 1", formatter.parse("21-12-2021")," Contenido de la noticia 1 ..","boruto.png"));
			lista.add(new Noticia(2, "Noticia 2", formatter.parse("21-1-2022")," Contenido de la noticia 2 ..","cloud.png"));
			lista.add(new Noticia(3, "Noticia 2", formatter.parse("21-1-2022")," Contenido de la noticia 3 ..","spring.jpg"));
		}catch(ParseException e) {
		 System.out.println("ERROR DE PARSEO: FECHAS DE NOTICIA EJEMPLO");
		}
	}

	public List<Noticia> buscar() {
		return lista;
	}

	
	public Noticia buscarPorId(int id) {
       //findAny & orElse JAVA 8, stream		
		Noticia noticia = lista.stream().
				filter(p -> p.getId()==(id)).
				findAny().orElse(null);
		return noticia;
	}

	
	public void guardarNoticia(Noticia noticia) {
		
		System.out.println("METODO GUARDAR NOTICIA DEL SERVICIO: "+noticia.toString());
	}

}
