import { LightningElement } from 'lwc';

export default class QuerySelectorExample extends LightningElement {
    geerting = "Namu";
    
    handleClick(){
        this.geerting=this.template.querySelector("lightning-input").value;
    }
}   