package com.kitri.hello1;

public class HelloMain {
	
	
	public static void main(String[] args) {
//		HelloServiceKor helloServiceKor = new HelloServiceKor();
//		String msg = helloServiceKor.helloKor("이소담");
		
		HelloServiceEng helloServiceEng = new HelloServiceEng();
		String msg = helloServiceEng.helloEng("이소담");
		
		System.out.println(msg);
	}
}
