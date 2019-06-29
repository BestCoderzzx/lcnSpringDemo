package com.demo1.controller;

import com.demo1.entity.Item;
import com.demo1.service.ItemService;
import com.myinterface.TestInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {

    @Autowired
    private TestInterface testInterface;

    @Autowired
    private ItemService itemService;

    @RequestMapping("/index")
    @ResponseBody
    private String index(){
        String str = testInterface.get();
        return str;
    }

    @RequestMapping("/insert")
    @ResponseBody
    public String insertData(@RequestParam(required = false) String ex){
        itemService.insertData(ex);
        return "success";
    }
}
