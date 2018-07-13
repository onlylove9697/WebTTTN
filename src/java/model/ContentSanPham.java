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
public class ContentSanPham {
    public String MA_DT;
    public String TEN_DT;
    public  String HANG_DT;
    public  String HINHSP_DT;
    public int GIABAN_DG;
    public String TUNGAY_DG;
    public String DENNGAY_DG;

    public ContentSanPham(String MA_DT, String TEN_DT, String HANG_DT, String HINHSP_DT, int GIABAN_DG, String TUNGAY_DG, String DENNGAY_DG) {
        this.MA_DT = MA_DT;
        this.TEN_DT = TEN_DT;
        this.HANG_DT = HANG_DT;
        this.HINHSP_DT = HINHSP_DT;
        this.GIABAN_DG = GIABAN_DG;
        this.TUNGAY_DG = TUNGAY_DG;
        this.DENNGAY_DG = DENNGAY_DG;
    }
    public String getMA_DT() {
        return MA_DT;
    }

    public void setMA_DT(String MA_DT) {
        this.MA_DT = MA_DT;
    }

    public String getTEN_DT() {
        return TEN_DT;
    }

    public void setTEN_DT(String TEN_DT) {
        this.TEN_DT = TEN_DT;
    }

    public String getHANG_DT() {
        return HANG_DT;
    }

    public void setHANG_DT(String HANG_DT) {
        this.HANG_DT = HANG_DT;
    }

    public String getHINHSP_DT() {
        return HINHSP_DT;
    }

    public void setHINHSP_DT(String HINHSP_DT) {
        this.HINHSP_DT = HINHSP_DT;
    }

    public int getGIABAN_DG() {
        return GIABAN_DG;
    }

    public void setGIABAN_DG(int GIABAN_DG) {
        this.GIABAN_DG = GIABAN_DG;
    }

    public String getTUNGAY_DG() {
        return TUNGAY_DG;
    }

    public void setTUNGAY_DG(String TUNGAY_DG) {
        this.TUNGAY_DG = TUNGAY_DG;
    }

    public String getDENNGAY_DG() {
        return DENNGAY_DG;
    }

    public void setDENNGAY_DG(String DENNGAY_DG) {
        this.DENNGAY_DG = DENNGAY_DG;
    }
    
    
}
