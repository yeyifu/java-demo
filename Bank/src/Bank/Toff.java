package Bank;

public class Toff extends Person {
	
	public Toff() {};
	public Toff(String name) {
		this.name = name;
	}
	//叫一个号码
	public void CallNumber() {
		System.out.println("土豪不排队叫号码，直接VIP窗口");
	}
		
	//窗口办理
	public void transact() {
		System.out.println("一张限量黑卡，取1000W");
	}
		
	//办理完毕离开
	public void leave() {
		System.out.println("办理完毕，提钱离开");
	}
}
