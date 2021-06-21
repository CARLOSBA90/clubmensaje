package controladores;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import modelo.Noticia;

@Controller
public class HomeController {
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String goHome(Model model) {
		List<Noticia> noticias = getNoticia();
		model.addAttribute("noticia",noticias);
		return "home";
	}
	
	@RequestMapping(value="/noticia")
	public String mostrarNoticia(Model model) {
		String titulo = "Noticia";
		String contenido = "Contenido ...";
		LocalDate fecha = LocalDate.of(2021, 12, 24);
		
		model.addAttribute("titulo",  titulo);
		model.addAttribute("contenido", contenido);
		model.addAttribute("fecha", fecha);
		return "noticia";
		
	}
	
	private List<Noticia> getNoticia(){
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		List<Noticia> lista = null;
		try {
			lista = new LinkedList<>();
			lista.add(new Noticia("Noticia 1", formatter.parse("21-12-2021")," Contenido de la noticia 1"));
			lista.add(new Noticia("Noticia 2", formatter.parse("21-1-2022")," Contenido de la noticia 2"));
			return lista;
		}catch(ParseException e) {
			return null;
		}
	}

}