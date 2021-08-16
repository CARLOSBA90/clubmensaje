package testJPA;

import java.util.Optional;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import modelo.Noticia;
import repositorio.NoticiasRepositorio;

public class testfindById {
	
	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("root-context-test.xml");
		NoticiasRepositorio repositorio = context.getBean("noticiasRepositorio", NoticiasRepositorio.class);
		
		////OPERACION CRUD: READ( findById del repositorio)
		
		Optional<Noticia> noticia = repositorio.findById(2);
		
		System.out.println(noticia.get());
		
		context.close();

	}


}
