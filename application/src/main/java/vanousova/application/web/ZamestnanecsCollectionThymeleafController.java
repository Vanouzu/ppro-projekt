package vanousova.application.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;
import vanousova.model.Zamestnanec;

/**
 * = ZamestnanecsCollectionThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Zamestnanec.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class ZamestnanecsCollectionThymeleafController {
}