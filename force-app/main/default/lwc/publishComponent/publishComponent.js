import { LightningElement, wire } from 'lwc';
import { publish, MessageContext } from 'lightning/messageService';
import sampleMessageChannel from '@salesforce/messageChannel/sampleMessageChannel__c';
export default class PublishComponent extends LightningElement {

    @wire(MessageContext)
    messageContext;

    dataToSend;
    changeHandler(event) {
        this.dataToSend = event.target.value;
    }

    publishhandler() {
        let message = {
            message: this.dataToSend
        };
        publish(this.messageContext, sampleMessageChannel, message);
    }
}