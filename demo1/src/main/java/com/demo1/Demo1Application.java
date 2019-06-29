package com.demo1;

import com.codingapi.txlcn.tc.config.EnableDistributedTransaction;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableEurekaClient
@EnableFeignClients(basePackages = "com.myinterface")
@EnableDiscoveryClient
@EnableDistributedTransaction
public class Demo1Application {
    public static void main(String[] args) {
        SpringApplication.run(Demo1Application.class,args);
    }
}
