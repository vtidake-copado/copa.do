import { VARIANT_CONFIGURATION } from './constants';

export function getIconName(variant) {
    return VARIANT_CONFIGURATION.has(variant) ? VARIANT_CONFIGURATION.get(variant).iconName : '';
}

export function getTheme(variant) {
    return VARIANT_CONFIGURATION.has(variant) ? VARIANT_CONFIGURATION.get(variant).theme : '';
}