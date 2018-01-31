package vanousova.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import vanousova.model.Zakaznik;

/**
 * = ZakaznikImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = ZakaznikCustom.class)
public class ZakaznikImpl extends QueryDslRepositorySupportExt<Zakaznik> {

    /**
     * TODO Auto-generated constructor documentation
     */
    ZakaznikImpl() {
        super(Zakaznik.class);
    }
}