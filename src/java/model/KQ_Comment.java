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
public class KQ_Comment {
    public String MADT_BL;
    public int KQEXTRACT_BL;

    public KQ_Comment(String MADT_BL, int KQEXTRACT_BL) {
        this.MADT_BL = MADT_BL;
        this.KQEXTRACT_BL = KQEXTRACT_BL;
    }

    public String getMADT_BL() {
        return MADT_BL;
    }

    public void setMADT_BL(String MADT_BL) {
        this.MADT_BL = MADT_BL;
    }

    public int getKQEXTRACT_BL() {
        return KQEXTRACT_BL;
    }

    public void setKQEXTRACT_BL(int KQEXTRACT_BL) {
        this.KQEXTRACT_BL = KQEXTRACT_BL;
    }
    
    
}
