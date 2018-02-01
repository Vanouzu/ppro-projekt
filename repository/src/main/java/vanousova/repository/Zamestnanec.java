package vanousova.repository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = Zamestnanec
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = vanousova.model.Zamestnanec.class, finders = { @RooFinder(value = "findById", returnType = vanousova.model.Zamestnanec.class), @RooFinder(value = "findByPrijmeni", returnType = vanousova.model.Zamestnanec.class) })
public interface Zamestnanec {
}
