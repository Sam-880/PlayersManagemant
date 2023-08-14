import { LightningElement } from 'lwc';

export default class ParentComp extends LightningElement {
    startNumber = 0;

    handleStartChange(event) {
        this.startNumber = parseInt(event.target.value);

    }

    handleMaximizeCounter() {
        // const updateCounter = this.templete.querySelector('c-child-comp');
        // updateCounter.maximizeCount();
        this.template.querySelector('c-child-comp').maximizeCount();
        console.log(' this.startNumber==========>>>>>' + this.template.querySelector('c-child-comp').maximizeCount());
    }
}