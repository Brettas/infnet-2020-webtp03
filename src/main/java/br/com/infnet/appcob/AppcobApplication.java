package br.com.infnet.appcob;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableFeignClients
public class AppcobApplication {

	public static void main(String[] args) {
		SpringApplication.run(AppcobApplication.class, args);
	}

}
