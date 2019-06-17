package com.kitri.hello4;

public class HelloServiceEng implements HelloService{
	
	public HelloServiceEng () {
		System.out.println("2.HelloServiceEng 호출!");
	}
	public String hello(String name) { 
		return "Hello" + name + "!!";
	}
}
