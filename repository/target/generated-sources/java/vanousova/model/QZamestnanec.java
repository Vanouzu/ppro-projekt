package vanousova.model;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QZamestnanec is a Querydsl query type for Zamestnanec
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QZamestnanec extends EntityPathBase<Zamestnanec> {

    private static final long serialVersionUID = -195192490L;

    public static final QZamestnanec zamestnanec = new QZamestnanec("zamestnanec");

    public final NumberPath<Integer> hodinova_sazba = createNumber("hodinova_sazba", Integer.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath jmeno = createString("jmeno");

    public final StringPath login = createString("login");

    public final EnumPath<Pozice> pozice = createEnum("pozice", Pozice.class);

    public final StringPath prijmeni = createString("prijmeni");

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QZamestnanec(String variable) {
        super(Zamestnanec.class, forVariable(variable));
    }

    public QZamestnanec(Path<? extends Zamestnanec> path) {
        super(path.getType(), path.getMetadata());
    }

    public QZamestnanec(PathMetadata metadata) {
        super(Zamestnanec.class, metadata);
    }

}

