import { LightningElement,api } from 'lwc';
//import { getRecord } from 'lightning/uiRecordApi';
import NAME_FIELD from '@salesforce/schema/Contact.Name'

export default class LightningRecordViewExample extends LightningElement {
    nameField=NAME_FIELD;

    @api recordId;
    @api objectApiName;
}