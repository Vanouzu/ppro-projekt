package vanousova.application.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.finder.RooSearch;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;
import vanousova.model.Zakaznik;

/**
 * = ZakazniksSearchThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Zakaznik.class, type = ControllerType.SEARCH)
@RooSearch(finders = {  })
@RooThymeleaf
public class ZakazniksSearchThymeleafController {
}
