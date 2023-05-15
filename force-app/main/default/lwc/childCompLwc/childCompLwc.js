import { LightningElement ,api} from 'lwc';

export default class ChildCompLwc extends LightningElement {

   @api greeting = 'world';
   

    handleEvent(event){
         event.preventDefault();
     
        const holdevent = new CustomEvent('loaded',{detail : 'pranav'});
 
        this.dispatchEvent(holdevent);
    }
}