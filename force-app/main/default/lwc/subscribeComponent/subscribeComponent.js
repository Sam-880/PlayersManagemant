import { LightningElement, wire } from 'lwc';
import { subscribe, MessageContext } from 'lightning/messageService';
import sampleMessageChannel from '@salesforce/messageChannel/sampleMessageChannel__c';
export default class SubscribeComponent extends LightningElement {

    @wire(MessageContext)
    messageContext;

    dataReceived;

    connectedCallback() {
        this.handleSubscibe();
    }
    handleSubscibe() {
        this.subscription = subscribe(this.messageContext, sampleMessageChannel, (message) => {
            this.dataReceived = message.message;
        }
        );
    }
}