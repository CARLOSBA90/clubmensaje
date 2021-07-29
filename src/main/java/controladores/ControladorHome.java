package controladores;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import modelo.Noticia;

@Controller
public class ControladorHome {
	
	@GetMapping(value="/")
	public String goHome(Model model) {
		List<Noticia> noticias = getNoticia();
		model.addAttribute("noticia",noticias);
		return "home";
	}
	
	@RequestMapping(value="/noticia/{id}",method=RequestMethod.GET)
	public String mostrarNoticia(Model model,@PathVariable("id") int idNoticia) {
		System.out.println(idNoticia);
		String titulo = "Noticia ID 90";
		String contenido = "---- Contenido -----";
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
			lista.add(new Noticia("Noticia 1", formatter.parse("21-12-2021")," Contenido de la noticia 1 ..","boruto.png"));
			lista.add(new Noticia("Noticia 2", formatter.parse("21-1-2022")," Contenido de la noticia 2 ..","cloud.png"));
			lista.add(new Noticia("Noticia 2", formatter.parse("21-1-2022")," Contenido de la noticia 3 ..","spring.jpg"));
			return lista;
		}catch(ParseException e) {
			return null;
		}
	}

}
