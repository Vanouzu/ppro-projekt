package vanousova.model;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QZakaznik is a Querydsl query type for Zakaznik
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QZakaznik extends EntityPathBase<Zakaznik> {

    private static final long serialVersionUID = 650001590L;

    public static final QZakaznik zakaznik = new QZakaznik("zakaznik");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath login = createString("login");

    public final StringPath nazev = createString("nazev");

    public final EnumPath<Platce> platce_DPH = createEnum("platce_DPH", Platce.class);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QZakaznik(String variable) {
        super(Zakaznik.class, forVariable(variable));
    }

    public QZakaznik(Path<? extends Zakaznik> path) {
        super(path.getType(), path.getMetadata());
    }

    public QZakaznik(PathMetadata metadata) {
        super(Zakaznik.class, metadata);
    }

}

