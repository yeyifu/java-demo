package Bank;

public class Test {
	public static void main(String[] args) {
		Bank bank = new Bank();
		Person p1 = new OldMan("����");
		bank.profession(p1);//���л�ӭ��������ҵ��
		System.out.println("---------------");
		
		Person p2 = new YoungMan("������");
		bank.profession(p2);
		System.out.println("---------------");
		
		Person p3 = new Toff("����");
		bank.profession(p3);
	}
}
