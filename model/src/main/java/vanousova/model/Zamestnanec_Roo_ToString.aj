// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package vanousova.model;

import vanousova.model.Zamestnanec;

privileged aspect Zamestnanec_Roo_ToString {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Zamestnanec.toString() {
        return "Zamestnanec {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", jmeno='" + jmeno + '\'' + 
                ", prijmeni='" + prijmeni + '\'' + 
                ", login='" + login + '\'' + 
                ", hodinova_sazba='" + hodinova_sazba + '\'' + 
                ", ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE + '\'' + 
                ", ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE + '\'' + "}" + super.toString();
    }
    
}
