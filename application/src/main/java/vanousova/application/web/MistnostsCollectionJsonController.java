package vanousova.application.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;
import vanousova.model.Mistnost;

/**
 * = MistnostsCollectionJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Mistnost.class, type = ControllerType.COLLECTION)
@RooJSON
public class MistnostsCollectionJsonController {
}
