package com.demo1.service.imp;

import com.codingapi.txlcn.tc.annotation.LcnTransaction;
import com.demo1.entity.Item;
import com.demo1.mapper.ItemMapper;
import com.demo1.service.ItemService;
import com.myinterface.TestInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;


@Service
public class ItemServiceImpl implements ItemService {

    @Autowired
    private ItemMapper itemMapper;

    @Autowired
    private TestInterface testInterface;

    @Override
    public Item selectItemById(int goodid) {
        return itemMapper.selectById(goodid);
    }

    private RestTemplate restTemplate = new RestTemplate();;

    private static final String url ="http://localhost:8081/insertOrder/";

    @Override
    @LcnTransaction
    public void insertData(String ex) {
        Item item = new Item();
        item.setName("test Item Transactional");
        itemMapper.insert(item);
        testInterface.insert(item.getName()+" order",ex);
        if(!com.alibaba.druid.util.StringUtils.isEmpty(ex)){
            throw new RuntimeException("by exFlag");
        }
    }

}
