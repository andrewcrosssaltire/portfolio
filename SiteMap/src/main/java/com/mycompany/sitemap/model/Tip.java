/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.sitemap.model;

/**
 *
 * @author Andrew Cross alias Michael Saltire
 */
public class Tip {
    private double amount;
    private double tip;
    private double total;
    private double tipOut;

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public double getTip() {
        return tip;
    }

    public void setTip(double tip) {
        this.tip = tip;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public double getTipOut() {
        return tipOut;
    }

    public void setTipOut(double tipOut) {
        this.tipOut = tipOut;
    }

}
