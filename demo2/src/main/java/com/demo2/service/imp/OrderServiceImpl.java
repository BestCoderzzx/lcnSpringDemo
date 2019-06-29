package com.demo2.service.imp;

import com.codingapi.txlcn.tc.annotation.LcnTransaction;
import com.demo2.mapper.OrderMapper;
import com.demo2.service.OrderService;
import entity.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Override
    public Order selectOrderById(int orderid) {
        return orderMapper.selectById(orderid);
    }

    @Override
    @LcnTransaction
    @Transactional
    public void insertOrder(Order order,String ex) {
        System.out.println("demo2 start ===========");
        orderMapper.insert(order);
//        if(!com.alibaba.druid.util.StringUtils.isEmpty(ex)){
//            throw new RuntimeException("by exFlag");
//        }
        System.out.println("demo2 end ===========");
    }
}
