import { LightningElement, api } from 'lwc';
import { getTheme, getIconName } from './utils';

export default class CdsAlert extends LightningElement {
    @api message;
    @api variant;
    @api hasdetail = false;
    @api dismissible = false;
    @api hideArrow = false;
    showAlert = true;

    get styleClasses() {
        return `cds-alert-wrapper ${getTheme(this.variant)}`;
    }

    get iconName() {
        return getIconName(this.variant);
    }

    get showArrow(){
        return !this.hideArrow;
    }

    // PUBLIC
    handleCloseAlert() {
        this.showAlert = false;
        this.dispatchEvent(new CustomEvent('closealert'));
    }
}