/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.sitemap.controller;

import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
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
public class FactorizorController {
        
    @RequestMapping(value="/factorizor", method = RequestMethod.GET)
    public String displayFactorizor(){
        return "factorizor";
    }
    
    @RequestMapping(value="/factresponse", method = RequestMethod.POST)
    public String displayFactorizorResults(HttpServletRequest request, Map<String, Object> model){
         
        String factorString = request.getParameter("factor");
        
        int factor = Integer.parseInt(factorString);
        int perfect = 0, prime;
        boolean isPrime = false, isPerfect = false;

        ArrayList<Integer> al = new ArrayList<>();
       // List factorList = new AbstractSequentialList();

        for (int i = 1; i < factor; i++) {
            if (factor % i == 0) {
                al.add(i);
                perfect = perfect + i;
            }
            
        }
        if (factor == perfect) {
            isPerfect = true;
        }
        
        if (perfect == 1) {
            isPrime = true;
        }
        
        String list = Arrays.toString(al.toArray()).replace("[", "").replace("]", "");

        model.put("isPerfect", isPerfect);
        model.put("isPrime", isPrime);
        model.put("al", list);
        
        return "factresponse";
    }
        
        
}
