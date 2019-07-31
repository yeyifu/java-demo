package Bank;

public class Test {
	public static void main(String[] args) {
		Bank bank = new Bank();
		Person p1 = new OldMan("长者");
		bank.profession(p1);//银行欢迎进来办理业务
		System.out.println("---------------");
		
		Person p2 = new YoungMan("年轻人");
		bank.profession(p2);
		System.out.println("---------------");
		
		Person p3 = new Toff("土豪");
		bank.profession(p3);
	}
}
