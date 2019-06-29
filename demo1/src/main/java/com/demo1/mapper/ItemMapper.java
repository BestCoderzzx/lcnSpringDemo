package com.demo1.mapper;

import com.demo1.entity.Item;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface ItemMapper {

    @Select("select * from item where goodid = #{goodid}")
    public Item selectById(@Param("goodid") int goodid);

    @Insert("insert into item(name) values(#{name})")
    void insert(Item item);
}
