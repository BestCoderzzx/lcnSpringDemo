package com.demo2.mapper;


import entity.Order;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface OrderMapper {

    @Select("select * from `order` where orderid = #{orderid}")
    public Order selectById(@Param("orderid") int orderid);

    @Insert("insert into `order`(detail) values(#{detail})")
    void insert(Order order);
}
