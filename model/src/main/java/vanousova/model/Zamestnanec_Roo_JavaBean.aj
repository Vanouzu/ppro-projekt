// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package vanousova.model;

import vanousova.model.Pozice;
import vanousova.model.Zamestnanec;

privileged aspect Zamestnanec_Roo_JavaBean {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long Zamestnanec.getId() {
        return this.id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     */
    public void Zamestnanec.setId(Long id) {
        this.id = id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public Integer Zamestnanec.getVersion() {
        return this.version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param version
     */
    public void Zamestnanec.setVersion(Integer version) {
        this.version = version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Zamestnanec.getJmeno() {
        return this.jmeno;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jmeno
     */
    public void Zamestnanec.setJmeno(String jmeno) {
        this.jmeno = jmeno;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Zamestnanec.getPrijmeni() {
        return this.prijmeni;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param prijmeni
     */
    public void Zamestnanec.setPrijmeni(String prijmeni) {
        this.prijmeni = prijmeni;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Zamestnanec.getLogin() {
        return this.login;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param login
     */
    public void Zamestnanec.setLogin(String login) {
        this.login = login;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public int Zamestnanec.getHodinova_sazba() {
        return this.hodinova_sazba;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param hodinova_sazba
     */
    public void Zamestnanec.setHodinova_sazba(int hodinova_sazba) {
        this.hodinova_sazba = hodinova_sazba;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Pozice
     */
    public Pozice Zamestnanec.getPozice() {
        return this.pozice;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pozice
     */
    public void Zamestnanec.setPozice(Pozice pozice) {
        this.pozice = pozice;
    }
    
}