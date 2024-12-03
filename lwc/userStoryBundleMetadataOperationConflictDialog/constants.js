import CONFLICTING_USER_STORIES from '@salesforce/label/c.CONFLICTING_USER_STORIES';
import REMOVE_SELECTED_FROM_BUNDLE from '@salesforce/label/c.REMOVE_SELECTED_FROM_BUNDLE';
import FILE_NAME from '@salesforce/label/c.FILE_NAME';
import USER_STORY from '@salesforce/label/c.USER_STORY';
import TYPE from '@salesforce/label/c.TYPE';
import OPERATION from '@salesforce/label/c.Operation';
import CONFLICTING_USER_STORIES_SUBTITLE from '@salesforce/label/c.CONFLICTING_USER_STORIES_SUBTITLE';
import CANCEL from '@salesforce/label/c.Cancel';
import NEXT from '@salesforce/label/c.NEXT';
import USER_STORIES_REMOVED_FROM_BUNDLE_INFO_MESSAGE from '@salesforce/label/c.USER_STORIES_REMOVED_FROM_BUNDLE_INFO_MESSAGE';
import REMOVING_USER_STORIES from '@salesforce/label/c.REMOVING_USER_STORIES';
import NO_CONFLICTING_US_FOR_USB from '@salesforce/label/c.NO_CONFLICTING_US_FOR_USB';
import { namespace } from 'c/copadocoreUtils';

export const icons = {
    STANDARD_ACCOUNT: 'standard:account'
};

export const labels = {
    CONFLICTING_USER_STORIES,
    REMOVE_SELECTED_FROM_BUNDLE,
    FILE_NAME,
    USER_STORY,
    TYPE,
    OPERATION,
    CONFLICTING_USER_STORIES_SUBTITLE,
    CANCEL,
    NEXT,
    USER_STORIES_REMOVED_FROM_BUNDLE_INFO_MESSAGE,
    REMOVING_USER_STORIES,
    NO_CONFLICTING_US_FOR_USB
};

export const COLUMNS = [
    {
        label: labels.USER_STORY,
        type: 'url',
        fieldName: 'userStoryUrl',
        sortable: true,
        searchable: true,
        hideDefaultActions: true,
        typeAttributes: {
            label: { fieldName: 'userStoryName' },
            target: '_blank'
        }
    },
    {
        label: labels.FILE_NAME,
        fieldName: `${namespace}Metadata_API_Name__c`,
        sortable: true,
        searchable: true,
        hideDefaultActions: true
    },
    {
        label: labels.TYPE,
        fieldName: `${namespace}Type__c`,
        searchable: true,
        hideDefaultActions: true
    },
    {
        label: labels.OPERATION,
        fieldName: `${namespace}Action__c`,
        searchable: true,
        hideDefaultActions: true
    }
];