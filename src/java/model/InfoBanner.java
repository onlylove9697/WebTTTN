/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author onlylove
 */
public class InfoBanner {
    public String ID_BANNER;
    public  String HINH_BANNER;

    public InfoBanner(String ID_BANNER, String HINH_BANNER) {
        this.ID_BANNER = ID_BANNER;
        this.HINH_BANNER = HINH_BANNER;
    }

    public String getID_BANNER() {
        return ID_BANNER;
    }

    public void setID_BANNER(String ID_BANNER) {
        this.ID_BANNER = ID_BANNER;
    }

    public String getHINH_BANNER() {
        return HINH_BANNER;
    }

    public void setHINH_BANNER(String HINH_BANNER) {
        this.HINH_BANNER = HINH_BANNER;
    }
    
    
}
