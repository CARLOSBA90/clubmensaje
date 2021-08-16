package testJPA;

import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.domain.Sort;

import modelo.Noticia;
import repositorio.NoticiasRepositorio;

public class testJPArepository {
	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("root-context-test.xml");
		NoticiasRepositorio repositorio = context.getBean("noticiasRepositorio", NoticiasRepositorio.class);
		
		////JpaRepository
		List<Noticia> noticia = repositorio.findAll(Sort.by("titulo"));
		
		for(Noticia a: noticia) {
			System.out.println(a);
		}
		
	
		
		context.close();
	}

}
