package vanousova.application.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;
import vanousova.model.Zakaznik;

/**
 * = ZakazniksCollectionThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Zakaznik.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class ZakazniksCollectionThymeleafController {
}
