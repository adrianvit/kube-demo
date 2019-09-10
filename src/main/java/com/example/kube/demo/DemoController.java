package com.example.kube.demo;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/")
public class DemoController {


    @RequestMapping(method = RequestMethod.GET, value = "/get")
    public ResponseEntity<String> getMyRequestHeaders()
    {
        return ResponseEntity.ok("GET response");
    }

}