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
public class TuCamXuc {
    public String TuCamXuc ;
    public Double TrongSo;
    public Boolean HatGiong;

    public TuCamXuc(String TuCamXuc, Double TrongSo, Boolean HatGiong) {
        this.TuCamXuc = TuCamXuc;
        this.TrongSo = TrongSo;
        this.HatGiong = HatGiong;
    }

    public String getTuCamXuc() {
        return TuCamXuc;
    }

    public void setTuCamXuc(String TuCamXuc) {
        this.TuCamXuc = TuCamXuc;
    }

    public Double getTrongSo() {
        return TrongSo;
    }

    public void setTrongSo(Double TrongSo) {
        this.TrongSo = TrongSo;
    }

    public Boolean getHatGiong() {
        return HatGiong;
    }

    public void setHatGiong(Boolean HatGiong) {
        this.HatGiong = HatGiong;
    }

    
    
    
}
