package com.myinterface;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(value = "demo2")
public interface TestInterface {

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String get();

    @RequestMapping(value = "/insertOrder", method = RequestMethod.GET)
    void insert(@RequestParam("ordername") String ordername,@RequestParam("ex") String ex);
}
