import { LightningElement, api } from 'lwc';

export default class ChildComp extends LightningElement {
    @api counter = 0;

    @api maximizeCount() {
        this.counter = this.counter + 100;
    }
}