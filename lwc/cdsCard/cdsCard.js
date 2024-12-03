import { LightningElement, api } from 'lwc';

export default class CdsCard extends LightningElement {
    @api title;
    @api hasIcon = false;
    @api hasHeader = false;
    @api hasHeaderActions = false;
    @api hasFooter = false;
}