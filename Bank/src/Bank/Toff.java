package Bank;

public class Toff extends Person {
	
	public Toff() {};
	public Toff(String name) {
		this.name = name;
	}
	//��һ������
	public void CallNumber() {
		System.out.println("�������Ŷӽк��룬ֱ��VIP����");
	}
		
	//���ڰ���
	public void transact() {
		System.out.println("һ�������ڿ���ȡ1000W");
	}
		
	//��������뿪
	public void leave() {
		System.out.println("������ϣ���Ǯ�뿪");
	}
}
