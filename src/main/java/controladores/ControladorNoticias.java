package controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/panel")
public class ControladorNoticias {
	
	@GetMapping(value="/nuevo")
	public String nueva() {
		return "noticias/editorNoticias";
	}
	
	@GetMapping(value="/control")
	public String loginPanel(Model model) {
		return "noticias/loginPanel";
	}
	
	@GetMapping(value="/acceso")
	public String panel(Model model) {
		return "noticias/panel";
	}
	
	
}
