package com.demo2.service;


import entity.Order;

public interface OrderService {

    public Order selectOrderById(int orderid);


    void insertOrder(Order order,String ex);
}
