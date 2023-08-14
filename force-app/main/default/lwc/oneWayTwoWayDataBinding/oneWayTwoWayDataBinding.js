import { LightningElement, api } from 'lwc';

export default class OneWayTwoWayDataBinding extends LightningElement {

    @api name = 'Samir';

    firstname = '';
    lastname = '';
    //Two way Data Binding in UpperCase
    handleChange(event) {
        const fieldName = event.target.name;
        if (fieldName == 'firstName') {
            this.firstname = event.target.value;
        } else {
            this.lastname = event.target.value;
        }
    }

    get upperCasedFUllName() {
        return `${this.firstname} ${this.lastname}`.toUpperCase();
    }
}