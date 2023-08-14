public class student2 {
 Integer admissionNo;
    string Name;
    Decimal[] marks;
    Decimal total,percentage;
    string division;
    
   /* Public void admit(integer admNo,string Nm,Decimal []mrks){
        admissionNo=admNo;
        Name=Nm;
        marks=mrks;
        calculate();
    }
*/
    
    Public student2(Integer admNo,string Nm,Decimal[] mrks){
        admissionNo=admNo;
        Name=Nm;
        marks=mrks;
        calculate();
    }
    Private void calculate(){
        total=0;
        for(Decimal mark :marks){
            total+=mark;
        }
        percentage = total/(marks.size());
        if(percentage >= 60){
            division = 'I Devision';
        }
         else if(percentage >= 50){
            division = 'II Devision';
        }
        else if(percentage >= 40){
            division = 'III Devision';
        }
        else{
            division = 'Fail';
        }
    }
    public void showResult(){
        System.debug(' ======='+Name+', Result ==>');
        for(Integer Index=0; Index<marks.size(); Index++){
              System.debug('Subject :'+(Index+1)+' : '+marks[Index]);
            //System.debug('total' : + total);
            
        }
        System.debug('division==> ' +division);
    }
}