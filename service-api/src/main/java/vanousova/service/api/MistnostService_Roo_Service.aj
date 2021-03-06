// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package vanousova.service.api;

import io.springlets.data.domain.GlobalSearch;
import io.springlets.format.EntityResolver;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import vanousova.model.Mistnost;
import vanousova.service.api.MistnostService;

privileged aspect MistnostService_Roo_Service {
    
    declare parents: MistnostService extends EntityResolver<Mistnost, Long>;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id_mist
     * @return Mistnost
     */
    public abstract Mistnost MistnostService.findOne(Long id_mist);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param mistnost
     */
    public abstract void MistnostService.delete(Mistnost mistnost);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<Mistnost> MistnostService.save(Iterable<Mistnost> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void MistnostService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Mistnost
     */
    public abstract Mistnost MistnostService.save(Mistnost entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id_mist
     * @return Mistnost
     */
    public abstract Mistnost MistnostService.findOneForUpdate(Long id_mist);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<Mistnost> MistnostService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<Mistnost> MistnostService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long MistnostService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Mistnost> MistnostService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Mistnost> MistnostService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param nazev
     * @param pageable
     * @return Page
     */
    public abstract Page<Mistnost> MistnostService.findByNazev(String nazev, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param nazev
     * @return Long
     */
    public abstract long MistnostService.countByNazev(String nazev);
    
}
