package vanousova.model;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import org.springframework.format.annotation.NumberFormat;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

/**
 * = Zamestnanec
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity
@RooEquals(isJpaEntity = true)
public class Zamestnanec {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_zam")
    private Long id;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Version
    private Integer version;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String jmeno;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String prijmeni;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String login;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NumberFormat
    private int hodinova_sazba;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Enumerated(EnumType.STRING)
    private Pozice pozice;
}
