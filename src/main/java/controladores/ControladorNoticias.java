package controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import modelo.Noticia;

@Controller
@RequestMapping("/panel")
public class ControladorNoticias {
	
	@GetMapping(value="/nuevo")
	public String nueva() {
		return "noticias/nuevaNoticia";
	}
	@GetMapping(value="/control")
	public String loginPanel(Model model) {
		return "noticias/loginPanel";
	}
	
	@GetMapping(value="/acceso")
	public String panel(Model model) {
		return "noticias/panel";
	}
	
	@PostMapping(value="/guardar")
	public String guardar(@RequestParam("titulo") String titulo, @RequestParam("categoria") String categoria,
			@RequestParam("contenido") String contenido, @RequestParam("estado") String estado) {
		Noticia noticia = new Noticia(1,titulo, contenido, (estado.equals("Activo"))? true:false);
		System.out.println(noticia.toString());
		return "noticias/nuevaNoticia";
	}
	
	
}
