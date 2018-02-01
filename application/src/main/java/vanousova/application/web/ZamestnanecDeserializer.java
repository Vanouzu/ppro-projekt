package vanousova.application.web;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;
import vanousova.model.Zamestnanec;
import vanousova.service.api.ZamestnanecService;

/**
 * = ZamestnanecDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Zamestnanec.class)
public class ZamestnanecDeserializer extends JsonObjectDeserializer<Zamestnanec> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ZamestnanecService zamestnanecService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param zamestnanecService
     * @param conversionService
     */
    @Autowired
    public ZamestnanecDeserializer(@Lazy ZamestnanecService zamestnanecService, ConversionService conversionService) {
        this.zamestnanecService = zamestnanecService;
        this.conversionService = conversionService;
    }
}
