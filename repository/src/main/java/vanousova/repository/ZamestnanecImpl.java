package vanousova.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import vanousova.model.Zamestnanec;

/**
 * = ZamestnanecImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = ZamestnanecCustom.class)
public class ZamestnanecImpl extends QueryDslRepositorySupportExt<Zamestnanec> {

    /**
     * TODO Auto-generated constructor documentation
     */
    ZamestnanecImpl() {
        super(Zamestnanec.class);
    }
}