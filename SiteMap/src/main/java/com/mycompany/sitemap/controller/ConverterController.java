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
public class ConverterController {
    
    @RequestMapping(value="/converter", method = RequestMethod.GET)
    public String displayConverter(){
        return "converter";
    }
    
    @RequestMapping (value="/csresponse", method = RequestMethod.POST)
    public String displayConverterResponse(HttpServletRequest request, Map<String, Object> model){
        
        String unitCatString = request.getParameter("unitCat");
        String unitTypeString = request.getParameter("unitType");
        String userValString = request.getParameter("userVal");
        
        if ("temperature".equals(unitCatString) && "Fahrenheit".equals(unitTypeString)) {
            double fahrenheit = Double.parseDouble(userValString);
            double kelvin = ((fahrenheit + 459.67) * 5 / 9);
            String result = (kelvin + " degrees Kelvin");
            model.put("result", result);
        }

        if ("temperature".equals(unitCatString) && "Kelvin".equals(unitTypeString)) {
            double kelvin = Double.parseDouble(userValString);
            double fahrenheit = (kelvin * 9 / 5 - 459.67);
            String result = (fahrenheit + " degrees Fahrenheit");
            model.put("result", result);
        }

        if ("miles/kilometers".equals(unitCatString) && "miles".equals(unitTypeString)) {
            double miles = Double.parseDouble(userValString);
            double kilometers = ((miles * 1.609344));
            String result =(kilometers + " kilometers");
            model.put("result", result);
        }

        if ("miles/kilometers".equals(unitCatString) && "kilometers".equals(unitTypeString)) {
            double kilometers = Double.parseDouble(userValString);
            double miles = ((kilometers * .62137));
            String result = (miles + " miles");
            model.put("result", result);
        }
        
        if ("time".equals(unitCatString) && "days".equals(unitTypeString)) {
            double days = Double.parseDouble(userValString);
            double seconds = ((days * 24 * 60 * 60));
            String result =(seconds + " seconds");
            model.put("result", result);
        }
        
        if ("time".equals(unitCatString) && "seconds".equals(unitTypeString)) {
            double seconds= Double.parseDouble(userValString);
            double days = (seconds * 0.00001157);
            String result = (days + " days");
            model.put("result", result);
        }
                
        return "csresponse";
    }
}
