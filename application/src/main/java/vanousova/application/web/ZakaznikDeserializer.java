package vanousova.application.web;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;
import vanousova.model.Zakaznik;
import vanousova.service.api.ZakaznikService;

/**
 * = ZakaznikDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Zakaznik.class)
public class ZakaznikDeserializer extends JsonObjectDeserializer<Zakaznik> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ZakaznikService zakaznikService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param zakaznikService
     * @param conversionService
     */
    @Autowired
    public ZakaznikDeserializer(@Lazy ZakaznikService zakaznikService, ConversionService conversionService) {
        this.zakaznikService = zakaznikService;
        this.conversionService = conversionService;
    }
}
