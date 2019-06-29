package com.demo2.controller;

import com.demo2.service.OrderService;
import entity.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {

    @Autowired
    private OrderService orderService;

    @RequestMapping("/index")
    @ResponseBody
    private String index(){
        Order item = orderService.selectOrderById(1);
        return item.toString();
    }

    @RequestMapping("/insertOrder")
    @ResponseBody
    private String insertOrder(String orderName,String ex){
        Order order = new Order();
        order.setDetail(orderName+" detail==" +" demo2 ex==="+ex);
        orderService.insertOrder(order,ex);
        return "order insert success";
    }

}
