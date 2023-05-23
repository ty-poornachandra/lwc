import { LightningElement } from 'lwc';
import firstTemplate from './templateRender.html';
import templateOne from './templateOne.html';

export default class TemplateRender extends LightningElement {
    templateOne = false;

    render(){
        return this.templateOne===false?firstTemplate:templateOne;
    }

    handleClick(){
        this.templateOne = this.templateOne===true?false:true;
    }
}