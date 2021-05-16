import java.util.LinkedList;
import java.util.Queue;

public class BinarySearchTree<T extends Comparable<T>> {
  private TreeNode<T> root;
  public BinarySearchTree() {
    root=null;
  }
  public void add(T val) {
    root= add(val, root);
  }
  //private helper method
  private TreeNode<T> add(T val, TreeNode<T> tree) {//1...done!
    if (tree==null)
      tree=new TreeNode<T>(val);

    T treeValue=tree.getValue();
    int dirTest=val.compareTo(treeValue);
    if (dirTest<0)
      tree.setLeft(add(val, tree.getLeft()));
    if (dirTest>0)
      tree.setRight(add(val, tree.getRight()));
    return tree;
  }

  public void preOrder() {
    preOrder(root);
    
    
    
    
  }
  private void preOrder(TreeNode tree) {//2
  
  
  
  
  
  }

  public void postOrder() {
    postOrder(root);
  }
  private void postOrder(TreeNode tree) {//3
  
  
  
  
  
  }

  public void inOrder() {
    inOrder(root);
  }
  private void inOrder(TreeNode tree) {//4
  
  
  
  
  
  }


  public void revOrder() {
    revOrder(root);
  }
  public void revOrder(TreeNode tree) {//5
  
  
  
  
  
  }

  public void levelOrder() {
    levelOrder(root);
  }
  public void levelOrder(TreeNode tree) {//6
  
  
  
  
  
  
  
  }

  public int getNumNodes() {
    return getNumNodes(root);
  }
  private int getNumNodes(TreeNode tree) {//7
  
  
  
  

    return 0;
  }

  public int getNumLeaves() {
    return getNumLeaves(root);
  }
  private int getNumLeaves(TreeNode tree) {//8
  
  
  
  


    return 0;
  }
  public int getNumLevels() {
    return getNumLevels(root);
  }
  private int getNumLevels(TreeNode tree) {//9
  
  
  
  
  

    return 0;
  }
  public int getHeight() {//10...done!
    return getNumLevels(root)-1;
  }
  public int getWidth() {
    return getWidth(root);
  }
  private int getWidth(TreeNode tree) {//11...Use getNumLevels()





    return 0;
  }

  public Comparable getSmallest() {
    return getSmallest(root).getValue();
  }
  private TreeNode<T> getSmallest(TreeNode<T> tree) {//12...tree null? goLeft null? recurse





    return null;
  }

  public Comparable getLargest() {
    return getLargest(root).getValue();
  }

  private TreeNode getLargest(TreeNode tree) {//13
  
  




    return null;
  }

  public boolean search(T val) {
    return search(val, root);
  }
  private boolean search(T val, TreeNode<T> tree) {//14...done!
    if (tree != null) {
      int dirTest = val.compareTo(tree.getValue());
      if (dirTest == 0 ) 
        return true;
      else if (dirTest < 0)
        return search(val, tree.getLeft());
      else if (dirTest > 0)
        return search(val, tree.getRight());
    }
    return false;
  }

  public void remove(T val) {
    root = remove(val, root);
  }
  private TreeNode remove(T val, TreeNode<T> tree) {//15...done!
    if (tree == null) {
      return null;
    }
    T treeValue = tree.getValue();
    int dirTest = val.compareTo(treeValue);

    if (dirTest < 0)
      tree.setLeft(remove(val, tree.getLeft()));
    else if (dirTest > 0)
      tree.setRight(remove(val, tree.getRight()));//traverse until node is found, then:
    else {
      //case 1" leaf node
      if (tree.getRight()==null&&tree.getLeft()==null) {
        return null;//set point to null effectively removing the leaf node
        //case 2: one child
      } 
      if (tree.getLeft()==null) {
        return tree.getRight();
      } 
      if (tree.getRight()==null) {
        return tree.getLeft();
        //case 3: two children
      } else {
        TreeNode<T> successor=getSmallest(tree.getRight());//get smallest node
        tree.setValue(successor.getValue());//set smallest node value
        tree.setRight(remove(successor.getValue(), tree.getRight()));//set smallest node pointer
      }
    }
    return tree;
  }

  public String toString() {
    return toString(root);
  }
  private String toString(TreeNode tree) {//16...done!
    if (tree==null)
      return "";
    return toString(tree.getLeft())+" "+tree.getValue()+" "+toString(tree.getRight());
  }
}
