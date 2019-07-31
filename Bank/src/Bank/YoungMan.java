package Bank;

public class YoungMan extends Person{
	public YoungMan() {}
	public YoungMan(String name) {
		this.name = name;
	}
	
	public void CallNumber() {
		System.out.println("年轻人自己按按钮，拿到号码小票");
	}
	
	public void transact() {
		System.out.println("去窗口汇款");
	}
	
	public void leave() {
		System.out.println("办完后迅速离开");
	}
	
}
