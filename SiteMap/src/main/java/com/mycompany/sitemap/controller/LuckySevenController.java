/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.sitemap.controller;

import java.util.Map;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Andrew Cross alias Michael Saltire
 */
@Controller
public class LuckySevenController {

    @RequestMapping(value ="/luckySeven", method = RequestMethod.GET)
    public String displayLuckySeven() {
        return "luckySeven";
    }

    @RequestMapping(value = "/lsresponse", method = RequestMethod.POST)
    public String displayTipCalcResponse(HttpServletRequest request, Map<String, Object> model) {

        String betString = request.getParameter("bet");

        int bet = Integer.parseInt(betString);

        Random r = new Random();
        int bankRoll = bet;
        int die1, die2, bankMax = 0, count, countMax = 0;

        count = 0;
        countMax = 0;

        while (bankRoll > 0) {
            count++;

            die1 = r.nextInt(6) + 1;
            die2 = r.nextInt(6) + 1;

            if (die1 + die2 == 7) {
                bankRoll += 4;
            } else {
                bankRoll -= 1;
            }

            if (bankRoll > bankMax) {
                bankMax = bankRoll;
                countMax = count;
            }

        }
        
        model.put("bankRoll", bankRoll);
        model.put("bankMax", bankMax);
        model.put("countMax", countMax);
        model.put("count", count);
        
        return "lsresponse";
        
    }
}
