package Bank;

public class YoungMan extends Person{
	public YoungMan() {}
	public YoungMan(String name) {
		this.name = name;
	}
	
	public void CallNumber() {
		System.out.println("�������Լ�����ť���õ�����СƱ");
	}
	
	public void transact() {
		System.out.println("ȥ���ڻ��");
	}
	
	public void leave() {
		System.out.println("�����Ѹ���뿪");
	}
	
}
