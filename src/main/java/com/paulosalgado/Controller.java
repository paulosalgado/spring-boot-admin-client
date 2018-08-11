package com.paulosalgado;

import java.net.InetAddress;
import java.net.UnknownHostException;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
	
    @GetMapping("/hello")
    public String hello() {
        return "Hello from Admin Client! I'm running on " + getMachineInfo();
    }
    
    private String getMachineInfo() {
		try {
			InetAddress inetAddress = InetAddress.getLocalHost();
			return inetAddress.getHostAddress() + " / " + inetAddress.getHostName();
		} catch (UnknownHostException e) {
			return "#error";
		}
    }
    
}
