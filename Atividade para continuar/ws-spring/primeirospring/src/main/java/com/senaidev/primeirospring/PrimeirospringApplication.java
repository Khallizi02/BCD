package com.senaidev.primeirospring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.senaidev.primeirospring.services.ApiService;

@SpringBootApplication
public class PrimeirospringApplication {

	public static void main(String[] args) {
		SpringApplication.run(PrimeirospringApplication.class, args);
	}
	
	ApiService apiservico = new ApiService;
	  
	  try {System.out.println(apiServico.getEndereco("47453142"));
		  
	  } catch (Exception e){
		  System.out.println(e.getMessage());
	  }

}
}
