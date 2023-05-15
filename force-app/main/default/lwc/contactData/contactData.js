import { LightningElement, wire } from 'lwc';
import getContacts from '@salesforce/apex/MyContactListController.getContacts';

export default class ApexWireMethodToFunction extends LightningElement {
    contacts;
    error;

    @wire(getContacts)
    wiredContacts({ error, data }) {
        if (data) {
            this.contacts = data;
            this.error = undefined;
        } else if (error) {
            this.error = error;
            this.contacts = undefined;
        }
    }
}