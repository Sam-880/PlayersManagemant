public class SampleFutureMethod {
    @future()
    Public static void sampleMethod(){
        System.debug('Future method Call');
        SampleFutureMethod1 a = new SampleFutureMethod1();
       ID jobID = System.enqueueJob(a);
         SampleFutureMethod1 a1 = new SampleFutureMethod1();
       ID jobID2 = System.enqueueJob(a1);
    }
}