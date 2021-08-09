package controladores;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import modelo.Noticia;
import servicio.INoticiaServicio;

@Controller
public class ControladorHome {
	
	@Autowired
	private INoticiaServicio servicioNoticias;
	
	@GetMapping(value="/")
	public String goHome(Model model) {
		model = Buscar(model);
		return "home";
	}
	
	@RequestMapping(value="/noticia/{id}",method=RequestMethod.GET)
	public String mostrarNoticia(Model model,@PathVariable("id") int idNoticia) {
		//Noticia noticia = servicioNoticias.buscarPorId(idNoticia);
		//System.out.println(noticia.toString());
		
		model.addAttribute("noticia", servicioNoticias.buscarPorId(idNoticia));
		return "noticia";
	}
	/*
	private List<Noticia> getNoticia(){
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		List<Noticia> lista = null;
		try {
			lista = new LinkedList<>();
			lista.add(new Noticia("Noticia 1", formatter.parse("21-12-2021")," Contenido de la noticia 1 ..","boruto.png"));
			lista.add(new Noticia("Noticia 2", formatter.parse("21-1-2022")," Contenido de la noticia 2 ..","cloud.png"));
			lista.add(new Noticia("Noticia 2", formatter.parse("21-1-2022")," Contenido de la noticia 3 ..","spring.jpg"));
			return lista;
		}catch(ParseException e) {
			return null;
		}
	}*/
	public Model Buscar(Model model) {
		 List<Noticia> noticias = servicioNoticias.buscar();
		 model.addAttribute("noticia",noticias);
		return model;
	}
	

}
