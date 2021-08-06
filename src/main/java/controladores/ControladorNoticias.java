package controladores;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import modelo.Noticia;
import servicio.INoticiaServicio;

@Controller
@RequestMapping("/panel")
public class ControladorNoticias {
	
	@Autowired
	private INoticiaServicio servicioNoticias;
	
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
	public String guardar(Noticia noticia, BindingResult result, Model model) {
		/// Data binding, conversion automatica de los datos en la entidad Noticia
	   if(!result.hasErrors())
		{  servicioNoticias.guardarNoticia(noticia);
		   return "noticias/nuevaNoticia";
		}else {
			String errores = "";
			for(ObjectError error: result.getAllErrors()) {
				errores +=error.getDefaultMessage()+" \n";
			}
			model.addAttribute("mensaje", errores);
			return "noticias/errorNoticia";
		}
			
	}
	
	
}
