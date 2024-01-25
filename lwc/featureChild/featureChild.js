import { LightningElement , api } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import dataLoader from '@salesforce/apex/DataLoader.createData'

export default class FeatureChild extends NavigationMixin(LightningElement) {
    @api heading = "";
    @api appText = "";
    @api url = "";
    @api linkInNewTab = false;
    @api image = "";

    @api secondaryTextPresent = false;
    @api secondaryText = "";

    @api insideLinkPresent = false;
    @api insideLink = "";
    @api insideLinkBeforeText = "";
    @api insideLinkText = "";
    @api insideLinkAfterText = "";

    @api insideLinkColourPresent = false;
    @api insideLinkColour = "";
    @api insideLinkColourBeforeText = "";
    @api insideLinkColourText = "";
    @api insideLinkColourAfterText = "";

    @api loadData = false;

    @api noRecord = false;

    @api noNavigationMixin = false;

    @api linkReference = "";
    @api app = "";
    @api page = "";
    @api objectName = "";
    @api objectId = "";
    @api filterName = "";
    @api relatedEntity = "";

    handleClick(event) {
        console.debug("Page Reference :", this.linkReference)

        if (this.noRecord) {
            console.debug("No Record Available For Entity, Link Will Not Work");
        } else if (this.linkReference == "standard__namedPage") {
            console.debug("Open Page By Name");
            this.pageReference = {
                type: "standard__app",
                attributes: {
                    appTarget: this.app,
                    pageRef: {
                        type: "standard__namedPage",
                        attributes: {
                            pageName: this.page
                        }
                    }
                }
            }
        } else if (this.linkReference == "standard__navItemPage") {
            console.debug("Open Custom Page By Name");
            this.pageReference = {
                type: "standard__app",
                attributes: {
                    appTarget: this.app,
                    pageRef: {
                        type: "standard__navItemPage",
                        attributes: {
                            apiName: this.page
                        }
                    }
                }
            }
        } else if (this.linkReference == "standard__appPage") {
            console.debug("Open App Page By Name");
            this.pageReference = {
                type: "standard__app",
                attributes: {
                    appTarget: this.app
                }
            }
        } else if (this.linkReference == "standard__recordPage") {
            console.debug("Open Record Page By Id");
            this.pageReference = {
                type: "standard__app",
                attributes: {
                    appTarget: this.app,
                    pageRef: {
                        type: 'standard__recordPage',
                        attributes: {
                            objectApiName: this.objectName,
                            actionName: 'view',
                            recordId: this.objectId
                        }
                    }
                }
            }
        } else if (this.linkReference == "standard__objectPage") {
            console.debug("Open Object Page With Provided Filter");
            this.pageReference = {
                type: "standard__app",
                attributes: {
                    appTarget: this.app,
                    pageRef: {
                        type: 'standard__objectPage',
                        attributes: {
                            objectApiName: this.objectName,
                            actionName: 'list'
                        },
                        state: {
                            filterName: this.filterName
                        }
                    }
                }
            }
        } else if (this.linkReference == "standard__recordRelationshipPage") {
            console.debug("Open Record Relationship Page By Id and Related Entity");
            this.pageReference = {
                type: "standard__app",
                attributes: {
                    appTarget: this.app,
                    pageRef: {
                        type: 'standard__recordRelationshipPage',
                        attributes: {
                            objectApiName: this.objectName,
                            actionName: 'view',
                            recordId: this.objectId,
                            relationshipApiName: this.relatedEntity
                        }
                    }
                }
            }
        } else if (this.linkReference == "standard__webPage") {
            console.debug("Open Web Page URL");
            this.pageReference = {
                type: 'standard__webPage',
                attributes: {
                    url: this.url
                }
            }
        }

        console.debug("Link In New Tab :", this.linkInNewTab);

        if (this.linkInNewTab) {
            this[NavigationMixin.GenerateUrl](this.pageReference)
            .then(generated_url => {
                const windowContextNameUniqueStr = Math.random().toString(36).substring(2,7);

                window.open('', windowContextNameUniqueStr);
                window.open(generated_url, windowContextNameUniqueStr);

            } );
            // window.location.reload();
        } else {
            this[NavigationMixin.Navigate](this.pageReference);
        }
    }

    loadDataFromCsv() {
        console.debug("Data Load Call Started");
        dataLoader({ inputFileName : 'account_test_data_datetime', entityType : 'Account' })
        .then(result => {
            console.debug("Apex call for Data Creation completed");
            console.debug("Result :", result);
            if (result.length) {
                window.alert('Successfully Created Data for Entity :', entityType)
            } else {
                window.alert('FAILED!!')
            }
        })
    }
}