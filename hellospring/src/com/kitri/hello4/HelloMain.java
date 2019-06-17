package com.kitri.hello4;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class HelloMain {
	
	
	public static void main(String[] args) {
		
		System.out.println("1.프로그램시작!");
		ApplicationContext context = new AnnotationConfigApplicationContext(HelloServiceFactory.class);
		System.out.println("3.설정파일 읽음!");
		HelloService helloService = context.getBean("helloservice", HelloService.class);
		System.out.println("4.service 얻어옴!");
		String msg = helloService.hello("이소담");
		
		System.out.println(msg);
	}
}
