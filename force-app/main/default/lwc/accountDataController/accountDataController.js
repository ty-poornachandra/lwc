import { LightningElement, wire } from 'lwc';
import getAllActiveAccounts from '@salesforce/apex/AccountController.getAllActiveAccounts'; 

export default class AccountDataController extends LightningElement {

    @wire(getAllActiveAccounts)
    accountValue;
}