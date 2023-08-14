import Account from '@salesforce/schema/Account';
import AccountNumber from '@salesforce/schema/Account.AccountNumber';
import BillingAddress from '@salesforce/schema/Account.BillingAddress';
import Name from '@salesforce/schema/Account.Name';
import Site from '@salesforce/schema/Account.Site';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { LightningElement } from 'lwc';

export default class DemoRecordEditForm extends LightningElement {
    objectName = Account;
    //fieldName = [Name, AccountNumber, Site, BillingAddress];
    successHAndler(event) {
        // to close window after record is inserted/updated automatically
        // use CloseActionScreenEvent
        console.log('onsuccess event recordEditForm' + event.detail.id);
        // this.dispatchEvent(new CloseActionScreenEvent());
        this.dispatchEvent(new ShowToastEvent({
            title: "Record Save",
            message: 'Record Save Successfully' + event.detail.id,
            variant: 'Success',
        }));
    }
}