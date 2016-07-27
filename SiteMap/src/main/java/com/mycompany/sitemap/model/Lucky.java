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
public class Lucky {
    private int bet;
    private int bankMax;
    private int count;
    private int countMax;

    public int getBet() {
        return bet;
    }

    public void setBet(int bet) {
        this.bet = bet;
    }

    public int getBankMax() {
        return bankMax;
    }

    public void setBankMax(int bankMax) {
        this.bankMax = bankMax;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getCountMax() {
        return countMax;
    }

    public void setCountMax(int countMax) {
        this.countMax = countMax;
    }
}
