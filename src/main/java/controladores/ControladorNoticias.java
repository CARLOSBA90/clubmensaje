package controladores;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import modelo.Noticia;
import servicio.INoticiaServicio;
import utilidades.Random;

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
		model = Buscar(model);
		return "noticias/panel";
	}
	
	@PostMapping(value="/guardar")
	public String guardar(Noticia noticia, BindingResult result, Model model) {
		/// Data binding, conversion automatica de los datos en la entidad Noticia
	   if(!result.hasErrors())
		{  noticia.setId(Random.numeros(4));
		   servicioNoticias.guardarNoticia(noticia);
		   model = Buscar(model);
		   return "noticias/panel";
		}else {
			String errores = "";
			for(ObjectError error: result.getAllErrors()) {
				errores +=error.getDefaultMessage()+" \n";
			}
			model.addAttribute("mensaje", errores);
			return "noticias/errorNoticia";
		}
			
	}
	
	public Model Buscar(Model model) {
		 List<Noticia> noticias = servicioNoticias.buscar();
		 model.addAttribute("noticia",noticias);
		return model;
	}
	
	
}
