package Bank;

public class Bank {
	
	//���ţ�����ҵ��
	public void profession(Person person) {
			System.out.println(person.getName()+"�ͻ�������������");
			person.CallNumber();
			person.transact();
			person.leave();
	}
	
	
}
