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
public class Converter {

    private double userVal;
    private double miles;
    private double kilometers;
    private double fahrenheit;
    private double kelvin;
    private double days;
    private double seconds;
    private String unitCat;
    private String unitType;
    private String result;

    public double getUserVal() {
        return userVal;
    }

    public void setUserVal(double userVal) {
        this.userVal = userVal;
    }

    public double getMiles() {
        return miles;
    }

    public void setMiles(double miles) {
        this.miles = miles;
    }

    public double getKilometers() {
        return kilometers;
    }

    public void setKilometers(double kilometers) {
        this.kilometers = kilometers;
    }

    public double getFahrenheit() {
        return fahrenheit;
    }

    public void setFahrenheit(double fahrenheit) {
        this.fahrenheit = fahrenheit;
    }

    public double getKelvin() {
        return kelvin;
    }

    public void setKelvin(double kelvin) {
        this.kelvin = kelvin;
    }

    public double getDays() {
        return days;
    }

    public void setDays(double days) {
        this.days = days;
    }

    public double getSeconds() {
        return seconds;
    }

    public void setSeconds(double seconds) {
        this.seconds = seconds;
    }

    public String getUnitCat() {
        return unitCat;
    }

    public void setUnitCat(String unitCat) {
        this.unitCat = unitCat;
    }

    public String getUnitType() {
        return unitType;
    }

    public void setUnitType(String unitType) {
        this.unitType = unitType;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }
}
