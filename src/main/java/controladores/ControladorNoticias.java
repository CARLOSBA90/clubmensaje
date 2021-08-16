package controladores;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import modelo.Noticia;
import servicio.INoticiaServicio;
import utilidades.Random;

@Controller
@RequestMapping("/panel")
public class ControladorNoticias {
	
	@Autowired
	private INoticiaServicio servicioNoticias;
	
	@GetMapping(value="/nuevo")
	public String nueva(@ModelAttribute Noticia noticia, Model model) {
		model.addAttribute("secciones",servicioNoticias.secciones());
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
	public String guardar(@ModelAttribute Noticia noticia, BindingResult result, Model model, 
			@RequestParam("cargarImagen") MultipartFile multiPart, HttpServletRequest request) {
		/// Data binding, conversion automatica de los datos en la entidad Noticia
	   if(!result.hasErrors())
		{  noticia.setId(Random.numeros(4)); ///TODO ID DEBE SER GENERADO POR LA BBDD
	    	if (!multiPart.isEmpty()) {
		    	String nombreImagen = guardarImagen(multiPart,request); 
		    	noticia.setImagen(nombreImagen);}
		   servicioNoticias.guardarNoticia(noticia);
		   model = Buscar(model);
		   return "noticias/panel";
		}else {
			String errores = "";
			for(ObjectError error: result.getAllErrors()) {
				errores +=error.getDefaultMessage()+" \n";
			}
			model.addAttribute("mensaje", errores);
			return "noticias/nuevaNoticia";
		}
			
	}
	
	private String guardarImagen(MultipartFile multiPart, HttpServletRequest request) {
		// Obtenemos el nombre original del archivo
		String nombreOriginal = String.valueOf(Random.alfanum(6));
		// Obtenemos la ruta ABSOLUTA del directorio images
		// apache-tomcat/webapps/cineapp/resources/images/
		String rutaFinal = request.getServletContext().getRealPath("/resources/images/");
		try {
			// Formamos el nombre del archivo para guardarlo en el disco duro
			File imageFile = new File(rutaFinal + nombreOriginal);
			// Aqui se guarda fisicamente el archivo en el disco duro
			multiPart.transferTo(imageFile);
			return nombreOriginal;
		} catch (IOException e) {
			System.out.println("Error " + e.getMessage());
			return null;
		}
	}
	public Model Buscar(Model model) {
		 List<Noticia> noticias = servicioNoticias.buscar();
		 model.addAttribute("noticia",noticias);
		return model;
	}
	
	
}
