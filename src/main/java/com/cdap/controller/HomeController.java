package com.cdap.controller;

import jpcap.JpcapCaptor;
import jpcap.NetworkInterface;
import jpcap.NetworkInterfaceAddress;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Heshani on 7/23/2016.
 */
@Controller
public class HomeController {

    @RequestMapping(value = "/")
    public String  home(){
        return "mainTemplate";
    }

    @RequestMapping(value="/getNetworkInterfaces", method= RequestMethod.POST)
    public String getNetworkInterfaces(ModelMap model) {

        NetworkInterface[] networkDevices = JpcapCaptor.getDeviceList();

        List<Map<String , String>> devices  = new ArrayList<Map<String,String>>();

        for (int i = 0; i < networkDevices.length; i++) {
            Map<String, String> deviceList = new HashMap<String, String>();
            deviceList.put("name", networkDevices[i].name);
            deviceList.put("description", networkDevices[i].description);
            deviceList.put("datalink_name", networkDevices[i].datalink_name);
            deviceList.put("datalink_description", networkDevices[i].datalink_description);

            devices.add(i, deviceList);
        }

        model.addAttribute("devices", devices);

        return "networkDevices";
    }

}
