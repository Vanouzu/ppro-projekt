package vanousova.application.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;
import vanousova.model.Mistnost;

/**
 * = MistnostsCollectionThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Mistnost.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class MistnostsCollectionThymeleafController {
}
