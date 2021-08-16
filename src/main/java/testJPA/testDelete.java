package testJPA;

import java.util.Optional;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import modelo.Noticia;
import repositorio.NoticiasRepositorio;

public class testDelete {
	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("root-context-test.xml");
		NoticiasRepositorio repositorio = context.getBean("noticiasRepositorio", NoticiasRepositorio.class);
		
		////OPERACION CRUD: Delete( findById del repositorio)

		if (repositorio.existsById(2)) {
			repositorio.deleteById(2);
		} else
			System.out.println("No existe tal registro");
		
	////Contar numeros registros obtenidos del query
		
			long count = repositorio.count();
			
			System.out.println(count);
		
		
		context.close();

	}

}
