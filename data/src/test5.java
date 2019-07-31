public class test5{
	
	public static Node change(Node root) {
		//while(root.next != null) root = root.next;
//		Node p=root;
//		while(p.next != null) p=p.next;
//		
//		
//		return null;
		
		if(root.next == null) return root;
		return change(root.next);
	}
	
	public static void main(String[] args) {
		Node node1=new Node(1);
		Node node2=new Node(2);
		Node node3=new Node(3);
		Node node4=new Node(4);
		Node node5=new Node(5);
		Node node6=new Node(6);
		
		node1.next=node2;
		node2.next=node3;
		node3.next=node4;
		node4.next=node5;
		node5.next=node6;
		Node result = change(node1);
		System.out.println(result.value);
	}
	
}

class Node{
	int value;
	Node next;
	public Node(int value) {
		
	}
}
