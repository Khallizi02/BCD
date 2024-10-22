package com.senaidev.primeirospring.services;

import java.net.URI;
import java.net.http.HttpClient;

import com.senaidev.primeirospring.dto.DtoEndereco;

public class ApiService {
	
 DtoEndereco endereco = new DtoEndereco();
 
 public DtoEndereco getEndereco (String cep) {
	 try {
		 HttpClient client = HttpClient.newHttpClient();
		 HttpRequest request = HttpResquest.newBuilder().uri(URI.create("https://viacep.com.br/ws/"+cep+"/ison/")).build();
		 
	 } catch (Exception erro) {
		 System.out.println(erro.getMessage());
	 }
	 
	 return endereco;
 }
}
