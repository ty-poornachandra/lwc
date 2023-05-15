import { LightningElement,api } from 'lwc';
import CONTACT_OBJECT from '@salesforce/schema/Contact';

export default class LightingRecordEditExample extends LightningElement {
    @api recordId;
    objectApiName = 'CONTACT_OBJECT';

    reset(event){
        const field = this.template.querySelectorAll('lightning-input-field');
        field.forEach(field=>{
            field.reset;
        });
    }
}