package testJPA;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import modelo.Noticia;
import repositorio.NoticiasRepositorio;
////TESTEO DE CONEXION PARA BBDD CON SPRING DATA JPA, INSERT
public class testConexion {

	public static void main(String[] args) {

		Noticia noticia = new Noticia();
		noticia.setTitulo("Z");
		noticia.setContenido("texto de contenido");
		
		
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("root-context-test.xml");
		NoticiasRepositorio repositorio = context.getBean("noticiasRepositorio", NoticiasRepositorio.class);
		
		repositorio.save(noticia);
		
		context.close();

	}

}
