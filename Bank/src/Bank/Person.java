package Bank;

public abstract class Person {
	
	protected String name;
	public String getName() {
		return this.name;
	}
	//叫一个号码
	public abstract void CallNumber();
		
	//窗口办理
	public abstract void transact();
		
	//办理完毕离开
	public abstract void leave();
}
