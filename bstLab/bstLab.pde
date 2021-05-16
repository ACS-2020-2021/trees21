import static java.lang.System.*;

void setup() {
  System.out.println("Hello world!");
  BinarySearchTree<Integer> tree = new BinarySearchTree<Integer>();

  tree.add(90);//1
  tree.add(100);
  tree.add(80);
  tree.add(70);
  tree.add(85);
  tree.add(98);
  tree.add(120);

  out.println("\nTree as a string  " + tree.toString());//16

  out.println("PRE ORDER");//2
  tree.preOrder();

  out.println("POST ORDER");//3
  // tree.postOrder();

  out.println("IN ORDER");//4
  tree.inOrder();

  out.println("REVERSE ORDER");//5
  // tree.revOrder();

  out.println("\n\nlevel order traversal.");//6
  tree.levelOrder();

  //out.println("\nNumber of nodes is " + tree.getNumNodes());//7
  // out.println("\nNumber of leaves is " + tree.getNumLeaves());//8
  //out.println("\nNumber of levels is " + tree.getNumLevels());//9
  // out.println("\nTree height is " + tree.getHeight());//10
  // out.println("\nTree width is " + tree.getWidth());//11
  // out.println("The smallest tree node " + tree.getSmallest());//12
  //out.println("The largest tree node " + tree.getLargest());//13

  out.println("\n\n\nBONUS SECTION");
  out.println(tree.search(100) ? "The tree contains 100!" : "The does not contain 100!");//14
  out.println(tree.search(114) ? "The tree contains 114!" : "The does not contain 114!");

  // out.println("\n\n\nTree before removing any nodes - using level order
  // traversal.");
  // tree.levelOrder();

  // tree.remove(90);//15
  // out.println("\nTree after removing 90.");
  // tree.levelOrder();

  // tree.remove(70);
  // out.println("\nTree after removing 70.");
  // tree.levelOrder();

  // tree.remove(85);
  // out.println("\nTree after removing 85.");
  // tree.levelOrder();

  // tree.remove(98);
  // out.println("\nTree after removing 98.");
  // tree.levelOrder();

  // tree.remove(80);
  // out.println("\nTree after removing 80.");
  // tree.levelOrder();

  // tree.remove(120);
  // out.println("\nTree after removing 120.");
  // tree.levelOrder();

  // tree.remove(100);
  // out.println("\nTree after removing 100.");
  // tree.levelOrder(); }
}
