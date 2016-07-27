/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.sitemap.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Andrew Cross alias Michael Saltire
 */
@Controller
public class InterestCalcController {

    @RequestMapping(value = "/interestCalc", method = RequestMethod.GET)
    public String displayInterestCalc() {
        return "interestCalc";
    }

    @RequestMapping(value = "/icresponse", method = RequestMethod.POST)
    public String displayTipCalcResponse(HttpServletRequest request, Map<String, Object> model) {

        String startString = request.getParameter("start");
        String rateString = request.getParameter("rate");
        String yearsString = request.getParameter("years");
        String compoundString = request.getParameter("compound");

        double rate = Double.parseDouble(rateString), iRate, start = Double.parseDouble(startString), yearStart = start, finalOut, interest;
        int years = Integer.parseInt(yearsString);
        int compound = Integer.parseInt(compoundString);
        String yearOut;
        String yearX, startS, finalOutS, interestS;
        ArrayList<String> als = new ArrayList<>();
        ArrayList<Object> al = new ArrayList<>();

        DecimalFormat df = new DecimalFormat("#0.00");
        //new DecmialFormat("#.##").format(dvlVar);
        iRate = rate / 1000;

        for (int i = 0; i < years; i++) {
            start = yearStart;
            finalOut = yearStart * Math.pow(1.0 + (iRate / compound), compound * years);

            interest = finalOut - start;

            yearStart = finalOut;

            yearX = ("") + (i + 1);
            startS = ("") + start;
            startS = df.format(start);
            finalOutS = ("") + finalOut;
            finalOutS = df.format(finalOut);
            interestS = ("") + interest;
            interestS = df.format(interest);

            als.add("Year: " + yearX + " Starting value: $" + startS + " Final value: $" + finalOutS + " Interest earned: $" + interestS);

        }

        model.put("al", al);
        model.put("als", als);

        return "icresponse";
    }

}
