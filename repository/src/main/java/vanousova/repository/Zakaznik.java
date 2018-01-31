package vanousova.repository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = Zakaznik
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = vanousova.model.Zakaznik.class, finders = { @RooFinder(value = "findByNazev", returnType = vanousova.model.Zakaznik.class) })
public interface Zakaznik {
}
