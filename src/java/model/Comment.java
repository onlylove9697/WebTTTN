/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author YuuSachi
 */
public class Comment {
    public String MADT_BL ;
    public String EMAIL_SDT_BL;
    public String TENKH_BL;
    public String CMT_BL ;
    public int KQEXTRACT_BL;

    public Comment(){}

    public Comment(String MADT_BL, String EMAIL_SDT_BL, String TENKH_BL, String CMT_BL, int KQEXTRACT_BL) {
        this.MADT_BL = MADT_BL;
        this.EMAIL_SDT_BL = EMAIL_SDT_BL;
        this.TENKH_BL = TENKH_BL;
        this.CMT_BL = CMT_BL;
        this.KQEXTRACT_BL = KQEXTRACT_BL;
    }

    public String getMADT_BL() {
        return MADT_BL;
    }

    public void setMADT_BL(String MADT_BL) {
        this.MADT_BL = MADT_BL;
    }

    public String getEMAIL_SDT_BL() {
        return EMAIL_SDT_BL;
    }

    public void setEMAIL_SDT_BL(String EMAIL_SDT_BL) {
        this.EMAIL_SDT_BL = EMAIL_SDT_BL;
    }

    public String getTENKH_BL() {
        return TENKH_BL;
    }

    public void setTENKH_BL(String TENKH_BL) {
        this.TENKH_BL = TENKH_BL;
    }

    public String getCMT_BL() {
        return CMT_BL;
    }

    public void setCMT_BL(String CMT_BL) {
        this.CMT_BL = CMT_BL;
    }

    public int getKQEXTRACT_BL() {
        return KQEXTRACT_BL;
    }

    public void setKQEXTRACT_BL(int KQEXTRACT_BL) {
        this.KQEXTRACT_BL = KQEXTRACT_BL;
    }

    
}
