package org.prajval.foodbox.com;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"org.prajval.foodbox.com"})
public class Application {

	
	public static void main(String[] args) {
		
		SpringApplication.run(Application.class, args);
	}

}
