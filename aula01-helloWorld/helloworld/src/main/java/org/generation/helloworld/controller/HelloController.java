package org.generation.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

//indica que essa é uma classe controladora
@RestController

//indica um endpoint para nossa aplicação
@RequestMapping("/hello") 
public class HelloController {
	
	@GetMapping
	public String helloWorld() {
		return "Olá mundo!";
	}
	
	@GetMapping("/bsm")
	public String bsm() {
		return "Orientação ao futuro";
	}

}
