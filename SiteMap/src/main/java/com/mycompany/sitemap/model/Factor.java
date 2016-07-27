/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.sitemap.model;

import java.util.ArrayList;

/**
 *
 * @author Andrew Cross alias Michael Saltire
 */
public class Factor {

    private int factor, perfect = 0, prime;
    private ArrayList<Integer> AL = new ArrayList<>();
    private boolean isPrime;
    private boolean isPerfect;

    public int getFactor() {
        return factor;
    }

    public void setFactor(int factor) {
        this.factor = factor;
    }

    public int getPerfect() {
        return perfect;
    }

    public void setPerfect(int perfect) {
        this.perfect = perfect;
    }

    public int getPrime() {
        return prime;
    }

    public void setPrime(int prime) {
        this.prime = prime;
    }

    public ArrayList<Integer> getAL() {
        return AL;
    }

    public void setAL(ArrayList<Integer> AL) {
        this.AL = AL;
    }

    public boolean isIsPrime() {
        return isPrime;
    }

    public void setIsPrime(boolean isPrime) {
        this.isPrime = isPrime;
    }

    public boolean isIsPerfect() {
        return isPerfect;
    }

    public void setIsPerfect(boolean isPerfect) {
        this.isPerfect = isPerfect;
    }

}
