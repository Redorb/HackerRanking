import java.util.Queue;
import java.util.LinkedList;

class Node {
    int data;
    Node left;
    Node right;
}

class TreeStuff {
	Queue<Node> nodeQueue;
	void LevelOrder(Node root) {
	    nodeQueue = new LinkedList<Node>();
	    nodeQueue.add(root);
	    while(nodeQueue.peek() != null) {
	        root = nodeQueue.remove();
	        if(root.left != null) {
	            nodeQueue.add(root.left);
	        }
	        if(root.right != null) {
	            nodeQueue.add(root.right);
	        }
	        System.out.print(root.data + " ");
	    }
	}

	void Postorder(Node root) {
	    if (root.left != null) {
	       this.Postorder(root.left); 
	    }
	    if (root.right != null) {
	        this.Postorder(root.right);
	    }
	    System.out.print(root.data + " ");
    
	}

	void Inorder(Node root) {
	    if (root.left != null) {
	       this.Inorder(root.left); 
	    }
	    System.out.print(root.data + " ");
	    if (root.right != null) {
	        this.Inorder(root.right);
	    } 
	}

	void Preorder(Node root) {
	    System.out.print(root.data + " ");
	    if (root.left != null) {
	       this.Preorder(root.left); 
	    }
	    if (root.right != null) {
	        this.Preorder(root.right);
	    }
	}
}