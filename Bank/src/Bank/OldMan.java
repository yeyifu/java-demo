package Bank;

public class OldMan extends Person {
	public OldMan() {}
	public OldMan(String name) {
		this.name = name;
	}
	
	//��һ������
	public void CallNumber() {
		System.out.println("�����˽к���");
	}
	
	//���ڰ���
	public void transact() {
		System.out.println("�����ڣ��ô��� ȡǮ");
	}
	
	//��������뿪
	public void leave() {
		System.out.println("������ϣ��뿪");
	}
	
}
