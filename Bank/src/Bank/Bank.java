package Bank;

public class Bank {
	
	//开门，办理业务
	public void profession(Person person) {
			System.out.println(person.getName()+"客户进入银行啦！");
			person.CallNumber();
			person.transact();
			person.leave();
	}
	
	
}
