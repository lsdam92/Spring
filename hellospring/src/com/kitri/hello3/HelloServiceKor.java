package com.kitri.hello3;

public class HelloServiceKor implements HelloService{

	private HelloDao helloDao;
//DI방식 2가지
	//1 constructor 생성자이용
	public HelloServiceKor(HelloDao helloDao) {
		this.helloDao = helloDao;
	}
	//2 setter
//	public void setHelloDao(HelloDao helloDao) {
//		this.helloDao = helloDao;
//	}

//	public HelloServiceKor() {
//		System.out.println("2.HelloServiceKor 생성자 호출!");
//	}
	
	public String hello(String name) {
		return name + "님 안녕하세요!!\n" + helloDao.getGreeting();
	}
	
}
