import { LightningElement, api } from 'lwc';

export default class SpinnerWithMessage extends LightningElement {
    @api variant = 'base';
    @api size = 'medium';
    @api alternativeText;
    @api message;
}