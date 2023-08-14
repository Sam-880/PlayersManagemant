import { LightningElement, api, track } from 'lwc';
import Account from '@salesforce/schema/Account';
import AccountNumber from '@salesforce/schema/Account.AccountNumber';
import BillingAddress from '@salesforce/schema/Account.BillingAddress';
import Name from '@salesforce/schema/Account.Name';
import Site from '@salesforce/schema/Account.Site';
export default class RecordFormDemo extends LightningElement {

    // when we can all the operation through record form thn why we are using other redord edit and record view form. 
    // bec we are provideing field in a single property called fields 
    // and if we wana reder field conditionaly or apply css then we can not do this through recordForm
    // bec those we can do with reocrd edit and view form
    // Record Form - ReadOnly mode
    objectApiName = Account;
    @track fieldName = [Name, AccountNumber, Site, BillingAddress];
    @api recordId;


    // Record Form - View mode
    // objectApiName = Account;
    // @track fieldName = [Name, AccountNumber, Site, BillingAddress];
    // @api recordId;

    // Record Form - Edit mode
    // objectApiName = Account;
    // @track fieldName = [Name, AccountNumber, Site, BillingAddress];
    // @api recordId;

    //default Mode
    //objectApiName = Account;
}