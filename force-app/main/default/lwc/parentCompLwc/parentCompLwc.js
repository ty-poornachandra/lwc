import { LightningElement,api } from 'lwc';

export default class ParentCompLwc extends LightningElement {

   @api chat='poorna';

    handleClick(event){
       
        this.chat = event.detail;

    }
}