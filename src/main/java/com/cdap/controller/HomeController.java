package com.cdap.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Heshani on 7/23/2016.
 */
@Controller
public class HomeController {

    @RequestMapping(value = "/")
    public String  home(){
        return "mainTemplate";
    }
}
