// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package vanousova.application.web;

import io.springlets.data.domain.GlobalSearch;
import java.util.Collection;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;
import vanousova.application.web.MistnostsCollectionJsonController;
import vanousova.application.web.MistnostsItemJsonController;
import vanousova.model.Mistnost;
import vanousova.service.api.MistnostService;

privileged aspect MistnostsCollectionJsonController_Roo_JSON {
    
    declare @type: MistnostsCollectionJsonController: @RestController;
    
    declare @type: MistnostsCollectionJsonController: @RequestMapping(value = "/mistnosts", name = "MistnostsCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param mistnostService
     */
    @Autowired
    public MistnostsCollectionJsonController.new(MistnostService mistnostService) {
        this.mistnostService = mistnostService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<Mistnost>> MistnostsCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<Mistnost> mistnosts = getMistnostService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(mistnosts);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents MistnostsCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(MistnostsCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param mistnost
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> MistnostsCollectionJsonController.create(@Valid @RequestBody Mistnost mistnost, BindingResult result) {
        
        if (mistnost.getId() != null || mistnost.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        Mistnost newMistnost = getMistnostService().save(mistnost);
        UriComponents showURI = MistnostsItemJsonController.showURI(newMistnost);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param mistnosts
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> MistnostsCollectionJsonController.createBatch(@Valid @RequestBody Collection<Mistnost> mistnosts, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getMistnostService().save(mistnosts);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param mistnosts
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> MistnostsCollectionJsonController.updateBatch(@Valid @RequestBody Collection<Mistnost> mistnosts, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getMistnostService().save(mistnosts);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id_mists
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{id_mists}", name = "deleteBatch")
    public ResponseEntity<?> MistnostsCollectionJsonController.deleteBatch(@PathVariable("id_mists") Collection<Long> id_mists) {
        
        getMistnostService().delete(id_mists);
        
        return ResponseEntity.ok().build();
    }
    
}
