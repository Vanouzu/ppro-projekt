package vanousova.repository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import vanousova.model.Mistnost;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = MistnostRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Mistnost.class, finders = { @RooFinder(value = "findByNazev", returnType = Mistnost.class) })
public interface MistnostRepository {
}
