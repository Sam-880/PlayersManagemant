public class ConstructorDemo {
    class class1{
        Integer a,b;
        public void accept(Integer i,Integer j){
            a=i;
            b=j;
        } 
        public void show(){
            System.debug('A ==>'+a+', B ==>'+b);
        }
    }
    class class2{
          Integer a,b;
        class2(Integer i,Integer j){
            a=i;
            b=j;
        } 
        public void show(){
            System.debug('A ==>'+a+', B ==>'+b);
        }
    }
    
    Public static void run(){
        class1 obj1class1 = new class1();
        obj1class1.accept(10,20);
        obj1class1.show();
        
        class1 obj2class1 = new class1();// user forget to call accept method()        
        obj2class1.show();
        
        class2 obj1class2 = new class2(100,200); // by creating the constructor no need create saperate method        
        obj1class2.show();
    }
    
}