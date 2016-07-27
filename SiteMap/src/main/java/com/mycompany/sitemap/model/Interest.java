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
public class Interest {

    private double rate;
    private double start;
    private double yearStart;
    private double trueStart;
    private double finalOut;
    private double interest;
    private int years;
    private ArrayList<String> Als = new ArrayList<>();

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    public double getStart() {
        return start;
    }

    public void setStart(double start) {
        this.start = start;
    }

    public double getYearStart() {
        return yearStart;
    }

    public void setYearStart(double yearStart) {
        this.yearStart = yearStart;
    }

    public double getTrueStart() {
        return trueStart;
    }

    public void setTrueStart(double trueStart) {
        this.trueStart = trueStart;
    }

    public double getFinalOut() {
        return finalOut;
    }

    public void setFinalOut(double finalOut) {
        this.finalOut = finalOut;
    }

    public double getInterest() {
        return interest;
    }

    public void setInterest(double interest) {
        this.interest = interest;
    }

    public int getYears() {
        return years;
    }

    public void setYears(int years) {
        this.years = years;
    }

    public ArrayList<String> getAls() {
        return Als;
    }

    public void setAls(ArrayList<String> Als) {
        this.Als = Als;
    }
}
