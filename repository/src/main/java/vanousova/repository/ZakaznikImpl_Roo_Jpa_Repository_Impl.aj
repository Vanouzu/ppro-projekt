// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package vanousova.repository;

import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;
import vanousova.model.QZakaznik;
import vanousova.model.Zakaznik;
import vanousova.repository.ZakaznikCustom;
import vanousova.repository.ZakaznikImpl;

privileged aspect ZakaznikImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: ZakaznikImpl implements ZakaznikCustom;
    
    declare @type: ZakaznikImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ZakaznikImpl.NAZEV = "nazev";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ZakaznikImpl.LOGIN = "login";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ZakaznikImpl.PLATCE___DPH = "platce_DPH";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Zakaznik> ZakaznikImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QZakaznik zakaznik = QZakaznik.zakaznik;
        
        JPQLQuery<Zakaznik> query = from(zakaznik);
        
        Path<?>[] paths = new Path<?>[] {zakaznik.nazev,zakaznik.login,zakaznik.platce_DPH};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NAZEV, zakaznik.nazev)
			.map(LOGIN, zakaznik.login)
			.map(PLATCE___DPH, zakaznik.platce_DPH);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, zakaznik);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Zakaznik> ZakaznikImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QZakaznik zakaznik = QZakaznik.zakaznik;
        
        JPQLQuery<Zakaznik> query = from(zakaznik);
        
        Path<?>[] paths = new Path<?>[] {zakaznik.nazev,zakaznik.login,zakaznik.platce_DPH};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(zakaznik.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NAZEV, zakaznik.nazev)
			.map(LOGIN, zakaznik.login)
			.map(PLATCE___DPH, zakaznik.platce_DPH);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, zakaznik);
    }
    
}
