package Bank;

public abstract class Person {
	
	protected String name;
	public String getName() {
		return this.name;
	}
	//��һ������
	public abstract void CallNumber();
		
	//���ڰ���
	public abstract void transact();
		
	//��������뿪
	public abstract void leave();
}
