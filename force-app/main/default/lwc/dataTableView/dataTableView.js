import { LightningElement,wire,api } from 'lwc';
import getContacts from '@salesforce/apex/MyContactListController.getContacts';



export default class DataTableView extends LightningElement {

    @api recordId;
    
    error;
   

    columns = [
        { label: 'Firstname', fieldName: 'FirstName' },
        { label: 'Lastname', fieldName: 'LastName', type: 'text' },
        { label: 'Phone', fieldName: 'Phone', type: 'phone' },
        { label: 'Email', fieldName: 'Email', type: 'Email' },
    ];

   @wire(getContacts,{recordId: '$recordId'})
    wiredContacts({ error, data }) {
        console.log(data);
        if (data) {
            this.contacts = data;
            console.log('between--------------------');
            this.error = undefined;
        } else if (error) {
            this.error = error;
            this.contacts = undefined;
        }
        console.log('finished--------------------');
    }
   
    /*@wire(getContactList)
    holdValue12({data,error}){
       console.log("data-----------------------------------wire function is working--------------------");
       
    }*/

}