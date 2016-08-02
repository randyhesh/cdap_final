package com.cdap.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Heshani on 8/2/2016.
 */
@Controller
public class PacketController {

    @RequestMapping(value = "/capturePackets", method = RequestMethod.POST)
    private String capturePackets(@RequestParam("device") String deviceValue, Model model) {

        model.addAttribute("selectedDevice", deviceValue);
        return "networkTraffic";
    }
}
