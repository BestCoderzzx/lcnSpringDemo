package com.demo1.service;


import com.demo1.entity.Item;

public interface ItemService {

    public Item selectItemById(int goodid);

    void insertData(String ex);
}
