/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.sitemap.controller;

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
public class FlooringCalcController {

    @RequestMapping(value = "/flooringCalc", method = RequestMethod.GET)
    public String displayFlooringCalc() {
        return "flooringCalc";
    }

    @RequestMapping(value = "/fcresponse", method = RequestMethod.POST)
    public String displayFlooringCalcResponse(HttpServletRequest request, Map<String, Object> model) {
        String lengthString = request.getParameter("length");
        String widthString = request.getParameter("width");
        String costString = request.getParameter("cost");
        
        Double area, length, width, total, cost, labor, grandTotal;
        
        length = Double.parseDouble(lengthString);
        width = Double.parseDouble(widthString);
        cost = Double.parseDouble(costString);

        area = length * width;
        total = area * cost;
        labor = area / 5 * 21.50;
        grandTotal = labor + total;
        
        model.put("area", area);
        model.put("total", total);
        model.put("labor", labor);
        model.put("grandTotal", grandTotal);
        
        return "fcresponse";
    }
}
