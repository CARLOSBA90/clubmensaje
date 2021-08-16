package testJPA;

import java.util.Optional;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import modelo.Noticia;
import repositorio.NoticiasRepositorio;

public class testUpdate {
	
	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("root-context-test.xml");
		NoticiasRepositorio repositorio = context.getBean("noticiasRepositorio", NoticiasRepositorio.class);
		
		////OPERACION CRUD: UPDATE

		//// BUSQUEDA POR findById
		Optional<Noticia> opcional = repositorio.findById(2);
		
		/// Modificar entidad y guardar
		
		if(opcional.isPresent()) {
			Noticia noticia = opcional.get();
			noticia.setEstado(true);
			/// si el ID es 0, realiza un insert,
			/// caso contrario realiza un update
			repositorio.save(noticia);
		}
		
		Optional<Noticia> noticia = repositorio.findById(2);
		
		System.out.println(noticia.get());
		
		context.close();

	}

}
