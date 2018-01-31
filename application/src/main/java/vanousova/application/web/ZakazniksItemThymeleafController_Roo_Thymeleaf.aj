// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package vanousova.application.web;

import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import java.util.Arrays;
import java.util.Locale;
import javax.validation.Valid;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;
import vanousova.application.web.ZakazniksCollectionThymeleafController;
import vanousova.application.web.ZakazniksItemThymeleafController;
import vanousova.application.web.ZakazniksItemThymeleafLinkFactory;
import vanousova.model.Platce;
import vanousova.model.Zakaznik;
import vanousova.service.api.ZakaznikService;

privileged aspect ZakazniksItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: ZakazniksItemThymeleafController: @Controller;
    
    declare @type: ZakazniksItemThymeleafController: @RequestMapping(value = "/zakazniks/{zakaznik}", name = "ZakazniksItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource ZakazniksItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ZakazniksItemThymeleafController> ZakazniksItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ZakazniksCollectionThymeleafController> ZakazniksItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param zakaznikService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public ZakazniksItemThymeleafController.new(ZakaznikService zakaznikService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setZakaznikService(zakaznikService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(ZakazniksItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(ZakazniksCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource ZakazniksItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void ZakazniksItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ZakazniksItemThymeleafController> ZakazniksItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void ZakazniksItemThymeleafController.setItemLink(MethodLinkBuilderFactory<ZakazniksItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ZakazniksCollectionThymeleafController> ZakazniksItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void ZakazniksItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<ZakazniksCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Zakaznik
     */
    @ModelAttribute
    public Zakaznik ZakazniksItemThymeleafController.getZakaznik(@PathVariable("zakaznik") Long id, Locale locale, HttpMethod method) {
        Zakaznik zakaznik = null;
        if (HttpMethod.PUT.equals(method)) {
            zakaznik = zakaznikService.findOneForUpdate(id);
        } else {
            zakaznik = zakaznikService.findOne(id);
        }
        
        if (zakaznik == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Zakaznik", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return zakaznik;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param zakaznik
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView ZakazniksItemThymeleafController.show(@ModelAttribute Zakaznik zakaznik, Model model) {
        model.addAttribute("zakaznik", zakaznik);
        return new ModelAndView("zakazniks/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param zakaznik
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView ZakazniksItemThymeleafController.showInline(@ModelAttribute Zakaznik zakaznik, Model model) {
        model.addAttribute("zakaznik", zakaznik);
        return new ModelAndView("zakazniks/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param dataBinder
     */
    @InitBinder("zakaznik")
    public void ZakazniksItemThymeleafController.initZakaznikBinder(WebDataBinder dataBinder) {
        dataBinder.setDisallowedFields("id");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ZakazniksItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ZakazniksItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
        model.addAttribute("platce_DPH", Arrays.asList(Platce.values()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param zakaznik
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView ZakazniksItemThymeleafController.editForm(@ModelAttribute Zakaznik zakaznik, Model model) {
        populateForm(model);
        
        model.addAttribute("zakaznik", zakaznik);
        return new ModelAndView("zakazniks/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param zakaznik
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView ZakazniksItemThymeleafController.update(@Valid @ModelAttribute Zakaznik zakaznik, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            
            return new ModelAndView("zakazniks/edit");
        }
        // Concurrency control
        Zakaznik existingZakaznik = getZakaznikService().findOne(zakaznik.getId());
        if(zakaznik.getVersion() != existingZakaznik.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            model.addAttribute("zakaznik", zakaznik);
            model.addAttribute("concurrency", true);
            return new ModelAndView("zakazniks/edit");
        } else if(zakaznik.getVersion() != existingZakaznik.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            model.addAttribute("zakaznik", existingZakaznik);
            model.addAttribute("concurrency", false);
            return new ModelAndView("zakazniks/edit");
        } else if(zakaznik.getVersion() != existingZakaznik.getVersion() && "apply".equals(concurrencyControl)){
            // Update the version field to be able to override the existing values
            zakaznik.setVersion(existingZakaznik.getVersion());
        }
        Zakaznik savedZakaznik = getZakaznikService().save(zakaznik);
        UriComponents showURI = getItemLink().to(ZakazniksItemThymeleafLinkFactory.SHOW).with("zakaznik", savedZakaznik.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param zakaznik
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ZakazniksItemThymeleafController.delete(@ModelAttribute Zakaznik zakaznik) {
        getZakaznikService().delete(zakaznik);
        return ResponseEntity.ok().build();
    }
    
}
