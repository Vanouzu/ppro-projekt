// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package vanousova.service.api;

import io.springlets.data.domain.GlobalSearch;
import io.springlets.format.EntityResolver;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import vanousova.model.Zakaznik;
import vanousova.service.api.ZakaznikService;

privileged aspect ZakaznikService_Roo_Service {
    
    declare parents: ZakaznikService extends EntityResolver<Zakaznik, Long>;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Zakaznik
     */
    public abstract Zakaznik ZakaznikService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param zakaznik
     */
    public abstract void ZakaznikService.delete(Zakaznik zakaznik);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<Zakaznik> ZakaznikService.save(Iterable<Zakaznik> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void ZakaznikService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Zakaznik
     */
    public abstract Zakaznik ZakaznikService.save(Zakaznik entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Zakaznik
     */
    public abstract Zakaznik ZakaznikService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<Zakaznik> ZakaznikService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<Zakaznik> ZakaznikService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long ZakaznikService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Zakaznik> ZakaznikService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Zakaznik> ZakaznikService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param nazev
     * @param pageable
     * @return Page
     */
    public abstract Page<Zakaznik> ZakaznikService.findByNazev(String nazev, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param nazev
     * @return Long
     */
    public abstract long ZakaznikService.countByNazev(String nazev);
    
}