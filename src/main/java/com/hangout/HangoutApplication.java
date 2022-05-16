package com.hangout;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication
public class HangoutApplication implements WebMvcConfigurer {

	public static void main(String[] args) {
		SpringApplication.run(HangoutApplication.class, args);
	}

	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		System.out.println("addViewControllers");
		registry.addViewController("/hangout").setViewName("hangout");
	}

}
