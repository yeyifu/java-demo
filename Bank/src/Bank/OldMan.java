package Bank;

public class OldMan extends Person {
	public OldMan() {}
	public OldMan(String name) {
		this.name = name;
	}
	
	//叫一个号码
	public void CallNumber() {
		System.out.println("老年人叫号码");
	}
	
	//窗口办理
	public void transact() {
		System.out.println("到窗口，拿存折 取钱");
	}
	
	//办理完毕离开
	public void leave() {
		System.out.println("办理完毕，离开");
	}
	
}
