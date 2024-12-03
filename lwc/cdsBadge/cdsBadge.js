import { LightningElement, api } from 'lwc';

export default class CdsBadge extends LightningElement {
    @api variant = 'info'; // default variant
    @api label = ''; // badge text

    get badgeClass() {
        let baseClass = 'cds-badge';

        switch (this.variant.toLowerCase()) {
            case 'disable':
                return `${baseClass} cds-badge-disable`;
            case 'success':
                return `${baseClass} cds-badge-success`;
            case 'warning':
                return `${baseClass} cds-badge-warning`;
            case 'error':
                return `${baseClass} cds-badge-error`;
            case 'info':
            default:
                return `${baseClass} cds-badge-info`;
        }
    }
}