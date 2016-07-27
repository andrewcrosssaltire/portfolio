/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.sitemap.controller;

import com.mycompany.sitemap.model.Tip;
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
public class TipCalcController {
            
   
    
    @RequestMapping(value="/tipCalc", method = RequestMethod.GET)
    public String displayTipCalc(){
        return "tipCalc";
    }
    
    @RequestMapping(value="/tcresponse", method = RequestMethod.POST)
    public String displayTipCalcResponse(HttpServletRequest request, Map<String, Object> model){
        
        String amountString = request.getParameter("amount");
        String tipString = request.getParameter("tip");
        
        double tipOut, total;
        double amount = Double.parseDouble(amountString);
        double tip = Double.parseDouble(tipString);
           
        tipOut = tip * .01 * amount;
        total = tipOut + amount;
               
        model.put("tip", tipOut);
        model.put("totalAmount", total);
        
        return "tcresponse";
    }
}
