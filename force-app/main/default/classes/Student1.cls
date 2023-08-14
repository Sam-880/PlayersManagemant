public class Student1 {
    public static void run(){
        Studemt stud1 = new Studemt(101,'Amit Kumar', new Decimal[]{ 10,20,30,20});
        Studemt stud2 = new Studemt(102,'Nikhil Kumar', new Decimal[]{ 50,60,10,10});
        Studemt stud3 = new Studemt(103,'Shripal Kumar', new Decimal[]{ 110,110,180,140});
        
        //stud1.admit('101','Amit Kumar', new Decimal[]{ 10,20,30,40});
        //stud2.admit('102','Nikhil Kumar', new Decimal[]{ 50,60,70,80});
        //stud3.admit('103','Shripal Kumar', new Decimal[]{ 90,110,100,140});
        
        stud1.showResult();
        stud2.showResult();
        stud3.showResult();
        // this will throw System.NullPointerException: Attempt to de-reference a null object bec we didnot define space for Arrey
        // or user might forget to define the method
        // So solution is create Constructor insted of method
    }
}