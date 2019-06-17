package com.kitri.hello3;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class HelloMain {
	
	
	public static void main(String[] args) {
//		HelloService helloService = new HelloServiceKor();
//		HelloService helloService = new HelloServiceEng();
		
//		spring 2.x
//		Resource resource= new ClassPathResource("com/kitri/hello3/applicationContext.xml");
//		BeanFactory factory = new XmlBeanFactory(resource);
//		HelloService helloService = (HelloService) factory.getBean("hs");
		System.out.println("1.프로그램시작!");
		ApplicationContext context = new ClassPathXmlApplicationContext("com/kitri/hello3/applicationContext.xml");
		System.out.println("3.설정파일 읽음!");
		HelloService helloService = context.getBean("hs", HelloService.class);
		System.out.println("4.service 얻어옴!");
		String msg = helloService.hello("이소담");
		
		System.out.println(msg);
	}
}
