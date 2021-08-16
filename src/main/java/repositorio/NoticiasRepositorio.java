package repositorio;
import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import modelo.Noticia;

@Repository
//public interface NoticiasRepositorio extends CrudRepository<Noticia, Integer> {
public interface NoticiasRepositorio extends JpaRepository<Noticia, Integer> {

}
