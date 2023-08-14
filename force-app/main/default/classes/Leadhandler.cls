public class Leadhandler {
    Public static void createLeadrecord(){
        List<Lead> lstLead = new List<Lead>();
        for(integer i=0; i<5; i++){
            Lead lds = new Lead();
            lds.FirstName = 'Samir'+i;
            lds.LastName = 'SFDC';
            lds.Title = 'Technical Lead';
            lds.Company = 'IBM Inc.';
            lds.Status = 'Open - Not Contacted';
            lds.Rating = 'Hot';
            lds.Industry = 'Manufacturing';
            lds.AnnualRevenue = 2500000;
            lds.Phone = '9900998877';
            lds.Fax = '7788990099';
            lds.Email = 'samirdhapke141@gmail.com';
            lds.LeadSource = 'Email';
            lds.City = 'Bangalore';
            lds.State = 'Karnataka';
            lds.Country = 'India';
            lstLead.add(lds);
        }
        if(!lstLead.isEmpty()){
            Insert lstLead;
          //  System.debug('Lead ID -->'+lstLead);
          MessagingUtility.SendEmailNotificationToLeads(lstLead);
        }
    }
}