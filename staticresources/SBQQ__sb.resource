@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Light.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Light.woff") format("woff");
  font-style: normal;
  font-weight: 300;
}
@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Regular.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Regular.woff") format("woff");
  font-style: normal;
  font-weight: 400;
}
@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Italic.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Italic.woff") format("woff");
  font-style: italic;
  font-weight: 400;
}
@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Bold.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Bold.woff") format("woff");
  font-style: normal;
  font-weight: 700;
}
@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-BoldItalic.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-BoldItalic.woff") format("woff");
  font-style: italic;
  font-weight: 700;
}
/*
Rotates an element

$r - the rotate function paramter, e.g. 90deg
 */
.sb h1,
.sb h2,
.sb h3,
.sb h4,
.sb h5,
.sb h6 {
  color: #16325c;
  font-weight: 300;
  font-family: inherit;
  display: inline-block;
  margin: 0;
  padding: 0;
}
.sb h1 {
  font-size: 24px;
}
.sb h2 {
  font-size: 18px;
}
.sb h3 {
  font-size: 16px;
}
.sb h4 {
  font-size: 12px;
}
.sb h5 {
  font-size: 10px;
}
.sb h6 {
  font-size: 9px;
}
.sb a,
.sb a:visited,
.sb a:hover,
.sb a:active {
  text-decoration: none;
  color: #0070d2;
  cursor: pointer;
}
.sb a:hover {
  color: #16325c;
}
/*
Button

A standard, standalone button

*/
.sbBtn,
.btn.sbBtn {
  padding: 8px 12px;
  background: #ffffff;
  color: #0070d2;
  cursor: pointer;
  border: 1px solid #d8dde6;
  border-radius: 4px;
  font-weight: 400;
  font-size: 14px;
  margin: 0;
  vertical-align: middle;
  text-align: center;
  height: 36px;
}
.sbBtn:focus {
  outline-offset: -2px;
  outline-width: 2px;
}
.sbBtn:hover {
  background: #f4f6f9;
}
.sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  border: 1px solid #0070d2;
  color: #ffffff;
}
.sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
.sbBtn.sbEnabled {
  background-color: #0070d2;
  border-color: #0070d2;
  color: #ffffff;
}
.sbBtn.sbEnabled:hover {
  background-color: #005fb2;
}
.sbButtons,
.sbPageButtons {
  text-align: center;
  background: #f4f6f9;
  padding: 7px 0 7px;
  display: inline-block;
}
.sbButtons > .sbBtn,
.sbButtons > div > .sbBtn,
.sbPageButtons > .sbBtn,
.sbPageButtons > div > .sbBtn {
  border-top: 1px solid #d8dde6;
  border-bottom: 1px solid #d8dde6;
  border-right: 1px solid #d8dde6;
  border-left: 0;
  border-radius: 0;
  float: left;
}
.sbButtons > .sbBtn.sbPrimaryAction,
.sbButtons > div > .sbBtn.sbPrimaryAction,
.sbPageButtons > .sbBtn.sbPrimaryAction,
.sbPageButtons > div > .sbBtn.sbPrimaryAction {
  border: 1px solid #0070d2;
}
.sbButtons > .sbBtn:first-of-type,
.sbButtons > div > .sbBtn:first-of-type,
.sbPageButtons > .sbBtn:first-of-type,
.sbPageButtons > div > .sbBtn:first-of-type {
  border-left: 1px solid #d8dde6;
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
.sbButtons > .sbBtn:first-of-type.sbPrimaryAction,
.sbButtons > div > .sbBtn:first-of-type.sbPrimaryAction,
.sbPageButtons > .sbBtn:first-of-type.sbPrimaryAction,
.sbPageButtons > div > .sbBtn:first-of-type.sbPrimaryAction {
  border-left: #0070d2;
}
.sbButtons > .sbBtn:last-of-type,
.sbButtons > div > .sbBtn:last-of-type,
.sbPageButtons > .sbBtn:last-of-type,
.sbPageButtons > div > .sbBtn:last-of-type {
  border-top-right-radius: 4px;
  border-bottom-right-radius: 4px;
}
.sbButtons > .center,
.sbPageButtons > .center {
  display: inline-block;
}
.sbPageButtons {
  width: 100%;
  border-top: 1px solid #d0d0d0;
}
.sbPageButtons.bottom {
  width: auto;
  position: fixed;
  bottom: 0px;
  left: 10px;
  right: 10px;
  border-bottom-right-radius: 4px;
  border-bottom-left-radius: 4px;
  display: none;
}
.sbPageButtons.inline {
  background: #f4f6f9;
  border-bottom-right-radius: 4px;
  border-bottom-left-radius: 4px;
  margin-top: 80px;
}
.sbPageTitle > .sbPageButtons {
  border: 0;
  display: inline-block;
  width: auto;
  float: right;
}
.sbTools {
  display: inline-block;
}
.sbTools > .sbTool {
  border-left: 0;
  border-radius: 0;
  float: left;
}
.sbTools > .sbTool > .sb-icon-triangle-down {
  margin-left: -5px;
}
.sbTools > .sbTool:not(.ng-hide):not(.sbBtnClear):first-of-type {
  border-left: 1px solid #d8dde6;
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
.sbTools > .sbTool:not(.ng-hide):last-of-type {
  border-top-right-radius: 4px;
  border-bottom-right-radius: 4px;
}
.sbTool {
  display: inline-block;
  border: 1px solid #d8dde6;
  border-radius: 4px;
  padding: 5px 7px;
  color: #0070d2;
  position: relative;
  cursor: pointer;
  /* the down triangle in a tool */
}
.sbTool > .sb-icon-down-dir {
  position: relative;
}
.sbTool.active {
  background: #0070d2;
  color: #ffffff;
}
.sbTool:hover {
  background: #f4f6f9;
  color: #0070d2;
}
.sbTool:focus {
  outline-offset: -2px;
  outline-width: 2px;
}
.sbTool > menu {
  position: absolute;
  right: -1px;
  top: 16px;
  font-weight: normal;
  background-color: #ffffff;
  padding: 8px 14px;
  white-space: nowrap;
  border-radius: 4px;
  border-top-right-radius: 0;
  border: 1px solid #d8dde6;
  display: none;
  z-index: 4;
  text-align: left;
}
.sbTool > menu.dt {
  top: 20px;
  max-height: 300px;
  overflow: auto;
}
.sbTool > menu > header {
  text-transform: uppercase;
  color: #777;
  margin-bottom: 4px;
}
.sbTool > menu *[class^=sb-icon] {
  margin-right: 6px;
  vertical-align: middle;
  color: #777;
}
.sbTool.open > menu {
  display: block;
}
.sbTool > menu ul {
  list-style: none;
  padding: 0;
  margin: 0;
}
.sbTool > menu ul > li {
  padding: 3px 3px 3px 0px;
}
.sbTool > menu ul > li > a {
  display: block;
}
.sbTool > menu ul > li .sb-icon-ok {
  display: none;
}
.sbTool > menu ul > li.selected .sb-icon-ok {
  display: inline-block;
  float: right;
  margin-right: 0;
}
.sbTool > menu.multi > header:last-of-type {
  margin-top: 16px;
}
.sbTool > menu.multi > ul:last-of-type li {
  min-width: 130px;
}
.sb menu a {
  color: #0070d2;
}
.sb menu a:hover {
  color: #0070d2;
}
/*
Modal dialog mask

The layer behind the dialog that masks the entire page.
*/
.sbModalMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 1000;
}
/*
Modal Dialog

A dialog with modality that takes up the entire page.
 */
.sbModalDialog {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
}
.sbModalDialog > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
.sbModalDialog > header > i {
  color: #16325c;
  font-size: 20px;
}
.sbModalDialog > header > * {
  vertical-align: middle;
}
.sbModalDialog > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
.sbModalDialog > header > h3 {
  color: #16325c;
}
.sbModalDialog > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
.sbModalDialog > header > .sf-icon-close:hover {
  cursor: pointer;
}
.sbModalDialog > header > .sf-icon-close:before {
  color: #fff;
}
.sbModalDialog .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
.sbModalDialog .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
.sbModalDialog .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
.sbModalDialog .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
.sbModalDialog .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
.sbModalDialog .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
.sbModalDialog .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
  height: 26px;
}
.sbModalDialog .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
.sbModalDialog .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
.sbModalDialog .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
.sbModalDialog .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#DescriptionEditorDialog {
  min-height: 429px;
}
.sbDialogMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: rgba(126, 140, 153, 0.8);
  display: block;
  visibility: hidden;
  z-index: 9000;
}
.sbDialogMask.open,
.sbDialog.open {
  visibility: visible;
}
.sbDialog,
.sbDialog * {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}
.sbDialog {
  position: fixed;
  top: 0;
  left: 0;
  z-index: 9001;
  display: block;
  visibility: hidden;
}
.sbDialog > .sbDialogCon {
  border-radius: 4px;
  position: relative;
  margin: 0 auto;
  background: #fff;
}
.sbDialog > .sbDialogCon > header {
  display: block;
  position: relative;
  padding: 24px 16px;
  text-align: center;
  border-bottom: 2px solid #d8dde6;
}
.sbDialog > .sbDialogCon > header > h2 {
  line-height: 20px;
  font-size: 24px;
}
.sbDialog > .sbDialogCon > header > button {
  position: absolute;
  display: inline-block;
  top: -46px;
  right: -8px;
  width: 48px;
  height: 48px;
  color: #fff;
  background: none;
  border: 0;
  outline: 0;
  font-size: 24px;
}
.sbDialog > .sbDialogCon > .sbDialogBody {
  padding: 16px;
}
.ui-tooltip {
  padding: 8px;
  position: absolute;
  z-index: 9999;
  max-width: 300px;
  background: #ffffff;
  border: 1px solid #d0d0d0;
  box-shadow: 0 0 2px #D8DDE6;
}
.ui-tooltip > .ui-tooltip-content {
  font-size: 14px;
}
.ui-tooltip > .arrow {
  width: 70px;
  height: 16px;
  overflow: hidden;
  position: absolute;
  left: 50%;
  margin-left: -35px;
  bottom: -16px;
}
.ui-tooltip > .arrow.top {
  top: -16px;
  bottom: auto;
}
.ui-tooltip > .arrow.top:after {
  bottom: -20px;
  top: auto;
}
.ui-tooltip > .arrow.left {
  left: 28%;
}
.ui-tooltip > .arrow:after {
  background: #ffffff;
  border: #d0d0d0;
  content: "";
  position: absolute;
  left: 20px;
  top: -20px;
  width: 25px;
  height: 25px;
  box-shadow: 6px 5px 9px -9px black;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}
.ui-helper-hidden-accessible {
  border: 0;
  clip: rect(0 0 0 0);
  height: 1px;
  margin: -1px;
  overflow: hidden;
  padding: 0;
  position: absolute;
  width: 1px;
}
#sbCustomActionContainer {
  margin: 18px;
  top: 0px;
  height: 95%;
}
#sbCustomActionContainer > .sf-icon-cancel-circled {
  font-size: 35px;
  position: absolute;
  top: -9px;
  right: -4px;
  width: 20px;
  height: 20px;
  background-color: #A8B7C7;
}
#sbCustomActionContainer > .sf-icon-cancel-circled:hover {
  cursor: pointer;
}
#sbCustomActionContainer > .sf-icon-cancel-circled:before {
  color: #fff;
  position: relative;
  right: 15px;
  top: -10px;
}
#easyXDM_SBQQ_provider {
  width: 100%;
  height: 100%;
}
#sbPricebookModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 640px;
}
#sbPricebookModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbPricebookModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbPricebookModal > header > * {
  vertical-align: middle;
}
#sbPricebookModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbPricebookModal > header > h3 {
  color: #16325c;
}
#sbPricebookModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbPricebookModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbPricebookModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbPricebookModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbPricebookModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbPricebookModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbPricebookModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbPricebookModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbPricebookModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbPricebookModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
  height: 26px;
}
#sbPricebookModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbPricebookModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbPricebookModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbPricebookModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbPricebookModal > .sbModalContentContainer {
  padding: 20px;
  text-align: center;
}
#sbPricebookModal > .sbModalContentContainer > select {
  height: 34px;
  font-size: 16px;
  width: 100%;
  margin: 14px 0;
}
.sbPageTitle {
  padding: 24px 24px 16px;
  color: #54698d;
  background: #f4f6f9;
  border-bottom: 1px solid #d0d0d0;
  font-size: 10px;
  transition: padding 0.25s ease-in;
}
.sbPageTitle h1,
.sbPageTitle h2,
.sbPageTitle h3 {
  white-space: nowrap;
  transition: all 0.25s ease-in;
}
.sbPageTitle h2 {
  font-size: 14px;
  color: #54698d;
  display: block;
  font-weight: 400;
  padding-bottom: 4px;
}
.sbPageTitle h3 {
  font-size: 14px;
  color: #54698d;
  display: block;
  font-weight: 400;
  padding-top: 4px;
}
.sbPageTitle > .sbPageTitleTable {
  display: table;
  width: 100%;
  -webkit-transition-delay: 0s, 0s, 0s;
  -webkit-transition-duration: 0.25s, 0.25s, 0.25s;
  -webkit-transition-property: -webkit-transform, opacity, left;
  -webkit-transition-timing-function: ease-in, ease-in, ease;
  -webkit-user-drag: none;
}
.sbPageTitle > .sbPageTitleTable.sbResultsSection > .sbPageTitleLeft {
  width: 100%;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft,
.sbPageTitle > .sbPageTitleTable > .sbPageTitleRight {
  display: table-cell;
  vertical-align: top;
  transition: all 0.25s ease-in;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft {
  display: inline-flex;
  width: 30%;
  vertical-align: top;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft .sbTitles {
  vertical-align: top;
  display: inline-block;
  transition: all 0.25s ease-in;
  -webkit-transition-delay: 0s, 0s, 0s;
  -webkit-transition-duration: 0.25s, 0.25s, 0.25s;
  -webkit-transition-property: -webkit-transform, opacity, left;
  -webkit-transition-timing-function: ease-in, ease-in, ease;
  -webkit-user-drag: none;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon] {
  font-size: 50px;
  height: 50px;
  width: 50px;
  border-radius: 4px;
  margin-right: 12px;
  text-align: center;
  display: inline-block;
  transition: all 0.25s ease-in;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon].resize {
  font-size: 30px;
  padding: 13px 10px 0 10px;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon]:before {
  color: #fff;
  margin: 0;
  position: relative;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft .resetHeight[class^=sf-icon]:before {
  top: 0px;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft > span {
  width: 200px;
}
@media screen and (-ms-high-contrast: none), (-ms-high-contrast: active) {
  .sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft > span {
    width: auto;
  }
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleRight {
  width: 100%;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleRight > .sbTools,
.sbPageTitle > .sbPageTitleTable > .sbPageTitleRight > .sbButtons {
  float: right;
}
.sbPageTitle .sbResults {
  margin: 7px 0 0 62px;
  font-size: 14px;
  transition: all 0.25s ease-in;
}
.sbPageTitle .sbResults.sbWarning {
  margin-top: 2px;
  color: #cc7824;
}
.sbPageTitle .sbResults.sbWarning [class=sf-icon-warning] {
  font-size: 16px;
  width: 13px;
  height: 20px;
}
.sbPageTitle .sbResults.sbWarning [class=sf-icon-warning]:before {
  color: #cc7824;
  margin: 0 6px 0 0;
  position: relative;
  top: 2px;
}
.sbPageTitle.squeezed {
  padding: 20px 15px 7px;
}
.sbPageTitle.squeezed > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon] {
  font-size: 36px;
  height: 36px;
  width: 36px;
}
.sbPageTitle.squeezed > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon].resize {
  font-size: 23px;
  padding-top: 8px;
  padding-left: 7px;
}
.sbPageTitle.squeezed > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon]:before {
  top: -5px;
}
.sbPageTitle.squeezed > .sbPageTitleTable > .sbPageTitleLeft .sbTitles {
  transform: translate3d(0px, -12px, 0px);
  -webkit-transform: matrix(1, 0, 0, 1, 0, -8);
}
.sbPageTitle.squeezed > .sbPageTitleTable .sbButtons {
  padding: 0;
}
.sbPageTitle.squeezed > .sbPageTitleTable.sbResultsSection {
  opacity: 0;
  display: none;
  transform: translate3d(0px, -17px, 0px);
  -webkit-transform: matrix(1, 0, 0, 1, 0, -17);
}
.sbHeaderFixed .sbPageTitle {
  position: fixed;
  top: 114px;
  left: 10px;
  right: 10px;
  z-index: 5;
  visibility: hidden;
}
#sidebarCell:not(.sidebarCollapsed) + #bodyCell .sbHeaderFixed .sbPageTitle {
  left: 230px;
}
#mainContent {
  margin-left: 1px;
}
.sbPageBlock {
  font-size: 10px;
}
.sbPageBlockSection {
  margin: 15px;
  background: #f4f6f9;
  border-radius: 4px;
  font-size: 10px;
}
.sbPageBlockSection > header {
  margin-bottom: 10px;
}
.sbLoadingMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 10001;
}
.sbLoading {
  position: fixed;
  top: 37%;
  left: 50%;
  margin-left: -74px;
}
.sbSearchResults .sbTable {
  font-size: 10px;
}
.sbSearchResults .sbTable > thead > tr > th:first-of-type,
.sbSearchResults .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
.sbSearchResults .sbTable > tbody > tr > td {
  vertical-align: middle;
}
.sbSearchResults .sbTools {
  float: right;
}
.sb input[type=text],
.sb input:not([type]) {
  height: 25px;
  border: 1px solid #D8DDE6;
  border-radius: 3px;
  padding: 0 5px;
  font-size: 14px;
}
.sb input[type=text].hasDatepicker,
.sb input:not([type]).hasDatepicker {
  min-width: 95px;
  width: 85%;
}
.sb input[type=text].hasDatepicker.invalidDate,
.sb input:not([type]).hasDatepicker.invalidDate {
  border-color: #c00;
}
.sb select:not([multiple]) {
  font-size: 14px;
  -webkit-appearance: none;
  -moz-appearance: none;
  min-width: 100px;
  padding: 0 14px;
  margin: 0;
  height: 25px;
  background-image: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2ZXJzaW9uPSIxLjEiIGlkPSJMYXllcl8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDI3LjYgMjEiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDI3LjYgMjEiIHhtbDpzcGFjZT0icHJlc2VydmUiPg0KICA8Zz4NCiAgICA8ZGVmcz4NCiAgICAgIDxwYXRoIGlkPSJTVkdJRF8xXyIgZD0iTTUuNiA1aDE2LjRjMC40IDAgMC44IDAuNiAwLjQgMWwtOCA5LjhjLTAuMyAwLjMtMC45IDAuMy0xLjIgMGwtOC05LjhDNC44IDUuNiA1LjEgNSA1LjYgNXoiLz4NCiAgICA8L2RlZnM+DQogICAgPGNsaXBQYXRoIGlkPSJTVkdJRF8yXyI+DQogICAgICA8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF8xXyIgb3ZlcmZsb3c9InZpc2libGUiLz4NCiAgICA8L2NsaXBQYXRoPg0KICAgIDxyZWN0IHg9IjAiIHk9IjAiIGNsaXAtcGF0aD0idXJsKCNTVkdJRF8yXykiIGZpbGw9IiM1NTY5OEQiIHdpZHRoPSIyNy42IiBoZWlnaHQ9IjIxIi8+DQogIDwvZz4NCjwvc3ZnPg0K');
  background-color: #ffffff;
  background-position: 95% 50%;
  background-repeat: no-repeat;
  background-size: 14px 14px;
  border: 1px solid #D8DDE6;
  border-radius: 3px;
}
.sb select:not([multiple])::-ms-expand {
  display: none;
}
.sb input[type=checkbox] {
  width: 22px;
  height: 22px;
  margin: 0;
  border: 0;
}
.sb input,
.sb button,
.sb select,
.sb textarea {
  font-family: inherit;
}
/*
Dualing List box

A control with two list boxes and arrows to move items left/right and up/down between those two.
 */
.sbDualListBox {
  font-size: 14px;
  color: inherit;
  border-collapse: collapse;
  border-spacing: 0;
}
.sbDualListBox > thead > tr > th {
  font-weight: normal;
  text-align: center;
}
.sbDualListBox > thead > tr > th > [class^=sb-icon] {
  font-size: 14px;
  color: #888;
}
.sbDualListBox > tbody > tr > td:nth-child(2),
.sbDualListBox > tbody > tr > td:nth-child(4) {
  text-align: center;
  vertical-align: middle;
}
.sbDualListBox a {
  color: inherit;
  padding: 2px;
  margin: 0 8px;
  border: 1px solid #d8dde6;
  border-bottom: 0;
  display: block;
}
.sbDualListBox a:hover {
  background: #0069d9;
  color: #fff;
  border-color: #0069d9;
}
.sbDualListBox a .sf-icon-right,
.sbDualListBox a .sf-icon-left {
  padding: 2px;
}
.sbDualListBox a [class^=sb-icon] {
  font-size: 15px;
}
.sbDualListBox a [class^=sb-icon-to-end]:before {
  -webkit-transform: rotate(-90deg);
  -moz-transform: rotate(-90deg);
  -ms-transform: rotate(-90deg);
  transform: rotate(-90deg);
  font-size: 8.5px;
}
.sbDualListBox a:nth-child(4) [class^=sb-icon-to-end]:before {
  -webkit-transform: rotate(90deg);
  -moz-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg);
  font-size: 8.5px;
}
.sbDualListBox a:first-of-type {
  border-top-right-radius: 3px;
  border-top-left-radius: 3px;
}
.sbDualListBox a:last-of-type {
  border-bottom: 1px solid #d8dde6;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
.sbDualListBox select {
  font-size: inherit;
  height: 350px;
  width: 180px;
  padding: 8px;
}
.sbDualListBox select > option {
  padding: 4px;
}
.sbDualListBox select > option.required {
  color: #af2626;
  font-weight: bold;
  -webkit-font-smoothing: subpixel-antialiased;
}
#ui-datepicker-div {
  display: none;
}
.ui-datepicker {
  background-color: #F4F6F9;
  border-left: 1px solid #d0d0d0;
  border-right: 1px solid #d0d0d0;
  border-radius: 3px;
  box-shadow: 0 2px 6px #aaa;
  padding: 7px 5px 6px;
  overflow: hidden;
  text-align: center;
  white-space: nowrap;
  width: auto;
  z-index: 4;
}
.ui-datepicker .ui-datepicker-header {
  padding: 0 0 3px;
}
.ui-datepicker .ui-datepicker-title {
  display: inline-block;
}
.ui-datepicker .ui-datepicker-month {
  float: left;
}
.ui-datepicker .ui-datepicker-year {
  float: right;
}
.ui-datepicker .ui-datepicker-prev,
.ui-datepicker .ui-datepicker-next {
  margin-top: 4px;
  display: inline-block;
  width: 19px;
  height: 16px;
  margin: 2px 4px 0 0;
  background-repeat: no-repeat;
  line-height: 400%;
  float: left;
}
.ui-datepicker .ui-datepicker-prev {
  background-image: url('/img/func_icons/cal/leftArrow.gif');
}
.ui-datepicker .ui-datepicker-next {
  background-image: url('/img/func_icons/cal/rightArrow.gif');
}
.ui-datepicker .ui-datepicker-calendar {
  padding: 0 5px;
  margin-left: auto;
  margin-right: auto;
}
.ui-datepicker .ui-datepicker-calendar > thead > tr > th {
  text-align: center;
  font-weight: normal;
  font-size: 0.9em;
  width: 14%;
}
.ui-datepicker .ui-datepicker-calendar td {
  padding: 2px;
}
.ui-datepicker .ui-datepicker-calendar a {
  width: auto;
  border-bottom: none;
  text-decoration: none;
  font-size: 0.95em;
}
.ui-datepicker .ui-datepicker-calendar > tbody > tr > td:hover {
  background-color: #e0f0fb;
  font-weight: bold;
}
.ui-datepicker .ui-datepicker-other-month a {
  color: #999;
}
.ui-datepicker .ui-datepicker-today {
  background-color: #1797c0;
  color: #fff;
  font-weight: bold;
  text-decoration: none;
}
.ui-datepicker .ui-datepicker-today:hover {
  background-color: #e0f0fb;
  color: #333;
}
.ui-datepicker .ui-datepicker-current-day {
  background-color: #c6e1ff;
  border: 1px solid #9cf;
  font-weight: bold;
  text-decoration: none;
}
.ui-datepicker .ui-datepicker-current-day > a {
  color: #333;
}
.ui-datepicker .ui-datepicker-buttonpane {
  padding: 1px;
  clear: both;
}
.ui-datepicker .ui-datepicker-buttonpane > button {
  background: transparent;
  border: none !important;
  color: #015ba7;
  cursor: pointer;
  font-weight: normal;
  padding: 0;
  margin: 0;
}
.ui-datepicker .ui-datepicker-buttonpane > button:hover {
  text-decoration: underline;
}
.ui-datepicker .ui-datepicker-close {
  display: none;
}
table > tbody > tr > td {
  color: #16325C;
}
.sbTable {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  background-color: #ffffff;
}
.sbTable td {
  height: 49px;
}
.sbTable tr.sbUpgradeOption > td {
  color: #aaaaaa;
}
.sbTable > tbody > tr > td.center,
.sbTable > tbody > tr > td.sbActions,
.sbTable > thead > tr > th.sbActions,
.sbTable > thead > tr > th.center,
.sbTable > tfoot > tr > td.center {
  text-align: center;
}
.sbTable > thead > tr > th.right,
.sbTable > tbody > tr > td.right,
.sbTable > tfoot > tr > td.right {
  text-align: right;
}
.sbTable a {
  color: inherit;
}
.sbTable tbody .sbActions i {
  color: #0070d2;
}
.sbTable tbody .sbActions i:hover {
  color: #16325c;
  cursor: pointer;
}
.sbTable tbody .sbMaster input[type=checkbox] {
  -ms-transform: scale(0.7);
  /* IE */
  -moz-transform: scale(0.7);
  /* FF */
  -webkit-transform: scale(0.7);
  /* Safari and Chrome */
}
.sbTable tbody .sbMaster i {
  font-size: 200%;
  color: #ffffff;
  background-color: #CFD7E6;
  border-radius: 0.18rem;
  text-align: center;
}
.sbTable tbody .sbMaster i.selectedMaster {
  background: #7F8DE1;
}
.sbTable tbody .sbMaster i.selectedMaster:hover {
  cursor: pointer;
}
.sbTable tbody .sbMaster i.notSelectedMaster {
  background: #CFD7E6;
}
.sbTable tbody .sbMaster i.notSelectedMaster:hover {
  cursor: pointer;
}
.sbTable input :not(.sbBtn),
.sbTable select {
  font-size: inherit;
}
.sbTable > thead > tr > th {
  border-bottom: 1px solid #D8DDE6;
  padding: 8px 6px 6px;
  font-size: 12px;
  font-weight: normal;
  text-transform: uppercase;
  color: #16325C;
  text-align: left;
  white-space: nowrap;
}
.sbTable > thead > tr > th > *[class^="sb-icon"] {
  margin-left: 4px;
  font-size: 12px;
}
.sbTable > tbody > tr > td {
  border-bottom: 1px solid #D8DDE6;
  padding: 8px 6px 6px;
  color: #16325C;
  font-size: 14px;
}
.sbTable > tbody > tr > td i {
  color: #888;
}
.sbTable > tbody > tr:hover {
  background: #F4F6F9;
}
.sbTable > tfoot > tr > td {
  padding: 8px 6px 6px;
  color: #16325C;
  font-size: 14px;
}
/*
Side Panels 

Panel that slides out from the right side of the screen
*/
.sbPanel {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
}
.sbPanel.open {
  right: 0px;
  display: block;
}
.sbPanel > a {
  text-align: right;
  font-size: 14px;
}
.sbPanel > header {
  padding: 0 20px;
  line-height: 4em;
}
.sbPanel > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
.sbPanel fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 14px;
}
.sbPanel fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
.sbPanel fieldset input,
.sbPanel fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
.sbPanel .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
.sbPanel .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
@font-face {
  font-family: 'sf-icons';
  src: url('../font/sf-icons.eot?87742446');
  src: url('../font/sf-icons.eot?87742446#iefix') format('embedded-opentype'), url('../font/sf-icons.svg?87742446#sf-icons') format('svg');
  font-weight: normal;
  font-style: normal;
}
@font-face {
  font-family: 'sf-icons';
  src: url('data:application/octet-stream;base64,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') format('woff'), url('data:application/octet-stream;base64,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6D0AAOg9AAAAPgAA6D4AAOg+AAAAPwAA6D8AAOg/AAAAQAAA6EAAAOhAAAAAQQAA6EEAAOhBAAAAQgAA6EIAAOhCAAAAQwAA6EMAAOhDAAAARAAA6EQAAOhEAAAARQAA6EUAAOhFAAAARgAA6EYAAOhGAAAARwAA6EcAAOhHAAAASAAA6EgAAOhIAAAASQAA6EkAAOhJAAAASgAA6EoAAOhKAAAASwAA6EsAAOhLAAAATAAA6EwAAOhMAAAATQAA6E0AAOhNAAAATgAA6E4AAOhOAAAATwAA6E8AAOhPAAAAUAAA6FAAAOhQAAAAUQAA6FEAAOhRAAAAUgAA6FIAAOhSAAAAUwAA6FMAAOhTAAAAVAAA6FQAAOhUAAAAVQAA6FUAAOhVAAAAVgAA6FYAAOhWAAAAVwAA6FcAAOhXAAAAWAAA6FgAAOhYAAAAWQAA6FkAAOhZAAAAWgAA6FoAAOhaAAAAWwAA6FsAAOhbAAAAXAAA6FwAAOhcAAAAXQAA6F0AAOhdAAAAXgAA6F4AAOheAAAAXwAA6F8AAOhfAAAAYAAA6GAAAOhgAAAAYQAA6GEAAOhhAAAAYgAA6GIAAOhiAAAAYwAA6GMAAOhjAAAAZAAA6GQAAOhkAAAAZQAA6GUAAOhlAAAAZgAA6GYAAOhmAAAAZwAA6GcAAOhnAAAAaAAA6GgAAOhoAAAAaQAA6GkAAOhpAAAAagAA6GoAAOhqAAAAawAA6GsAAOhrAAAAbAAA6GwAAOhsAAAAbQAA6G0AAOhtAAAAbgAA6G4AAOhuAAAAbwAA6G8AAOhvAAAAcAAA6HAAAOhwAAAAcQAA6HEAAOhxAAAAcgAA6HIAAOhyAAAAcwAA6HMAAOhzAAAAdAAA6HQAAOh0AAAAdQAA6HUAAOh1AAAAdgAA6HYAAOh2AAAAdwAA6HcAAOh3AAAAeAAA6HgAAOh4AAAAeQAA6HkAAOh5AAAAegAA6HoAAOh6AAAAewAA6HsAAOh7AAAAfAAA6HwAAOh8AAAAfQAA6H0AAOh9AAAAfgAA6H4AAOh+AAAAfwAA6H8AAOh/AAAAgAAA6IAAAOiAAAAAgQAA6IEAAOiBAAAAggAA6IIAAOiCAAAAgwAA6IMAAOiDAAAAhAAA6IQAAOiEAAAAhQAA6IUAAOiFAAAAhgAA6IYAAOiGAAAAhwAA6IcAAOiHAAAAiAAA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cgBpAGcAaAB0ACAAKABDACkAIAAyADAAMQA5ACAAYgB5ACAAbwByAGkAZwBpAG4AYQBsACAAYQB1AHQAaABvAHIAcwAgAEAAIABmAG8AbgB0AGUAbABsAG8ALgBjAG8AbQBzAGYALQBpAGMAbwBuAHMAUgBlAGcAdQBsAGEAcgBzAGYALQBpAGMAbwBuAHMAcwBmAC0AaQBjAG8AbgBzAFYAZQByAHMAaQBvAG4AIAAxAC4AMABzAGYALQBpAGMAbwBuAHMARwBlAG4AZQByAGEAdABlAGQAIABiAHkAIABzAHYAZwAyAHQAdABmACAAZgByAG8AbQAgAEYAbwBuAHQAZQBsAGwAbwAgAHAAcgBvAGoAZQBjAHQALgBoAHQAdABwADoALwAvAGYAbwBuAHQAZQBsAGwAbwAuAGMAbwBtAAAAAAIAAAAAAAAACgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjAECAQMBBAEFAQYBBwEIAQkBCgELAQwBDQEOAQ8BEAERARIBEwEUARUBFgEXARgBGQEaARsBHAEdAR4BHwEgASEBIgEjASQBJQEmAScBKAEpASoBKwEsAS0BLgEvATABMQEyATMBNAE1ATYBNwE4ATkBOgE7ATwBPQE+AT8BQAFBAUIBQwFEAUUBRgFHAUgBSQFKAUsBTAFNAU4BTwFQAVEBUgFTAVQBVQFWAVcBWAFZAVoBWwFcAV0BXgFfAWABYQFiAWMBZAFlAWYBZwFoAWkBagFrAWwBbQFuAW8BcAFxAXIBcwF0AXUBdgF3AXgBeQF6AXsBfAF9AX4BfwGAAYEBggGDAYQBhQGGAYcBiAGJAYoBiwGMAY0ABTNkb3RzA2FkZAVjbG9zZQlwcmljZWJvb2sEaGVscAhub3RlYm9vawRyb3dzBnVwbG9hZAVjbG9jawZncm91cHMLb3Blbl9mb2xkZXIQcmlnaHRfYWxpZ25fdGV4dAdwcm9kdWN0DXF1ZXN0aW9uX2ZlZWQHd2FybmluZwR1c2VyBXJpZ2h0DG5vdGlmaWNhdGlvbgRob21lCGNvbnRyYWN0B2FkZHVzZXIEYXBwcwRjb3B5BWltYWdlBG9wZW4Ic2V0dGluZ3MGem9vbWluBnJlY29yZAlhcnJvd2Rvd24DY3V0D2luc2VydF90ZW1wbGF0ZQ1vcGVuZWRfZm9sZGVyCXNpZGVfbGlzdAd6b29tb3V0BnF1b3RlcwxyZWxhdGVkX2xpc3QEZ2RvYwdzbmlwcGV0BHBhZ2ULY3VzdG9tX2FwcHMHYXJyb3d1cAZhdHRhY2gHZGF5dmlldwRpbmZvEGluc2VydF90YWdfZmllbGQFcGFzdGUEc29ydANwZGYGcmVwb3J0BHRhc2sIYXBwcm92YWwLc29jaWFsc2hhcmUGcGVvcGxlBml0YWxpYwZkZWxldGUEYmFjawNiYW4FZW1haWwEYm9sZAdwcmV2aWV3BXNoYXJlCWRhc2hib2FyZAZ0aGFua3MFdG9kYXkKY29udHJhY3QtMQdzcGlubmVyBXBob3RvBWV2ZW50B2J1aWxkZXIManVzdGlmeV90ZXh0EWNlbnRlcl9hbGlnbl90ZXh0BGVkaXQGbGF5b3V0CHByaW9yaXR5EHN0YW5kYXJkX29iamVjdHMHY29udGFjdAhjdXN0b205MwdlbWFpbC0xB3N1Y2Nlc3MHcmVmcmVzaA9sZWZ0X2FsaWduX3RleHQEZG93bgVjaGFydARjaGF0BWVycm9yBGxlZnQLcmVtb3ZlX2xpbmsHc3VtbWFyeQhkb2N1bWVudAZkcmFmdHMNc3VtbWFyeWRldGFpbAdyZXBsYWNlBGxpa2UIZG93bmxvYWQFY2hlY2sLY2hldnJvbmxlZnQGZXhwYW5kBGxpbmsFcmVwbHkFdGFibGUEZmVlZAdldmVudC0xDnRpbGVfY2FyZF9saXN0FHJpY2h0ZXh0YnVsbGV0ZWRsaXN0BGxpc3QIZmF2b3JpdGUMY2hldnJvbnJpZ2h0C2NoZXZyb25kb3duBmZpbHRlcgRtb3ZlDnJpY2h0ZXh0aW5kZW50CXVuZGVybGluZQhmZWVkYmFjawRmaWxlBHVuZG8UcmljaHRleHRudW1iZXJlZGxpc3QEbG9jawpmaWx0ZXJsaXN0CWNoZXZyb251cAVjbGVhcgdmb3J3YXJkCm5ld193aW5kb3cPcmljaHRleHRvdXRkZW50BnVubG9jawtvcHBvcnR1bml0eQRwb3N0AnVwBnNlYXJjaANuZXcGZnJvemVuCGNvbW1lbnRzBnJlY2VudAltYWdpY3dhbmQYZGlzY291bnRzY2hlZHVsZWljb25zLTAyCGN1c3RvbTkwCGN1c3RvbTI2CHRyZW5kaW5nBnRh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I7AEQ2CwASuwBSVhsAUlsAJiILAAUFiwQGBZZrABY7AEJmEgsAQlYGQjsAMlYGRQWCEbIyFZIyAgsAQmI0ZhOFktsDcssAAWICAgsAUmIC5HI0cjYSM8OC2wOCywABYgsAgjQiAgIEYjR7ABKyNhOC2wOSywABawAyWwAiVHI0cjYbAAVFguIDwjIRuwAiWwAiVHI0cjYSCwBSWwBCVHI0cjYbAGJbAFJUmwAiVhuQgACABjYyMgWGIbIVljuAQAYiCwAFBYsEBgWWawAWNgIy4jICA8ijgjIVktsDossAAWILAIQyAuRyNHI2EgYLAgYGawAmIgsABQWLBAYFlmsAFjIyAgPIo4LbA7LCMgLkawAiVGUlggPFkusSsBFCstsDwsIyAuRrACJUZQWCA8WS6xKwEUKy2wPSwjIC5GsAIlRlJYIDxZIyAuRrACJUZQWCA8WS6xKwEUKy2wPiywNSsjIC5GsAIlRlJYIDxZLrErARQrLbA/LLA2K4ogIDywBCNCijgjIC5GsAIlRlJYIDxZLrErARQrsARDLrArKy2wQCywABawBCWwBCYgLkcjRyNhsAlDKyMgPCAuIzixKwEUKy2wQSyxCAQlQrAAFrAEJbAEJSAuRyNHI2EgsAQjQrAJQysgsGBQWCCwQFFYswIgAyAbswImAxpZQkIjIEewBEOwAmIgsABQWLBAYFlmsAFjYCCwASsgiophILACQ2BkI7ADQ2FkUFiwAkNhG7ADQ2BZsAMlsAJiILAAUFiwQGBZZrABY2GwAiVGYTgjIDwjOBshICBGI0ewASsjYTghWbErARQrLbBCLLA1Ky6xKwEUKy2wQyywNishIyAgPLAEI0IjOLErARQrsARDLrArKy2wRCywABUgR7AAI0KyAAEBFRQTLrAxKi2wRSywABUgR7AAI0KyAAEBFRQTLrAxKi2wRiyxAAEUE7AyKi2wRyywNCotsEgssAAWRSMgLiBGiiNhOLErARQrLbBJLLAII0KwSCstsEossgAAQSstsEsssgABQSstsEwssgEAQSstsE0ssgEBQSstsE4ssgAAQistsE8ssgABQistsFAssgEAQistsFEssgEBQistsFIssgAAPistsFMssgABPistsFQssgEAPistsFUssgEBPistsFYssgAAQCstsFcssgABQCstsFgssgEAQCstsFkssgEBQCstsFossgAAQystsFsssgABQystsFwssgEAQystsF0ssgEBQystsF4ssgAAPystsF8ssgABPystsGAssgEAPystsGEssgEBPystsGIssDcrLrErARQrLbBjLLA3K7A7Ky2wZCywNyuwPCstsGUssAAWsDcrsD0rLbBmLLA4Ky6xKwEUKy2wZyywOCuwOystsGgssDgrsDwrLbBpLLA4K7A9Ky2waiywOSsusSsBFCstsGsssDkrsDsrLbBsLLA5K7A8Ky2wbSywOSuwPSstsG4ssDorLrErARQrLbBvLLA6K7A7Ky2wcCywOiuwPCstsHEssDorsD0rLbByLLMJBAIDRVghGyMhWUIrsAhlsAMkUHiwARUwLQBLuADIUlixAQGOWbABuQgACABjcLEABUKyAAEAKrEABUKzCgIBCCqxAAVCsw4AAQgqsQAGQroCwAABAAkqsQAHQroAQAABAAkqsQMARLEkAYhRWLBAiFixA2REsSYBiFFYugiAAAEEQIhjVFixAwBEWVlZWbMMAgEMKrgB/4WwBI2xAgBEAAA=') format('truetype');
}
/* Chrome hack: SVG is rendered more smooth in Windozze. 100% magic, uncomment if you need it. */
/* Note, that will break hinting! In other OS-es font will be not as sharp as it could be */
/*
@media screen and (-webkit-min-device-pixel-ratio:0) {
  @font-face {
    font-family: 'sf-icons';
    src: url('../font/sf-icons.svg?87742446#sf-icons') format('svg');
  }
}
*/
[class^="sf-icon-"]:before,
[class*=" sf-icon-"]:before {
  font-family: "sf-icons";
  font-style: normal;
  font-weight: normal;
  speak: none;
  display: inline-block;
  text-decoration: inherit;
  width: 1em;
  margin-right: 0.2em;
  text-align: center;
  /* opacity: .8; */
  /* For safety - reset parent styles, that can break glyph codes*/
  font-variant: normal;
  text-transform: none;
  /* fix buttons height, for twitter bootstrap */
  line-height: 1em;
  /* Animation center compensation - margins should be symmetric */
  /* remove if not needed */
  margin-left: 0.2em;
  /* you can be more comfortable with increased icons size */
  /* font-size: 120%; */
  /* Uncomment for 3D effect */
  /* text-shadow: 1px 1px 1px rgba(127, 127, 127, 0.3); */
}
.sf-icon-3dots:before {
  content: '\e800';
}
/* '' */
.sf-icon-add:before {
  content: '\e801';
}
/* '' */
.sf-icon-close:before {
  content: '\e802';
}
/* '' */
.sf-icon-pricebook:before {
  content: '\e803';
}
/* '' */
.sf-icon-help:before {
  content: '\e804';
}
/* '' */
.sf-icon-notebook:before {
  content: '\e805';
}
/* '' */
.sf-icon-rows:before {
  content: '\e806';
}
/* '' */
.sf-icon-upload:before {
  content: '\e807';
}
/* '' */
.sf-icon-clock:before {
  content: '\e808';
}
/* '' */
.sf-icon-groups:before {
  content: '\e809';
}
/* '' */
.sf-icon-open_folder:before {
  content: '\e80a';
}
/* '' */
.sf-icon-right_align_text:before {
  content: '\e80b';
}
/* '' */
.sf-icon-product:before {
  content: '\e80c';
}
/* '' */
.sf-icon-question_feed:before {
  content: '\e80d';
}
/* '' */
.sf-icon-warning:before {
  content: '\e80e';
}
/* '' */
.sf-icon-user:before {
  content: '\e80f';
}
/* '' */
.sf-icon-right:before {
  content: '\e810';
}
/* '' */
.sf-icon-notification:before {
  content: '\e811';
}
/* '' */
.sf-icon-home:before {
  content: '\e812';
}
/* '' */
.sf-icon-contract:before {
  content: '\e813';
}
/* '' */
.sf-icon-adduser:before {
  content: '\e814';
}
/* '' */
.sf-icon-apps:before {
  content: '\e815';
}
/* '' */
.sf-icon-copy:before {
  content: '\e816';
}
/* '' */
.sf-icon-image:before {
  content: '\e817';
}
/* '' */
.sf-icon-open:before {
  content: '\e818';
}
/* '' */
.sf-icon-settings:before {
  content: '\e819';
}
/* '' */
.sf-icon-zoomin:before {
  content: '\e81a';
}
/* '' */
.sf-icon-record:before {
  content: '\e81b';
}
/* '' */
.sf-icon-arrowdown:before {
  content: '\e81c';
}
/* '' */
.sf-icon-cut:before {
  content: '\e81d';
}
/* '' */
.sf-icon-insert_template:before {
  content: '\e81e';
}
/* '' */
.sf-icon-opened_folder:before {
  content: '\e81f';
}
/* '' */
.sf-icon-side_list:before {
  content: '\e820';
}
/* '' */
.sf-icon-zoomout:before {
  content: '\e821';
}
/* '' */
.sf-icon-quotes:before {
  content: '\e822';
}
/* '' */
.sf-icon-related_list:before {
  content: '\e823';
}
/* '' */
.sf-icon-gdoc:before {
  content: '\e824';
}
/* '' */
.sf-icon-snippet:before {
  content: '\e825';
}
/* '' */
.sf-icon-page:before {
  content: '\e826';
}
/* '' */
.sf-icon-custom_apps:before {
  content: '\e827';
}
/* '' */
.sf-icon-arrowup:before {
  content: '\e828';
}
/* '' */
.sf-icon-attach:before {
  content: '\e829';
}
/* '' */
.sf-icon-dayview:before {
  content: '\e82a';
}
/* '' */
.sf-icon-info:before {
  content: '\e82b';
}
/* '' */
.sf-icon-insert_tag_field:before {
  content: '\e82c';
}
/* '' */
.sf-icon-paste:before {
  content: '\e82d';
}
/* '' */
.sf-icon-sort:before {
  content: '\e82e';
}
/* '' */
.sf-icon-pdf:before {
  content: '\e82f';
}
/* '' */
.sf-icon-report:before {
  content: '\e830';
}
/* '' */
.sf-icon-task:before {
  content: '\e831';
}
/* '' */
.sf-icon-approval:before {
  content: '\e832';
}
/* '' */
.sf-icon-socialshare:before {
  content: '\e833';
}
/* '' */
.sf-icon-people:before {
  content: '\e834';
}
/* '' */
.sf-icon-italic:before {
  content: '\e835';
}
/* '' */
.sf-icon-delete:before {
  content: '\e836';
}
/* '' */
.sf-icon-back:before {
  content: '\e837';
}
/* '' */
.sf-icon-ban:before {
  content: '\e838';
}
/* '' */
.sf-icon-email:before {
  content: '\e839';
}
/* '' */
.sf-icon-bold:before {
  content: '\e83a';
}
/* '' */
.sf-icon-preview:before {
  content: '\e83b';
}
/* '' */
.sf-icon-share:before {
  content: '\e83c';
}
/* '' */
.sf-icon-dashboard:before {
  content: '\e83d';
}
/* '' */
.sf-icon-thanks:before {
  content: '\e83e';
}
/* '' */
.sf-icon-today:before {
  content: '\e83f';
}
/* '' */
.sf-icon-contract-1:before {
  content: '\e840';
}
/* '' */
.sf-icon-spinner:before {
  content: '\e841';
}
/* '' */
.sf-icon-photo:before {
  content: '\e842';
}
/* '' */
.sf-icon-event:before {
  content: '\e843';
}
/* '' */
.sf-icon-builder:before {
  content: '\e844';
}
/* '' */
.sf-icon-justify_text:before {
  content: '\e845';
}
/* '' */
.sf-icon-center_align_text:before {
  content: '\e846';
}
/* '' */
.sf-icon-edit:before {
  content: '\e847';
}
/* '' */
.sf-icon-layout:before {
  content: '\e848';
}
/* '' */
.sf-icon-priority:before {
  content: '\e849';
}
/* '' */
.sf-icon-standard_objects:before {
  content: '\e84a';
}
/* '' */
.sf-icon-contact:before {
  content: '\e84b';
}
/* '' */
.sf-icon-custom93:before {
  content: '\e84c';
}
/* '' */
.sf-icon-email-1:before {
  content: '\e84d';
}
/* '' */
.sf-icon-success:before {
  content: '\e84e';
}
/* '' */
.sf-icon-refresh:before {
  content: '\e84f';
}
/* '' */
.sf-icon-left_align_text:before {
  content: '\e850';
}
/* '' */
.sf-icon-down:before {
  content: '\e851';
}
/* '' */
.sf-icon-chart:before {
  content: '\e852';
}
/* '' */
.sf-icon-chat:before {
  content: '\e853';
}
/* '' */
.sf-icon-error:before {
  content: '\e854';
}
/* '' */
.sf-icon-left:before {
  content: '\e855';
}
/* '' */
.sf-icon-remove_link:before {
  content: '\e856';
}
/* '' */
.sf-icon-summary:before {
  content: '\e857';
}
/* '' */
.sf-icon-document:before {
  content: '\e858';
}
/* '' */
.sf-icon-drafts:before {
  content: '\e859';
}
/* '' */
.sf-icon-summarydetail:before {
  content: '\e85a';
}
/* '' */
.sf-icon-replace:before {
  content: '\e85b';
}
/* '' */
.sf-icon-like:before {
  content: '\e85c';
}
/* '' */
.sf-icon-download:before {
  content: '\e85d';
}
/* '' */
.sf-icon-check:before {
  content: '\e85e';
}
/* '' */
.sf-icon-chevronleft:before {
  content: '\e85f';
}
/* '' */
.sf-icon-expand:before {
  content: '\e860';
}
/* '' */
.sf-icon-link:before {
  content: '\e861';
}
/* '' */
.sf-icon-reply:before {
  content: '\e862';
}
/* '' */
.sf-icon-table:before {
  content: '\e863';
}
/* '' */
.sf-icon-feed:before {
  content: '\e864';
}
/* '' */
.sf-icon-event-1:before {
  content: '\e865';
}
/* '' */
.sf-icon-tile_card_list:before {
  content: '\e866';
}
/* '' */
.sf-icon-richtextbulletedlist:before {
  content: '\e867';
}
/* '' */
.sf-icon-list:before {
  content: '\e868';
}
/* '' */
.sf-icon-favorite:before {
  content: '\e869';
}
/* '' */
.sf-icon-chevronright:before {
  content: '\e86a';
}
/* '' */
.sf-icon-chevrondown:before {
  content: '\e86b';
}
/* '' */
.sf-icon-filter:before {
  content: '\e86c';
}
/* '' */
.sf-icon-move:before {
  content: '\e86d';
}
/* '' */
.sf-icon-richtextindent:before {
  content: '\e86e';
}
/* '' */
.sf-icon-underline:before {
  content: '\e86f';
}
/* '' */
.sf-icon-feedback:before {
  content: '\e870';
}
/* '' */
.sf-icon-file:before {
  content: '\e871';
}
/* '' */
.sf-icon-undo:before {
  content: '\e872';
}
/* '' */
.sf-icon-richtextnumberedlist:before {
  content: '\e873';
}
/* '' */
.sf-icon-lock:before {
  content: '\e874';
}
/* '' */
.sf-icon-filterlist:before {
  content: '\e875';
}
/* '' */
.sf-icon-chevronup:before {
  content: '\e876';
}
/* '' */
.sf-icon-clear:before {
  content: '\e877';
}
/* '' */
.sf-icon-forward:before {
  content: '\e878';
}
/* '' */
.sf-icon-new_window:before {
  content: '\e879';
}
/* '' */
.sf-icon-richtextoutdent:before {
  content: '\e87a';
}
/* '' */
.sf-icon-unlock:before {
  content: '\e87b';
}
/* '' */
.sf-icon-opportunity:before {
  content: '\e87c';
}
/* '' */
.sf-icon-post:before {
  content: '\e87d';
}
/* '' */
.sf-icon-up:before {
  content: '\e87e';
}
/* '' */
.sf-icon-search:before {
  content: '\e87f';
}
/* '' */
.sf-icon-new:before {
  content: '\e880';
}
/* '' */
.sf-icon-frozen:before {
  content: '\e881';
}
/* '' */
.sf-icon-comments:before {
  content: '\e882';
}
/* '' */
.sf-icon-recent:before {
  content: '\e883';
}
/* '' */
.sf-icon-magicwand:before {
  content: '\e884';
}
/* '' */
.sf-icon-discountscheduleicons-02:before {
  content: '\e885';
}
/* '' */
.sf-icon-custom90:before {
  content: '\e886';
}
/* '' */
.sf-icon-cancel-circled:before {
  content: '\e886';
}
/* '' */
.sf-icon-custom26:before {
  content: '\e887';
}
/* '' */
.sf-icon-trending:before {
  content: '\e888';
}
/* '' */
.sf-icon-target:before {
  content: '\e889';
}
/* '' */
.sf-icon-cube:before {
  content: '\e88b';
}
/* '' */
.sf-icon-paired-lines:before {
  content: '\e88c';
}
/* '' */
/* The following is copied from icons/css/sb-embedded.css as less-plugin-clean-css could handle a @import */
@font-face {
  font-family: 'sb';
  src: url('../font/sb.eot?49340248');
  src: url('../font/sb.eot?49340248#iefix') format('embedded-opentype'), url('../font/sb.svg?49340248#sb') format('svg');
  font-weight: normal;
  font-style: normal;
}
@font-face {
  font-family: 'sb';
  src: url('data:application/octet-stream;base64,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') format('woff'), url('data:application/octet-stream;base64,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') format('truetype');
}
/* Chrome hack: SVG is rendered more smooth in Windozze. 100% magic, uncomment if you need it. */
/* Note, that will break hinting! In other OS-es font will be not as sharp as it could be */
/*
@media screen and (-webkit-min-device-pixel-ratio:0) {
  @font-face {
    font-family: 'sb';
    src: url('../font/sb.svg?49340248#sb') format('svg');
  }
}
*/
[class^="sb-icon-"]:before,
[class*=" sb-icon-"]:before {
  font-family: "sb";
  font-style: normal;
  font-weight: normal;
  speak: none;
  display: inline-block;
  text-decoration: inherit;
  width: 1em;
  margin-right: 0.2em;
  text-align: center;
  /* opacity: .8; */
  /* For safety - reset parent styles, that can break glyph codes*/
  font-variant: normal;
  text-transform: none;
  /* fix buttons height, for twitter bootstrap */
  line-height: 1em;
  /* Animation center compensation - margins should be symmetric */
  /* remove if not needed */
  margin-left: 0.2em;
  /* you can be more comfortable with increased icons size */
  /* font-size: 120%; */
  /* Uncomment for 3D effect */
  /* text-shadow: 1px 1px 1px rgba(127, 127, 127, 0.3); */
}
.sb-icon-filter:before {
  content: '\e800';
}
/* '' */
.sb-icon-th-large:before {
  content: '\e801';
}
/* '' */
.sb-icon-th:before {
  content: '\e802';
}
/* '' */
.sb-icon-th-list:before {
  content: '\e803';
}
/* '' */
.sb-icon-pencil:before {
  content: '\e804';
}
/* '' */
.sb-icon-cancel:before {
  content: '\e805';
}
/* '' */
.sb-icon-plus:before {
  content: '\e806';
}
/* '' */
.sb-icon-cog:before {
  content: '\e807';
}
/* '' */
.sb-icon-align-justify:before {
  content: '\e808';
}
/* '' */
.sb-icon-ok:before {
  content: '\e809';
}
/* '' */
.sb-icon-lock:before {
  content: '\e80a';
}
/* '' */
.sb-icon-exchange:before {
  content: '\e80b';
}
/* '' */
.sb-icon-down:before {
  content: '\e80c';
}
/* '' */
.sb-icon-up:before {
  content: '\e80d';
}
/* '' */
.sb-icon-help-circled:before {
  content: '\e80e';
}
/* '' */
.sb-icon-info-circled:before {
  content: '\e80f';
}
/* '' */
.sb-icon-sort-name-up:before {
  content: '\e810';
}
/* '' */
.sb-icon-sort-name-down:before {
  content: '\e811';
}
/* '' */
.sb-icon-down-dir:before {
  content: '\e812';
}
/* '' */
.sb-icon-up-dir:before {
  content: '\e813';
}
/* '' */
.sb-icon-compass:before {
  content: '\e814';
}
/* '' */
.sb-icon-right-dir:before {
  content: '\e815';
}
/* '' */
.sb-icon-left-dir:before {
  content: '\e816';
}
/* '' */
.sb-icon-docs:before {
  content: '\e817';
}
/* '' */
.sb-icon-circle-empty:before {
  content: '\e818';
}
/* '' */
.sb-icon-dot-circled:before {
  content: '\e819';
}
/* '' */
.sb-icon-to-end:before {
  content: '\e81a';
}
/* '' */
.sb-icon-to-start:before {
  content: '\e81b';
}
/* '' */
.sb-icon-fast-forward:before {
  content: '\e81c';
}
/* '' */
.sb-icon-fast-backward:before {
  content: '\e81d';
}
/* '' */
.sb-icon-cw:before {
  content: '\e81e';
}
/* '' */
.sb-icon-level-down:before {
  content: '\e81f';
}
/* '' */
.sb-icon-attention:before {
  content: '\e820';
}
/* '' */
.sb-icon-attention-circled:before {
  content: '\e821';
}
/* '' */
.sb-icon-search:before {
  content: '\e822';
}
/* '' */
.sb-icon-ccw:before {
  content: '\e823';
}
/* '' */
.sb-icon-star:before {
  content: '\e824';
}
/* '' */
.sb-icon-star-empty:before {
  content: '\e825';
}
/* '' */
/* end of import from sb-embedded.css */
.sb *[class^="sb-icon-"]:before,
.sb *[class*=" sb-icon-"]:before {
  font-family: 'sb';
  color: inherit;
  /* Better Font Rendering =========== */
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.sb-icon-exchange:before {
  -webkit-transform: rotate(90deg);
  -moz-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg);
}
.sb-icon-loading {
  width: 148px;
  text-align: center;
}
.sb-icon-loading > div {
  width: 36px;
  height: 18px;
  margin: 2px;
  background-color: #0070d2;
  border-radius: 10%;
  display: inline-block;
  -webkit-animation: bouncedelay 1.4s infinite ease-in-out;
  animation: bouncedelay 1.4s infinite ease-in-out;
  /* Prevent first frame from flickering when animation starts */
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}
.sb-icon-loading .sb-icon-bounce1 {
  -webkit-animation-delay: -0.32s;
  animation-delay: -0.32s;
}
.sb-icon-loading .sb-icon-bounce2 {
  -webkit-animation-delay: -0.16s;
  animation-delay: -0.16s;
}
.sbPageTitle .sf-icon-custom90 {
  background-color: #5A9CDD;
}
.sbPageTitle .sf-icon-custom93 {
  background-color: #904D4C;
}
.sbPageTitle .sf-icon-product {
  background-color: #B781D3;
}
.sbPageTitle .sf-icon-settings {
  background-color: #EDB566;
}
.sbPageTitle .sf-icon-download {
  background-color: #54698D;
}
.sbPageTitle .sf-icon-contract-1 {
  background-color: #6EC06E;
}
.sbPageTitle .sf-icon-approval {
  background-color: #00C6B7;
}
.sbPageTitle .sf-icon-post {
  background-color: #65CAE4;
}
.sbPageTitle .sf-icon-gdoc {
  background-color: #54698D;
}
.sbPageTitle .sf-icon-document {
  background-color: #baac93;
}
.sbPageTitle .sf-icon-recent {
  background-color: #6CA1E9;
}
.sbPageTitle .sf-icon-copy {
  background-color: #6CA0E9;
}
.sbPageTitle .sf-icon-favorite {
  background-color: #FF7B84;
}
.sbPageTitle .sf-icon-refresh.resize {
  background-color: #6CA0E9;
}
.sbPageTitle .sf-icon-replace {
  background-color: #54698D;
}
@-webkit-keyframes bouncedelay {
  0%,
  80%,
  100% {
    -webkit-transform: scale(0);
  }
  40% {
    -webkit-transform: scale(1);
  }
}
@keyframes bouncedelay {
  0%,
  80%,
  100% {
    transform: scale(0);
    -webkit-transform: scale(0);
  }
  40% {
    transform: scale(1);
    -webkit-transform: scale(1);
  }
}
#bodyCell {
  position: relative;
  overflow: hidden;
  padding: 0px;
  display: inline-block;
  width: 100%;
  min-height: 500px;
}
#bodyDiv_setup > .outer {
  background-color: #ffffff !important;
}
#bodyDiv_setup > .outer .oLeft {
  background-color: #f4f6f9 !important;
}
#sidebarCell.sidebarCollapsed {
  padding-left: 0;
}
#sidebarCell.sidebarCollapsed + #bodyCell {
  margin-left: -1px;
}
#MoreTabs_Tab > #MoreTabs_List {
  z-index: 10;
}
table td {
  font-family: inherit;
}
.sb ul li,
.sb ol li {
  margin: 0;
  padding: 0;
}
.sb .message {
  border-radius: 3px;
  margin: 15px 15px 0 24px;
  padding: 12px;
  font-size: 14px;
  color: #16325C;
  display: inline-block;
  background: none;
}
.sb .message .msgIcon {
  background: none;
  width: 0;
  height: 0;
}
.sb .message .messageText {
  margin: 0 0 0 30px;
}
.sb .message .messageText > span,
.sb .message .messageText h4,
.sb .message .messageText > div {
  display: inline-block;
  line-height: 20px;
}
.sb .message .messageText h4 {
  color: #cc0000;
  margin-left: 10px;
  margin-right: 6px;
}
.sb .message .messageText > div:not(:first-of-type) {
  display: block;
}
.sb .message .messageText:before {
  font-family: "sb";
  font-style: normal;
  font-weight: normal;
  font-size: 20px;
  speak: none;
  display: inline-block;
  text-decoration: inherit;
  width: 1em;
  margin-left: -30px;
  text-align: center;
  font-variant: normal;
  text-transform: none;
  line-height: 1em;
}
.sb .message.errorM2 .messageText,
.sb .message.errorM3 .messageText,
.sb .message.errorM4 .messageText,
.sb .message.errorM5 .messageText,
.sb .message.errorM6 .messageText {
  color: #cc0000;
}
.sb .message.errorM2 .messageText:before,
.sb .message.errorM3 .messageText:before,
.sb .message.errorM4 .messageText:before,
.sb .message.errorM5 .messageText:before,
.sb .message.errorM6 .messageText:before {
  content: '\e821';
}
.sb .message.warningM2 .messageText,
.sb .message.warningM3 .messageText,
.sb .message.warningM4 .messageText,
.sb .message.warningM5 .messageText,
.sb .message.warningM6 .messageText {
  color: #d98633;
}
.sb .message.warningM2 .messageText:before,
.sb .message.warningM3 .messageText:before,
.sb .message.warningM4 .messageText:before,
.sb .message.warningM5 .messageText:before,
.sb .message.warningM6 .messageText:before {
  content: '\e820';
}
.sb .message.infoM2 .messageText,
.sb .message.infoM3 .messageText,
.sb .message.infoM4 .messageText,
.sb .message.infoM5 .messageText,
.sb .message.infoM6 .messageText {
  color: #0000cc;
}
.sb .message.infoM2 .messageText:before,
.sb .message.infoM3 .messageText:before,
.sb .message.infoM4 .messageText:before,
.sb .message.infoM5 .messageText:before,
.sb .message.infoM6 .messageText:before {
  content: '\e80f';
}
.sb,
.ui-tooltip {
  font-size: 10px;
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif !important;
}
.sb * {
  box-sizing: border-box;
}
.sb *.hidden {
  display: none;
}
.sbClear,
.sbPageBlockSection:after {
  content: "";
  display: table;
  clear: both;
}
.sbLink {
  color: #0070D2;
}
#sbCpqSettings {
  padding: 15px;
}
#sbCpqSettings .bPageBlock {
  border: 0 !important;
  background: none !important;
}
#sbCpqSettings .sbTabs {
  font-family: inherit;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line {
  border-bottom: 1px solid #d0d0d0;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tabhdr-cell-active {
  border-bottom: 4px solid #166bbf;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tabhdr-side-border {
  display: none;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tabhdr-side-cell {
  border: 0;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tab-active,
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tab-inactive {
  background: none !important;
  font-size: 14px !important;
  padding: 0 16px 6px 16px;
}
#sbCpqSettings .sbTabs .rich-tab-header,
#sbCpqSettings .sbTabs .rich-tabpanel-content {
  font-family: inherit !important;
  font-size: inherit !important;
}
#sbCpqSettings .sbTabs .rich-tabpanel-content {
  background: none !important;
  border: 0 !important;
}
#sbCpqSettings .sbTabs .labelCol,
#sbCpqSettings .sbTabs .dataCol {
  padding-top: 8px;
  padding-bottom: 8px;
  vertical-align: middle;
}
#sbCpqSettings .sbTabs .labelCol,
#sbCpqSettings .sbTabs .data2Col {
  font-size: 14px;
  font-weight: normal;
}
#sbCpqSettings .sbTabs input:not([type=submit]):not([type=checkbox]),
#sbCpqSettings .sbTabs select {
  font-size: 14px;
  width: 220px !important;
}
#sbCpqSettings .sbTabs .sbBtn {
  font-size: inherit;
}
.themePage .sbHeaderBgColor {
  color: #f4f6f9;
}
.themePage .sbHeaderSecondaryBgColor {
  color: #f4f6f9;
}
.themePage .sbHeaderBorderColor {
  color: #d0d0d0;
}
.themePage .sbHeaderFontColor {
  color: #16325c;
}
.themePage .sbHeaderSupportFontColor {
  color: #54698d;
}
.themePage .sbBgColor {
  color: #ffffff;
}
.themePage .sbDetailBgColor {
  color: #f4f6f9;
}
.themePage .sbFontColor {
  color: #16325C;
}
.themePage .sbSecondaryFontColor {
  color: #696969;
}
.themePage .sbBorderColor {
  color: #D8DDE6;
}
.themePage .sbTableHeaderFontColor {
  color: #54698d;
}
.themePage .sbTableRowHoverColor {
  color: #F4F6F9;
}
.themePage .sbGroupBtnBgColor {
  color: #ffffff;
}
.themePage .sbGroupBtnBorderColor {
  color: #d8dde6;
}
.themePage .sbGroupBtnFontColor {
  color: #0070d2;
}
.themePage .sbGroupBtnHoverBgColor {
  color: #f4f6f9;
}
.themePage .sbGroupBtnHoverFontColor {
  color: #0070d2;
}
.themePage .sbGroupBtnDisabledFontColor {
  color: #bebebe;
}
.themePage .sbPrimaryBtnBgColor {
  color: #0070d2;
}
.themePage .sbPrimaryBtnFontColor {
  color: #ffffff;
}
.themePage .sbPrimaryBtnHoverBgColor {
  color: #005fb2;
}
.themePage .sbAccentIconColor {
  color: #0070d2;
}
.themePage .sbAccentIconHoverColor {
  color: #16325c;
}
.themePage .sbAccentIconDisabledColor {
  color: #888888;
}
.themePage .sbIconColor {
  color: #888;
}
.themePage .sbTabSelectedColor {
  color: #166bbf;
}
.themePage {
  color: #16325C;
  background-color: #ffffff;
}
.themePage .sbTitles h2 {
  color: #54698d;
}
.themePage .sbBtn {
  background: #ffffff;
  color: #0070d2;
  border-color: #d8dde6;
}
.themePage .sbBtn:hover:not([disabled]) {
  background: #f4f6f9;
  color: #0070d2;
}
.themePage .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  border-color: #0070d2;
  color: #ffffff;
}
.themePage .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
.themePage .normal.sf-icon-copy:before {
  color: #888;
}
.themePage .accent.sf-icon-copy:before {
  color: #0070d2;
}
.themePage .accent.sf-icon-copy:hover::before {
  color: #16325c;
}
.themePage .disabled.sf-icon-copy:before {
  color: #888888;
}
.themePage .sf-icon-copy {
  font-size: 24px;
  padding-right: 40px;
}
.themePage .sbTable > tbody > tr > td {
  font-size: 10px;
}
.themePage .bottomPadding {
  padding-bottom: 40px;
}
.themePage .themeHeader {
  padding-top: 40px;
  padding-left: 60px;
  padding-bottom: 10px;
  border-bottom-style: solid !important;
  border-bottom-width: 1px !important;
  border-bottom-color: #D8DDE6 !important;
}
.themePage .themeHeader h2 {
  color: #16325C !important;
}
.themePage .themeSubHeader {
  padding-top: 10px;
  padding-left: 60px;
}
.themePage .themeSubHeader h3 {
  color: #16325C !important;
}
.themePage select {
  width: 140px;
}
.themePage .themeSelectorWrapper {
  width: 300px;
  display: inline-block;
  margin-left: 55px;
  margin-right: 55px;
  margin-top: 40px;
}
.themePage .themeSelectorWrapper .themeContainer {
  display: flex;
  flex-direction: column;
}
.themePage .themeSelectorWrapper > .requiredInput {
  margin-top: 8px;
  float: right;
}
.themePage .tooltip {
  color: #54698d !important;
}
.themePage .tooltip:hover {
  color: #005fb2 !important;
}
.themePage .tooltipText {
  display: none;
  position: absolute;
  z-index: 10;
  background-color: #fff;
  width: 140px;
  padding: 6px;
  color: #16325C;
  font-family: inherit;
  font-size: 14px;
  border-radius: 4px;
  box-shadow: 0 2px 3px 0 rgba(0, 0, 0, 0.16);
  border: 1px solid #d8dde6;
}
.themePage .themeContainer > .input {
  margin-top: 10px;
  width: 140px;
}
.themePage .themeContainer > .requiredInput {
  margin-top: 10px;
}
.themePage .themeContainer > .full-spectrum {
  margin-top: 10px;
  width: 52px;
}
.themePage .themeSelectorWrapper > span {
  position: relative;
  top: 11px;
}
.themePage .themeSelectorWrapper > .input {
  float: right;
  margin-top: 8px;
  width: 140px;
}
.themePage .fieldWrapper {
  width: 300px;
  display: inline-block;
  margin-left: 55px;
  margin-right: 55px;
  margin-top: 40px;
}
.themePage .fieldWrapper > input {
  float: right;
  margin-right: 25px;
  margin-top: 9px;
}
.themePage .fieldWrapper span {
  position: relative;
  top: 11px;
}
.themePage .backgroundHide {
  display: none;
}
.themePage .sp-replacer.sp-light.full-spectrum {
  float: right;
  margin-right: 10px;
}
.themePage .content {
  font-size: 14px;
}
.themePage .sbButtons {
  margin-left: 10px;
}
.themePage .sp-replacer {
  border-color: #d8dde6 !important;
  padding: 0 !important;
  background-color: inherit !important;
  border-radius: 5px;
}
.themePage .sp-dd {
  line-height: 40px !important;
  height: 40px!important;
}
.themePage .sp-preview {
  margin-right: 0px !important;
  width: 40px !important;
  height: 40px !important;
  border-width: 0px !important;
}
.themePage .sp-container {
  background-color: #ffffff !important;
  border: 1px solid #d8dde6 !important;
  border-radius: 5px!important;
}
.themePage #toast {
  transition: opacity 0.25s ease-in-out;
  opacity: 0;
  display: none;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
}
.themePage #toast.visible {
  opacity: 1;
  display: flex;
  justify-content: center;
}
.themePage #alert {
  display: flex;
  border-radius: 0.25rem;
  margin: 0.5rem 0.5rem 0 0.5rem;
  padding: 0.75rem 1.5rem;
  min-width: 30rem;
  text-align: left;
}
.themePage #alert.success {
  background-color: rgba(4, 132, 75, 0.95);
  color: #FFF;
}
.themePage #alert.error {
  background-color: #c23934;
  color: #FFF;
}
.themePage #alert .notify {
  display: flex;
  padding-top: 0.25rem;
}
.themePage #alert .notify .content {
  display: flex;
}
.themePage #alert .notify .content i {
  margin-top: -0.25rem;
  margin-right: 0.5rem;
  overflow: hidden;
  font-size: 1.25rem;
}
.themePage #alert .notify .content h2 {
  line-height: 1.25;
  padding-bottom: 0;
  color: #FFF;
  font-weight: 300;
}
.themePage #alert .btn {
  border: none;
  cursor: pointer;
  padding: 0;
  margin: 0;
  margin-left: 0.25rem;
  transform: translate3d(0.25rem, 0, 0);
  background-color: transparent;
  background-image: none;
  color: #FFF;
  font-size: 14px;
}
.themePage #alert .btn i {
  font-size: 1.25rem;
  margin-right: 0;
}
.themePage #alert .btn:focus {
  outline: 0;
}
div.content {
  display: flex;
}
table div.content {
  margin: 0 1rem;
}
#row1 {
  background-color: transparent;
  flex-grow: 1;
}
#row1 h1 {
  margin: 30px 0;
}
#row1 > div fieldset {
  position: relative;
  margin: 0 0 2.5rem 0;
  border: none;
  padding: 0;
  color: #fff;
}
#row1 > div fieldset legend {
  cursor: pointer;
  background-color: #9faab5;
  color: inherit;
  width: 100%;
  border-top-left-radius: 0.5rem;
  border-top-right-radius: 0.5rem;
  padding: 0.75rem 0.75rem 0.5rem 0.75rem;
}
#row1 > div fieldset legend .category-header {
  display: flex;
  justify-content: space-between;
}
#row1 > div fieldset legend .category-header h2 {
  font-weight: bold;
  color: inherit;
}
#row1 > div fieldset legend .category-header p {
  margin: 0;
}
#row1 > div fieldset legend p {
  font-weight: normal;
  color: inherit;
}
#row1 > div fieldset .fieldset-body {
  background-color: #f4f6f9;
  color: inherit;
  overflow: hidden;
  max-height: 0;
  transition: max-height 0.3s ease-in-out;
}
#row1 > div fieldset .fieldset-body > div {
  padding: 1.25rem;
}
#row1 > div fieldset .fieldset-body > div p {
  width: 290px;
  height: 68px;
  display: inline-block;
  margin-right: 1rem;
}
#row1 > div fieldset .fieldset-body > div p label {
  display: block;
  color: #54698d;
}
#row1 > div fieldset .fieldset-body > div p label a.tooltip {
  position: static;
}
#row1 > div fieldset .fieldset-body > div p label i {
  position: static;
}
#row1 > div fieldset .fieldset-body > div p > input {
  margin-top: 0.5rem;
}
#row1 .sp-light {
  float: none;
  margin-right: 0;
  margin-top: 0.5rem;
}
#row1 footer {
  cursor: pointer;
  background-color: #9faab5;
  color: inherit;
  padding: 0.5rem 0.75rem 0.75rem 0.75rem;
  border-top: 2px solid #eaeaea;
  border-bottom-left-radius: 0.5rem;
  border-bottom-right-radius: 0.5rem;
}
#row1 footer i {
  display: inline-block;
  transition: transform 0.3s ease-in-out;
}
#row1 select {
  margin-top: 10px;
}
#row2 {
  flex: 0 0 20%;
}
#row2 ul {
  position: fixed;
  width: 20%;
}
.sbBtn[disabled] {
  background: #e0e5ee;
  border-color: transparent;
  color: #fff;
  cursor: default;
}
input.btnDisabled.sbBtn {
  margin: 0;
  font-weight: normal;
  font-size: 14px;
  padding: 8px 12px;
}
input.btnDisabled.sbBtn:hover {
  color: #fff;
  border-color: #d8dde6;
}
#sbTranslate .sbDescription {
  width: 90%;
}
#sbTranslate .sbLongTextArea {
  width: 90%;
  border: 1px solid #D8DDE6;
}
#sbTranslate .sbPageBlockSection {
  background: none;
  border: none;
}
#sbTranslate .sbPageBlockSection select {
  min-width: 200px;
  font-size: 14px;
}
#sbTranslate .sbPageBlockSection > span {
  font-size: 14px;
  padding: 0 20px 0 40px;
}
#sbTranslate .sbFieldsTable {
  margin-top: 0;
  padding-top: 0;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td {
  height: 49px;
  vertical-align: middle;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td:nth-child(1),
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td:nth-child(2) {
  width: 20%;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td:nth-child(3) {
  width: 60%;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td > input,
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td textarea {
  width: 100%;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td > textarea {
  border: 1px solid #D8DDE6;
  border-radius: 3px;
  padding: 0 5px;
  min-height: 35px;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td:nth-child(1) {
  width: 15%;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td:nth-child(2) {
  width: 30%;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td:nth-child(3) {
  width: 55%;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td > input,
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td textarea {
  width: 100%;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td > textarea {
  border: 1px solid #D8DDE6;
  border-radius: 3px;
  padding: 0 5px;
  min-height: 35px;
}
#sbTranslate .sbTable .sbButtons {
  background: none;
}
#sbTranslate .sbTable .sbButtons .sbBtn {
  width: 35px;
  height: 40px;
}
#sbTranslate .cke_textarea_inline {
  border: 1px solid #D8DDE6;
  border-radius: 3px;
  padding: 0 5px;
  min-height: 70px;
}
#sbAssetSearch .sbTable {
  font-size: 10px;
}
#sbAssetSearch .sbTable > thead > tr > th:first-of-type,
#sbAssetSearch .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
#sbAssetSearch .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbAssetSearch .sbTools {
  float: right;
}
#sbAssetSearch .sbPageTitle.squeezed .sbTools {
  padding: 0;
}
#sbAssetSearch .sbPageTitle .sbTools {
  margin-right: 10px;
  padding: 7px 0;
}
#sbAssetSearch .sbPageTitle .sbTools > .sbTool {
  padding: 8px;
}
#sbAssetSearch .sbPageBlockSection {
  background: none;
  border: none;
}
#sbAssetSearch .sbPageBlockSection header {
  margin-bottom: 10px;
}
#sbAssetSearch table.sbTable {
  margin-bottom: 50px;
}
#sbAssetSearch .paginationControlsWrapper {
  position: fixed;
  left: 0;
  right: 0;
  bottom: 0;
  pointer-events: none;
}
#sbAssetSearch .paginationControls {
  padding: 4px;
  text-align: center;
  vertical-align: middle;
  margin-left: auto;
  margin-right: auto;
  width: 250px;
  pointer-events: auto;
  background-color: #ffffff;
  -webkit-border-top-left-radius: 4px;
  -webkit-border-top-right-radius: 4px;
  -moz-border-radius-topleft: 4px;
  -moz-border-radius-topright: 4px;
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
  -webkit-box-shadow: 3px 0px 5px 0px #aaaaaa;
  -moz-box-shadow: 3px 0px 5px 0px #aaaaaa;
  box-shadow: 3px 0px 5px 0px #aaaaaa;
}
#sbAssetSearch .paginationControls span {
  vertical-align: middle;
}
#sbAssetSearch .paginationControls input {
  height: auto;
  width: 30px;
  margin: 0 5px;
  font-size: 10px;
  padding: 2px;
  text-align: center;
}
#sbAssetSearch .paginationControls [class^=sb-icon] {
  font-size: 20px;
  margin-right: -5px;
  vertical-align: middle;
}
#sbAssetSearch .paginationControls [class^=sb-icon].disabled {
  color: #888888;
}
#sbAssetSearch .paginationControls [class^=sb-icon]:not(.disabled) {
  cursor: pointer;
}
#sbAssetSearch .paginationControls .sb-icon-left-dir,
#sbAssetSearch .paginationControls .sb-icon-right-dir {
  font-size: 20px;
}
.sbAssetFilter {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
  top: 113px;
}
.sbAssetFilter.open {
  right: 0px;
  display: block;
}
.sbAssetFilter > a {
  text-align: right;
  font-size: 14px;
}
.sbAssetFilter > header {
  padding: 0 20px;
  line-height: 4em;
}
.sbAssetFilter > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
.sbAssetFilter fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 14px;
}
.sbAssetFilter fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
.sbAssetFilter fieldset input,
.sbAssetFilter fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
.sbAssetFilter .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
.sbAssetFilter .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
.sbAssetFilter input {
  display: inline;
}
.sbAssetFilter div > a {
  text-align: right;
  display: flex;
  font-size: 14px;
}
/*
Document Generation Preview page

Previews a document in the browser with chosen template, additional docs, etc.
*/
#sbDocGenPreview .sbPageBlockSection {
  display: inline-block;
  padding: 0;
  background: none;
  border: none;
  margin-right: 44px;
}
#sbDocGenPreview .sbPageBlockSection:last-of-type {
  margin-right: inherit;
}
#sbDocGenPreview .sbDualListBox select {
  width: 320px;
}
/*
Document Generation options

Choices for document generation such as template, output format, etc.
*/
#sbDocGenOptions {
  margin: 0 0 0 40px;
}
#sbDocGenOptions label {
  font-size: 14px;
}
#sbDocGenOptions > tbody > tr > td {
  vertical-align: middle;
  padding-bottom: 8px;
}
#sbDocGenOptions > tbody > tr > td:first-of-type {
  text-align: right;
}
#sbDocGenOptions > tbody > tr > td:first-of-type > [class^=sb-icon] {
  font-size: 15px;
  color: #888;
}
#sbDocGenOptions input,
#sbDocGenOptions select {
  width: 325px;
}
#sbDocGenOptions .sbDualListBox select {
  width: 320px;
}
#sbImportLines #sbImportOptions {
  margin: 0 0 0 40px;
}
#sbImportLines #sbImportOptions fieldset {
  border: 0;
  padding: 5px;
}
#sbImportLines #sbImportOptions fieldset > label {
  margin-right: 10px;
  font-size: 14px;
  display: inline-block;
  width: 175px;
  text-align: right;
}
#sbImportLines #sbImportOptions fieldset > input,
#sbImportLines #sbImportOptions fieldset select {
  width: 200px;
}
#sbImportLines .sbPageBlockSection {
  background: none;
  border: none;
}
#sbImportLines .sbPageBlockSection header {
  margin-bottom: 10px;
}
#sbLineEditor .sbPageTitle .sbPageTitleRight {
  text-align: right;
}
#sbLineEditor .sbPageTitle.squeezed .sbTools {
  padding: 0;
}
#sbLineEditor .sbPageTitle .sbTools {
  margin-left: 16px;
  padding: 7px 0;
  transition: all 0.25s ease-in;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool {
  font-size: 14px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool.icon {
  padding: 8px 7px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool.sf-icon-down {
  padding-top: 8px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool .sf-icon-refresh:before {
  font-size: 1.1em;
  margin-top: 0.3em;
  margin-bottom: 0.3em;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool > menu .separator {
  border-bottom: 1px solid #D8DDE6;
  margin-bottom: 6px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool > [class^=sb-icon] {
  font-size: 14px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbToolSeparator {
  display: inline-block;
  height: 1px;
  width: 10px;
  float: left;
}
#sbLineEditor .sbPageTitle #sbRollupMenuQuote > ul.sbTools > li.sbToolSeparator {
  display: none;
}
#sbLineEditor .sbPageTitle #sbRollupMenuQuote > span.sf-icon-down {
  display: inline-block;
  padding: 8px 12px;
}
#sbLineEditor .sbQuoteActions .renewSubscriptionsBtn,
#sbLineEditor .sbGroupActions .renewSubscriptionsBtn,
#sbLineEditor .sbQuoteActions .upgradeAssetsBtn,
#sbLineEditor .sbGroupActions .upgradeAssetsBtn,
#sbLineEditor .sbQuoteActions .resetDiscBtn,
#sbLineEditor .sbGroupActions .resetDiscBtn,
#sbLineEditor .sbQuoteActions .optionalAllBtn,
#sbLineEditor .sbGroupActions .optionalAllBtn,
#sbLineEditor .sbQuoteActions .optionalNoneBtn,
#sbLineEditor .sbGroupActions .optionalNoneBtn,
#sbLineEditor .sbQuoteActions .deleteLinesBtn,
#sbLineEditor .sbGroupActions .deleteLinesBtn,
#sbLineEditor .sbQuoteActions .addGroupBtn,
#sbLineEditor .sbGroupActions .addGroupBtn,
#sbLineEditor .sbQuoteActions .ungroupBtn,
#sbLineEditor .sbGroupActions .ungroupBtn {
  display: none;
}
#sbLineEditor .sbQuoteActions .sbTool.first,
#sbLineEditor .sbGroupActions .sbTool.first {
  border: 1px solid #d8dde6;
  border-bottom-left-radius: 3px;
  border-top-left-radius: 3px;
}
#sbLineEditor .sbQuoteActions .sbTool.end,
#sbLineEditor .sbGroupActions .sbTool.end,
#sbLineEditor .sbQuoteActions .sbTool.last,
#sbLineEditor .sbGroupActions .sbTool.last {
  border-bottom-right-radius: 3px;
  border-top-right-radius: 3px;
}
#sbLineEditor .sbQuoteActions .sbTool.sbToolSeparator,
#sbLineEditor .sbGroupActions .sbTool.sbToolSeparator {
  padding: 0;
  border: none;
  background-color: inherit;
}
#sbLineEditor .sbQuoteActions .sbTool.sbToolSeparator + .sbTool,
#sbLineEditor .sbGroupActions .sbTool.sbToolSeparator + .sbTool {
  border-left: 1px solid #d8dde6;
  border-bottom-left-radius: 3px;
  border-top-left-radius: 3px;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction),
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) {
  padding: 0;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction):hover,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction):hover {
  background-color: #fff;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) > span,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) > span,
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) i,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) i {
  display: inline-block;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) > span:hover,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) > span:hover,
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) i:hover,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) i:hover {
  background-color: #F4F6F9;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) > span.sf-icon-down,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) > span.sf-icon-down {
  border-left: 1px solid #d8dde6;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbPrimaryAction,
#sbLineEditor .sbGroupActions > .sbTools > .sbPrimaryAction {
  padding: 0;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbPrimaryAction > span,
#sbLineEditor .sbGroupActions > .sbTools > .sbPrimaryAction > span,
#sbLineEditor .sbQuoteActions > .sbTools > .sbPrimaryAction i,
#sbLineEditor .sbGroupActions > .sbTools > .sbPrimaryAction i {
  display: inline-block;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbPrimaryAction > span.sf-icon-down,
#sbLineEditor .sbGroupActions > .sbTools > .sbPrimaryAction > span.sf-icon-down {
  border-left: 1px solid #d8dde6;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote) > span.label,
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote) > i {
  padding: 8px 12px;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote) > span.sf-icon-down {
  padding: 8px 4px;
}
#sbLineEditor.upgradable li.upgradeAssetsBtn {
  display: block;
}
#sbLineEditor.renewable li.renewSubscriptionsBtn {
  display: block;
}
#sbLineEditor.discountable li.resetDiscBtn {
  display: block;
}
#sbLineEditor.optional:not(.allSelected) .sbQuoteActions li.optionalAllBtn,
#sbLineEditor.optional.allSelected .sbQuoteActions li.optionalNoneBtn {
  display: block;
}
#sbLineEditor.optional .sbGroupActions li.optionalAllBtn,
#sbLineEditor.optional .sbGroupActions li.optionalNoneBtn {
  display: block;
}
#sbLineEditor.multiDelete .sbQuoteActions .deleteLinesBtn {
  display: block;
}
#sbLineEditor.groupable li.addGroupBtn {
  display: block;
}
#sbLineEditor.ungroupable li.addGroupBtn {
  display: none;
}
#sbLineEditor.ungroupable li.addGroupBtn,
#sbLineEditor.ungroupable li.ungroupBtn {
  display: block;
}
#sbLineEditor .sbQuoteActions ul,
#sbLineEditor .sbGroupActions ul {
  list-style-type: none;
}
#sbLineEditor .sbQuoteActions ul.sbTools,
#sbLineEditor .sbGroupActions ul.sbTools {
  padding: 0;
  margin: 0;
}
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction),
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) {
  display: block;
  position: relative;
  color: #0070D2;
  font-size: 14px;
}
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction).action > .label:hover,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction).action > .label:hover {
  cursor: pointer;
  color: #0070d2;
}
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction) span.sf-icon-right,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) span.sf-icon-right,
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction) span.sf-icon-down,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) span.sf-icon-down {
  cursor: pointer;
}
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction) span.sf-icon-right.open + ul,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) span.sf-icon-right.open + ul,
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction) span.sf-icon-down.open + ul,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) span.sf-icon-down.open + ul {
  display: block;
}
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction) span.sf-icon-right.open + ul.sbSolutionGroups,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) span.sf-icon-right.open + ul.sbSolutionGroups,
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction) span.sf-icon-down.open + ul.sbSolutionGroups,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) span.sf-icon-down.open + ul.sbSolutionGroups {
  max-height: 450px;
  overflow-y: auto;
}
#sbLineEditor .sbQuoteActions ul ul,
#sbLineEditor .sbGroupActions ul ul {
  display: none;
  position: absolute;
  top: 100%;
  white-space: nowrap;
  background-color: #ffffff;
  border-radius: 4px;
  border: 1px solid #d8dde6;
  z-index: 4;
  text-align: left;
}
#sbLineEditor .sbQuoteActions ul ul li,
#sbLineEditor .sbGroupActions ul ul li {
  padding: 5px 10px;
}
#sbLineEditor .sbQuoteActions ul ul ul,
#sbLineEditor .sbGroupActions ul ul ul {
  top: -1px;
}
#sbLineEditor .sbQuoteActions > ul,
#sbLineEditor .sbGroupActions > ul {
  display: inline-block;
  cursor: auto;
}
#sbLineEditor .sbQuoteActions > ul > li > ul,
#sbLineEditor .sbGroupActions > ul > li > ul {
  right: -1px;
}
#sbLineEditor .sbQuoteActions > ul > li.action > .label:hover,
#sbLineEditor .sbGroupActions > ul > li.action > .label:hover {
  color: #0070d2;
}
#sbLineEditor .sbQuoteActions ul li {
  font-size: 14px;
}
#sbLineEditor .sbQuoteActions > ul > li {
  margin-bottom: 10px;
}
#sbLineEditor .sbQuoteActions > ul > li.last ul ul {
  right: 100%;
}
#sbLineEditor .sbQuoteActions > ul > li:not(.last) ul ul {
  left: 100%;
}
#sbLineEditor .sbQuoteFields {
  margin: 15px 15px;
}
#sbLineEditor .sbQuoteFields header {
  margin-bottom: 10px;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td {
  padding: 5px 0;
  vertical-align: middle;
  font-size: 14px;
  white-space: nowrap;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td input,
#sbLineEditor .sbQuoteFields table > tbody > tr > td select {
  font-size: inherit;
  width: 140px;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td [class^=sb-icon] {
  font-size: 12px;
  color: #888;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td [class=sb-icon-search] {
  color: #0070d2;
  margin-left: 3px;
  vertical-align: middle;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td [class=sb-icon-search]:hover {
  color: #16325c;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td.sbLabel {
  text-align: right;
  vertical-align: middle;
  padding-right: 12px;
  width: 15%;
}
#sbLineEditor .sbTable input,
#sbLineEditor .sbTable select {
  font-size: inherit;
}
#sbLineEditor .sbTable input.sbSmall,
#sbLineEditor .sbTable select.sbSmall {
  max-width: 80px;
}
#sbLineEditor .sbTable input:disabled,
#sbLineEditor .sbTable select:disabled {
  background-color: #f4f6f9;
}
#sbLineEditor .sbTable input.hasDatepicker,
#sbLineEditor .sbTable select.hasDatepicker {
  min-width: 95px;
  width: 85%;
}
#sbLineEditor .sbTable > thead > tr > th:first-of-type,
#sbLineEditor .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
}
#sbLineEditor .sbTable > thead > tr > th:last-of-type,
#sbLineEditor .sbTable > tbody > tr > td:last-of-type {
  padding-right: 15px;
}
#sbLineEditor .sbTable select {
  min-width: 20px;
  margin-left: 4px;
}
#sbLineEditor .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbLineEditor .sbTable > tbody > tr > td.right input {
  text-align: right;
}
#sbLineEditor .sbTable > tbody > tr > td a > span[class^=sb-icon] {
  font-size: 10px;
  color: #888;
}
#sbLineEditor .sbTable > tbody > tr > td a > span[class^=sb-icon]:hover {
  color: #16325c;
}
#sbLineEditor .sbTable > tbody > tr > td .sf-icon-edit {
  visibility: hidden;
}
#sbLineEditor .sbTable > tbody > tr > td .sf-icon-edit.sbMDQicon {
  margin-right: -11em;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions {
  text-align: left;
  white-space: nowrap;
  width: 1%;
  padding-left: 15px;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions .action:hover,
#sbLineEditor .sbTable > tbody > tr > td.sbActions .url:hover {
  cursor: pointer;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions > ul {
  display: inline-block;
  cursor: auto;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions > ul > li.menu {
  padding: 5px;
  white-space: nowrap;
  background-color: #ffffff;
  border-radius: 4px;
  border: 1px solid #d8dde6;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions > ul > li.menu .sbAction {
  padding: 5px;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul {
  padding: 0;
  margin: 0;
  list-style-type: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li {
  display: inline-block;
  position: relative;
  color: #0070D2;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li.action > .label:hover {
  cursor: pointer;
  color: #16325C;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li span.sf-icon-right {
  cursor: pointer;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li span.sf-icon-right.open + ul {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li ul li {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul ul {
  display: none;
  position: absolute;
  top: -1px;
  white-space: nowrap;
  background-color: #ffffff;
  border-radius: 4px;
  border: 1px solid #d8dde6;
  z-index: 4;
  text-align: left;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul ul li {
  padding: 5px 10px;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions .sbAction {
  padding: 2px;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions .sbAction.action {
  display: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions:not(.removable) .sb-icon-info-circled {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions:not(.removable) .sb-icon-info-circled:hover {
  cursor: auto;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable .addToFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable .removeFromFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable .deleteBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable ul ul .addToFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable ul ul .removeFromFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable ul ul .deleteBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable.favorite .addToFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable:not(.favorite) .removeFromFavBtn {
  display: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable.favorite ul ul .addToFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable:not(.favorite) ul ul .removeFromFavBtn {
  display: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions:not(.component) .cloneBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions:not(.component) ul ul .cloneBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.configurable .reconfigureBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.configurable ul ul .reconfigureBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable .desegmentBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable .resegmentBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable ul ul .desegmentBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable ul ul .resegmentBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable.segmented .resegmentBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable:not(.segmented) .desegmentBtn {
  display: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.dsEditable .viewDSBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.dsEditable ul ul .viewDSBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbDeleteCheckbox {
  width: 1%;
}
#sbLineEditor .sbTable tbody > tr > td:first-of-type.sbActions ul ul {
  left: 100%;
}
#sbLineEditor .sbTable tbody > tr > td:last-of-type.sbActions ul ul {
  right: 100%;
}
#sbLineEditor .sbTable > tbody > tr > td:hover .sf-icon-edit {
  visibility: visible;
}
#sbLineEditor .sbTable > tfoot > tr.sbTotalRow td {
  vertical-align: middle;
  white-space: nowrap;
  font-size: 14px;
}
#sbLineEditor .sbTable > tfoot > tr.sbTotalRow td:last-of-type {
  padding-right: 15px;
}
#sbLineEditor .sbTable .sbBundleOption {
  color: #696969;
}
#sbLineEditor .sbTable .sbIndent2 {
  padding-left: 25px;
}
#sbLineEditor .sbTable .sbIndent3 {
  padding-left: 50px;
}
#sbLineEditor .sbTable .sbIndent4 {
  padding-left: 75px;
}
#sbLineEditor .sbTable .sbIndent5 {
  padding-left: 100px;
}
#sbLineEditor .sbTable .sbIndent6 {
  padding-left: 125px;
}
#sbLineEditor .sbTable .sbIndent7 {
  padding-left: 150px;
}
#sbLineEditor .sbTable .sbIndent8 {
  padding-left: 175px;
}
#sbLineEditor .sbTable .sbIndent9 {
  padding-left: 200px;
}
#sbLineEditor .sbTable .sbIndent10 {
  padding-left: 225px;
}
#sbLineEditor .sbTable .sbDescriptionField span {
  vertical-align: middle;
}
#sbLineEditor .sbTable .sbDescriptionField .sb-icon-pencil {
  visibility: hidden;
}
#sbLineEditor .sbTable .sbDescriptionField:hover .sb-icon-pencil {
  visibility: visible;
}
#sbLineEditor .sbQuoteTotal {
  display: block;
  float: right;
  margin: 12px 22px 26px 0;
}
#sbLineEditor .sbQuoteTotal > span {
  margin-left: 10px;
}
#sbLineEditor .sbGroups,
#sbLineEditor .sbDimensionTabs {
  font-size: 14px;
  margin: 18px 15px;
  text-transform: uppercase;
  border-bottom: 1px solid #d0d0d0;
}
#sbLineEditor .sbGroups > a,
#sbLineEditor .sbDimensionTabs > a {
  cursor: move;
  color: inherit;
  padding: 6px 16px 6px;
  display: inline-block;
}
#sbLineEditor .sbGroups > a > .sf-icon-edit,
#sbLineEditor .sbDimensionTabs > a > .sf-icon-edit {
  color: #0070d2;
  visibility: hidden;
  cursor: pointer;
  position: absolute;
  right: -6px;
  top: 6px;
}
#sbLineEditor .sbGroups > a > .sf-icon-edit:hover,
#sbLineEditor .sbDimensionTabs > a > .sf-icon-edit:hover {
  color: #16325c;
}
#sbLineEditor .sbGroups > a > .sf-icon-edit.visible,
#sbLineEditor .sbDimensionTabs > a > .sf-icon-edit.visible {
  visibility: visible;
}
#sbLineEditor .sbGroups > a.selected,
#sbLineEditor .sbDimensionTabs > a.selected {
  border-bottom: 2px solid #166bbf;
}
#sbLineEditor .sbGroups > a:hover,
#sbLineEditor .sbDimensionTabs > a:hover {
  border-bottom: 2px solid #166bbf;
}
#sbLineEditor .sbGroups > a:hover > .sf-icon-edit,
#sbLineEditor .sbDimensionTabs > a:hover > .sf-icon-edit {
  visibility: visible;
}
#sbLineEditor .sbGroup > header {
  display: none;
}
#sbLineEditor .sbGroup.sbGrouped {
  background: #ffffff;
  margin: 15px 15px;
  border: 1px solid #d0d0d0;
  border-radius: 4px;
}
#sbLineEditor .sbGroup.sbGrouped > header {
  background-color: #f4f6f9;
  display: block;
  margin: 0;
  border: 0;
  padding: 10px 15px 5px;
  border-bottom: 1px solid #d0d0d0;
}
#sbLineEditor .sbGroup.sbGrouped > header.sbHiddenHeader {
  display: none;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td {
  width: 50%;
  margin: 10px;
  vertical-align: middle;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td:first-of-type {
  border-right: 1px solid #d0d0d0;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td:first-of-type > table > tbody > tr > td {
  vertical-align: middle;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td:first-of-type > table > tbody > tr:first-of-type > td:last-of-type {
  text-align: right;
  padding-right: 10px;
  min-width: 205px;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td .sbFavorite {
  width: 5%;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td .sbFavorite > i {
  font-size: 2em;
  display: inline-block;
  vertical-align: super;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td .sbFavorite > i:hover {
  cursor: pointer;
}
#sbLineEditor .sbGroup.sbGrouped > header .sf-icon-edit {
  visibility: hidden;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupHeader {
  display: inline-block;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupHeader > input {
  font-size: 14px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupHeader:hover .sf-icon-edit {
  visibility: visible;
}
#sbLineEditor .sbGroup.sbGrouped > header h2 {
  vertical-align: middle;
}
#sbLineEditor .sbGroup.sbGrouped > header h2:not(.sbGroupDragHandle) {
  cursor: pointer;
}
#sbLineEditor .sbGroup.sbGrouped > header h2 > [class=sb-icon-pencil] {
  visibility: hidden;
}
#sbLineEditor .sbGroup.sbGrouped > header h2:hover > [class=sb-icon-pencil] {
  visibility: visible;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupName {
  display: none;
  margin-right: 15px;
  height: 25px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions {
  display: inline-block;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions menu {
  max-height: 125px;
  overflow-y: auto;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions ul ul ul {
  left: 100%;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions > ul.sbTools > li.sbTool {
  margin-bottom: 5px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions > ul.sbTools > li.sbTool > span,
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions > ul.sbTools > li.sbTool > i {
  padding: 6px 8px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbTools > .sbTool {
  height: 32px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbTools > .sbTool > span.label,
#sbLineEditor .sbGroup.sbGrouped > header .sbTools > .sbTool > i {
  padding: 6px 8px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbTools > .sbTool > span.sf-icon-down {
  padding: 6px 4px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription {
  margin-top: 10px;
  font-size: 14px;
  color: #888;
  cursor: pointer;
  display: table;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription > div,
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription > div > p {
  display: inline;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription:hover {
  color: inherit;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription:hover [class=sf-icon-edit] {
  visibility: visible;
  padding-left: 5px;
}
#sbLineEditor .sbGroup.sbGrouped .sbTable {
  margin-top: 10px;
}
#sbLineEditor .sbGroup .sbGroupFields {
  padding: 0 10px;
  font-size: 14px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr .sbLabel {
  text-align: right;
  padding-right: 5px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td {
  padding-bottom: 10px;
  vertical-align: middle;
  color: #16325C;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td .sbFieldRow {
  padding-bottom: 10px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td label {
  margin-right: 4px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td input:not([type=checkbox]) {
  height: 2em;
  width: 100px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td input[type=checkbox] {
  vertical-align: middle;
}
#sbLineEditor .sbGroup .sbGroupTotal {
  text-align: right;
  margin: 15px 22px 20px 0;
}
#sbLineEditor .sbEmptyGroupMsg,
#sbLineEditor .sbEmptyQuoteMsg,
#sbLineEditor .emptyMSTableMessage,
#sbLineEditor .emptyStandardTableMessage {
  font-size: 14px;
  padding: 15px;
}
#sbLineEditor .emptyMSTableMessage {
  clear: both;
}
#sbLineEditor .emptyMSTableMessage,
#sbLineEditor .emptyStandardTableMessage {
  padding: 15px 0 0 30px;
}
#sbLineEditor #sbPricebookMask,
#sbLineEditor #sbSegmentsMask,
#sbLineEditor #sbFavoritesMask,
#sbLineEditor #sbAlertMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 1000;
}
#sbLineEditor #sbPricebookMask.close,
#sbLineEditor #sbSegmentsMask.close,
#sbLineEditor #sbFavoritesMask.close,
#sbLineEditor #sbAlertMask.close {
  display: none;
}
#sbLineEditor #sbSegmentsModal,
#sbLineEditor #sbProductRuleAlert {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 600px;
}
#sbLineEditor #sbSegmentsModal > header,
#sbLineEditor #sbProductRuleAlert > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbLineEditor #sbSegmentsModal > header > i,
#sbLineEditor #sbProductRuleAlert > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbLineEditor #sbSegmentsModal > header > *,
#sbLineEditor #sbProductRuleAlert > header > * {
  vertical-align: middle;
}
#sbLineEditor #sbSegmentsModal > header > h2,
#sbLineEditor #sbProductRuleAlert > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbLineEditor #sbSegmentsModal > header > h3,
#sbLineEditor #sbProductRuleAlert > header > h3 {
  color: #16325c;
}
#sbLineEditor #sbSegmentsModal > header > .sf-icon-close,
#sbLineEditor #sbProductRuleAlert > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbLineEditor #sbSegmentsModal > header > .sf-icon-close:hover,
#sbLineEditor #sbProductRuleAlert > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbLineEditor #sbSegmentsModal > header > .sf-icon-close:before,
#sbLineEditor #sbProductRuleAlert > header > .sf-icon-close:before {
  color: #fff;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer i[class^=sf-icon],
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer i[class^=sf-icon]:hover,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer .sbTable,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer .sbTable td,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer ul,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter,
#sbLineEditor #sbProductRuleAlert .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
  height: 26px;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter > .sbButtons,
#sbLineEditor #sbProductRuleAlert .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter > .sbButtons > .sbBtn,
#sbLineEditor #sbProductRuleAlert .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction,
#sbLineEditor #sbProductRuleAlert .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover,
#sbLineEditor #sbProductRuleAlert .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbLineEditor #sbSegmentsModal.amendment,
#sbLineEditor #sbProductRuleAlert.amendment {
  cursor: default;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalContentContainer,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalContentContainer i[class^=sf-icon],
#sbLineEditor #sbProductRuleAlert.amendment .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #888;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalContentContainer i[class^=sf-icon]:hover,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalContentContainer i[class^=sf-icon]:hover {
  cursor: default;
}
#sbLineEditor #sbSegmentsModal.amendment #sbCustomSegments > tbody > tr:first-of-type > td,
#sbLineEditor #sbProductRuleAlert.amendment #sbCustomSegments > tbody > tr:first-of-type > td {
  padding-top: 14px;
}
#sbLineEditor #sbSegmentsModal.amendment #sbCustomSegments > tbody > tr > td,
#sbLineEditor #sbProductRuleAlert.amendment #sbCustomSegments > tbody > tr > td {
  cursor: default;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn {
  background-color: #ffffff;
  color: #0070d2;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn:hover,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn:hover {
  cursor: default;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn:focus,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn:focus {
  outline: none;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  cursor: pointer;
  background-color: #005fb2;
}
#sbLineEditor #sbSegmentsModal.close,
#sbLineEditor #sbProductRuleAlert.close {
  display: none;
}
#sbLineEditor #sbSegmentsModal .sbValidationErrors,
#sbLineEditor #sbProductRuleAlert .sbValidationErrors {
  text-align: left;
  padding: 5px 15px 0;
}
#sbLineEditor #sbSegmentsModal .sbValidationErrors > div,
#sbLineEditor #sbProductRuleAlert .sbValidationErrors > div {
  font-size: 14px;
  color: #c00;
  padding-bottom: 5px;
}
#sbLineEditor #sbSegmentsModal .sbValidationErrors > div > span,
#sbLineEditor #sbProductRuleAlert .sbValidationErrors > div > span,
#sbLineEditor #sbSegmentsModal .sbValidationErrors > div > div,
#sbLineEditor #sbProductRuleAlert .sbValidationErrors > div > div {
  display: inline;
  vertical-align: middle;
}
#sbLineEditor #sbSegmentsModal .sbValidationErrors > div > [class^=sb-icon],
#sbLineEditor #sbProductRuleAlert .sbValidationErrors > div > [class^=sb-icon] {
  color: #c00;
  font-size: 20px;
  padding: 0 10px 0 0;
}
#sbLineEditor #sbSegmentsModal .message,
#sbLineEditor #sbProductRuleAlert .message {
  display: block;
  text-align: left;
  border: none;
  margin: 0 0 0 7px;
}
#sbLineEditor #sbSegmentsModal .sbCustomSegmentsContainer,
#sbLineEditor #sbProductRuleAlert .sbCustomSegmentsContainer {
  height: 441px;
  overflow: auto;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments,
#sbLineEditor #sbProductRuleAlert #sbCustomSegments {
  margin-top: 0;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments > thead > tr > th,
#sbLineEditor #sbProductRuleAlert #sbCustomSegments > thead > tr > th {
  padding-bottom: 0;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments > tbody > tr > td,
#sbLineEditor #sbProductRuleAlert #sbCustomSegments > tbody > tr > td {
  text-align: initial;
  height: 30px;
  cursor: move;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments > tbody > tr > td > [class^=sb-icon],
#sbLineEditor #sbProductRuleAlert #sbCustomSegments > tbody > tr > td > [class^=sb-icon] {
  color: #0070d2;
  cursor: pointer;
  padding: 0 5px 0 0;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments > tbody > tr > td .sf-icon-close,
#sbLineEditor #sbProductRuleAlert #sbCustomSegments > tbody > tr > td .sf-icon-close {
  color: #4d4d4d;
}
#sbLineEditor #sbFavoritesModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 600px;
}
#sbLineEditor #sbFavoritesModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbLineEditor #sbFavoritesModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbLineEditor #sbFavoritesModal > header > * {
  vertical-align: middle;
}
#sbLineEditor #sbFavoritesModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbLineEditor #sbFavoritesModal > header > h3 {
  color: #16325c;
}
#sbLineEditor #sbFavoritesModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbLineEditor #sbFavoritesModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbLineEditor #sbFavoritesModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
  height: 26px;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbLineEditor #sbFavoritesModal.amendment {
  cursor: default;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #888;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalContentContainer i[class^=sf-icon]:hover {
  cursor: default;
}
#sbLineEditor #sbFavoritesModal.amendment #sbCustomSegments > tbody > tr:first-of-type > td {
  padding-top: 14px;
}
#sbLineEditor #sbFavoritesModal.amendment #sbCustomSegments > tbody > tr > td {
  cursor: default;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn {
  background-color: #ffffff;
  color: #0070d2;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn:hover {
  cursor: default;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn:focus {
  outline: none;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  cursor: pointer;
  background-color: #005fb2;
}
#sbLineEditor #sbFavoritesModal.close {
  display: none;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors {
  text-align: left;
  padding: 5px 15px 0;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div {
  font-size: 14px;
  color: #c00;
  padding-bottom: 5px;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div > span,
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div > div {
  display: inline;
  vertical-align: middle;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div > [class^=sb-icon] {
  color: #c00;
  font-size: 20px;
  padding: 0 10px 0 0;
}
#sbLineEditor #sbFavoritesModal .message {
  display: block;
  text-align: left;
  border: none;
  margin: 0 0 0 7px;
}
#sbLineEditor #sbFavoritesModal .sbCustomSegmentsContainer {
  height: 441px;
  overflow: auto;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments {
  margin-top: 0;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments > thead > tr > th {
  padding-bottom: 0;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments > tbody > tr > td {
  text-align: initial;
  height: 30px;
  cursor: move;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments > tbody > tr > td > [class^=sb-icon] {
  color: #0070d2;
  cursor: pointer;
  padding: 0 5px 0 0;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments > tbody > tr > td .sf-icon-close {
  color: #4d4d4d;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable > tbody > tr:hover {
  background: #ffffff;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable > tbody > tr > td {
  padding-top: 20px;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable > tbody > tr > td #sbFavoriteName {
  width: 300px;
}
#sbLineEditor #sbProductRuleAlert {
  min-height: auto;
}
#sbLineEditor #sbProductRuleAlert li {
  font-size: 14px;
}
#sbLineEditor.sbMDQ .sbPageBlock .sbTable > thead > tr > th:first-of-type,
#sbLineEditor.sbMDQ .sbPageBlock .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
}
#sbLineEditor.sbMDQ .sbPageBlock .sbTable > thead > tr > th:last-of-type,
#sbLineEditor.sbMDQ .sbPageBlock .sbTable > tbody > tr > td:last-of-type {
  padding-right: 15px;
}
#sbLineEditor .sbMultiSegment .sbTable {
  margin-top: 10px;
}
#sbLineEditor .sbMultiSegment .sbTable .sbLineNumber > span {
  display: inline-block;
  vertical-align: middle;
}
#sbLineEditor .sbMultiSegment .sbTable .sbExpandCollapse > [class^="sb-icon-"] {
  font-size: 1.5em;
  color: #0070d2;
}
#sbLineEditor .sbMultiSegment .sbTable .sbExpandCollapse > :nth-of-type(2) {
  font-size: 1.3em;
}
#sbLineEditor .sbMultiSegment .sbTable .sbExpand {
  white-space: nowrap;
}
#sbLineEditor .sbMultiSegment .sbTable .sbExpand i {
  cursor: pointer;
  font-size: 14px;
  color: #0070d2;
  position: relative;
  top: 2px;
}
#sbLineEditor .sbMultiSegment .sbTable > tbody > tr.expanded > td {
  border-bottom: 0;
}
#sbLineEditor .sbMultiSegment .sbTable > tbody > .sbDetail > td {
  height: 30px;
  background-color: #f4f6f9;
}
#sbLineEditor .sbMultiSegment .sbTable > tbody > .sbDetail:not(.lastDetailRow) > td {
  border-bottom: 0;
}
#sbLineEditor .sbMultiSegment .sbTable > tbody > .sbDetail > td:nth-child(2) {
  text-align: right;
  padding-right: 40px;
}
#sbLineEditor .sbMultiSegment .sbTable > tfoot > tr > td:first-of-type {
  text-align: right;
}
#sbLineEditor .sbMultiSegment .sbTable > tfoot > tr > td:last-of-type {
  padding-right: 15px;
}
#sbLineEditor .sbStandard {
  padding-top: 40px;
}
#sbLineEditor .sbStandard.sbEmptyTable {
  padding-top: 0;
}
#sbLineEditor .sbStandard > h2 {
  padding-left: 15px;
}
#sbLineEditor .sbMultiSegment {
  padding-top: 15px;
}
#sbLineEditor .sbMultiSegment.sbEmptyTable {
  padding-top: 0;
}
#sbLineEditor .sbMultiSegment .sbSegmentedTableHeader {
  overflow: auto;
}
#sbLineEditor .sbMultiSegment .sbSegmentedTableHeader > h2 {
  padding-left: 15px;
}
#sbLineEditor .sbMultiSegment .sbDimensionHeader {
  margin: 0 15px;
  clear: both;
}
#sbLineEditor .sbMultiSegment .sbDimensionHeader > h2,
#sbLineEditor .sbMultiSegment .sbDimensionHeader i {
  float: left;
}
#sbLineEditor .sbMultiSegment .sbDimensionHeader i {
  font-size: 12px;
  color: #0070d2;
  padding: 5px 0 0 5px;
  cursor: pointer;
}
#sbLineEditor .sbTooltip > .sbTooltipContent {
  display: none;
}
#sbLineEditor .sbMDQRight {
  float: right;
}
#sbLineEditor .sbMDQRight > .sbTooltip {
  width: 1%;
}
#sbLineEditor .sbGroupDragHandle {
  cursor: move;
}
#sbLineEditor .sbDraggedLine,
#sbLineEditor .sbDraggedDimension,
#sbLineEditor .sbDraggedSegment,
#sbLineEditor .sbDraggedGroup {
  color: #0070D2;
  font-size: 14px;
}
#sbLineEditor .sbDropRowHover {
  background: #F4F6F9;
}
#sbLineEditor .sbEmptyTableHover {
  padding-bottom: 22px;
}
#sbLineEditor .sbEmptyTableHover,
#sbLineEditor .sbEmptyGroupHover {
  border: 2px solid #0070d2;
  border-radius: 4px;
}
#sbLineEditor .sbGroup.sbGrouped.sbDropGroupHover {
  border: 3px solid #0070d2;
  border-radius: 4px;
}
#sbLineEditor a.sbDropDimensionHover {
  color: #fff;
  cursor: move;
  border-radius: 4px;
  background-color: #ffffff;
}
#sbLineEditor .sbPages {
  text-align: center;
  padding: 0;
  background: #fff;
}
#sbLineEditor .sbPages .sbBtn {
  float: none;
  display: inline-block;
}
#sbLineEditor .sbPages .sbDisplayedPage {
  color: #0070D2;
}
#sbLineEditor .sbDropPageHover {
  color: #fff;
  background-color: #0070d2;
}
#sbLineEditor th > .multiSegmentArrow {
  font-size: 1.2em !important;
}
#sbLineEditor th > .multiSegmentArrow:hover {
  cursor: pointer;
}
#sbLineEditor #sbTiersModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 80%;
}
#sbLineEditor #sbTiersModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbLineEditor #sbTiersModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbLineEditor #sbTiersModal > header > * {
  vertical-align: middle;
}
#sbLineEditor #sbTiersModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbLineEditor #sbTiersModal > header > h3 {
  color: #16325c;
}
#sbLineEditor #sbTiersModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbLineEditor #sbTiersModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbLineEditor #sbTiersModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbLineEditor #sbTiersModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
  height: 26px;
}
#sbLineEditor #sbTiersModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbLineEditor #sbTiersModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbLineEditor #sbTiersModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbTiersModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer {
  padding: 15px;
  text-align: center;
  min-height: 100px;
  max-height: 400px;
  overflow: auto;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer input {
  text-align: left;
}
#sbLineEditor #sbTiersModal .dataCell {
  text-align: left;
}
#sbLineEditor #sbTiersModal #revertTierIcon {
  font-size: 14px;
}
#sbLineEditor #sbTiersModal #revertIconContainer {
  padding: 8px;
  margin-left: 16px;
  background-color: #fff;
}
#sbLineEditor #sbTiersModal #discountUnitSelect {
  margin-left: 10px;
  padding-left: 15px;
}
#sbLineEditor #sbTiersModal #discountScheduleName {
  padding-left: 30px;
}
#sbLineEditor #sbTiersModal #discountScheduleName input {
  min-width: 300px;
  margin-left: 10px;
  text-align: left;
  padding-left: 10px;
}
#sbLineEditor #sbTiersModal .sf-icon-error {
  color: #c00 !important;
}
#sbLineEditor #sbTiersModal #deleteAllCheckbox {
  text-align: center;
}
#sbLineEditor #sbTiersModal #discountUnitSelect {
  padding-right: 20px;
}
#sbLineEditor #sbTiersModal #errorMessage {
  text-align: left;
}
#sbLineEditor #sbTiersModal .hideInputBorders input {
  border: none;
  background: #fff;
}
#sbLineEditor #sbTiersModal .discountScheduleRow {
  text-align: left;
}
#sbLineEditor #sbTiersModal .revertButton {
  display: inline-block;
  border: 1px solid #d8dde6;
  border-radius: 4px;
  color: #0070d2;
  position: relative;
  cursor: pointer;
}
#sbLineEditor #sbTiersModal .discountScheduleHeader {
  text-align: left;
}
#sbLineEditor #sbTiersModal .addBottomBorder {
  border-bottom: 1px solid #d8dde6;
  text-align: center;
}
#sbLineEditor #sbTiersModal .discountScheduleLoader {
  margin-left: auto;
  margin-right: auto;
  margin-top: 20px;
}
#editDescriptionContainer .sbLineEditorDescriptionEditFooter {
  margin-top: 16px;
}
.removeBoxShadow {
  box-shadow: none;
}
.addBoxShadow {
  box-shadow: 0 0 0 15px #D1D4D8;
}
.hidden {
  display: none;
}
.sbLineEditorTooltip {
  padding: 12px;
}
.sbLineEditorTooltip table td {
  padding: 3px 2px;
}
.sbLineEditorTooltip table td:nth-child(2) {
  text-align: right;
}
.sbBtnTooltip {
  padding: 3px;
  background-color: #ffffff;
  color: #16325C;
  -webkit-box-shadow: 1px 1px 11px #D1D4D8;
  -moz-box-shadow: 1px 1px 11px #D1D4D8;
  box-shadow: 1px 1px 11px #D1D4D8;
}
#sbNewRelatedContent #sbNewRelatedContentOptions {
  margin: 0;
}
#sbNewRelatedContent #sbNewRelatedContentOptions fieldset {
  border: 0;
  padding: 5px;
}
#sbNewRelatedContent #sbNewRelatedContentOptions fieldset > label {
  margin-right: 10px;
  font-size: 14px;
  display: inline-block;
  width: 175px;
  text-align: right;
}
#sbNewRelatedContent #sbNewRelatedContentOptions fieldset > input,
#sbNewRelatedContent #sbNewRelatedContentOptions fieldset select {
  width: 200px;
}
#sbNewRelatedContent .sbPageBlockSection {
  background: none;
  border: none;
}
#sbProductConfigurator .sbConfigProductName {
  margin: 15px 0 0 15px;
  display: block;
}
#sbProductConfigurator .sbPageTitle.squeezed .sbTools {
  padding: 0;
}
#sbProductConfigurator .sbPageTitle .sbPageTitleLeft .sf-icon-custom_apps {
  background-color: #8199af;
}
#sbProductConfigurator .sbPageTitle .sbButtons {
  float: right;
}
#sbProductConfigurator .sbPageTitle .sbTools {
  margin-right: 10px;
  padding: 7px 0;
  font-size: 10px;
  float: right;
  transition: all 0.25s ease-in;
}
#sbProductConfigurator .sbPageTitle .sbTools > .sbTool {
  padding: 8px;
}
#sbProductConfigurator .sbPageTitle .sbToolSeparator {
  border-right: #d0d0d0;
  display: inline-block;
  height: 1px;
  width: 10px;
  float: left;
}
#sbProductConfigurator .sbPageTitle .sbBtn:disabled {
  color: #888888;
  cursor: default;
}
#sbProductConfigurator .sbPageTitle .sbBtn.sbAddOption {
  margin: 16px;
}
#sbProductConfigurator .sbFeatureIcon {
  color: #0070d2;
  font-size: 30px;
}
#sbProductConfigurator .sbAddOptionContainer .sbAddOption {
  border: 0;
  margin: 4px 0 4px 0;
}
#sbProductConfigurator .sbAddOptionContainer .sbAddOption:hover {
  background: none;
  color: #16325c;
  cursor: pointer;
}
#sbProductConfigurator header {
  padding: 15px 15px;
}
#sbProductConfigurator header.sbSection {
  border-bottom: 1px solid #d0d0d0;
  background: #f4f6f9;
}
#sbProductConfigurator header.sbFooter {
  margin: 0;
  border-top: #d0d0d0;
  background: #f4f6f9;
}
#sbProductConfigurator header.optionLookupMode {
  border: none;
  background: none;
}
#sbProductConfigurator header .sbTitleContainer {
  display: inline-block;
  padding-right: 50px;
  padding-top: 5px;
  vertical-align: top;
}
#sbProductConfigurator header .sbTitleContainer > .sbFeatureInstructions {
  padding: 10px 0 0 0;
  font-size: 14px;
}
#sbProductConfigurator header .sbFeatureAdditionalInstructions {
  display: inline;
  float: right;
  font-size: 14px;
  padding-top: 3px;
}
#sbProductConfigurator .featureContent {
  font-size: 10px;
}
#sbProductConfigurator .sbTopConfigurationAttributes,
#sbProductConfigurator .sbBottomConfigurationAttributes {
  font-size: 14px;
  padding-top: 10px;
}
#sbProductConfigurator .sbTopConfigurationAttributes.sbPageBlockSection,
#sbProductConfigurator .sbBottomConfigurationAttributes.sbPageBlockSection {
  border: 0 ;
}
#sbProductConfigurator .sbTopConfigurationAttributes.sbPageBlockSection.sbBottom,
#sbProductConfigurator .sbBottomConfigurationAttributes.sbPageBlockSection.sbBottom {
  border-top: 1px solid #d0d0d0;
  padding-top: 30px;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbConfigAttributeColumn,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbConfigAttributeColumn {
  vertical-align: top;
}
#sbProductConfigurator .sbTopConfigurationAttributes label,
#sbProductConfigurator .sbBottomConfigurationAttributes label {
  padding: 5px;
}
#sbProductConfigurator .sbTopConfigurationAttributes td,
#sbProductConfigurator .sbBottomConfigurationAttributes td {
  vertical-align: middle;
}
#sbProductConfigurator .sbTopConfigurationAttributes input,
#sbProductConfigurator .sbBottomConfigurationAttributes input {
  margin-right: 30px;
}
#sbProductConfigurator .sbTopConfigurationAttributes input.hasDatepicker,
#sbProductConfigurator .sbBottomConfigurationAttributes input.hasDatepicker {
  width: 45%;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbLabelCol,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbLabelCol {
  padding-right: 10px;
  text-align: right;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbDataCol,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbDataCol {
  padding: 6px 0;
  text-align: left;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbDataCol > div > div,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbDataCol > div > div {
  padding-left: 5px;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbDataCol > div > .requiredConfigurationAttribute,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbDataCol > div > .requiredConfigurationAttribute {
  border-left: #c00 solid;
  padding-left: 2px;
}
#sbProductConfigurator .requiresConfiguration {
  border-left: #c00 solid;
}
#sbProductConfigurator .center {
  width: 100%;
  text-align: center;
  display: inline-block;
}
#sbProductConfigurator .sbSelectionColumn {
  width: 1%;
  cursor: pointer;
  white-space: nowrap;
  text-align: left;
}
#sbProductConfigurator .sbOptionsFilter {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
  top: 91px;
}
#sbProductConfigurator .sbOptionsFilter.open {
  right: 0px;
  display: block;
}
#sbProductConfigurator .sbOptionsFilter > a {
  text-align: right;
  font-size: 14px;
}
#sbProductConfigurator .sbOptionsFilter > header {
  padding: 0 20px;
  line-height: 4em;
}
#sbProductConfigurator .sbOptionsFilter > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
#sbProductConfigurator .sbOptionsFilter fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 14px;
}
#sbProductConfigurator .sbOptionsFilter fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
#sbProductConfigurator .sbOptionsFilter fieldset input,
#sbProductConfigurator .sbOptionsFilter fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
#sbProductConfigurator .sbOptionsFilter .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
#sbProductConfigurator .sbOptionsFilter .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
#sbProductConfigurator .sbOptionsFilter input {
  display: inline;
}
#sbProductConfigurator .sbOptionsFilter div > a {
  font-size: 14px;
}
#sbProductConfigurator .sbAddOptionsFilter {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
  top: 91px;
}
#sbProductConfigurator .sbAddOptionsFilter.open {
  right: 0px;
  display: block;
}
#sbProductConfigurator .sbAddOptionsFilter > a {
  text-align: right;
  font-size: 14px;
}
#sbProductConfigurator .sbAddOptionsFilter > header {
  padding: 0 20px;
  line-height: 4em;
}
#sbProductConfigurator .sbAddOptionsFilter > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
#sbProductConfigurator .sbAddOptionsFilter fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 14px;
}
#sbProductConfigurator .sbAddOptionsFilter fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
#sbProductConfigurator .sbAddOptionsFilter fieldset input,
#sbProductConfigurator .sbAddOptionsFilter fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
#sbProductConfigurator .sbAddOptionsFilter .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
#sbProductConfigurator .sbAddOptionsFilter .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
#sbProductConfigurator .sbAddOptionsFilter input {
  display: inline;
}
#sbProductConfigurator .sbAddOptionsFilter div > a {
  font-size: 14px;
}
#sbProductConfigurator .sbResults {
  margin: 14px 0 -8px 0;
  font-size: 14px;
}
#sbProductConfigurator .sbPageBlockSection {
  background: #ffffff;
  padding: 0;
}
#sbProductConfigurator .sbGroups {
  font-size: 14px;
  text-align: center;
  margin: 18px 15px;
  text-transform: uppercase;
  border-bottom: 1px solid #d0d0d0;
}
#sbProductConfigurator .sbGroups > a,
#sbProductConfigurator .sbGroups span {
  color: inherit;
  padding: 6px 16px;
  display: inline-block;
}
#sbProductConfigurator .sbGroups > a.selected,
#sbProductConfigurator .sbGroups span.selected {
  border-bottom: 2px solid #166bbf;
}
#sbProductConfigurator .sbGroups > a:hover,
#sbProductConfigurator .sbGroups span:hover {
  border-bottom: 2px solid #166bbf;
}
#sbProductConfigurator .sbTable {
  margin-top: 5px;
}
#sbProductConfigurator .sbTable > thead > tr > th:nth-child(2),
#sbProductConfigurator .sbTable > tbody > tr > td:nth-child(2) {
  width: 60px;
}
#sbProductConfigurator .sbTable > thead > tr > th {
  padding-right: 12px;
  padding-left: 12px;
}
#sbProductConfigurator .sbTable > tbody > tr > td {
  height: 49px;
  vertical-align: middle;
  padding: 0 12px;
}
#sbProductConfigurator .sbTable > tbody > tr > td [class^=sb-icon] {
  font-size: 12px;
  color: #888;
}
#sbProductConfigurator .sbTable > tbody > tr > td.right {
  text-align: right;
}
#sbProductConfigurator .sbTable > tbody > tr > td.sbQuantityCell {
  width: 75px;
  text-align: center;
}
#sbProductConfigurator .sbTable > tbody > tr > td.sbQuantityCell input {
  width: 100px;
  text-align: center;
  font-size: 14px;
}
#sbProductConfigurator .sbTable .sbCurrencyCell {
  text-align: right;
}
#sbProductConfigurator .sbTable .sbCurrencyCell input {
  text-align: right;
}
#sbProductConfigurator .sbTable > tbody tr:last-child > td {
  border-bottom: none;
}
#sbProductConfigurator .wizardConfigurator > table > tbody > tr:hover {
  background: #fff;
}
#sbProductConfigurator .sbLoadMore {
  position: absolute;
  height: 65px;
  top: 94%;
  width: 100%;
  text-align: center;
  font-size: 15px;
  padding-top: 15px;
  background: #ffffff;
  display: none;
}
#sbProductConfigurator .sbLoadMore.sbShowLoading {
  display: inline-block;
}
#sbProductConfigurator .sf-icon-warning {
  color: #5876a3;
  font-size: 20px;
}
#sbProductSearch .sbTable {
  font-size: 10px;
}
#sbProductSearch .sbTable > thead > tr > th:first-of-type,
#sbProductSearch .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
#sbProductSearch .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbProductSearch .sbTools {
  float: right;
}
#sbProductSearch .sbPageBlockSection {
  background: none;
  margin: 0;
  padding: 0;
}
#sbProductSearch .sbPageTitle .sbTools {
  margin-right: 10px;
}
#sbProductSearch .sbPageTitle .sbTools > .sbTool {
  background: #ffffff;
  padding: 7px;
}
#sbProductSearch .sbTable > thead > tr > th:first-of-type,
#sbProductSearch .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
  text-align: left;
}
#sbProductSearch .sbTable .sbSelectionHeader {
  width: 1%;
}
#sbProductSearch .sbTable tbody.close > .sbGroupRow {
  display: none;
}
#sbProductSearch .sbTable tbody .sbGroupName {
  text-align: left;
  font-size: 14px;
  font-weight: bold;
}
#sbProductSearch .sbTable tbody .sbGroupNameRow {
  background-color: #f4f6f9;
  cursor: pointer;
}
#sbProductSearch .sbTable tbody .sbGroupNameRow i {
  font-size: 17.5px;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td {
  border-bottom: none;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages {
  font-size: 0.9em;
  margin-top: 10px;
  text-align: center;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons {
  vertical-align: middle;
  background-color: #ffffff;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons > .sbBtn {
  padding-top: 6px;
  color: #0070d2;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons > .sbBtn.sb-icon-left-dir,
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons > .sbBtn.sb-icon-right-dir {
  font-size: 1.7em;
  padding-top: 3px;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons > .sbBtn.disabled {
  background-color: #ffffff;
  color: #bebebe;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages .sbPageSelector {
  padding: 0 10px;
  display: inline-block;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages .sbPageSelector > input {
  width: 45px;
  text-align: center;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages:hover {
  background-color: #F4F6F9;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages:hover > td .sbPages > .sbButtons {
  background-color: #F4F6F9;
}
.sbProductFilter,
#sbGuidedModal.sbGuided {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
}
.sbProductFilter.open,
#sbGuidedModal.sbGuided.open {
  right: 0px;
  display: block;
}
.sbProductFilter > a,
#sbGuidedModal.sbGuided > a {
  text-align: right;
  font-size: 14px;
}
.sbProductFilter > header,
#sbGuidedModal.sbGuided > header {
  padding: 0 20px;
  line-height: 4em;
}
.sbProductFilter > header > .sf-icon-close,
#sbGuidedModal.sbGuided > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
.sbProductFilter fieldset,
#sbGuidedModal.sbGuided fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 14px;
}
.sbProductFilter fieldset > label,
#sbGuidedModal.sbGuided fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
.sbProductFilter fieldset input,
#sbGuidedModal.sbGuided fieldset input,
.sbProductFilter fieldset select,
#sbGuidedModal.sbGuided fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
.sbProductFilter .sbButtons,
#sbGuidedModal.sbGuided .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
.sbProductFilter .sbButtons .clearFieldsLink,
#sbGuidedModal.sbGuided .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
.sbProductFilter div > a,
#sbGuidedModal.sbGuided div > a {
  text-align: right;
  display: flex;
  font-size: 14px;
}
.sbProductFilter fieldset > span > input[type=checkbox],
#sbGuidedModal.sbGuided fieldset > span > input[type=checkbox] {
  display: none;
}
.sbProductFilter label > span > input[type=checkbox],
#sbGuidedModal.sbGuided label > span > input[type=checkbox] {
  vertical-align: middle;
}
.sbProducts {
  transition: 0.02s;
}
#sbGuidedMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 1000;
}
#sbGuidedMask.close {
  display: none;
}
#sbGuidedModal.sbGuidedModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 480px;
}
#sbGuidedModal.sbGuidedModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbGuidedModal.sbGuidedModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbGuidedModal.sbGuidedModal > header > * {
  vertical-align: middle;
}
#sbGuidedModal.sbGuidedModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbGuidedModal.sbGuidedModal > header > h3 {
  color: #16325c;
}
#sbGuidedModal.sbGuidedModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbGuidedModal.sbGuidedModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbGuidedModal.sbGuidedModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
  height: 26px;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbGuidedModal.sbGuidedModal.close {
  display: none;
}
#sbGuidedModal.sbGuidedModal > .sbFieldCon {
  text-align: left;
  overflow: auto;
}
#sbGuidedModal.sbGuidedModal fieldset {
  padding: 10px;
  border: 0;
  font-size: 1.4em;
}
#sbGuidedModal.sbGuidedModal fieldset > label {
  font-size: 10px;
  display: inline-block;
  padding: 0 0 5px 7px;
  vertical-align: middle;
}
#sbGuidedModal.sbGuidedModal fieldset > span {
  display: block;
}
#sbGuidedModal.sbGuidedModal fieldset > span > input[type=checkbox] {
  display: none;
}
#sbGuidedModal.sbGuidedModal fieldset input,
#sbGuidedModal.sbGuidedModal fieldset select {
  font-size: inherit !important;
  margin-left: 6px;
  vertical-align: middle;
  min-width: 100px;
}
#sbGuidedModal.sbGuidedModal fieldset > *[class^=sb-icon] {
  color: #888;
}
div.chatterFollow {
  white-space: nowrap;
}
.chatterFollow a {
  text-decoration: none;
  color: #000000;
  cursor: pointer;
}
.chatterFollow .followIcon {
  background-image: url(/img/feeds/follow_sprite.png);
  background-repeat: no-repeat;
  background-position: 0 0;
  width: auto;
  height: 20px;
  margin-top: 7px;
  margin-left: 3px;
}
.chatterFollow .checkIcon {
  background-image: url(/img/feeds/follow_sprite.png);
  background-repeat: no-repeat;
  background-position: 0 -27px;
  width: auto;
  height: 20px;
  margin-top: 7px;
  margin-left: 3px;
}
.chatterFollow .unfollowIcon {
  background-image: url(/img/feeds/follow_sprite.png);
  background-repeat: no-repeat;
  background-position: 0 -54px;
  width: auto;
  height: 20px;
  margin-top: 7px;
  margin-left: 3px;
}
.chatterFollow .hion {
  background-position: 0 -75px;
}
#sbSubscriptionSearch .sbTable {
  font-size: 10px;
}
#sbSubscriptionSearch .sbTable > thead > tr > th:first-of-type,
#sbSubscriptionSearch .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
#sbSubscriptionSearch .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbSubscriptionSearch .sbTools {
  float: right;
}
#sbSubscriptionSearch .sbPageTitle.squeezed .sbTools {
  padding: 0;
}
#sbSubscriptionSearch .sbPageTitle .sbTools {
  margin-right: 10px;
  padding: 7px 0;
}
#sbSubscriptionSearch .sbPageTitle .sbTools > .sbTool {
  padding: 8px;
}
.sbSubscriptionFilter {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
}
.sbSubscriptionFilter.open {
  right: 0px;
  display: block;
}
.sbSubscriptionFilter > a {
  text-align: right;
  font-size: 14px;
}
.sbSubscriptionFilter > header {
  padding: 0 20px;
  line-height: 4em;
}
.sbSubscriptionFilter > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
.sbSubscriptionFilter fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 14px;
}
.sbSubscriptionFilter fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
.sbSubscriptionFilter fieldset input,
.sbSubscriptionFilter fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
.sbSubscriptionFilter .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
.sbSubscriptionFilter .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
.sbSubscriptionFilter input {
  display: inline;
}
.sbSubscriptionFilter div > a {
  text-align: right;
  display: flex;
  font-size: 14px;
}
#sbCloneRelated,
#sbRefreshPrices,
#sbPreviewApprovals,
#sbListApprovals {
  background: #fff;
  color: #16325C;
  text-align: center;
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif;
}
#sbCloneRelated .sbPageTitle,
#sbRefreshPrices .sbPageTitle,
#sbPreviewApprovals .sbPageTitle,
#sbListApprovals .sbPageTitle {
  text-align: left;
}
#sbCloneRelated .sbPageTitle h1,
#sbRefreshPrices .sbPageTitle h1,
#sbPreviewApprovals .sbPageTitle h1,
#sbListApprovals .sbPageTitle h1 {
  font-size: 20px;
  font-weight: 300;
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif;
  color: #16325C;
}
#sbCloneRelated .sbPageTitle h2,
#sbRefreshPrices .sbPageTitle h2,
#sbPreviewApprovals .sbPageTitle h2,
#sbListApprovals .sbPageTitle h2 {
  font-size: 12px;
  color: #16325C;
}
#sbCloneRelated .sbPageTitle .sf-icon-copy:before,
#sbRefreshPrices .sbPageTitle .sf-icon-copy:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-copy:before,
#sbListApprovals .sbPageTitle .sf-icon-copy:before,
#sbCloneRelated .sbPageTitle .sf-icon-refresh:before,
#sbRefreshPrices .sbPageTitle .sf-icon-refresh:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-refresh:before,
#sbListApprovals .sbPageTitle .sf-icon-refresh:before,
#sbCloneRelated .sbPageTitle .sf-icon-approval:before,
#sbRefreshPrices .sbPageTitle .sf-icon-approval:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-approval:before,
#sbListApprovals .sbPageTitle .sf-icon-approval:before {
  margin-top: 10px;
  position: inherit;
}
#sbCloneRelated .sbPageTitle .sf-icon-post:before,
#sbRefreshPrices .sbPageTitle .sf-icon-post:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-post:before,
#sbListApprovals .sbPageTitle .sf-icon-post:before {
  position: inherit;
}
#sbCloneRelated .sbPageTitle .sf-icon-approval:before,
#sbRefreshPrices .sbPageTitle .sf-icon-approval:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-approval:before,
#sbListApprovals .sbPageTitle .sf-icon-approval:before {
  margin-top: 0px;
}
#sbCloneRelated .sbPageTitle .resize,
#sbRefreshPrices .sbPageTitle .resize,
#sbPreviewApprovals .sbPageTitle .resize,
#sbListApprovals .sbPageTitle .resize {
  padding: 2px 10px;
}
#sbCloneRelated .message,
#sbRefreshPrices .message,
#sbPreviewApprovals .message,
#sbListApprovals .message {
  padding: 10px;
  margin: 18px 24px;
}
#sbCloneRelated .message .messageText,
#sbRefreshPrices .message .messageText,
#sbPreviewApprovals .message .messageText,
#sbListApprovals .message .messageText {
  font-size: 14px;
}
#sbCloneRelated .message .messageText h4,
#sbRefreshPrices .message .messageText h4,
#sbPreviewApprovals .message .messageText h4,
#sbListApprovals .message .messageText h4 {
  padding: 0 4px;
  display: inline-block;
  font-size: 10px;
  font-weight: 300;
}
#sbCloneRelated .sbBtns,
#sbRefreshPrices .sbBtns,
#sbPreviewApprovals .sbBtns,
#sbListApprovals .sbBtns {
  font-size: 9px;
  border-radius: 0;
  vertical-align: top;
  float: right;
}
#sbCloneRelated .sbBtns .sbBtn,
#sbRefreshPrices .sbBtns .sbBtn,
#sbPreviewApprovals .sbBtns .sbBtn,
#sbListApprovals .sbBtns .sbBtn {
  border-radius: 0;
}
#sbCloneRelated .sbBtns .sbBtn:first-of-type,
#sbRefreshPrices .sbBtns .sbBtn:first-of-type,
#sbPreviewApprovals .sbBtns .sbBtn:first-of-type,
#sbListApprovals .sbBtns .sbBtn:first-of-type {
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
#sbCloneRelated .sbBtns .sbBtn:last-of-type,
#sbRefreshPrices .sbBtns .sbBtn:last-of-type,
#sbPreviewApprovals .sbBtns .sbBtn:last-of-type,
#sbListApprovals .sbBtns .sbBtn:last-of-type {
  border-left: 0;
  border-top-right-radius: 4px;
  border-bottom-right-radius: 4px;
}
#sbCloneRelated .sbGroup,
#sbRefreshPrices .sbGroup,
#sbPreviewApprovals .sbGroup,
#sbListApprovals .sbGroup {
  margin: 15px 15px;
  border: 1px solid #d0d0d0;
  border-radius: 3px;
}
#sbCloneRelated .sbGroup > header,
#sbRefreshPrices .sbGroup > header,
#sbPreviewApprovals .sbGroup > header,
#sbListApprovals .sbGroup > header {
  margin: 0;
  border: 0;
  padding: 10px 15px 5px;
  border-bottom: 1px solid #d0d0d0;
}
#sbCloneRelated .sbGroup .sbPageBlockSection,
#sbRefreshPrices .sbGroup .sbPageBlockSection,
#sbPreviewApprovals .sbGroup .sbPageBlockSection,
#sbListApprovals .sbGroup .sbPageBlockSection {
  padding-bottom: 6px;
  text-align: left;
}
#sbCloneRelated .sbGroup .sbPageBlockSection > h3,
#sbRefreshPrices .sbGroup .sbPageBlockSection > h3,
#sbPreviewApprovals .sbGroup .sbPageBlockSection > h3,
#sbListApprovals .sbGroup .sbPageBlockSection > h3 {
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif;
  font-weight: 300;
}
#sbCloneRelated .toggleButton,
#sbRefreshPrices .toggleButton,
#sbPreviewApprovals .toggleButton,
#sbListApprovals .toggleButton {
  float: right;
}
#sbCloneRelated .tableContainer,
#sbRefreshPrices .tableContainer,
#sbPreviewApprovals .tableContainer,
#sbListApprovals .tableContainer {
  display: none;
}
#sbCloneRelated .sbTable .rfHead,
#sbRefreshPrices .sbTable .rfHead,
#sbPreviewApprovals .sbTable .rfHead,
#sbListApprovals .sbTable .rfHead {
  background: #F4F6F9;
}
#sbCloneRelated .sbTable > thead > tr > th:first-of-type,
#sbRefreshPrices .sbTable > thead > tr > th:first-of-type,
#sbPreviewApprovals .sbTable > thead > tr > th:first-of-type,
#sbListApprovals .sbTable > thead > tr > th:first-of-type,
#sbCloneRelated .sbTable > tbody > tr > td:first-of-type,
#sbRefreshPrices .sbTable > tbody > tr > td:first-of-type,
#sbPreviewApprovals .sbTable > tbody > tr > td:first-of-type,
#sbListApprovals .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
}
#sbCloneRelated .sbTable > thead > tr > th:last-of-type,
#sbRefreshPrices .sbTable > thead > tr > th:last-of-type,
#sbPreviewApprovals .sbTable > thead > tr > th:last-of-type,
#sbListApprovals .sbTable > thead > tr > th:last-of-type,
#sbCloneRelated .sbTable > tbody > tr > td:last-of-type,
#sbRefreshPrices .sbTable > tbody > tr > td:last-of-type,
#sbPreviewApprovals .sbTable > tbody > tr > td:last-of-type,
#sbListApprovals .sbTable > tbody > tr > td:last-of-type {
  padding-right: 15px;
}
#sbCloneRelated .sbTable > tbody > tr:last-of-type > td,
#sbRefreshPrices .sbTable > tbody > tr:last-of-type > td,
#sbPreviewApprovals .sbTable > tbody > tr:last-of-type > td,
#sbListApprovals .sbTable > tbody > tr:last-of-type > td {
  border-bottom: none;
}
#sbCloneRelated .sbTable > thead > tr > th,
#sbRefreshPrices .sbTable > thead > tr > th,
#sbPreviewApprovals .sbTable > thead > tr > th,
#sbListApprovals .sbTable > thead > tr > th {
  height: 24.5px;
}
#sbCloneRelated .sbTable > tbody > tr > td,
#sbRefreshPrices .sbTable > tbody > tr > td,
#sbPreviewApprovals .sbTable > tbody > tr > td,
#sbListApprovals .sbTable > tbody > tr > td {
  padding: 4.9px 9.8px;
  height: 24.5px;
  vertical-align: middle;
  text-align: left;
}
#sbCloneRelated .sbTable > tfoot > tr > td,
#sbRefreshPrices .sbTable > tfoot > tr > td,
#sbPreviewApprovals .sbTable > tfoot > tr > td,
#sbListApprovals .sbTable > tfoot > tr > td {
  text-align: left;
  padding-top: 4.9px;
  padding-bottom: 4.9px;
  padding-left: 15px;
  height: 19.6px;
}
#sbCloneRelated .sbTable tbody > tr:hover,
#sbRefreshPrices .sbTable tbody > tr:hover,
#sbPreviewApprovals .sbTable tbody > tr:hover,
#sbListApprovals .sbTable tbody > tr:hover {
  background: none;
}
#sbFavoritesManager .sbPageTitle .sbTools {
  margin-right: 10px;
}
#sbFavoritesManager .sbPageTitle .sbTools > .sbTool {
  background: #ffffff;
  padding: 7px;
}
#sbFavoritesManager .topMsg {
  text-align: center;
  display: block;
  padding: 32px;
}
#sbFavoritesManager .botMsg {
  text-align: center;
  display: block;
}
#sbFavoritesManager .sbTable > thead > tr > th:first-of-type,
#sbFavoritesManager .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
  text-align: left;
}
#sbFavoritesManager .sbTable .sbSelectionHeader {
  width: 1%;
}
#sbFavoritesManager .sbTable .sbFavoriteHeader {
  width: 160px;
}
#sbFavoritesManager .sbTable .sbDescription {
  width: 50%;
}
#sbFavoritesManager .sbTable tbody tr td {
  vertical-align: middle;
}
#sbFavoritesManager .sbTable tbody tr td i {
  color: #0070D2;
}
#sbFavoritesManager .sbTable tbody tr td i:hover {
  color: #16325C;
  cursor: pointer;
}
#sbFavoritesManager #sbFavoritesManagerMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 1000;
}
#sbFavoritesManager #sbFavoritesManagerMask.close {
  display: none;
}
#sbFavoritesManager #sbFavoritesManagerModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  min-height: 160px;
  max-width: 400px;
}
#sbFavoritesManager #sbFavoritesManagerModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > * {
  vertical-align: middle;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > h3 {
  color: #16325c;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
  height: 26px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer ul {
  -webkit-padding-end: 0px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer .sbTable .sbActions {
  width: 1%;
  text-align: left;
  white-space: nowrap;
}
#sbFavoritesManager .form-control {
  display: block;
  width: 100%;
  height: 34px;
  padding: 6px 12px;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 4px;
}
#sbFavoritesManager .sbValidationErrors {
  font-size: 14px;
  padding: 5px 15px;
  display: block;
  text-align: left;
  color: #c00;
}
#sbFavoritesManager .invalid {
  border-color: #c00;
}
#sbFavoritesManager .dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1000;
  display: none;
  float: left;
  min-width: 160px;
  padding: 5px 0;
  margin: 2px 0 0;
  font-size: 14px;
  text-align: left;
  list-style: none;
  background-color: #fff;
  border: 1px solid rgba(0, 0, 0, 0.15);
  border-radius: 4px;
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  background-clip: padding-box;
}
#sbFavoritesManager .dropdown-menu > li > a {
  display: block;
  padding: 3px 20px;
  clear: both;
  font-weight: normal;
  line-height: 1.42857143;
  color: #333;
  white-space: nowrap;
}
#sbFavoritesManager .dropdown-menu > li > a:hover,
#sbFavoritesManager .dropdown-menu > li > a:focus {
  color: #262626;
  text-decoration: none;
  background-color: #f5f5f5;
}
#sbFavoritesManager .dropdown-menu > .active > a,
#sbFavoritesManager .dropdown-menu > .active > a:hover,
#sbFavoritesManager .dropdown-menu > .active > a:focus {
  color: #fff;
  text-decoration: none;
  background-color: #337ab7;
  outline: 0;
}
#sbBlockPrice {
  background: #fff;
  color: #16325C;
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif;
  padding-top: 10px;
  padding-bottom: 10px;
}
#sbBlockPrice #sbPriceBookGroup {
  display: inline-block;
}
#sbBlockPrice #sbClonePriceBookGroup {
  display: inline-block;
  padding-left: 100px;
}
#sbBlockPrice .sbPriceBookText {
  padding: 10px;
}
#sbBlockPrice .sbCloneFromPriceBook {
  margin-left: 15px;
  padding-bottom: 4px;
}
#sbBlockPrice .sbPriceBookSelect {
  padding-bottom: 2px;
}

/*# sourceMappingURL=data:application/json;charset=utf8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImZvbnRzLmxlc3MiLCJ0eXBvZ3JhcGh5Lmxlc3MiLCJidXR0b25zLmxlc3MiLCJzZmRjLmxlc3MiLCJkaWFsb2dzLmxlc3MiLCJsYXlvdXQubGVzcyIsImZvcm1zLmxlc3MiLCJtaXhpbnMubGVzcyIsImRhdGVQaWNrZXIubGVzcyIsInRhYmxlcy5sZXNzIiwiZHJvcGRvd25zLmxlc3MiLCJpY29ucy5sZXNzIiwiYmFzZS5sZXNzIiwidmFyaWFibGVzLmxlc3MiLCIuLi8uLi9hZG1pbi9zZXR0aW5ncy9hcHBTZXR0aW5ncy5sZXNzIiwiLi4vLi4vYWRtaW4vc2V0dGluZ3MvdGhlbWVTZXR0aW5ncy5sZXNzIiwiLi4vLi4vYWRtaW4vdHJhbnNsYXRlLmxlc3MiLCIuLi8uLi9hc3NldHMvYXNzZXRMb29rdXAubGVzcyIsIi4uLy4uL2RvY2dlbi9wcmV2aWV3Lmxlc3MiLCIuLi8uLi9xdW90ZXMvaW1wb3J0TGluZXMubGVzcyIsIi4uLy4uL3F1b3Rlcy9saW5lRWRpdG9yLmxlc3MiLCIuLi8uLi9xdW90ZXMvbmV3UmVsYXRlZENvbnRlbnQubGVzcyIsIi4uLy4uL3Byb2R1Y3RzL3Byb2R1Y3RDb25maWd1cmF0b3IubGVzcyIsIi4uLy4uL3Byb2R1Y3RzL3Byb2R1Y3RMb29rdXAubGVzcyIsIi4uLy4uL3N1YnNjcmlwdGlvbnMvc3Vic2NyaXB0aW9uTG9va3VwLmxlc3MiLCIuLi8uLi9jbG9uZS9jbG9uZS5sZXNzIiwiLi4vLi4vZmF2b3JpdGVzL2Zhdm9yaXRlc01hbmFnZXIubGVzcyIsIi4uLy4uL2Jsb2NrUHJpY2UvYmxvY2tQcmljZS5sZXNzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBO0VBQ0UsYUFBYSxpQkFBYjtFQUNBLFNBQVMsMkdBQTJHLE9BQU8sY0FDbEgsMEdBQTBHLE9BQU8sT0FEMUg7RUFFQSxrQkFBQTtFQUNBLGdCQUFBOztBQUVGO0VBQ0UsYUFBYSxpQkFBYjtFQUNBLFNBQVMsNkdBQTZHLE9BQU8sY0FDcEgsNEdBQTRHLE9BQU8s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QUFtQiw4QmNSM0I7RUFDQSxpQkFBQTtFQUNHLG9CQUFBOztBQU5KLGFBUUM7RUFDTyxxQkFBQTs7QUFUUixhQVlJO0VBQ0kscUJBQUE7RUFDQSxtQkFBQTs7QUFkUixhQWlCSTtFQUNJLGFBQUE7O0FBbEJSLGFBcUJDO0VBQ0ksaUJBQUE7RUFDQSxtQkFBQTs7QUF2QkwsYUEwQkM7RUFDSSxtQkFBQSIsInNvdXJjZXNDb250ZW50IjpbIkBmb250LWZhY2Uge1xuICBmb250LWZhbWlseTogXCJTYWxlc2ZvcmNlIFNhbnNcIjtcbiAgc3JjOiB1cmwoXCJodHRwczovL3d3dzIuc2ZkY3N0YXRpYy5jb20vc3lzdGVtL3NoYXJlZC9jb21tb24vYXNzZXRzL2ZvbnRzL1NhbGVzZm9yY2VTYW5zL1NhbGVzZm9yY2VTYW5zLUxpZ2h0LndvZmYyXCIpIGZvcm1hdChcIndvZmYyXCIpLFxuICAgICAgIHVybChcImh0dHBzOi8vd3d3Mi5zZmRjc3RhdGljLmNvbS9zeXN0ZW0vc2hhcmVkL2NvbW1vbi9hc3NldHMvZm9udHMvU2FsZXNmb3JjZVNhbnMvU2FsZXNmb3JjZVNhbnMtTGlnaHQud29mZlwiKSBmb3JtYXQoXCJ3b2ZmXCIpO1xuICBmb250LXN0eWxlOiBub3JtYWw7XG4gIGZvbnQtd2VpZ2h0OiAzMDA7XG59XG5AZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6IFwiU2FsZXNmb3JjZSBTYW5zXCI7XG4gIHNyYzogdXJsKFwiaHR0cHM6Ly93d3cyLnNmZGNzdGF0aWMuY29tL3N5c3RlbS9zaGFyZWQvY29tbW9uL2Fzc2V0cy9mb250cy9TYWxlc2ZvcmNlU2Fucy9TYWxlc2ZvcmNlU2Fucy1SZWd1bGFyLndvZmYyXCIpIGZvcm1hdChcIndvZmYyXCIpLFxuICAgICAgIHVybChcImh0dHBzOi8vd3d3Mi5zZmRjc3RhdGljLmNvbS9zeXN0ZW0vc2hhcmVkL2NvbW1vbi9hc3NldHMvZm9udHMvU2FsZXNmb3JjZVNhbnMvU2FsZXNmb3JjZVNhbnMtUmVndWxhci53b2ZmXCIpIGZvcm1hdChcIndvZmZcIik7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbiAgZm9udC13ZWlnaHQ6IDQwMDtcbn1cbkBmb250LWZhY2Uge1xuICBmb250LWZhbWlseTogXCJTYWxlc2ZvcmNlIFNhbnNcIjtcbiAgc3JjOiB1cmwoXCJodHRwczovL3d3dzIuc2ZkY3N0YXRpYy5jb20vc3lzdGVtL3NoYXJlZC9jb21tb24vYXNzZXRzL2ZvbnRzL1NhbGVzZm9yY2VTYW5zL1NhbGVzZm9yY2VTYW5zLUl0YWxpYy53b2ZmMlwiKSBmb3JtYXQoXCJ3b2ZmMlwiKSxcbiAgICAgICB1cmwoXCJodHRwczovL3d3dzIuc2ZkY3N0YXRpYy5jb20vc3lzdGVtL3NoYXJlZC9jb21tb24vYXNzZXRzL2ZvbnRzL1NhbGVzZm9yY2VTYW5zL1NhbGVzZm9yY2VTYW5zLUl0YWxpYy53b2ZmXCIpIGZvcm1hdChcIndvZmZcIik7XG4gIGZvbnQtc3R5bGU6IGl0YWxpYztcbiAgZm9udC13ZWlnaHQ6IDQwMDtcbn1cbkBmb250LWZhY2Uge1xuICBmb250LWZhbWlseTogXCJTYWxlc2ZvcmNlIFNhbnNcIjtcbiAgc3JjOiB1cmwoXCJodHRwczovL3d3dzIuc2ZkY3N0YXRpYy5jb20vc3lzdGVtL3NoYXJlZC9jb21tb24vYXNzZXRzL2ZvbnRzL1NhbGVzZm9yY2VTYW5zL1NhbGVzZm9yY2VTYW5zLUJvbGQud29mZjJcIikgZm9ybWF0KFwid29mZjJcIiksXG4gICAgICAgdXJsKFwiaHR0cHM6Ly93d3cyLnNmZGNzdGF0aWMuY29tL3N5c3RlbS9zaGFyZWQvY29tbW9uL2Fzc2V0cy9mb250cy9TYWxlc2ZvcmNlU2Fucy9TYWxlc2ZvcmNlU2Fucy1Cb2xkLndvZmZcIikgZm9ybWF0KFwid29mZlwiKTtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xuICBmb250LXdlaWdodDogNzAwO1xufVxuQGZvbnQtZmFjZSB7XG4gIGZvbnQtZmFtaWx5OiBcIlNhbGVzZm9yY2UgU2Fuc1wiO1xuICBzcmM6IHVybChcImh0dHBzOi8vd3d3Mi5zZmRjc3RhdGljLmNvbS9zeXN0ZW0vc2hhcmVkL2NvbW1vbi9hc3NldHMvZm9udHMvU2FsZXNmb3JjZVNhbnMvU2FsZXNmb3JjZVNhbnMtQm9sZEl0YWxpYy53b2ZmMlwiKSBmb3JtYXQoXCJ3b2ZmMlwiKSxcbiAgICAgICB1cmwoXCJodHRwczovL3d3dzIuc2ZkY3N0YXRpYy5jb20vc3lzdGVtL3NoYXJlZC9jb21tb24vYXNzZXRzL2ZvbnRzL1NhbGVzZm9yY2VTYW5zL1NhbGVzZm9yY2VTYW5zLUJvbGRJdGFsaWMud29mZlwiKSBmb3JtYXQoXCJ3b2ZmXCIpO1xuICBmb250LXN0eWxlOiBpdGFsaWM7XG4gIGZvbnQtd2VpZ2h0OiA3MDA7XG59XG4iLCIuc2Ige1xuICBoMSxoMixoMyxoNCxoNSxoNiB7XG4gICAgY29sb3I6IEBzYkhlYWRlckZvbnRDb2xvcjtcbiAgICBmb250LXdlaWdodDogMzAwO1xuICAgIGZvbnQtZmFtaWx5OiBpbmhlcml0O1xuICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICBtYXJnaW46IDA7XG4gICAgcGFkZGluZzogMDtcbiAgfVxuXG4gIGgxIHtcbiAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMi40O1xuICB9XG5cbiAgaDIge1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjg7XG4gIH1cblxuICBoMyB7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNjtcbiAgfVxuICBoNCB7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuMjtcbiAgfVxuXG4gIGg1IHtcbiAgICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xuICB9XG5cbiAgaDYge1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAwLjk7XG4gIH1cblxuICAvLyBIeXBlcmxpbmtzIC0gdGhlIGRlZmF1bHQgc3R5bGVcbiAgYSwgYTp2aXNpdGVkLCBhOmhvdmVyLCBhOmFjdGl2ZSB7XG4gICAgdGV4dC1kZWNvcmF0aW9uOiBub25lO1xuICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uQ29sb3I7XG4gICAgY3Vyc29yOiBwb2ludGVyO1xuICB9XG5cbiAgLy8gSHlwZXJsaW5rcyAtIGNvbG9yIGNoYW5nZSB3aGVuIGhvdmVyZWRcbiAgYTpob3ZlciB7XG4gICAgY29sb3I6IEBzYkFjY2VudEljb25Ib3ZlckNvbG9yO1xuICB9XG59XG4iLCJAc2JCdG5Cb3JkZXJSYWRpdXM6IDRweDtcbkBzYkJ0blBhZGRpbmc6IDhweCAxMnB4O1xuXG4vKlxuQnV0dG9uXG5cbkEgc3RhbmRhcmQsIHN0YW5kYWxvbmUgYnV0dG9uXG5cbiovXG4uc2JCdG4ge1xuICBwYWRkaW5nOiBAc2JCdG5QYWRkaW5nO1xuICBiYWNrZ3JvdW5kOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gIGNvbG9yOiBAc2JHcm91cEJ0bkZvbnRDb2xvcjtcbiAgY3Vyc29yOiBwb2ludGVyO1xuICBib3JkZXI6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICBib3JkZXItcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gIGZvbnQtd2VpZ2h0OiA0MDA7XG4gIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjQ7XG4gIG1hcmdpbjogMDtcbiAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgdGV4dC1hbGlnbjogY2VudGVyO1xuICBoZWlnaHQ6IDM2cHg7XG5cbiAgJjpmb2N1cyB7XG4gICAgb3V0bGluZS1vZmZzZXQ6IC0ycHg7XG4gICAgb3V0bGluZS13aWR0aDogMnB4O1xuICB9XG5cbiAgJjpob3ZlciB7XG4gICAgYmFja2dyb3VuZDogQHNiR3JvdXBCdG5Ib3ZlckJnQ29sb3I7XG4gIH1cblxuICAmLnNiUHJpbWFyeUFjdGlvbiB7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogQHNiUHJpbWFyeUJ0bkJnQ29sb3I7XG4gICAgYm9yZGVyOiAxcHggc29saWQgQHNiUHJpbWFyeUJ0bkJnQ29sb3I7XG4gICAgY29sb3I6IEBzYlByaW1hcnlCdG5Gb250Q29sb3I7XG4gICAgJjpob3ZlciB7XG4gICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JQcmltYXJ5QnRuSG92ZXJCZ0NvbG9yO1xuICAgIH1cbiAgfVxuXG4gICYuc2JFbmFibGVkIHtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JQcmltYXJ5QnRuQmdDb2xvcjtcbiAgICBib3JkZXItY29sb3I6IEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICAgIGNvbG9yOiBAc2JQcmltYXJ5QnRuRm9udENvbG9yO1xuICAgICY6aG92ZXIge1xuICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiUHJpbWFyeUJ0bkhvdmVyQmdDb2xvcjtcbiAgICB9XG4gIH1cbn1cblxuLy8gQSBjb250YWluZXIvcm93IG9mIGJ1dHRvbnMsIGEgbGEgYSBidXR0b24gXCJiYXJcIlxuLnNiQnV0dG9ucyB7XG4gIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgYmFja2dyb3VuZDogQHNiSGVhZGVyQmdDb2xvcjtcbiAgcGFkZGluZzogN3B4IDAgN3B4O1xuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG59XG5cbi8vIEJ1dHRvbnMgd2l0aGluIGEgYnV0dG9uIGNvbnRhaW5lclxuLnNiQnV0dG9ucyA+IC5zYkJ0biwgLnNiQnV0dG9ucyA+IGRpdiA+IC5zYkJ0bixcbi5zYlBhZ2VCdXR0b25zID4gLnNiQnRuLCAuc2JQYWdlQnV0dG9ucyA+IGRpdiA+IC5zYkJ0biB7XG4gIGJvcmRlci10b3A6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICBib3JkZXItYm90dG9tOiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgYm9yZGVyLXJpZ2h0OiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgYm9yZGVyLWxlZnQ6IDA7XG4gIGJvcmRlci1yYWRpdXM6IDA7XG4gIGZsb2F0OiBsZWZ0OyAvLyB0aGlzIHJlbW92ZXMgd2hpdGVzcGFjZSBpbiBiZXR3ZWVuIGJ1dHRvbnNcblxuICAmLnNiUHJpbWFyeUFjdGlvbiB7XG4gICAgYm9yZGVyOiAxcHggc29saWQgQHNiUHJpbWFyeUJ0bkJnQ29sb3I7XG4gIH1cblxuICAvLyBGaXJzdCBidXR0b24gd2l0aGluIGEgYnV0dG9uIGNvbnRhaW5lclxuICAmOmZpcnN0LW9mLXR5cGUge1xuICAgIGJvcmRlci1sZWZ0OiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgICBib3JkZXItdG9wLWxlZnQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gICAgYm9yZGVyLWJvdHRvbS1sZWZ0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgICYuc2JQcmltYXJ5QWN0aW9uIHtcbiAgICAgIGJvcmRlci1sZWZ0OiBAc2JQcmltYXJ5QnRuQmdDb2xvcjtcbiAgICB9XG4gIH1cblxuICAvLyBMYXN0IGJ1dHRvbiB3aXRoaW4gYSBidXR0b24gY29udGFpbmVyXG4gICY6bGFzdC1vZi10eXBlIHtcbiAgICBib3JkZXItdG9wLXJpZ2h0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIGJvcmRlci1ib3R0b20tcmlnaHQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gIH1cbn1cblxuLy8gVGhlIGNlbnRlcmVkIGNvbnRhaW5lciB3aXRoaW4gYSBCdXR0b24gY29udGFpbmVyXG4uc2JCdXR0b25zID4gLmNlbnRlcixcbi5zYlBhZ2VCdXR0b25zID4gLmNlbnRlciB7XG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbn1cblxuLy8gUGFnZSBidXR0b25zIHRha2UgdXAgdGhlIHdob2xlIHdpZHRoXG4uc2JQYWdlQnV0dG9uczpleHRlbmQoIC5zYkJ1dHRvbnMgKSB7XG4gIHdpZHRoOiAxMDAlO1xuICBib3JkZXItdG9wOiAxcHggc29saWQgQHNiSGVhZGVyQm9yZGVyQ29sb3I7XG5cbiAgJi5ib3R0b20ge1xuICAgIHdpZHRoOiBhdXRvO1xuICAgIHBvc2l0aW9uOiBmaXhlZDtcbiAgICBib3R0b206IDBweDtcbiAgICBsZWZ0OiAxMHB4O1xuICAgIHJpZ2h0OiAxMHB4O1xuICAgIGJvcmRlci1ib3R0b20tcmlnaHQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gICAgYm9yZGVyLWJvdHRvbS1sZWZ0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIGRpc3BsYXk6IG5vbmU7IC8vIGluZGl2aWR1YWwgcGFnZXMgc2hvdWxkIChkeW5hbWljYWxseSkgc2hvdyBpZiBuZWVkZWRcbiAgfVxuXG4gICYuaW5saW5lIHtcbiAgICBiYWNrZ3JvdW5kOiBAc2JIZWFkZXJCZ0NvbG9yO1xuICAgIGJvcmRlci1ib3R0b20tcmlnaHQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gICAgYm9yZGVyLWJvdHRvbS1sZWZ0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIG1hcmdpbi10b3A6IDgwcHg7XG4gIH1cbn1cblxuLnNiUGFnZVRpdGxlID4gLnNiUGFnZUJ1dHRvbnMge1xuICBib3JkZXI6IDA7XG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgd2lkdGg6IGF1dG87XG4gIGZsb2F0OiByaWdodDtcbn1cblxuLy8gQSBjb250YWluZXIvcm93IG9mIHRvb2xzXG4uc2JUb29scyB7XG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbn1cblxuLy8gQSBzaW5nbGUgdG9vbCBpbnNpZGUgdGhlIGNvbnRhaW5lciBvZiB0b29sc1xuLnNiVG9vbHMgPiAuc2JUb29sIHtcbiAgYm9yZGVyLWxlZnQ6IDA7XG4gIGJvcmRlci1yYWRpdXM6IDA7XG4gIGZsb2F0OiBsZWZ0O1xuXG4gID4gLnNiLWljb24tdHJpYW5nbGUtZG93biB7XG4gICAgbWFyZ2luLWxlZnQ6IC01cHg7XG4gIH1cblxuICAmOm5vdCgubmctaGlkZSk6bm90KC5zYkJ0bkNsZWFyKTpmaXJzdC1vZi10eXBlIHtcbiAgICBib3JkZXItbGVmdDogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gICAgYm9yZGVyLXRvcC1sZWZ0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgfVxuXG4gICY6bm90KC5uZy1oaWRlKTpsYXN0LW9mLXR5cGUge1xuICAgIGJvcmRlci10b3AtcmlnaHQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gICAgYm9yZGVyLWJvdHRvbS1yaWdodC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgfVxufVxuXG4vLyBBIHNpbmdsZSB0b29sL2J1dHRvbiBpbiBhIHRvb2xiYXJcbi5zYlRvb2wge1xuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIGJvcmRlcjogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gIGJvcmRlci1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgcGFkZGluZzogNXB4IDdweDtcbiAgY29sb3I6IEBzYkdyb3VwQnRuRm9udENvbG9yO1xuICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gIGN1cnNvcjogcG9pbnRlcjtcblxuICAvKiB0aGUgZG93biB0cmlhbmdsZSBpbiBhIHRvb2wgKi9cbiAgPiAuc2ItaWNvbi1kb3duLWRpciB7XG4gICAgcG9zaXRpb246IHJlbGF0aXZlO1xuICB9XG5cbiAgLy8gdGhlIFwiYWN0aXZlXCIgc3RhdGUgb2YgYSB0b29sLCBpLmUuIGl0IHdhcyBjbGlja2VkIGFuZCBub3cgXCJhY3RpdmVcIlxuICAmLmFjdGl2ZSB7XG4gICAgYmFja2dyb3VuZDogQHNiR3JvdXBCdG5Gb250Q29sb3I7XG4gICAgY29sb3I6IEBzYkdyb3VwQnRuQmdDb2xvcjtcbiAgfVxuXG4gICY6aG92ZXIge1xuICAgIGJhY2tncm91bmQ6IEBzYkdyb3VwQnRuSG92ZXJCZ0NvbG9yO1xuICAgIGNvbG9yOiBAc2JHcm91cEJ0bkhvdmVyRm9udENvbG9yO1xuICB9XG5cbiAgJjpmb2N1cyB7XG4gICAgb3V0bGluZS1vZmZzZXQ6IC0ycHg7XG4gICAgb3V0bGluZS13aWR0aDogMnB4O1xuICB9XG59XG5cbi8vIGEgdG9vbCB3aXRoIGEgcG9wdXAgbWVudVxuLnNiVG9vbCA+IG1lbnUge1xuICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gIHJpZ2h0OiAtMXB4O1xuICB0b3A6IDE2cHg7XG4gIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gIGJhY2tncm91bmQtY29sb3I6IEBzYkdyb3VwQnRuQmdDb2xvcjtcbiAgcGFkZGluZzogOHB4IDE0cHg7XG4gIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gIGJvcmRlci1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgYm9yZGVyLXRvcC1yaWdodC1yYWRpdXM6IDA7XG4gIGJvcmRlcjogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gIGRpc3BsYXk6IG5vbmU7XG4gIHotaW5kZXg6IDQ7ICAvLyB1bmRlciBmaXhlZCBwYWdlIGhlYWRlclxuICB0ZXh0LWFsaWduOiBsZWZ0O1xuXG4gICYuZHQge1xuICAgIHRvcDogMjBweDtcbiAgICBtYXgtaGVpZ2h0OiAzMDBweDtcbiAgICBvdmVyZmxvdzogYXV0bztcbiAgfVxuXG4gIC8vIGEgaGVhZGVyIHJvdy90aXRsZSBvZiB0aGUgbWVudVxuICAmID4gaGVhZGVyIHtcbiAgICB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlO1xuICAgIGNvbG9yOiAjNzc3O1xuICAgIG1hcmdpbi1ib3R0b206IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgfVxuXG4gIC8vIGEgaWNvbiBpbiB0aGUgbWVudVxuICAqW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgbWFyZ2luLXJpZ2h0OiA2cHg7XG4gICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICBjb2xvcjogIzc3NztcbiAgfVxufVxuXG4vLyB0aGUgXCJvcGVuXCIgc3RhdGUgb2YgdGhlIG1lbnUgb2YgYSB0b29sXG4uc2JUb29sLm9wZW4gPiBtZW51IHtcbiAgZGlzcGxheTogYmxvY2s7XG59XG5cbi8vIHRoZSBsaXN0IG9mIGl0ZW1zIGluIHRoZSB0b29sJ3MgbWVudVxuLnNiVG9vbCA+IG1lbnUgdWwge1xuICBsaXN0LXN0eWxlOiBub25lO1xuICBwYWRkaW5nOiAwO1xuICBtYXJnaW46IDA7XG5cbiAgLy8gYSBpdGVtIGluIHRoZSBsaXN0IG9mIHRoZSB0b29sJ3MgbWVudVxuICAmID4gbGkge1xuICAgIHBhZGRpbmc6IDNweCAzcHggM3B4IDBweDtcblxuICAgICYgPiBhIHtcbiAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgIH1cblxuICAgIC8vIHRoZSBjaGVja21hcmsgb2YgZWFjaCBpdGVtXG4gICAgLnNiLWljb24tb2sge1xuICAgICAgZGlzcGxheTogbm9uZTtcbiAgICB9XG5cbiAgICAvLyB0aGUgY2hlY2ttYXJrIG9mIHRoZSBzZWxlY3RlZCBpdGVtXG4gICAgJi5zZWxlY3RlZCAuc2ItaWNvbi1vayB7XG4gICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICBmbG9hdDogcmlnaHQ7XG4gICAgICBtYXJnaW4tcmlnaHQ6IDA7XG4gICAgfVxuICB9XG59XG5cbi8vIGEgdG9vbCBtZW51IHdpdGggbXVsdGlwbGUgaGVhZGVyIHNlY3Rpb25zXG4uc2JUb29sID4gbWVudS5tdWx0aSA+IGhlYWRlcjpsYXN0LW9mLXR5cGUge1xuICBtYXJnaW4tdG9wOiAxNnB4O1xufVxuLy8gYSB0b29sIG1lbnUgd2l0aCBtdWx0aXBsZSBsaXN0cyAgKHJldmlzaXQgdGhpcyEpXG4uc2JUb29sID4gbWVudS5tdWx0aSA+IHVsOmxhc3Qtb2YtdHlwZSBsaSB7XG4gIG1pbi13aWR0aDogMTMwcHg7XG59XG5cbi8vIGEgbWVudSBsaW5rIGFjY2Vzc2VkIGZyb20gdGhlIGFycm93XG4uc2IgbWVudSBhe1xuICBjb2xvcjpAc2JHcm91cEJ0bkZvbnRDb2xvcjtcbiAgJjpob3ZlciB7XG4gICAgY29sb3I6IEBzYkdyb3VwQnRuSG92ZXJGb250Q29sb3I7XG4gIH1cbn1cbiIsIi8vIEFsbCBzYWxlc2ZvcmNlIHN0eWxlL2VsZW1lbnQgb3ZlcnJpZGVzXG5cbiNib2R5Q2VsbCB7XG4gIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgb3ZlcmZsb3c6IGhpZGRlbjtcbiAgcGFkZGluZzogMHB4O1xuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIHdpZHRoOiAxMDAlO1xuICBtaW4taGVpZ2h0OiA1MDBweDtcbn1cblxuLy8gZm9yIFwic2V0dXBcIiBwYWdlcywgZS5nLiBFZGl0U2V0dGluZ3NcbiNib2R5RGl2X3NldHVwID4gLm91dGVyIHtcbiAgYmFja2dyb3VuZC1jb2xvcjogQHNiQmdDb2xvciAhaW1wb3J0YW50O1xuICAub0xlZnQge1xuICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkhlYWRlckJnQ29sb3IgIWltcG9ydGFudDtcbiAgfVxufVxuXG4jc2lkZWJhckNlbGwuc2lkZWJhckNvbGxhcHNlZCB7XG4gIHBhZGRpbmctbGVmdDogMDtcblxuICArICNib2R5Q2VsbCB7XG4gICAgbWFyZ2luLWxlZnQ6IC0xcHg7XG4gIH1cbn1cblxuI01vcmVUYWJzX1RhYiA+ICNNb3JlVGFic19MaXN0IHtcbiAgei1pbmRleDogMTA7ICAvLyBtdXN0IGJlIGxhcmdlciB0aGFuIGZpeGVkIHBhZ2UgaGVhZGVyICh0YWIgb3ZlcmZsb3cgZHJvcGRvd24pXG59XG5cbnRhYmxlIHRkIHtcbiAgZm9udC1mYW1pbHk6IGluaGVyaXQ7XG59XG5cbi5zYiB1bCBsaSxcbi5zYiBvbCBsaSB7XG4gIG1hcmdpbjogMDtcbiAgcGFkZGluZzogMDtcbn1cblxuLy8gQnV0dG9ucyAtIG1vcmUgc3BlY2lmaWNpdHkgbmVlZWRlZCBhcyAuYnRuIHRha2VzIHByZWNlZGVuY2Vcbi5idG4uc2JCdG46ZXh0ZW5kKC5zYkJ0bikge31cblxuLy8gQXBleCBQYWdlTWVzc2FnZXMgPGFwZXg6cGFnZU1lc3NhZ2VzPlxuLnNiIC5tZXNzYWdlIHtcbiAgYm9yZGVyLXJhZGl1czogM3B4O1xuICBtYXJnaW46IEBzYlBhZ2VIZWFkZXJMZWZ0IEBzYlBhZ2VIZWFkZXJMZWZ0IDAgQHNiUGFnZUhlYWRlckxlZnQqMS42O1xuICBwYWRkaW5nOiAxMnB4O1xuICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgY29sb3I6IEBzYkZvbnRDb2xvcjtcbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICBiYWNrZ3JvdW5kOiBub25lO1xuXG4gIC5tc2dJY29uIHtcbiAgICBiYWNrZ3JvdW5kOiBub25lO1xuICAgIHdpZHRoOiAwO1xuICAgIGhlaWdodDogMDtcbiAgfVxuXG4gIC5tZXNzYWdlVGV4dCB7XG4gICAgbWFyZ2luOiAwIDAgMCAzMHB4O1xuXG4gICAgPiBzcGFuLCBoNCwgPiBkaXYge1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgbGluZS1oZWlnaHQ6IEBzYkZvbnRTaXplICogMi4wO1xuICAgIH1cblxuICAgIGg0IHtcbiAgICAgIGNvbG9yOiAjY2MwMDAwO1xuICAgICAgbWFyZ2luLWxlZnQ6IDEwcHg7XG4gICAgICBtYXJnaW4tcmlnaHQ6IDZweDtcbiAgICB9XG5cbiAgICA+IGRpdjpub3QoOmZpcnN0LW9mLXR5cGUpIHtcbiAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgIH1cblxuICAgICY6YmVmb3JlIHtcbiAgICAgIGZvbnQtZmFtaWx5OiBcInNiXCI7XG4gICAgICBmb250LXN0eWxlOiBub3JtYWw7XG4gICAgICBmb250LXdlaWdodDogbm9ybWFsO1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDIuMDtcbiAgICAgIHNwZWFrOiBub25lO1xuXG4gICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICB0ZXh0LWRlY29yYXRpb246IGluaGVyaXQ7XG4gICAgICB3aWR0aDogMWVtO1xuICAgICAgbWFyZ2luLWxlZnQ6IC0zMHB4O1xuICAgICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgICAgZm9udC12YXJpYW50OiBub3JtYWw7XG4gICAgICB0ZXh0LXRyYW5zZm9ybTogbm9uZTtcbiAgICAgIGxpbmUtaGVpZ2h0OiAxZW07XG4gICAgfVxuICB9XG5cbiAgJi5lcnJvck0yLFxuICAmLmVycm9yTTMsXG4gICYuZXJyb3JNNCxcbiAgJi5lcnJvck01LFxuICAmLmVycm9yTTYge1xuICAgIC5tZXNzYWdlVGV4dCB7XG4gICAgICBjb2xvcjogI2NjMDAwMDtcbiAgICAgICY6YmVmb3JlIHtcbiAgICAgICAgY29udGVudDogJ1xcZTgyMSc7ICAvL3NiLWljb24tYXR0ZW50aW9uLWNpcmNsZWRcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAmLndhcm5pbmdNMixcbiAgJi53YXJuaW5nTTMsXG4gICYud2FybmluZ000LFxuICAmLndhcm5pbmdNNSxcbiAgJi53YXJuaW5nTTYge1xuICAgIC5tZXNzYWdlVGV4dCB7XG4gICAgICBjb2xvcjogI2Q5ODYzMztcbiAgICAgICY6YmVmb3JlIHtcbiAgICAgICAgY29udGVudDogJ1xcZTgyMCc7ICAvL3NiLWljb24tYXR0ZW50aW9uXG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgJi5pbmZvTTIsXG4gICYuaW5mb00zLFxuICAmLmluZm9NNCxcbiAgJi5pbmZvTTUsXG4gICYuaW5mb002IHtcbiAgICAubWVzc2FnZVRleHQge1xuICAgICAgY29sb3I6ICMwMDAwY2M7XG4gICAgICAmOmJlZm9yZSB7XG4gICAgICAgIGNvbnRlbnQ6ICdcXGU4MGYnOyAgLy9zYi1pY29uLWluZm8tY2lyY2xlZFxuICAgICAgfVxuICAgIH1cbiAgfVxufVxuIiwiLypcbk1vZGFsIGRpYWxvZyBtYXNrXG5cblRoZSBsYXllciBiZWhpbmQgdGhlIGRpYWxvZyB0aGF0IG1hc2tzIHRoZSBlbnRpcmUgcGFnZS5cbiovXG4uc2JNb2RhbE1hc2sge1xuICBwb3NpdGlvbjogZml4ZWQ7XG4gIHRvcDogMDtcbiAgbGVmdDogMDtcbiAgcmlnaHQ6IDA7XG4gIGJvdHRvbTogMDtcbiAgYmFja2dyb3VuZC1jb2xvcjogQHNiTWFza0NvbG9yO1xuICBvcGFjaXR5OiAwLjg7XG4gIHotaW5kZXg6IDEwMDA7XG59XG5cbi8qXG5Nb2RhbCBEaWFsb2dcblxuQSBkaWFsb2cgd2l0aCBtb2RhbGl0eSB0aGF0IHRha2VzIHVwIHRoZSBlbnRpcmUgcGFnZS5cbiAqL1xuLnNiTW9kYWxEaWFsb2cge1xuICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JCZ0NvbG9yO1xuICAvLyBib3JkZXI6IDFweCBzb2xpZCAjMDAwO1xuICBib3JkZXItcmFkaXVzOiA0cHg7XG4gIHRvcDogMTYwcHg7XG4gIHBvc2l0aW9uOiBmaXhlZDtcbiAgbGVmdDogMDtcbiAgcmlnaHQ6IDA7XG4gIG1hcmdpbjogMCBhdXRvO1xuICAvLyBtYXgtd2lkdGg6IDYwMHB4O1xuICBtaW4taGVpZ2h0OiAyMDBweDtcbiAgei1pbmRleDogMTAwMTtcbiAgY29sb3I6IEBzYkZvbnRDb2xvcjtcbiAgdGV4dC1hbGlnbjogY2VudGVyO1xuXG4gID4gaGVhZGVyIHtcbiAgICBib3JkZXItYm90dG9tOiAycHggc29saWQgQHNiQm9yZGVyQ29sb3I7XG4gICAgcGFkZGluZzogMjRweCAxNnB4O1xuICAgIC8vIG1hcmdpbi1ib3R0b206IDEwcHg7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgICAvLyBsaW5lLWhlaWdodDogQHNiRm9udFNpemUgKiAyZW07XG4gICAgY29sb3I6IEBzYkhlYWRlckZvbnRDb2xvcjtcblxuICAgID4gaSB7XG4gICAgICBjb2xvcjogQHNiSGVhZGVyRm9udENvbG9yO1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDI7XG4gICAgfVxuXG4gICAgPiAqIHtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgfVxuXG4gICAgPiBoMiB7XG4gICAgICAvLyBmb250LXdlaWdodDogYm9sZDtcbiAgICAgIG1hcmdpbjogMCAwIDAgNnB4O1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDIuNDtcbiAgICAgIGNvbG9yOiBAc2JIZWFkZXJGb250Q29sb3I7XG4gICAgfVxuXG4gICAgPiBoMyB7XG4gICAgICBjb2xvcjogQHNiSGVhZGVyRm9udENvbG9yO1xuICAgIH1cblxuICAgID4gLnNmLWljb24tY2xvc2Uge1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDM7XG4gICAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgICB0b3A6IC01MHB4O1xuICAgICAgcmlnaHQ6IDBweDtcbiAgICAgICY6aG92ZXIge1xuICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICB9XG4gICAgfVxuICAgID4gLnNmLWljb24tY2xvc2U6YmVmb3JlIHtcbiAgICAgIGNvbG9yOiAjZmZmO1xuICAgIH1cbiAgfVxuXG4gIC5zYk1vZGFsQ29udGVudENvbnRhaW5lciB7XG4gICAgb3ZlcmZsb3c6IGF1dG87XG4gICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICBpW2NsYXNzXj1zZi1pY29uXSB7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xuICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Db2xvcjtcblxuICAgICAgJjpob3ZlciB7XG4gICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uSG92ZXJDb2xvcjtcbiAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgfVxuICAgIH1cblxuICAgIC5zYlRhYmxlIHtcbiAgICAgIG1hcmdpbi1ib3R0b206IDhweDtcblxuICAgICAgdGQge1xuICAgICAgICBib3JkZXItYm90dG9tOiAwO1xuICAgICAgfVxuICAgIH1cblxuICAgIHVsIHtcbiAgICAgIC13ZWJraXQtcGFkZGluZy1lbmQ6IDQwcHg7XG4gICAgfVxuICB9XG5cbiAgLnNiTW9kYWxGb290ZXIge1xuICAgIHdpZHRoOiAxMDAlO1xuICAgIGJvcmRlci10b3A6IDJweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcbiAgICBwYWRkaW5nOiAxMnB4IDE2cHg7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogQHNiSGVhZGVyQmdDb2xvcjtcbiAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICBib3JkZXItYm90dG9tLWxlZnQtcmFkaXVzOiA0cHg7XG4gICAgYm9yZGVyLWJvdHRvbS1yaWdodC1yYWRpdXM6IDRweDtcbiAgICBkaXNwbGF5OiBpbmxpbmUtdGFibGU7XG5cdGhlaWdodDogMjZweDtcblxuICAgID4gLnNiQnV0dG9ucyB7XG4gICAgICBmbG9hdDogcmlnaHQ7XG4gICAgICBwYWRkaW5nOiAwIDAgMCAxNnB4O1xuICAgICAgPiAuc2JCdG4ge1xuICAgICAgICBwYWRkaW5nOiA4cHggMTZweDtcblxuICAgICAgICAmLnNiUHJpbWFyeUFjdGlvbiB7XG4gICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiUHJpbWFyeUJ0bkJnQ29sb3I7XG4gICAgICAgICAgY29sb3I6IEBzYlByaW1hcnlCdG5Gb250Q29sb3I7XG4gICAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JQcmltYXJ5QnRuSG92ZXJCZ0NvbG9yO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cblxuICB9XG59XG5cbiNEZXNjcmlwdGlvbkVkaXRvckRpYWxvZyB7XG4gICBtaW4taGVpZ2h0OiA0MjlweDtcbn1cblxuLy8gc2JEaWFsb2cgYW5kIHNiRGlhbG9nTWFzayBhcmUgZWxlbWVudHMgZGVzaWduZWQgdG8gc3BlY2lmaWNhbGx5IHJlcGxhY2UgT3ZlcmxheURpYWxvZyB3aGlsZSBrZWVwaW5nIHNhbWUgbWFya3VwL0FQSSBzdHJ1Y3R1cmVcbkBzYkRpYWxvZ1o6IDkwMDA7XG5cbi5zYkRpYWxvZ01hc2sge1xuXHRwb3NpdGlvbjogZml4ZWQ7XG5cdHRvcDogMDtcblx0bGVmdDogMDtcblx0cmlnaHQ6IDA7XG5cdGJvdHRvbTogMDtcblx0YmFja2dyb3VuZDogcmdiYSggMTI2LDE0MCwxNTMsMC44KTtcblx0ZGlzcGxheTogYmxvY2s7XG5cdHZpc2liaWxpdHk6IGhpZGRlbjtcblx0ei1pbmRleDogQHNiRGlhbG9nWjtcbn1cblxuLnNiRGlhbG9nTWFzay5vcGVuLCAuc2JEaWFsb2cub3BlbiB7XG5cdHZpc2liaWxpdHk6IHZpc2libGU7XG59XG5cbi5zYkRpYWxvZywgLnNiRGlhbG9nICoge1xuXHRib3gtc2l6aW5nOiBib3JkZXItYm94O1xuXHRtYXJnaW46IDA7XG5cdHBhZGRpbmc6IDA7XG59XG5cbi5zYkRpYWxvZyB7XG5cdHBvc2l0aW9uOiBmaXhlZDtcblx0dG9wOiAwO1xuXHRsZWZ0OiAwO1xuXHR6LWluZGV4OiBAc2JEaWFsb2daICsgMTtcblx0ZGlzcGxheTogYmxvY2s7XG5cdHZpc2liaWxpdHk6IGhpZGRlbjtcblxuXHQ+IC5zYkRpYWxvZ0NvbiB7XG5cdFx0Ym9yZGVyLXJhZGl1czogNHB4O1xuXHRcdHBvc2l0aW9uOiByZWxhdGl2ZTtcblx0XHRtYXJnaW46IDAgYXV0bztcblx0XHRiYWNrZ3JvdW5kOiAjZmZmO1xuXG5cdFx0PiBoZWFkZXIge1xuXHRcdFx0ZGlzcGxheTogYmxvY2s7XG5cdFx0XHRwb3NpdGlvbjogcmVsYXRpdmU7XG5cdFx0XHRwYWRkaW5nOiAyNHB4IDE2cHg7XG5cdFx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdFx0XHRib3JkZXItYm90dG9tOiAycHggc29saWQgcmdiKDIxNiwyMjEsMjMwKTtcblxuXHRcdFx0PiBoMiB7XG5cdFx0XHRcdGxpbmUtaGVpZ2h0OiAyMHB4O1xuXHRcdFx0XHRmb250LXNpemU6IDI0cHg7XG5cdFx0XHR9XG5cblx0XHRcdD4gYnV0dG9uIHtcblx0XHRcdFx0cG9zaXRpb246IGFic29sdXRlO1xuXHRcdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0XHRcdHRvcDogLTQ2cHg7XG5cdFx0XHRcdHJpZ2h0OiAtOHB4O1xuXHRcdFx0XHR3aWR0aDogNDhweDtcblx0XHRcdFx0aGVpZ2h0OiA0OHB4O1xuXG5cdFx0XHRcdGNvbG9yOiAjZmZmO1xuXHRcdFx0XHRiYWNrZ3JvdW5kOiBub25lO1xuXHRcdFx0XHRib3JkZXI6IDA7XG5cdFx0XHRcdG91dGxpbmU6IDA7XG5cdFx0XHRcdGZvbnQtc2l6ZTogMjRweDtcblx0XHRcdH1cblx0XHR9XG5cblx0XHQ+IC5zYkRpYWxvZ0JvZHkge1xuXHRcdFx0cGFkZGluZzogMTZweDtcblx0XHR9XG5cdH1cbn1cblxuLy8gSlEgVUkgdG9vbHRpcHNcbi51aS10b29sdGlwOmV4dGVuZCguc2IpIHtcbiAgcGFkZGluZzogOHB4O1xuICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gIHotaW5kZXg6IDk5OTk7XG4gIG1heC13aWR0aDogMzAwcHg7XG4gIGJhY2tncm91bmQ6IEBzYkJnQ29sb3I7XG4gIGJvcmRlcjogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICBib3gtc2hhZG93OiAwIDAgMnB4IEBzYkJvcmRlckNvbG9yO1xuXG4gID4gLnVpLXRvb2x0aXAtY29udGVudCB7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gIH1cblxuICA+IC5hcnJvdyB7XG4gICAgd2lkdGg6IDcwcHg7XG4gICAgaGVpZ2h0OiAxNnB4O1xuICAgIG92ZXJmbG93OiBoaWRkZW47XG4gICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgIGxlZnQ6IDUwJTtcbiAgICBtYXJnaW4tbGVmdDogLTM1cHg7XG4gICAgYm90dG9tOiAtMTZweDtcbiAgfVxuICA+IC5hcnJvdy50b3Age1xuICAgIHRvcDogLTE2cHg7XG4gICAgYm90dG9tOiBhdXRvO1xuXG4gICAgJjphZnRlciB7XG4gICAgICBib3R0b206IC0yMHB4O1xuICAgICAgdG9wOiBhdXRvO1xuICAgIH1cbiAgfVxuICA+IC5hcnJvdy5sZWZ0IHtcbiAgICBsZWZ0OiAyOCU7XG4gIH1cbiAgPiAuYXJyb3c6YWZ0ZXIge1xuICAgIGJhY2tncm91bmQ6IEBzYkJnQ29sb3I7XG4gICAgYm9yZGVyOiBAc2JIZWFkZXJCb3JkZXJDb2xvcjtcbiAgICBjb250ZW50OiBcIlwiO1xuICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICBsZWZ0OiAyMHB4O1xuICAgIHRvcDogLTIwcHg7XG4gICAgd2lkdGg6IDI1cHg7XG4gICAgaGVpZ2h0OiAyNXB4O1xuICAgIGJveC1zaGFkb3c6IDZweCA1cHggOXB4IC05cHggYmxhY2s7XG4gICAgLXdlYmtpdC10cmFuc2Zvcm06IHJvdGF0ZSg0NWRlZyk7XG4gICAgLW1zLXRyYW5zZm9ybTogcm90YXRlKDQ1ZGVnKTtcbiAgICB0cmFuc2Zvcm06IHJvdGF0ZSg0NWRlZyk7XG4gIH1cbn1cblxuLy8gSlEgVUkgYTExeSBzdHlsZXMgKG5lZWRlZCBmb3IgdG9vbGlwcylcbi51aS1oZWxwZXItaGlkZGVuLWFjY2Vzc2libGUge1xuICBib3JkZXI6IDA7XG4gIGNsaXA6IHJlY3QoMCAwIDAgMCk7XG4gIGhlaWdodDogMXB4O1xuICBtYXJnaW46IC0xcHg7XG4gIG92ZXJmbG93OiBoaWRkZW47XG4gIHBhZGRpbmc6IDA7XG4gIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgd2lkdGg6IDFweDtcbn1cblxuI3NiQ3VzdG9tQWN0aW9uQ29udGFpbmVyIHtcbiAgbWFyZ2luOiAxOHB4O1xuICB0b3A6IDBweDtcbiAgaGVpZ2h0OiA5NSU7XG4gIC8vIG1pbi1oZWlnaHQ6IDBweDtcbiAgPiAuc2YtaWNvbi1jYW5jZWwtY2lyY2xlZCB7XG4gICAgZm9udC1zaXplOiAzNXB4O1xuICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICB0b3A6IC05cHg7XG4gICAgcmlnaHQ6IC00cHg7XG4gICAgd2lkdGg6IDIwcHg7XG4gICAgaGVpZ2h0OiAyMHB4O1xuICAgIGJhY2tncm91bmQtY29sb3I6IEBzYk1hc2tDb2xvcjtcbiAgICAmOmhvdmVyIHtcbiAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICB9XG4gIH1cbiAgPiAuc2YtaWNvbi1jYW5jZWwtY2lyY2xlZDpiZWZvcmUge1xuICAgIGNvbG9yOiAjZmZmO1xuICAgIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgICByaWdodDogMTVweDtcbiAgICB0b3A6IC0xMHB4O1xuICB9XG5cbn1cblxuI2Vhc3lYRE1fU0JRUV9wcm92aWRlciB7XG4gIHdpZHRoOiAxMDAlO1xuICBoZWlnaHQ6IDEwMCU7XG59XG5cbiNzYlByaWNlYm9va01vZGFsIHtcbiAgLnNiTW9kYWxEaWFsb2c7XG4gIG1heC13aWR0aDogNjQwcHg7XG5cbiAgPiAuc2JNb2RhbENvbnRlbnRDb250YWluZXIge1xuICAgIHBhZGRpbmc6IDIwcHg7XG4gICAgdGV4dC1hbGlnbjogY2VudGVyO1xuXG4gICAgPiBzZWxlY3Qge1xuICAgICAgaGVpZ2h0OiAzNHB4O1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNjtcbiAgICAgIHdpZHRoOiAxMDAlO1xuICAgICAgbWFyZ2luOiAxNHB4IDA7XG4gICAgfVxuICB9XG59XG4iLCIvLyBUaGUgcGFnZSB0aXRsZSBhdCB0b3AgbGVmdCBvZiBwYWdlIChpY29uLCBwYWdlIG5hbWUsIG9iamVjdCBpbnN0YW5jZSBuYW1lLCBldGMgKVxuLnNiUGFnZVRpdGxlIHtcbiAgLy8gcGFkZGluZzogOXB4IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICBwYWRkaW5nOiAyNHB4IDI0cHggMTZweDtcbiAgY29sb3I6IEBzYkhlYWRlclN1cHBvcnRGb250Q29sb3I7XG4gIGJhY2tncm91bmQ6IEBzYkhlYWRlckJnQ29sb3I7XG4gIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCBAc2JIZWFkZXJCb3JkZXJDb2xvcjtcbiAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgdHJhbnNpdGlvbjogcGFkZGluZyAuMjVzIGVhc2UtaW47XG5cbiAgaDEsIGgyLCBoMyB7XG4gICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbiAgICB0cmFuc2l0aW9uOiBhbGwgLjI1cyBlYXNlLWluO1xuICB9XG5cbiAgLy8gdGhlIHNlY29uZGFyeSBwYWdlIHRpdGxlLCBvYmplY3QgaW5zdGFuY2UgbmFtZSwgZXRjIChvcHRpb25hbClcbiAgaDIge1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplOyAgLy8gbm90IGEgbm9ybWFsIGgyIHNpemVcbiAgICBjb2xvcjogQHNiSGVhZGVyU3VwcG9ydEZvbnRDb2xvcjtcbiAgICAvLyB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlO1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgIGZvbnQtd2VpZ2h0OiA0MDA7XG4gICAgcGFkZGluZy1ib3R0b206IDRweDtcbiAgfVxuXG4gIGgzIHtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTsgIC8vIG5vdCBhIG5vcm1hbCBoMiBzaXplXG4gICAgY29sb3I6IEBzYkhlYWRlclN1cHBvcnRGb250Q29sb3I7XG4gICAgLy8gdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgICBmb250LXdlaWdodDogNDAwO1xuICAgIHBhZGRpbmctdG9wOiA0cHg7XG4gIH1cblxuICA+IC5zYlBhZ2VUaXRsZVRhYmxlIHtcbiAgICBkaXNwbGF5OiB0YWJsZTtcbiAgICB3aWR0aDogMTAwJTtcbiAgICAtd2Via2l0LXRyYW5zaXRpb24tZGVsYXk6IDBzLCAwcywgMHM7XG4gICAgLXdlYmtpdC10cmFuc2l0aW9uLWR1cmF0aW9uOiAwLjI1cywgMC4yNXMsIDAuMjVzO1xuICAgIC13ZWJraXQtdHJhbnNpdGlvbi1wcm9wZXJ0eTogLXdlYmtpdC10cmFuc2Zvcm0sIG9wYWNpdHksIGxlZnQ7XG4gICAgLXdlYmtpdC10cmFuc2l0aW9uLXRpbWluZy1mdW5jdGlvbjogZWFzZS1pbiwgZWFzZS1pbiwgZWFzZTtcbiAgICAtd2Via2l0LXVzZXItZHJhZzogbm9uZTtcblxuICAgICYuc2JSZXN1bHRzU2VjdGlvbiB7XG4gICAgICA+IC5zYlBhZ2VUaXRsZUxlZnQge1xuICAgICAgICB3aWR0aDogMTAwJTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICA+IC5zYlBhZ2VUaXRsZUxlZnQsXG4gICAgPiAuc2JQYWdlVGl0bGVSaWdodCB7XG4gICAgICBkaXNwbGF5OiB0YWJsZS1jZWxsO1xuICAgICAgdmVydGljYWwtYWxpZ246IHRvcDtcbiAgICAgIHRyYW5zaXRpb246IGFsbCAuMjVzIGVhc2UtaW47XG4gICAgfVxuXG4gICAgPiAuc2JQYWdlVGl0bGVMZWZ0IHtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1mbGV4O1xuICAgICAgd2lkdGg6IDMwJTtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiB0b3A7XG5cblxuICAgICAgLnNiVGl0bGVzIHtcbiAgICAgICAgdmVydGljYWwtYWxpZ246IHRvcDtcbiAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICB0cmFuc2l0aW9uOiBhbGwgLjI1cyBlYXNlLWluO1xuICAgICAgICAtd2Via2l0LXRyYW5zaXRpb24tZGVsYXk6IDBzLCAwcywgMHM7XG4gICAgICAgIC13ZWJraXQtdHJhbnNpdGlvbi1kdXJhdGlvbjogMC4yNXMsIDAuMjVzLCAwLjI1cztcbiAgICAgICAgLXdlYmtpdC10cmFuc2l0aW9uLXByb3BlcnR5OiAtd2Via2l0LXRyYW5zZm9ybSwgb3BhY2l0eSwgbGVmdDtcbiAgICAgICAgLXdlYmtpdC10cmFuc2l0aW9uLXRpbWluZy1mdW5jdGlvbjogZWFzZS1pbiwgZWFzZS1pbiwgZWFzZTtcbiAgICAgICAgLXdlYmtpdC11c2VyLWRyYWc6IG5vbmU7XG4gICAgICB9XG4gICAgICBbY2xhc3NePXNmLWljb25dIHsvL3RoZXNlIG5lZWQgdG8gYmUgdmFyaWFibGVzXG4gICAgICAgIGZvbnQtc2l6ZTogNTBweDtcbiAgICAgICAgaGVpZ2h0OiA1MHB4O1xuICAgICAgICB3aWR0aDogNTBweDtcbiAgICAgICAgYm9yZGVyLXJhZGl1czogNHB4O1xuICAgICAgICBtYXJnaW4tcmlnaHQ6IDEycHg7XG4gICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICB0cmFuc2l0aW9uOiBhbGwgLjI1cyBlYXNlLWluO1xuXG4gICAgICAgICYucmVzaXplIHtcbiAgICAgICAgICBmb250LXNpemU6IDMwcHg7XG4gICAgICAgICAgcGFkZGluZzogMTNweCAxMHB4IDAgMTBweDtcbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICBbY2xhc3NePXNmLWljb25dOmJlZm9yZSB7Ly90aGVzZSBuZWVkIHRvIGJlIHZhcmlhYmxlc1xuICAgICAgICBjb2xvcjogI2ZmZjtcbiAgICAgICAgbWFyZ2luOiAwO1xuICAgICAgICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gICAgICB9XG5cbiAgICAgIC5yZXNldEhlaWdodFtjbGFzc149c2YtaWNvbl06YmVmb3JlIHtcbiAgICAgICAgdG9wOiAwcHg7XG4gICAgICB9XG5cblxuXG4gICAgICA+IHNwYW4ge1xuXHRcdFx0XHQvL1RoaXMgaXMgdG8gZml4IHRoZSBoZWFkZXIgaXNzdWUgaW4gU2FmYXJpXG4gICAgICAgIHdpZHRoOiAyMDBweDtcblxuXHRcdFx0XHQvLyBCdXQgaW4gSUUxMSsgaXQgYnJlYWtzLCBzbyByZXNldCBpdCBiYWNrIHdpdGggYSBoYWNreSB3YXkgdG8gdGFyZ2V0IElFIG9ubHlcblx0XHRcdFx0QG1lZGlhIHNjcmVlbiBhbmQgKC1tcy1oaWdoLWNvbnRyYXN0OiBub25lKSwgKC1tcy1oaWdoLWNvbnRyYXN0OiBhY3RpdmUpIHtcblx0XHRcdFx0XHR3aWR0aDogYXV0bztcblx0XHRcdFx0fVxuICAgICAgfVxuICAgIH1cblxuICAgID4gLnNiUGFnZVRpdGxlUmlnaHQge1xuICAgICAgd2lkdGg6IDEwMCU7XG4gICAgICA+IC5zYlRvb2xzLFxuICAgICAgPiAuc2JCdXR0b25zIHtcbiAgICAgICAgZmxvYXQ6IHJpZ2h0O1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC8vIHRoZSBcIlggUHJvZHVjdHMgRm91bmRcIiBsYWJlbFxuICAuc2JSZXN1bHRzIHtcbiAgICBtYXJnaW46IDdweCAwIDAgNjJweDtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICB0cmFuc2l0aW9uOiBhbGwgLjI1cyBlYXNlLWluO1xuXG4gICAgJi5zYldhcm5pbmcge1xuICAgICAgbWFyZ2luLXRvcDogMnB4O1xuICAgICAgY29sb3I6ICNjYzc4MjQ7XG4gICAgICBbY2xhc3M9c2YtaWNvbi13YXJuaW5nXSB7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjY7XG4gICAgICAgIHdpZHRoOiAxM3B4O1xuICAgICAgICBoZWlnaHQ6IDIwcHg7XG4gICAgICAgIC8vIHRvcDogLTE1cHg7XG4gICAgICAgICY6YmVmb3JlIHtcbiAgICAgICAgICBjb2xvcjogI2NjNzgyNDtcbiAgICAgICAgICBtYXJnaW46IDAgNnB4IDAgMDtcbiAgICAgICAgICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gICAgICAgICAgdG9wOiAycHg7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAmLnNxdWVlemVkIHtcbiAgICBwYWRkaW5nOiAyMHB4IDE1cHggN3B4O1xuXG4gICAgPiAuc2JQYWdlVGl0bGVUYWJsZSB7XG4gICAgICA+IC5zYlBhZ2VUaXRsZUxlZnQge1xuICAgICAgICAvLyBwYWRkaW5nOiA3cHggMDtcblxuICAgICAgICBbY2xhc3NePXNmLWljb25dIHtcbiAgICAgICAgICBmb250LXNpemU6IDM2cHg7XG4gICAgICAgICAgaGVpZ2h0OiAzNnB4O1xuICAgICAgICAgIHdpZHRoOiAzNnB4O1xuICAgICAgICAgICYucmVzaXplIHtcbiAgICAgICAgICAgIGZvbnQtc2l6ZTogMjNweDtcbiAgICAgICAgICAgIHBhZGRpbmctdG9wOiA4cHg7XG4gICAgICAgICAgICBwYWRkaW5nLWxlZnQ6IDdweDtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgICAgW2NsYXNzXj1zZi1pY29uXTpiZWZvcmUge1xuICAgICAgICAgIHRvcDogLTVweDtcbiAgICAgICAgfVxuICAgICAgICAuc2JUaXRsZXMge1xuICAgICAgICAgIHRyYW5zZm9ybTogdHJhbnNsYXRlM2QoMHB4LCAtMTJweCwgMHB4KTtcbiAgICAgICAgICAtd2Via2l0LXRyYW5zZm9ybTogbWF0cml4KDEsIDAsIDAsIDEsIDAsIC04KTtcbiAgICAgICAgfVxuICAgICAgICBoMiB7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgLnNiQnV0dG9ucyB7XG4gICAgICAgIHBhZGRpbmc6IDA7XG4gICAgICB9XG5cbiAgICAgICYuc2JSZXN1bHRzU2VjdGlvbiB7XG4gICAgICAgIG9wYWNpdHk6IDA7XG4gICAgICAgIGRpc3BsYXk6IG5vbmU7IC8vVGVtcG9yYXJ5IHVudGlsIHRoZXJlIGlzIGFub3RoZXIgd2F5IHRvIGtlZXAgdGhpcyBmcm9tIHRha2luZyB1cCBzcGFjZVxuICAgICAgICB0cmFuc2Zvcm06IHRyYW5zbGF0ZTNkKDBweCwgLTE3cHgsIDBweCk7XG4gICAgICAgIC13ZWJraXQtdHJhbnNmb3JtOiBtYXRyaXgoMSwgMCwgMCwgMSwgMCwgLTE3KTtcbiAgICAgIH1cbiAgICB9XG4gIH1cbn1cblxuLy8gRml4IHRoZSBwYWdlIHRpdGxlIHRvIHRvcCBvZiB2aWV3cG9ydCB3aGVuIG5lZWRlZFxuLnNiSGVhZGVyRml4ZWQgLnNiUGFnZVRpdGxlIHtcbiAgcG9zaXRpb246IGZpeGVkO1xuICB0b3A6IDExNHB4OyAvLyBoZWlnaHQgb2YgU0YgQXBwIGhlYWRlci4gIE9ubHkgc2V0IGhlcmUgZm9yIGluaXRpYWwgcmVuZGVyaW5nXG4gIGxlZnQ6IDEwcHg7ICAvLyBzaXplIG9mIFNGIEFsb2hhIGd1dHRlcnNcbiAgcmlnaHQ6IDEwcHg7XG4gIHotaW5kZXg6IDU7XG4gIHZpc2liaWxpdHk6IGhpZGRlbjsgLy8gZm9yIGxvYWRpbmcuIHdlJ2xsIGR5bmFtaWNhbGx5IHNob3cgd2hlbiBwYWdlIGlzIFwicmVhZHlcIlxufVxuXG4jc2lkZWJhckNlbGw6bm90KC5zaWRlYmFyQ29sbGFwc2VkKSArICNib2R5Q2VsbCAuc2JIZWFkZXJGaXhlZCAuc2JQYWdlVGl0bGUge1xuICBsZWZ0OiAyMzBweDsgIC8vIGZvciBpbml0aWFsIHBvc2l0aW9uIHdoaWxlIFwibG9hZGluZ1wiIGlzIHNob3duXG59XG5cbiNtYWluQ29udGVudCB7XG4gIG1hcmdpbi1sZWZ0OiAxcHg7XG59XG5cbi8vIFRoZSBwYWdlIGJsb2NrIGFmdGVyIHRoZSBwYWdlIHRpdGxlLCBpLmUuIHRoZSBtYWluIGNvbnRlbnRzIG9mIHRoZSBwYWdlXG4uc2JQYWdlQmxvY2sge1xuICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xufVxuXG4vLyBBIHNlY3Rpb24gd2l0aGluIGEgcGFnZSBibG9ja1xuLnNiUGFnZUJsb2NrU2VjdGlvbiB7XG4gIG1hcmdpbjogQHNiUGFnZUhlYWRlckxlZnQ7XG4gIGJhY2tncm91bmQ6IEBzYkhlYWRlckJnQ29sb3I7XG4gIGJvcmRlci1yYWRpdXM6IDRweDtcbiAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcblxuICA+IGhlYWRlciB7XG4gICAgbWFyZ2luLWJvdHRvbTogMTBweDtcbiAgfVxuXG4gICY6YWZ0ZXI6ZXh0ZW5kKCAuc2JDbGVhciApIHt9XG59XG5cbi8vIFRoZSBMb2FkaW5nIGxheWVyIG1vZGFsIG1hc2tcbi5zYkxvYWRpbmdNYXNrIHtcbiAgcG9zaXRpb246IGZpeGVkO1xuICB0b3A6IDA7XG4gIGxlZnQ6IDA7XG4gIHJpZ2h0OiAwO1xuICBib3R0b206IDA7XG4gIGJhY2tncm91bmQtY29sb3I6ICNBOEI3Qzc7XG4gIG9wYWNpdHk6IDAuODtcbiAgei1pbmRleDogMTAwMDE7XG59XG5cbi8vIFRoZSBMb2FkaW5nIHNwaW5uZXIgaWNvblxuLnNiTG9hZGluZyB7XG4gIHBvc2l0aW9uOiBmaXhlZDtcbiAgdG9wOiAzNyU7XG4gIGxlZnQ6IDUwJTtcbiAgbWFyZ2luLWxlZnQ6IC03NHB4O1xufVxuXG4vLyBMb29rdXAgU2VhcmNoIFJlc3VsdHNcbi5zYlNlYXJjaFJlc3VsdHMge1xuXG4gIC8vIHRoZSBsaXN0IG9mIHByb2R1Y3RzXG4gIC5zYlRhYmxlIHtcbiAgICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xuXG4gICAgLy8gZmlyc3QgY29sdW1uIG9mIGxpc3QgaXMgY2hlY2tib3gvc2VsZWN0b3IgY29sdW1uXG4gICAgPiB0aGVhZCA+IHRyID4gdGg6Zmlyc3Qtb2YtdHlwZSxcbiAgICA+IHRib2R5ID4gdHIgPiB0ZDpmaXJzdC1vZi10eXBlIHtcbiAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICB9XG5cbiAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgIH1cbiAgfVxuXG4gIC8vIHRvb2xiYXIgaW4gdXBwZXIgcmlnaHQgb2YgcGFnZSAoRmlsdGVyLCBldGMpXG4gIC5zYlRvb2xzIHtcbiAgICBmbG9hdDogcmlnaHQ7XG4gIH1cbn1cbiIsIkBzYlRleHRib3hIZWlnaHQ6IEBzYkZvbnRTaXplICogMi41O1xuQHNiVGV4dGJveEJvcmRlcjogMXB4IHNvbGlkIEBzYkJvcmRlckNvbG9yO1xuQHNiVGV4dGJveFJhZGl1czogM3B4O1xuQHNiU2VsZWN0SGVpZ2h0OiBAc2JGb250U2l6ZSAqIDIuNTtcbkBzYlNlbGVjdEJvcmRlcjogMXB4IHNvbGlkIEBzYkJvcmRlckNvbG9yO1xuQHNiU2VsZWN0UmFkaXVzOiAzcHg7XG5Ac2JTZWxlY3RCZ0NvbG9yOiBAc2JQYWdlQmdDb2xvcjtcbkBzYkNoZWNrYm94U2l6ZTogMjJweDtcblxuLnNiIHtcbiAgLy8gVGV4dCBib3hlcyAtIGRlZmF1bHQgc3R5bGVzXG4gIGlucHV0W3R5cGU9dGV4dF0sIGlucHV0Om5vdChbdHlwZV0pIHtcbiAgICBoZWlnaHQ6IEBzYlRleHRib3hIZWlnaHQ7XG4gICAgYm9yZGVyOiBAc2JUZXh0Ym94Qm9yZGVyO1xuICAgIGJvcmRlci1yYWRpdXM6IEBzYlRleHRib3hSYWRpdXM7XG4gICAgcGFkZGluZzogMCA1cHg7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cbiAgICAmLmhhc0RhdGVwaWNrZXIge1xuICAgICAgbWluLXdpZHRoOiA5NXB4O1xuICAgICAgd2lkdGg6IDg1JTtcbiAgICAgICAmLmludmFsaWREYXRlIHtcbiAgICAgICAgYm9yZGVyLWNvbG9yOiAjYzAwO1xuICAgICAgIH1cbiAgICB9XG5cbiAgfVxuXG5cbiAgLy8gU2VsZWN0IHB1bGxkb3ducyAtIGRlZmF1bHQgc3R5bGVzXG4gIHNlbGVjdDpub3QoW211bHRpcGxlXSkge1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIC13ZWJraXQtYXBwZWFyYW5jZTogbm9uZTtcbiAgICAtbW96LWFwcGVhcmFuY2U6IG5vbmU7XG4gICAgbWluLXdpZHRoOiAxMDBweDtcbiAgICBwYWRkaW5nOiAwIDE0cHg7XG4gICAgbWFyZ2luOiAwO1xuICAgIGhlaWdodDogQHNiU2VsZWN0SGVpZ2h0O1xuICAgIGJhY2tncm91bmQtaW1hZ2U6IHVybCgnZGF0YTppbWFnZS9zdmcreG1sO2Jhc2U2NCxQSE4yWnlCNGJXeHVjejBpYUhSMGNEb3ZMM2QzZHk1M015NXZjbWN2TWpBd01DOXpkbWNpSUhodGJHNXpPbmhzYVc1clBTSm9kSFJ3T2k4dmQzZDNMbmN6TG05eVp5OHhPVGs1TDNoc2FXNXJJaUIyWlhKemFXOXVQU0l4TGpFaUlHbGtQU0pNWVhsbGNsOHhJaUI0UFNJd2NIZ2lJSGs5SWpCd2VDSWdkbWxsZDBKdmVEMGlNQ0F3SURJM0xqWWdNakVpSUdWdVlXSnNaUzFpWVdOclozSnZkVzVrUFNKdVpYY2dNQ0F3SURJM0xqWWdNakVpSUhodGJEcHpjR0ZqWlQwaWNISmxjMlZ5ZG1VaVBnMEtJQ0E4Wno0TkNpQWdJQ0E4WkdWbWN6NE5DaUFnSUNBZ0lEeHdZWFJvSUdsa1BTSlRWa2RKUkY4eFh5SWdaRDBpVFRVdU5pQTFhREUyTGpSak1DNDBJREFnTUM0NElEQXVOaUF3TGpRZ01Xd3RPQ0E1TGpoakxUQXVNeUF3TGpNdE1DNDVJREF1TXkweExqSWdNR3d0T0MwNUxqaEROQzQ0SURVdU5pQTFMakVnTlNBMUxqWWdOWG9pTHo0TkNpQWdJQ0E4TDJSbFpuTStEUW9nSUNBZ1BHTnNhWEJRWVhSb0lHbGtQU0pUVmtkSlJGOHlYeUkrRFFvZ0lDQWdJQ0E4ZFhObElIaHNhVzVyT21oeVpXWTlJaU5UVmtkSlJGOHhYeUlnYjNabGNtWnNiM2M5SW5acGMybGliR1VpTHo0TkNpQWdJQ0E4TDJOc2FYQlFZWFJvUGcwS0lDQWdJRHh5WldOMElIZzlJakFpSUhrOUlqQWlJR05zYVhBdGNHRjBhRDBpZFhKc0tDTlRWa2RKUkY4eVh5a2lJR1pwYkd3OUlpTTFOVFk1T0VRaUlIZHBaSFJvUFNJeU55NDJJaUJvWldsbmFIUTlJakl4SWk4K0RRb2dJRHd2Wno0TkNqd3ZjM1puUGcwSycpO1xuICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkJnQ29sb3I7XG4gICAgYmFja2dyb3VuZC1wb3NpdGlvbjogOTUlIDUwJTtcbiAgICBiYWNrZ3JvdW5kLXJlcGVhdDogbm8tcmVwZWF0O1xuICAgIGJhY2tncm91bmQtc2l6ZTogMTRweCAxNHB4O1xuICAgIGJvcmRlcjogQHNiU2VsZWN0Qm9yZGVyO1xuICAgIGJvcmRlci1yYWRpdXM6IDNweDtcblxuXHRcdCY6Oi1tcy1leHBhbmQge1xuXHRcdFx0ZGlzcGxheTogbm9uZTsgLy8gcmVtb3ZlcyBhcnJvdyBmb3IgSUVcblx0XHR9XG4gIH1cblxuICAvLyBDaGVja2JveCAtIGRlZmF1bHQgc3R5bGVzXG4gIGlucHV0W3R5cGU9Y2hlY2tib3hdIHtcbiAgICB3aWR0aDogQHNiQ2hlY2tib3hTaXplO1xuICAgIGhlaWdodDogQHNiQ2hlY2tib3hTaXplO1xuICAgIG1hcmdpbjogMDtcbiAgICBib3JkZXI6IDA7XG4gIH1cblxuICBpbnB1dCwgYnV0dG9uLCBzZWxlY3QsIHRleHRhcmVhIHtcbiAgICBmb250LWZhbWlseTogaW5oZXJpdDtcbiAgfVxufVxuXG4vKlxuRHVhbGluZyBMaXN0IGJveFxuXG5BIGNvbnRyb2wgd2l0aCB0d28gbGlzdCBib3hlcyBhbmQgYXJyb3dzIHRvIG1vdmUgaXRlbXMgbGVmdC9yaWdodCBhbmQgdXAvZG93biBiZXR3ZWVuIHRob3NlIHR3by5cbiAqL1xuLnNiRHVhbExpc3RCb3gge1xuICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgY29sb3I6IGluaGVyaXQ7XG4gIGJvcmRlci1jb2xsYXBzZTogY29sbGFwc2U7XG4gIGJvcmRlci1zcGFjaW5nOiAwO1xuXG4gID4gdGhlYWQgPiB0ciA+IHRoIHtcbiAgICBmb250LXdlaWdodDogbm9ybWFsO1xuICAgIHRleHQtYWxpZ246IGNlbnRlcjtcblxuICAgID4gW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS40O1xuICAgICAgY29sb3I6IEBzYkljb25Db2xvcjtcbiAgICB9XG4gIH1cblxuICA+IHRib2R5ID4gdHIgPiB0ZDpudGgtY2hpbGQoMiksXG4gID4gdGJvZHkgPiB0ciA+IHRkOm50aC1jaGlsZCg0KSB7XG4gICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gIH1cblxuICBhIHtcbiAgICBjb2xvcjogaW5oZXJpdDtcbiAgICBwYWRkaW5nOiAycHg7XG4gICAgbWFyZ2luOiAwIDhweDtcbiAgICBib3JkZXI6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgIGJvcmRlci1ib3R0b206IDA7XG4gICAgZGlzcGxheTogYmxvY2s7XG5cbiAgICAmOmhvdmVyIHtcbiAgICAgIGJhY2tncm91bmQ6ICMwMDY5ZDk7XG4gICAgICBjb2xvcjogI2ZmZjtcbiAgICAgIGJvcmRlci1jb2xvcjogIzAwNjlkOTtcbiAgICB9XG5cbiAgICAuc2YtaWNvbi1yaWdodCwgLnNmLWljb24tbGVmdCB7XG4gICAgICBwYWRkaW5nOiAycHg7XG4gICAgfVxuXG4gICAgW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS41O1xuICAgIH1cblxuICAgIFtjbGFzc149c2ItaWNvbi10by1lbmRdOmJlZm9yZSB7XG4gICAgICAucm90YXRlKC05MGRlZyk7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogLjg1O1xuICAgIH1cblxuICAgICY6bnRoLWNoaWxkKDQpIFtjbGFzc149c2ItaWNvbi10by1lbmRdOmJlZm9yZSB7XG4gICAgICAucm90YXRlKDkwZGVnKTtcbiAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAuODU7XG4gICAgfVxuXG4gICAgJjpmaXJzdC1vZi10eXBlIHtcbiAgICAgIGJvcmRlci10b3AtcmlnaHQtcmFkaXVzOiAzcHg7XG4gICAgICBib3JkZXItdG9wLWxlZnQtcmFkaXVzOiAzcHg7XG4gICAgfVxuXG4gICAgJjpsYXN0LW9mLXR5cGUge1xuICAgICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gICAgICBib3JkZXItYm90dG9tLXJpZ2h0LXJhZGl1czogM3B4O1xuICAgICAgYm9yZGVyLWJvdHRvbS1sZWZ0LXJhZGl1czogM3B4O1xuICAgIH1cbiAgfVxuXG4gIHNlbGVjdCB7XG4gICAgZm9udC1zaXplOiBpbmhlcml0O1xuICAgIGhlaWdodDogMzUwcHg7XG4gICAgd2lkdGg6IDE4MHB4O1xuICAgIHBhZGRpbmc6IDhweDtcblxuICAgID4gb3B0aW9uIHtcbiAgICAgIHBhZGRpbmc6IDRweDtcblxuICAgICAgJi5yZXF1aXJlZCB7XG4gICAgICAgIGNvbG9yOiAjYWYyNjI2O1xuICAgICAgICBmb250LXdlaWdodDogYm9sZDtcbiAgICAgICAgLXdlYmtpdC1mb250LXNtb290aGluZzogc3VicGl4ZWwtYW50aWFsaWFzZWQ7XG4gICAgICB9XG4gICAgfVxuICB9XG59XG4iLCIvKlxuUm90YXRlcyBhbiBlbGVtZW50XG5cbiRyIC0gdGhlIHJvdGF0ZSBmdW5jdGlvbiBwYXJhbXRlciwgZS5nLiA5MGRlZ1xuICovXG4ucm90YXRlKEByKSB7XG4gIC13ZWJraXQtdHJhbnNmb3JtOiByb3RhdGUoQHIpO1xuICAtbW96LXRyYW5zZm9ybTogcm90YXRlKEByKTtcbiAgLW1zLXRyYW5zZm9ybTogcm90YXRlKEByKTtcbiAgdHJhbnNmb3JtOiByb3RhdGUoQHIpO1xufVxuIiwiI3VpLWRhdGVwaWNrZXItZGl2IHtcbiAgZGlzcGxheTogbm9uZTtcbn1cblxuLnVpLWRhdGVwaWNrZXIge1xuICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JDb250ZW50QmdDb2xvcjs7XG4gIGJvcmRlci1sZWZ0OiBAc2JDb250ZW50Qm9yZGVyO1xuICBib3JkZXItcmlnaHQ6IEBzYkNvbnRlbnRCb3JkZXI7XG4gIGJvcmRlci1yYWRpdXM6IDNweDtcbiAgYm94LXNoYWRvdzogMCAycHggNnB4ICNhYWE7XG4gIHBhZGRpbmc6IDdweCA1cHggNnB4O1xuICBvdmVyZmxvdzogaGlkZGVuO1xuICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gIHdpZHRoOiBhdXRvO1xuICB6LWluZGV4OiA0OyAvLyB1bmRlciBmaXhlZCBwYWdlIGhlYWRlclxuXG4gIC51aS1kYXRlcGlja2VyLWhlYWRlciB7XG4gICAgcGFkZGluZzogMCAwIDNweDtcbiAgfVxuXG4gIC51aS1kYXRlcGlja2VyLXRpdGxlIHtcbiAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1tb250aCB7XG4gICAgZmxvYXQ6IGxlZnQ7XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci15ZWFyIHtcbiAgICBmbG9hdDogcmlnaHQ7XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1wcmV2LCAudWktZGF0ZXBpY2tlci1uZXh0IHtcbiAgICBtYXJnaW4tdG9wOiA0cHg7XG4gICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgIHdpZHRoOiAxOXB4O1xuICAgIGhlaWdodDogMTZweDtcbiAgICBtYXJnaW46IDJweCA0cHggMCAwO1xuICAgIGJhY2tncm91bmQtcmVwZWF0OiBuby1yZXBlYXQ7XG4gICAgbGluZS1oZWlnaHQ6IDQwMCU7XG4gICAgZmxvYXQ6IGxlZnQ7XG4gIH1cblxuICAvLyBOZWVkIHRvIHJlcGxhY2UgaWNvblxuICAudWktZGF0ZXBpY2tlci1wcmV2IHtcbiAgICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoJy9pbWcvZnVuY19pY29ucy9jYWwvbGVmdEFycm93LmdpZicpO1xuICB9XG5cbiAgLy8gTmVlZCB0byByZXBsYWNlIGljb25cbiAgLnVpLWRhdGVwaWNrZXItbmV4dCB7XG4gICAgYmFja2dyb3VuZC1pbWFnZTogdXJsKCcvaW1nL2Z1bmNfaWNvbnMvY2FsL3JpZ2h0QXJyb3cuZ2lmJyk7XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1jYWxlbmRhciB7XG4gICAgcGFkZGluZzogMCA1cHg7XG4gICAgbWFyZ2luLWxlZnQ6IGF1dG87XG4gICAgbWFyZ2luLXJpZ2h0OiBhdXRvO1xuXG4gICAgPiB0aGVhZCA+IHRyID4gdGgge1xuICAgICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgICAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgICAgIGZvbnQtc2l6ZTogLjllbTtcbiAgICAgIHdpZHRoOiAxNCU7XG4gICAgfVxuXG4gICAgdGQge1xuICAgICAgcGFkZGluZzogMnB4O1xuICAgIH1cblxuICAgIGEge1xuICAgICAgd2lkdGg6IGF1dG87XG4gICAgICBib3JkZXItYm90dG9tOiBub25lO1xuICAgICAgdGV4dC1kZWNvcmF0aW9uOiBub25lO1xuICAgICAgZm9udC1zaXplOiAuOTVlbTtcbiAgICB9XG5cbiAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICAmOmhvdmVyIHtcbiAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogI2UwZjBmYjtcbiAgICAgICAgZm9udC13ZWlnaHQ6IGJvbGQ7XG4gICAgICAgIC8vIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1vdGhlci1tb250aCBhIHtcbiAgICBjb2xvcjogIzk5OTtcbiAgfVxuXG4gIC51aS1kYXRlcGlja2VyLXRvZGF5IHtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjMTc5N2MwO1xuICAgIGNvbG9yOiAjZmZmO1xuICAgIGZvbnQtd2VpZ2h0OiBib2xkO1xuICAgIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcblxuICAgICY6aG92ZXIge1xuICAgICAgYmFja2dyb3VuZC1jb2xvcjogI2UwZjBmYjs7XG4gICAgICBjb2xvcjogIzMzMztcbiAgICB9XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1jdXJyZW50LWRheSB7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogI2M2ZTFmZjtcbiAgICBib3JkZXI6IDFweCBzb2xpZCAjOWNmO1xuICAgIGZvbnQtd2VpZ2h0OiBib2xkO1xuICAgIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcblxuICAgID4gYSB7XG4gICAgICBjb2xvcjogIzMzMztcbiAgICB9XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1idXR0b25wYW5lIHtcbiAgICBwYWRkaW5nOiAxcHg7XG4gICAgY2xlYXI6IGJvdGg7XG5cbiAgICA+IGJ1dHRvbiB7XG4gICAgICBiYWNrZ3JvdW5kOiB0cmFuc3BhcmVudDtcbiAgICAgIGJvcmRlcjogbm9uZSAhaW1wb3J0YW50O1xuICAgICAgY29sb3I6ICMwMTViYTc7XG4gICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICBmb250LXdlaWdodDogbm9ybWFsO1xuICAgICAgcGFkZGluZzogMDtcbiAgICAgIG1hcmdpbjogMDtcblxuICAgICAgJjpob3ZlciB7XG4gICAgICAgIHRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC51aS1kYXRlcGlja2VyLWNsb3NlIHtcbiAgICBkaXNwbGF5OiBub25lO1xuICB9XG59XG4iLCIvLyBEZWZhdWx0IHBhZGRpbmcgZm9yIGFsbCBjZWxscyAoaGVhZGVyLCBib2R5LCBmb290ZXIpXG5Ac2JUYWJsZUNlbGxQYWRkaW5nOiA4cHggNnB4IDZweDtcblxuLy8gRGVmYXVsdCBoZWlnaHQgZm9yIGFsbCB0YWJsZSBjZWxscyAoaGVhZGVyLCBib2R5LCBmb290ZXIpXG5Ac2JUYWJsZUNlbGxIZWlnaHQ6IDQ5cHg7XG5cbi8vIEJhY2tncm91bmQgY29sb3Igd2hlbiBob3ZlcmluZyBvbiBjb250ZW50IHRhYmxlIGJvZHkgcm93c1xuQHNiVGFibGVSb3dIb3ZlckNvbG9yOiBAc2JDb250ZW50QmdDb2xvcjtcblxuLy8gT3ZlcnJpZGUgdGhlIHN0YW5kYXJkIFNGIGZvbnQgY29sb3Igb2YgYmxhY2suXG50YWJsZSA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gIGNvbG9yOiBAc2JGb250Q29sb3I7XG59XG5cbi8vIGEgdGFibGUgdGhhdCBkaXNwbGF5cyBhIGxpc3Qgb2YgZW50aXRpZXMvcm93cy9ldGMsIGEgbGEgYSBcImxpc3QgcGFnZVwiXG4uc2JUYWJsZSB7XG4gIGJvcmRlci1jb2xsYXBzZTogY29sbGFwc2U7XG4gIGJvcmRlci1zcGFjaW5nOiAwO1xuICB3aWR0aDogMTAwJTtcbiAgYmFja2dyb3VuZC1jb2xvcjogQHNiQmdDb2xvcjtcblxuICAvLyB0aCB7XG4gIC8vICAgLy8gaGVpZ2h0OiBAc2JUYWJsZUNlbGxIZWlnaHQ7XG4gIC8vIH1cblxuICB0ZCB7XG4gICAgaGVpZ2h0OiBAc2JUYWJsZUNlbGxIZWlnaHQ7XG4gIH1cblxuICAvLyBQcm9kdWN0IE9wdGlvbnMgdGhhdCBhcmUgZHluYW1pYyB1cGdyYWRlIG9wdGlvbnNcbiAgdHIuc2JVcGdyYWRlT3B0aW9uID4gdGQge1xuICAgIGNvbG9yOiAjYWFhYWFhO1xuICB9XG5cbiAgLy8gY2VudGVyIGFsaWduZWQgY2VsbHNcbiAgPiB0Ym9keSA+IHRyID4gdGQuY2VudGVyLFxuICA+IHRib2R5ID4gdHIgPiB0ZC5zYkFjdGlvbnMsXG4gID4gdGhlYWQgPiB0ciA+IHRoLnNiQWN0aW9ucyxcbiAgPiB0aGVhZCA+IHRyID4gdGguY2VudGVyLFxuICA+IHRmb290ID4gdHIgPiB0ZC5jZW50ZXIge1xuICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgfVxuXG4gIC8vIHJpZ2h0IGFsaWduZWQgY2VsbHNcbiAgPiB0aGVhZCA+IHRyID4gdGgucmlnaHQsXG4gID4gdGJvZHkgPiB0ciA+IHRkLnJpZ2h0LFxuICA+IHRmb290ID4gdHIgPiB0ZC5yaWdodCB7XG4gICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gIH1cblxuICBhIHtcbiAgICBjb2xvcjogaW5oZXJpdDtcbiAgfVxuXG4gIHRib2R5IHtcbiAgICAuc2JBY3Rpb25zIHtcbiAgICAgIGkgIHtcbiAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Db2xvcjtcbiAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Ib3ZlckNvbG9yO1xuICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgICAuc2JNYXN0ZXIge1xuICAgICAgaW5wdXRbdHlwZT1jaGVja2JveF17XG4gICAgICAgIC1tcy10cmFuc2Zvcm06IHNjYWxlKC43KTsgLyogSUUgKi9cbiAgICAgICAgLW1vei10cmFuc2Zvcm06IHNjYWxlKC43KTsgLyogRkYgKi9cbiAgICAgICAgLXdlYmtpdC10cmFuc2Zvcm06IHNjYWxlKC43KTsgLyogU2FmYXJpIGFuZCBDaHJvbWUgKi9cbiAgICAgIH1cblxuICAgICAgaSB7XG4gICAgICAgIGZvbnQtc2l6ZTogMjAwJTtcbiAgICAgICAgY29sb3I6IEBzYkJnQ29sb3I7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6ICNDRkQ3RTY7XG4gICAgICAgIGJvcmRlci1yYWRpdXM6IC4xOHJlbTtcbiAgICAgICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgICAgICAmLnNlbGVjdGVkTWFzdGVyIHtcbiAgICAgICAgICBiYWNrZ3JvdW5kOiAjN0Y4REUxO1xuICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgICAmLm5vdFNlbGVjdGVkTWFzdGVyIHtcbiAgICAgICAgICBiYWNrZ3JvdW5kOiAjQ0ZEN0U2O1xuICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIGlucHV0IDpub3QoLnNiQnRuKSwgc2VsZWN0IHtcbiAgICBmb250LXNpemU6IGluaGVyaXQ7XG4gIH1cbn1cblxuLy8gdGhlIHRhYmxlIGhlYWRlciBjb250YWluZXJcbi5zYlRhYmxlID4gdGhlYWQge1xuICAvLyBhIHN0YW5kYXJkIHRhYmxlIGhlYWRlciBjZWxsXG4gID4gdHIgPiB0aCB7XG4gICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkJvcmRlckNvbG9yO1xuICAgIHBhZGRpbmc6IEBzYlRhYmxlQ2VsbFBhZGRpbmc7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuMjtcbiAgICBmb250LXdlaWdodDogbm9ybWFsO1xuICAgIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7XG4gICAgY29sb3I6IEBzYkZvbnRDb2xvcjtcbiAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gIH1cblxuICA+IHRyID4gdGggPiAqW2NsYXNzXj1cInNiLWljb25cIl0ge1xuICAgIG1hcmdpbi1sZWZ0OiA0cHg7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuMjtcbiAgfVxufVxuXG4vLyB0aGUgdGFibGUgYm9keSBjb250YWluZXJcbi5zYlRhYmxlID4gdGJvZHkge1xuICAvLyBhIHN0YW5kYXJkIHRhYmxlIGJvZHkgY2VsbFxuICA+IHRyID4gdGQge1xuICAgIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcbiAgICBwYWRkaW5nOiBAc2JUYWJsZUNlbGxQYWRkaW5nO1xuICAgIGNvbG9yOiBAc2JGb250Q29sb3I7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgaSB7XG4gICAgICBjb2xvcjogQHNiSWNvbkNvbG9yO1xuICAgIH1cbiAgfVxuXG4gID4gdHI6aG92ZXIge1xuICAgIGJhY2tncm91bmQ6IEBzYlRhYmxlUm93SG92ZXJDb2xvcjtcbiAgfVxufVxuXG4vLyB0YWJsZSBmb290ZXIgY2VsbHNcbi5zYlRhYmxlID4gdGZvb3QgPiB0ciA+IHRkIHtcbiAgcGFkZGluZzogQHNiVGFibGVDZWxsUGFkZGluZztcbiAgY29sb3I6IEBzYkZvbnRDb2xvcjtcbiAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG59XG4iLCIvKlxuU2lkZSBQYW5lbHMgXG5cblBhbmVsIHRoYXQgc2xpZGVzIG91dCBmcm9tIHRoZSByaWdodCBzaWRlIG9mIHRoZSBzY3JlZW5cbiovXG4uc2JQYW5lbCB7XG4gIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgdG9wOiAxMDdweDtcbiAgbWF4LXdpZHRoOiA1MDBweDtcbiAgYm90dG9tOiAwO1xuICBiYWNrZ3JvdW5kOiBAc2JCZ0NvbG9yO1xuICBib3JkZXItbGVmdDogMXB4IHNvbGlkIEBzYkJvcmRlckNvbG9yO1xuICBib3gtc2hhZG93OiAtM3B4IDBweCAyMHB4IC01cHggI2FhYTtcbiAgb3ZlcmZsb3c6IGF1dG87XG4gIGRpc3BsYXk6IG5vbmU7XG4gIHBhZGRpbmctdG9wOiAxMHB4O1xuXG4gICYub3BlbiB7XG5cdCAgcmlnaHQ6IDBweDtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgfVxuXG4gID4gYSB7XG4gICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gIH1cblxuICA+IGhlYWRlciB7XG4gICAgcGFkZGluZzogMCAyMHB4O1xuICAgIGxpbmUtaGVpZ2h0OiA0ZW07XG5cbiAgICA+IC5zZi1pY29uLWNsb3NlIHtcbiAgICAgIGZsb2F0OiByaWdodDtcbiAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgIGxpbmUtaGVpZ2h0OiA0ZW07XG4gICAgfVxuICB9XG5cbiAgZmllbGRzZXQge1xuICAgIGJvcmRlcjogMDtcbiAgICBwYWRkaW5nOiAxNHB4IDE4cHg7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cbiAgICA+IGxhYmVsIHtcbiAgICAgIG1hcmdpbjogMCAzcHggM3B4IDA7XG4gICAgICBtYXgtd2lkdGg6IDEyMHB4O1xuICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgfVxuXG4gICAgaW5wdXQsIHNlbGVjdCB7XG4gICAgICBkaXNwbGF5OiBpbmxpbmU7XG4gICAgICBmb250LXNpemU6IGluaGVyaXQgIWltcG9ydGFudDtcbiAgICAgIG1pbi13aWR0aDogMTM4cHg7XG4gICAgfVxuICB9XG5cbiAgLnNiQnV0dG9ucyB7XG4gICAgYmFja2dyb3VuZDogQHNiQmdDb2xvcjtcbiAgICBwYWRkaW5nOiAxMHB4IDAgMCAxOHB4O1xuXG4gICAgLmNsZWFyRmllbGRzTGluayB7XG4gICAgICBwYWRkaW5nOiAxMHB4O1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgIH1cbiAgfVxufSIsIi8vIEBpbXBvcnQgXCJpY29ucy9zYWxlc2ZvcmNlL2Nzcy9zZi1pY29ucy1lbWJlZGRlZC5jc3NcIjtcbkBmb250LWZhY2Uge1xuXHRmb250LWZhbWlseTogJ3NmLWljb25zJztcblx0c3JjOiB1cmwoJy4uL2ZvbnQvc2YtaWNvbnMuZW90Pzg3NzQyNDQ2Jyk7XG5cdHNyYzogdXJsKCcuLi9mb250L3NmLWljb25zLmVvdD84Nzc0MjQ0NiNpZWZpeCcpIGZvcm1hdCgnZW1iZWRkZWQtb3BlbnR5cGUnKSxcblx0dXJsKCcuLi9mb250L3NmLWljb25zLnN2Zz84Nzc0MjQ0NiNzZi1pY29ucycpIGZvcm1hdCgnc3ZnJyk7XG5cdGZvbnQtd2VpZ2h0OiBub3JtYWw7XG5cdGZvbnQtc3R5bGU6IG5vcm1hbDtcbn1cbkBmb250LWZhY2Uge1xuXHRmb250LWZhbWlseTogJ3NmLWljb25zJztcblx0c3JjOiB1cmwoJ2RhdGE6YXBwbGljYXRpb24vb2N0ZXQtc3RyZWFtO2Jhc2U2NCxkMDlHUmdBQkFBQUFBR1JnQUE4QUFBQUF2M2dBQVFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQkhVMVZDQUFBQldBQUFBRHNBQUFCVUlJc2xlazlUTHpJQUFBR1VBQUFBUXdBQUFGWStJRW9DWTIxaGNBQUFBZGdBQUFMa0FBQUpFaDdFN0tsamRuUWdBQUFFdkFBQUFCTUFBQUFnQnRmL0JHWndaMjBBQUFUUUFBQUZrQUFBQzNDS2taQlpaMkZ6Y0FBQUNtQUFBQUFJQUFBQUNBQUFBQkJuYkhsbUFBQUthQUFBVW5vQUFKd3k2dk9GdW1obFlXUUFBRnprQUFBQU5BQUFBRFlVQURMN2FHaGxZUUFBWFJnQUFBQWZBQUFBSkFkQkE5bG9iWFI0QUFCZE9BQUFBQ0VBQUFJd0llZi8vV3h2WTJFQUFGMWNBQUFCR2dBQUFSckdnYUpJYldGNGNBQUFYbmdBQUFBZ0FBQUFJQUlzREtCdVlXMWxBQUJlbUFBQUFZTUFBQUxOdjFxbDRYQnZjM1FBQUdBY0FBQUR4Z0FBQmMvN2tjdVBjSEpsY0FBQVkrUUFBQUI2QUFBQWh1VkJLN3g0bkdOZ1pHQmc0R0l3WUxCallISng4d2xoNE10SkxNbGprR0pnWVlBQWtEd3ltekVuTXoyUmdRUEdBOHF4Z0drT0lHYURpQUlBSmpzRlNBQjRuR05nWkg3R09JR0JsWUdCcVlwcER3TURRdytFWm56QVlNaklCQlJsWUdWbXdBb0MwbHhUR0J4ZU1Mem9ZUTc2bjhVUXhSek1NQTBvekFpU0F3QVVOZ3lnQUhpYzdkYUxsczBGSE1YeDd4bmpVSlJMS1pXaVhMcFFpVlIwb2F1N3JxUXJLVXBKQ04wVGtqQVA0ZkgyVytqN245bVAwYXoxbVROejFweFpaOWI2N2IwSG1BM00wanBOd3NRWlJuN0Y2SVRQanFhZm44WHQwODlQanJiNS9kaWZHakdSYTVtNmRRdENiZ3lQdzBzWWo1Wk9QMDc0bWtsLzg1ZzV6T1UyWHorUCtkekJuU3hnSVl0WXpGM2N6Ukx1NFY2V2NoLzM4d0RMZUpDSFdNNEtIdVlSVnJLSzFhemhVUjdqY1o1Z3JlL2pTWjdpYWRiekRCdll5TE5zNGptZTV3VTJzNFVYZVltWGVZV3RiT05WWHVOMTN1Qk4zbUk3TzlqSkxuYXpoNzNzNDIzZTRWM2U0MzArWUQ4SCtKQ0RmTVRIZk1LbmZNYm5IT0l3WDNDRUwvbUtveHpqYTc3aE9OL3lIU2Y0bnBQOHdDbE9jNFlmT2NzNXp2TVRQL01Mdi9JYnYvTUhmM0tCdjdqSUpTN3pOMWY0aDZ2OHl6V3VjOE8vaGRHWS96L21ENS9HTi92ZDFIQkJNNFpyUzNsQnBJYnJUQTBYbWhvdU4rV2xrZkxtU0hsOXBMeERVc05GcDd4TlVzTzdTM212cEx4Y1V0NHdLYStabEhkTnlnc241YTJUOHVwSmVmK2tUQUlwTTBIS2RKQXlKNlJNRENtelE4b1VrVEpQcEV3V0tUTkd5clNSTW5la1RDQXBzMGpLVkpJeW42U0c2MDZaV1ZLbWw1UTVKbVdpU1psdFVrTUxwY3c3S1pOUHlnNGdaUnVRc2hkSTJSQ2s3QXBTdGdZcCs0T1VUVUxLVGlGbHU1Q3laMGpaT0tUc0hsSzJFQ243aUpUTlJNcU9JbVZia2JLM1NObGdwT3d5VXJZYUtmdU5sRTFIeXM0alpmdVJzZ2RKMllpazdFWlN0aVFwKzVLVXpVbktEaVZsbTVLeVYwblpzS1RzV2xLMkxpbjdsNVJOVE1wT0ptVTdrN0tuU2RuWXBPeHVVclk0S2Z1Y2xNMU95bzRuWmR1VHN2ZEp1UUNrM0FKU3JnSXA5NEdVUzBIS3pTRGxlcEJ5UjBpNUtLVGNGbEt1RENuM2hwVExROG9OSXVVYWtYS1hTTGxRcE53cVVxNFdLZmVMbEV0R3lrMGo1YnFSY3VkSXVYaWszRDVTcmlBcDk1Q1V5MGpLalNUbFdwSnlOMG01b0tUY1VsS3VLaW4zbFpSTFM4ck5KZVg2a25LSFNibkkvdDh5ZytGeGFnWnIvZ09lU0tMbWVKeGpZRUFERWhESUhQdy9DNFFCRW5ZRDN3QjRuSzFXYVhmVFJoUWRlVW1jaEN3bEN5MXFZY1RFYWJCR0ptekJnQWxCc21NZ1haeXRsYUNMRkR2cHZ2R0ozK0JmODJUYWMrZzNmbHJ2R3k4a2tMVG5jSnFUbzNmbnpkWE0yMlVTV3BMWUMrdVJsSnN2eGRUV0pvM3NQQW5waGszTFVYd29PM3NoWllySjN3VlJFSzJXMnJjZGgwUkVJbEMxcnJCRUVQc2VXWnBrZk9oUlJzdTJwRmROeWkwOTZTNWI0MEc5VmQ5K0dqcktzVHVocEdZemRHZzlzaVZWR0ZXaVNLWTlVdEttWmFqNkswa3J2TC9DekZmTlVNS0lUaUpwdkJuRzBFamVHMmUweW1nMXR1TW9pbXl5M0NoU0pKcmhRUlI1bE5VUzUrU0tDUXpLQjgyUThzcW5FZVhEL0lpczJLT2NWckJMdHRQOHZpOTVwM2M1UDdGZmIxRzI1RUFmeUk3czRPeDBKVitFVzF0aDNMU1Q3U2hVRVhiWGQwSnMyZXhVLzJhUDhwcEdBN2NyTXIzUWpHQ3BmSVVRS3oraHpQNGhXUzJjVC9tU1I2TmFzcEVUUWV0bFR1eExQb0hXNDRncGNjMFlXZERkMFFrUjFQMlNNd3oybUQ0ZS9QSGVLWllMRXdKNEhNdDZSeVdjQ0JNcFlYTTBTZG93Y21BbFpZc3FxZld1bURqbGRWckVXOEorN2RyUmw4NW80MUIzWWp4YkR4MWJPVkhKOFdoU3A1bE1uZHBKemFNcERhS1VkQ1o0eks4REtEK2lTVjV0WXpXSmxVZlRPR2JHaEVRaUFpM2NTMU5CTER1eHBDa0V6YU1admJrYnBybDJMVnFreVFQMTNLUDM5T1pXdUxuVFU5b085TE5HZjFhbllqcllDOVBwYWVRdjhXbmE1U0pGNmZycEdYNU00a0hXQWpLUkxUYkRsSU1IYi8wTzBzdlhsaHlGMXdiWTd1M3pLNmg5MWtUd3BBSDdHOUFlVDlVcENVeUZtRldJVmtCaXJXdFpsc25WckJhcHlOUjNRNXBXdnF6VEJJcHlIQmZIdm94eC9WOHpNNWFZRXI3ZmlkT3pJeTQ5YysxTENOTWNmSnQxUFpyWHFjVnlBWEZtZVU2bldaYnY2elRIOGdPZDVsbWUxK2tJUzF1bm95dy8xR21CNVVjNkhXTjVRUXVhZE4vQmtJc3c1QUlPa0RDRXBRTkRXRjZDSVN3VkRHRzVDRU5ZRm1FSXl5VVl3dkpqR01KeUdZYXd2S3hsMWRSVFNlUGFtVmdHYkVKZ1lvNGV1Y3hGNVdvcXVWUkN1MmhVYWtPZUVtNlZWQlRQcW45bG9GNDg4b1k1c0JaSWw4aWFYekhPbFk5RzVmaldGUzF2R2p0WHdMSHFieCtPOWpueFV0YUxoVDhGLzlYV1ZDVzlZczNEazZ2d0c0YWViQ2VxTnFsNGRFMlh6MVU5dXY1ZlZGUllDL1FiU0lWWUtNcXliSEJuSW9TUE9wMkdhcUNWUTh4c3pEeTA2M1hMbXAvRC9UY3hRaFpRL2ZnM0ZCb0wzSU5PV1VsWjdlQ3MxZGZic3R3N2czSTRFeXhKTVRmeitsYjRJaU96MG42UldjcWVqM3dlY0FXTVNtWFlhZ090RmJ6Wkp6RVBtZDRrendSeFcxRTJTTnJZemdTSkRSenpnSG56blFRbVllcXFEZVJPNFlZTitBVmhic0Y1SjF5aWVxTXNoKzVGN1BNb3BQeGJwK0pFOXFob2pNQ3oyUnRocis5Q3ltOXhEQ1EwK2FWK0RGUVZvYWtZTlJYUU5GSnVxQVpmeHRtNmJVTEdEdlFqS25iRHNxeml3OGNXOTVXU2JSbUVmS1NJMWFPam45WmVvazZxM0g1bUZKZnZuYjRGd1NBMU1YOTczM1J4a01xN1dza3lSMjBEVTdjYWxWUFhta1BqVllmcTVsSDF2ZVBzRXpscm1tNjZKeDU2WDlPcTI4SEZYQ3l3OW0wTzBsSW1GOVQxWVlVTm9zdkZwVkRxWlRSSjc3Z0hHQllZME85UWlvMy9xL3JZZko0clZZWFJjU1RmVHRTMzBlZGdEUHdQMkg5SDlRUFE5MlBvY2cwdXovZWFFNTl1OU9Gc21hNmlGK3VuNkRjd2E2MjVXYm9HM05CMEErSWhSNjJPdU1vTmZLY0djWHFrdVJ6cEllQmozUlhpQWNBbWdNWGdFOTIxak9aVEFLUDVqRGsrd09mTVlkQmtEb010NWpEWVpzNGF3QTV6R093eWg4RWVjeGg4d1p4MWdDK1p3eUJrRG9PSU9ReWVNQ2NBZU1vY0JsOHhoOEhYekdId0RYUHVBM3pMSEFZeGN4Z2t6R0d3cituV01Nd3RYdEJkb0xaQlZhQURVMDlZM01QaVVGTmx5UDZPRjRiOXZVSE0vc0VncHY2bzZmYVEraE12RFBWbmc1ajZpMEZNL1ZYVG5TSDFOMTRZNnU4R01mVVBnNWo2VEw4WXkyVUd2NHg4bHdvSGxGMXNQdWZ2aWZjUDI4VkF1UUFCQUFILy93QVBlSnpNdlFtY0hFZDVOMXhWZlZXZk16MzM3REhuenJISDdLNTJkL2FVZG1jbDdTRnBkYStrbFN6TDYwT3liRm1IYnh0RGJDN2JNUVk3d2pHT0lJR0FEUVF3SnNTRUl3UU01UDBnaGhEQ0VRaTJPWDRCRENFZmNZQmZ2c1N2MUh4UFZmY2NPMXBaTnVUTjc5WFJYVjFkM2ROZFhmVTh6Lys1Q2drSS9naWZ4MTlIQm9xalBCcXZqRkJSSWJLRU1FYUxYaEhoSlVrZ0dPR0YxaGJMeENpZGFzbTM1a05CTTI3RkZSa1oyRkNsVUhkd0lJRkRGczcwNHFGSm5MN2d3WmxrT1prc1Q3SU52cjJ4bkdLN0tWNytCNi95QWh0NFpJelFiejR1dkYyUVVCOGFxcXhCQkpPVFNFTFNLUUdlRytGRjJHRzBKTW9FV2k0UTFGWElKRnVpQVorbW9EN1NwOERUd2tNTnI4TkQrV3c2a3kvYlEvbHVuSkhEZGtpR1k3a2RoeUtENllFSUhFY204TUF3bkI4bTAzaWRZZHVHOHdWVkMrampla0JUblMrd0NyeXVXb0U3dkJNdjBSSjV6LzVmd2o3eU9YajJZaVhIT2hhZGxMQWdDcWNRRmtXOENIMHZMaUVSaXd2QllESVlqTWhTU3pjZUdSN3F3L21NRDhzWmJ4OUs0a2pJMnc5TTRlRUJiOC9hRFpIRkYxVTFyMGJWczVKZk9ndjdvZ3BGeVZHaHdDdmwvKzFXdmlqaGE4L1NwdlAvVy9aRDBhMlU1Yk8xaTZDTDJYZ3h5SDJvZ0ViUUhOcUhya1kzVmE1ZjNsSHBGd1YxYVg2MEtGS1J6TUViRVJXVFpUOUdQbE1YVkFHcHkwaEFJaFhFWmN2UUJDb3BkQkZ1Sml1UzdGWlFaUWtwVklGdmRkVVZCdzhzN2xyWXZISDkydkdoZ1o2dVRMS3RKUm9PQlh5bW9Ta1NLcENDemI4ZiswN1pqTXcrVWJoNXo3OGYrMjU1SEpMaDArYmhVdy9EcDR5RW82L3dtUHlkYzIrOEkrU1B4ZnloeG0wdWhtK0w1M1BPRnlXcEtNcXlXSlNrSFpJVVlzV1FKRjIxYWkyNUx4dU5STk94cTd6L2dXaWhNNDUvRUVzNFIxaUxaeVg0OCt4TGxoQ0JzZk9nMEMzMG9UVm9HazFXSmhBYlBnUWRsekdTNE44eDZHVk1CTHlNSkZHVW9Jc2xOcElrRWZwMWF1M0lVRGJkRXJWOWFBMVp3K1pBTHV1KzZBai8yNHNMZVZtUkZRdXpEaGlaeFBBdm1zRHd4QkVMUXkzTUN2bTgzc2tzNi82NThZNldqQ3dWNXJxVEU3RzhUSHpHc21sanViL1FlMk5sMjkzRlRrRlljMmpTOUFlRHRyR3NCd0w2c21IZjZ0ZmIxMTBWTWx1NytycTM5bU1jQ1djSFZDTmdEbDllNkM1aFllZjZqZHZYMzM0d0tvV05kc04rbWwxMHVXN2JPa0lpZi8rM0N6MjE4WGRsWmRtQ0dXVVNaQzZ6WVdmQXNBTmlwb3VHem9lY0JrTU9hVWlWTkhXWlltL0lRVUZpQTA1aUEyNFBIMnpyeHN1ckRqYmZLeGhzQXFjZnZIczQvUmk1eUxHdzdkeG5rNzFqOFhRNlB0YTQ3VTJTNlZTcDlGNWRkWDVGZFoxaVU5WHpPblhlcStxNmlnOVF2UUJuOXZNejcxTjFvYWVVR2s4UHBNNmtCOUovQlAvSGs3MmxsRUJTcFhNM3FKb0dSQUEyTjdFcmVla00yOXpJRHZsVTVwdTNrMDhnSDBvQ1BacXVUQ0lNWTBuQUNIcFB3UVFJZitOWW9wZ05wa3dxNEdkRU5kV1g2V3VKK3BPQkpCQldIL0dwYmwvVlhwQU5HZUZpeDc5MzlsOFpkUlJDYkh1Qk1wbXhqVEYyQkJ2bmgwQlZOWnR2bk8vVjY3MjU4WG1oQkcreUVjMVhacEFvaXllUkxNa24yWWVYVGhLVklBV2RSQXBXVGlJc0NKelNDa3Z3c2dLYkg1UERnNzJscnM1TTJ1TVVTWkxVM0ZuQ09FTDF5MVU1UlozQzVETktBeEZld1RXcUZMa2dQQWFNd0RiTzNXMndCOWZ0VXBKOW9JQ3pqOGFvYzViU1R0aGZKOW1HSDA2R0l0cDFqUFpTNmdUMHA5amJQY1ZtZ0hNMlZlcE5ZbEVQa0R4bEY4VW9rT2RqTW95TG8zb2dxT0dIVFRqa3BKcXk3OHI3b2dlRlVDZWFRaHNyMDBnVUpFR1VqaU9KQ0JJNUJoOFpDU0lTbHVFalkwd1dZVWZ3RWhBUHZCQUpZelErTnRDWFNvWTdJNTI2aGtJNFJObW56UUI1a0VPTUlnd3dpakZVeUJmeVFvWnRoOWp4QURzVFltMkVXazlCejlVNkFmLzZOY2V1V1RjMXRlNmFZeTllZDNSeWFtcnk2SFd2dVhUbnRqNzRzMjNucDZxRk5vV3pUZm9XbHdFSlBheGQ3UUplT1B1ZEZWZndBdDVMelUreWp2cVphcnpGNVZoOGZQL21sOEpQeVpkUkVXMUhkNkJTcFd0Y0ppTENjMEEzUlJnTHdHVlBnckFnWVJBZnBDTTNYWC9vMHMxekkrVmtlNmNzaGJ0eHZzeGVETjR2bXdFS0dJWlhEL1AzZzc4SnpENHlKNTJUT0FkTldOUHlrTnRXVmlKdVU5aEYzWmJsNFVKZWNwdE5ZdDdPdldXazRaN2VvTXF6SHNVRG5TM3hIbjlyZTBkbnNqM1YzYWFhNlhXcFRreHlpWXBpaWVIT3RsNVRKbDFwUTJ2clRyWW51enJhMit5ZWVFdW5vaGhYZFlpV1VrbmtjQ0hsZkt2RE10TFJlQ2FWUFpCTlplTFJ0RzdsNWxOOXVEZU5IMHozNGtnd0Y4ZWo2N1pPand4bFduMTJPTGl4dUQ2WGlObUdiYlcyNTdyVFhWVEpKeU14dVdXTnoyY0UybG9LbGVMR1lOajJ0V2FHUnFhM3JqUGljdjhHaFhhbHUzUHQxL3R0SzlDZWpFeGtlamFIbzlIdzVwN01SQ1FiaDluclQ4WTcrcklEQTlsVUM3QVN4T2ZweDJGc1NpZ0tWSHh0WlF6bUlnWUJDSW53WWNoeFJNZ0pHYVFoVVZpRW5jRDRseUF1eEdNRXBST3hRcnpBNTJhVVJCV1AyTURMNE9ZNVdRQ0NEY01PRHFNUjlsR0VtNTB0b1E1OWc5NFJmbjJxcDRkVHgxTEs2WmNrSVNFYitIMlp1R3lVeUV6WXZpa1FLcVhPTGJDeitOZXAwaGxWR3RJTmdTcXBrc3Q3bmdaYStVdVBWazZoM1pVZGxJbWJJR1V1ZzdpREJKa0l5enFXa1NMS3lySUd0RklTRjJFblNrdEFRNldGZ1g2WGNvNlA5RThOVEoxUFA0MGFyM0ZmaFUwaXBlbFlhRG91Tko5ZlFVOFp3YkVOOHFybWNpTnQvU1duU0RhYmM4ODNrTmxCUGd2NTVpZHdrbFZETTJBWEN1Y1pLWkFCcS8yd0hWMEdVK2t0bFRjZFAweE1ZMkhqMnFHZWp2YXdLV2tJWDdxSDZKb3dSMlhSUnlSc0lvQVB4d09xcmZnbHdhSklNNUYyTElRTnFEYk01U0RXZEYxYmhKMm1MeUZkMHhjdVg5NjVvMUxwNzArbGJCQWxyN2w2K2VUbEovZnYyM0haenNzcTJ5dmI1bWY3cC9vblI0ZFRmYW5lWWo0T0hXa25WZWhJN0F0RFI0NE11bU9oT2pZWS8yNmd6WG04OHZSRTAvRmd0dWxZdXNpSGVIYUFHZ1psR3pKYUt6b09LNjFsbXlmWkpzUTJMOVJLK015NXI3RTk2V2ZiaHZKbjROd3dPM0tlcGdZKzVPN2RPdWZkamVjdVZGN3IvUUpzQ0syWDZ6dy9UVzVGYmFnSDdVVjdLcnZXWUZIT3RSTWlnT2d1S1V4RU9vNWtVWkhGWTJ4OGd5Q2tMTVB3RjRnb0xDUE9MVkNOV1dDMGMvdW0yZWxLZWJDemtFNkdBcWdOdDZrMVpzRklKa0NVQ05EL2FHVFE1UnFNYVRUSmtTT3VlT25WZ2VnNTNFdnFvdWd3bDBSSk5DTGpYKythM1ZEc3pFdENteGd3bGxRNnY1ZFg3Tm93TzFSL1NTcElmTi9hQmNNczB4c3lCYUlwWWRYQXRNVXV4WlBsRkNZbGNrcytWNWxlbUorbWRMOWhpMGxCNm1JVmo3dzJsM2NtYTkvbkdKWkVQelZONm8va2ZIb1kyRy9BOUNtcVQ4M0g3UURHQUZrTEZTVDh4Z0Y2OW5OQlJSYW5hS01WK0FWQnhIT01jSjJFN2lZWWhDakpCYVlTQjZZTUJDNzRmUjJaOXBaUTBCZjFSOGNZdThrQkpaTkJsa2hnR0ZQQVZETDVJWkFuUXZKSVUyOEp6emx6ZWk2bk8vT21uSW9LcDJKcDJWRkJjQnhJcDlNNjNjcGt1NjFVVDVNdkJpMHJlRzRzTXBESkRNeUNnSmp1enp6T3BMOFhtZVNJR3VTbGR0U0ZPaXBwRVpBRHdHZ1FoMEE4UXNBUkVUcVNUT1E2RWwzSnJ1NUJTWXAwNThJMU9XaGsyUHVtOEVtQjFETFdqeHR4dnZENWtmeTVSRzVreDloTmh0OWMyTis5SjIvNmpLMjlsVlRCR1ppOGR0MjZhMS9OTnRHdTNPaEl2bXRMcFRRb1M4cEFTd3pHWHJxMW85QkhmckR4NXZ0dTNzZzNMbWIrVi9JTStRcUk5dHJIMllNRk1lc3hHMzRwQ2pBWWVpMlBUU3VrNHJmQnBMdkdhdGZJK3pXQUxjNWYwS1RxUEtFQjI2bTliei9LQXRXYXFJenlseVF5cVFsQ25GNHJkWHFkN3lDb3U2dWpMOStYYUkwRURRMWxTWmJXZ1JOajAzeVVlbU4zQlRtUWdOd0E2MmZkQSt4SGF5MzI5R3phc20vbnpQcXRoVFl0V2JKMTRRbzlVSEwrK3RPcVFaVEtZb1ZpNDl2RnR1ZjJicG9EeENTV3VoL1kvYTIyZkcrcVhmZmJSbnV5OUEwZkxZSUlvVnB1WHp3by9BM0lkaG5VVStsa2FvK1RUTk5CZ0FZelBRalRmUnpCcUwwdEhQSmJ1cWFJS0FPVGtVM0pyTzJPcExMZFVNckFXNHlBNEFyZENJTGJoNWMxOVNsVi80bXVQa1gxWlZuSElzVi9KUVZFL0NrcUNuaUxzNTlEa0Rubmszei9QbGt5TlB3cFdYWm1xUVh3ek1OblRPNE1BMjNaZ0E2Z3QxYjh1elpaRW9oY0V3TWRyYUpBeU55V2o2ZzdsaXB4R2JQK1Z5aC9ja2xsMU9la0NCei9TT3VXajJqUW9CM0pXSFpING1xTlh1SUcrL2RYV21NUmd2YnZYZGl5ZnFvOGxFbEhlbUk5aG83Q0pLeDV5cDgrVDZNaSt4anVaUlJlNFVLRFVoWGw0ZU54QmhDRlUzREVaVmdRTm9BV01hV1JYSUJUN0ZKUEV3T2pnSDk2TW9hTFBsay85RGlsY3pTa1BuNkZIZy9kNVh5SFZ5a0txM3JpQ3RrMndsZkU5ZVVuYUVTWms3SHkrQ0ZLTk5YNXRoYlkyZ0sxU29UT0tjb1RoNmlvYVRpdlJmRWJWN1ExRk91Q1RaTXJmdW54SzVTQUViNnIva0JBQk9IWC9VYUl5OFdQQ2s4SkxhZ2JqYUtENkhSRkc4T2lNZ24wam4wZkc3cS9sODJZa3lwV3FFaVZ3ektmSEZkcUlPVlFoVkRBaENBME0weUk5M1B4ZVd0cnBiL3hBdkU0dTRLSzByRUxYN0svMGxMcU9iQzBaOWYycmZPekd5cnJKZ1lIZWtaTG80V09kcDNON2FwaUFucThGOE5jbHFPY3lqQzJBbjNPZHB4UURoZDZNYzVZT0FTVGJSSVA5V0t1cEFoWGFXYTJTampMTHZWc3g0TkFRdkZqc1pCcGE2RldvOE1zSGJucjhsRE1OQWZpaHFYUnVDOWxiaTZNNlVwOFBJL25kRjNwS0FBNU96WTVlZXpWYkROaXFLTUdJR2wxUWxYNUpxOGFvNnJ4cHZ4aU5ob3l3KzEyK1UwM3J4Zm1Kelp1M05RWGEwbTFSUUthVDA0blNoTWRNOTBSMm5VVXQwOEM0WnVDdTEwN0NYUjRuT3FhT3E2cEJWVWJWeldkamdOaFZtdTZ6Wlh5MVozb0FYUnY1WTB4SXl3SEpHUXFCTU9rV203eFI3V1FKTm82a1lnb0xjZXRDQTBDd2hQSW9sY2t3cEpQaGFraExMenVyaHRPWGJHOGE4ZjZTbFVRdmUrZXV4NTQzUU92dXZYVW5UZmNlUzFJVjFlY1BBRFMxYTdMTnM5VnRxL2ZmaUV4dFpWcGUxMVV6TVVtTGcxZDVCai9IMjcvNG8xTWMzS2hEVzY5S1paT3h5NjB3YTB2ZWJVZzFRL08vVkc5REtPdmRnODg5Ti9UQm1pb1ZOTngyU2pOOVh3NzBYTGwwdkVCUWlnSUZZUUN4Vk9PNjB5Y0VHQUF3RnlXSlVHRzZZVTBWZEtXWWZ4UW9zSjBVMFJSV1VTS3doQ1V3alNBMnhmbU5qSXRZRjlQb1NQWkZnMXhGWmRON0RyczRFcHZUMjRXdUhLOERxdWFOYW5CaXlxM0hDUFppNythS3VVQlRyMFY0SmJCRlJnQXE1ejM2dW9mTVFZQ216TzY2dndkWnlhRHFyNEFaUEF1Zm5DWHFqRzlWZ0hRMkU5S0thWU9jMzdKVUJsVG1NRk4vcXFtMlhMZXk2U1pBdHZjNkZZeTFSYWpiODhKbnlmZmh6bVVCVTYwcFRJUDZFeVNCZWs0QlJvblMrSXhnSnV5U0k1Qmg4dlFnNnVvUVhJZEFYOW5zYU1uMTVOTVJDUCtiQ0JiSGxCQkNNSk5IUU1JTEQ4U1pPcjNCUGJVOExKUWxkMkV6NWRTWjUxa3lWWDRmT25jMTIxYi9UTTVMQitSSXRKdTJEOUN6Zlh3WHBWU2laem03L2NJNjZTdENSK1FjKzBKbGFpM3F1b3ZyVGcrd0pwVVNwNzg3dkZZZ2diUVBuU29jb2tmSGgyR2hpeFFRYWJIZ2R3Q1pBWENxeEJCZ1RkVXNYcUtEUmRCQmlsSGROOVQ1Tzhwc2VzV0pHSGYzbTFiWm1mV1Q0K1BsYnB5SUpTR0E2WW1ERWdEYkdTTWxNTTRYY2RJbm1LSEdVMkdQU05KVGZhcFlpaWhicXk0c0Y3c0RIbkc3WmpuMldkN1R4MmJ2b2NkUHcrZDhUZWRsUDZLeHVnTHFscUUzZjY2Zm13L2JmbHpJMGJ1Z2Y3YWtpcHhjZGMyOEErNDJTVmwyRndJN2syU2o2Vks1OTdNOUdHL292VGZYUnZIRXRPWHZZL2hXcnpmVk5VRGl0dWZwNFhIaEM2UUxRKzQ5b3l1ZHFJU0M4U0xuUnVKUW9VNUpobXJBbEdQYTVqMUpzTEhFYVlxcHNlUVFpV3FNS1dhVENXWmFkOWg3S25MT3FhS1RCZGhSK1VsSkZONTRlQWxHRjF4K1NWWEg3eDZ6KzZGVGVzcmZhVmNKaDV6cldkOC9qVnlNRndZSGlvQTIyT3FqV3pHUjJvNkRzYjNvR096dkJSSlF2ZEdRZkJnQTI4UU9qbkNDcXlMb2I5SHVHak9SQmJKbGNkZDJSei9SMjZ5bzJOeU05dmdrM09TTkJkUWpTUk4ySW91N0IrWThvdloyR1FzSy9ySHg1WkVYYkVUTkduUVlFTXpVMTJDVmxJbU5obnRFUDBiQjNkYktqUnFONmx6WVB6eXNiSExiMkliL00vd0MrczZPdGJCei93R3JXM1oxckxXMXhzYXR2d0VwMHVoU3lJdExaSDlnVDdBU0g1ck9OUm5yYzNDWDdlQkFPY3ZqYllubzVkRys5T2liUTM0U2x2R2x2bE5iMW9lODhiK0EzenNaOUZHb0l0SEs0ZHpXQlhYWVVWbFZpY053UWM2RHJoTEZVU1Z6UU42Q3NsUUoydkxSQ2VJR2RsZ0NoaFlWUlIxRVhZcU13S295c0xzRE9DeExUTTdaM2RXcHNaSCszb1RiYkZJME9heWN4Wm5UUzQ3bDZzS3pScm5DVmRueEtESHN3ckRUQVZZNExxOXFxYVVnMTR1UFRKRTEvQXB5T0tOZkp6ZXlFa1hIOE9NZ09GTG4rc0loc3FEK3c1ODdjQyt3U0VvN0Q4NnVYWjB6WE5jRzRyUC9YalRIWnMyM1hHYWJmQ1BPY1dEYXhkVXZhSG8wR2NHUmljbWo4TDE1ZXFOeXFGZ3gzT1VGdFg0cDcycllZTVFyZG56ZkUyU3hvT1ZON2ViSUZuZmU5ZlNEbEhUYnpzMVh4R3BlblI1dEYrVUZYRk9EQkxQOG9Sd29Hb3ZzTEd1Q2ZxeUgycytyRkpOWGJZd05VRndvd3IwdVN4Sk12UzVMRE53SlVzTFRLTnovMzF2ZU4yclgzWFREZGRkdTlMcTU5cHIvWDEybjhiMU9TSDJCUVpyeElmM2YxVXY3ekdsOC9YeVRmeXFmSkZqNlJXMngzYy9TNDFzL1A1NDFzQzdRcUxjbDM0MjNTZEpvWGcyRzhlZmdLM3p4M1dWeEdvYkhEUG9sMWo1QWhzU01HaVIzYTFJalZsSktxYjcrdEpGU2NyR25WMzhOejRjenpxN2FqZmNzVXJwMlpjOFc3VkZ2MGRZSjhSUURxVXJDWTc5T1ZNQUlBVWZuNnNBZ3VGeU1CcG1SdWdSR05KQXVVZHczUmE5d25qT0xkUEtKdzBEcDR5a2pqT0dVWWI5SlVySUYvVnQ5VWQ5SWVVU1Bhazdla0ozZnF6cnVCVUtRN3ErWDdGMG92aWlNZXZjZittV3NsLzM3SHp2QUpwY0F2bG5ISERrUGpSV0dlNUkrZ1NDZ004eHhNdkJCbU5tNUtRaXlBQW9qcXdGL0RBN1U1bWEyTEIydzhqd3dQamdlQ2JOMFhwZUFmTHBBd2dSRFRLRGVWNWhZQUttSnJOeER1Y0xJNHhsVzY2dEU2b0FUa2hWN3AxMkN4WVdYUGhYR0ZIeUxtYUVuaEI4cFY1bm4yakx2cmdTL0xJc0grOWFVMTVRbEhMLzROamdObDB4QWp0cGd1NE1HSXEyYldoc3NMK3NtTnZPL2FXcnBzSFA4RDNPL0prY2xNLzRpWjhRWXBteVgvb3pXZjRQM1NaRElLZ1l3Y2tXNTVkS1NQa0R2NmJ2S0k4dXgxbzB1bWt3T3gyL1R0ZXZhNnVrQnpkUnJTVzJQRHF5L2R2c250Vi8rT3VLOG5SNEtFeUlxR3NnNC94UUNWRlBwblRwNWpqYURIenVXblJINVRZa200WXBHekNIRFJYSTRYR2tVa01GcmlZSzRpbWtJQ0NBT2pPZStpek50NHdzWk1xV3lZeXJGQmwwR1I0YUNRSmFaSHNrZ0NnaElHRUJvNk9ITDd0MGFjLzJyWE16VSt2R1I4dUR2ZDNGZktJdER1VFU4TWlwelRVb0Z5ZW5PVGJSN0VaaGkwTzRWeXlIUHJhUEs3VDNNYVpmTHpMVFlUL0lEejltSWdoK3Y2M3ZBNm1VM3NTSU1XeWUxejNCRWg5d3BkS3F0Vlc3dGVrK1h2RlJQWURmeHdXNEg2ZEsvWVlORW1yVjR1cTh0eWFYMXMyd3FHb0grUkxndkRES284dGRwVWVXVFVsOEpmUW1FWWtnQWk4VFQwQlRnaGJaRmZ2Z0lyS2x0WkxoV3BHWGJMUy9Zc1VpNlVRa0g4c0h4d1prS2VySnJZVjhud0FNeXUzN2REU2RZZFBDQmRJZ3hPYUZiU0NvLzhSdm00YldUelhERG0xS2xjaVRvMmVmRFNaTThZU2NDcEhONGJSNFFzcVJnVlFKaG9jMnJ1bUtWa285dmpXY0NUalhCYVBSSUg2b2pjdXBVczNPVThleElLdnFSQk04alpzQkNGYVNBYldhekdaQ1pZVXhESXpwSXV3b1hsS2hpQmZxYVBXbFVXblZVTi9JQTlKTktGRjVoY2ZDWStmK2l3dW1DbnpwYzFkL2s1bEp2c2srK2t1V0JHbWxJYnZxOWZDODdib3h3T1ludklLZmVyNWVkT21lSzkrb0tJaUdBUHZOVjJiQ1dFRWxMQ2tnNFFDRU9RV05LQlpoQW1JTWJGY0J6cXRpUlpLVVJkZ3BqTGtxMHNKd2VlMUVlWHA0T3R6Wm1yZHpLVTFxYmVDZmEycHYrY29rRm55Y2krclB1eElMMmZyeUJaWHJ1VnppQ2lldmV1NWxDaWNpbDAxTWNoc0tvQXdnblFsMG9MTFBCKzg4VzdWUnFGZ1dGRmtBc1Z0VUJJN29GRUIwZFpORms2bGlhSkNnMFpIQmlhR0ozbEkrbDJpUGhHRWVCa2lBcXdTeithb1Zmd1RldThDTWhncG5hRU1lcGd1Tk5COVh1UVQ1MmpOQjIvbTFiWC9USGdoZ0h3emQ3TDlic2wrK1Y1YmQzZVlWUndQaDl2YXU5blp5QzdhZFg4RVYzN1J0N0tjUjdldkF6K2N0R1ZyNFpYZTNlY1hSbyt5cXJuWlBabVAydHdqUWpXRTBpL2FpSStnV2REZDZxUElIek13d05kSlhFQ1g1c24zYjUwUlZNekd4YnIyYW1FU2F1L01rOU1Vc0FsWmpFZk80WGRVZ0JMQkFNZGNoS0ZneU1OY2k2RmoxWTR1bzFySVBtNkpvTHNMT1pKb0VVMXlJUlFsNi9XdnZ1UDNHNjQ5ZGMrWGxsK3pmdlhQTHBnM1RFMk9EYTdvN1UrM1JmQ3huTXh0dGhFU0NLdzJhSEFONjZnVnA1VXpOS2hkeHhQcGR6NU1mT1UvRnM3S0lNMnpiM3BsMVdya1VWV0hiRitwUzJiTUd2WjhWNytmRmwxMUw3c3ZHTlZFRzRleHBVZTVzeDV2ajJmdmg0RVA4TnhiaFlCVVo4TGFYV2VmYVhIOXpyWEJNMklWTVpBTy9pS04yMUl0R0dGWXRHRVFIb2FnUG94bkRncUlHYlBzNDBnajhPNGFJQVA4WUxCVWxRVHprZWR3ZGd0dFJWYUdIVEJnQnhqeFNWVFpCc0lrM0pSSVlqWlFUdllsU0t0bmUxdG9TanpIdmhHREE5dnNzVlVZbU5obVZEVForT2hXbncvVy9nK0VzRG1jTDNJTmh4TlhYRGdwaFRsWW04QTRtd1pJdnAvdWNmM0lPNEozT0U5WC9UejFGL3U1TC9vQS9iUGdBYUZNdEVFa2VWTFJndE9OTHdxNis5TmxQOE9zdXdldk9mU0xkeGY4UzNTY3FtaG1JdGx1MkdkSXRQUFVqT3hDekFnRDI2bnFmdXU3MG1zb1JreGlNNjBqQWRaQmtpUVRHTzE3MlU1OGdJMVdUMVdVYmE0cWlMY0pPVTVaMHJHaktRcU9pOU9Xb1JRT2NqS3hrSUoxTlZxRUd0MU5lMzh4d210czNXLzl4dE1abHlPc2JlZE12OEN6WGZud0t0bmVzM3VZci9LVEJHNUx2Qi9RWDJkR0xub21mYjV5dmNCcy90L2FmOGM2OTZQa0Q4TTFUOWJaVmU5ck53S3VpZ0I0Nksza1F3a1Y4RXVpMnlMdzV1RG1LSENFb2sycHRxVHB0eUc0ZjVkYzFLOUdBQkl3QUU2cDF4cEN3OTl2NTdvRHBmQzQzT3BvajgvbVJnUEVWT1dRVldoNEZTUG5qN3R4M3pBQTNNTUpaL0U5bTRPYXZ5S2I2bnBhQ0ZmTHNZNHlIZHFQMlNrc1djOHpnR2pTOWgycnZDZ3RNSW1Ld29FYlV1ZXVPek0wTUFBY2lydkVPdXppaFBDVDhwZUNuNzZCeDlRU2xmeUtMdE5pMTgrNU1oNllZemlOaHl3cjdPNHVkZm55a3RYZlgvT3dpdVZvVjVIZFFla0tOMDNlQVZHOHN6czd2Nm1sM3pvUkhSMEorRzVEdkVVQUZIWm03ZDNaN0dPeFJvU2pFUFF4V0J6WVM0L0FuUWNwdXdHRGNrZW9sWE02NEYvQ0kwR1lZemc4QWZEbmYxL1hoT2dqenhRQ0VIV0RnN0ROR08wTmdESW0xR3g0S08vZGZ2bWpjaE1IaW9URDMyZTRSdml3TW9qbGtWNnlhV1Rob0UyWU9qZ3d6SVlHQktndHpKZFV3WTU1Y0R5Vnp3TVY2a2JmSkY3TGN1RzI1WjNsZEwzR0JGTjVObytwVGVqSm0vR3ZMekd3TGFiSHRGdnp1K093TUZBT0JGa0tKSEZDRmNFQlgrek9aZnJIL2RhL3JkeTVqUldITlhhL3QvN2RFS0xwdTE0NzJ2NmIwUVlxVnoyazRtakYreHU1Qld1QVcrRS81UGVER2NVSURhckxEa0FHSnNIdXdPempML2E5NzdScVJGZi9meEs2ZEU4Rm84dFB3MFR3ZEs5UEJNeXF5SHIzOVl5TlkxZkRjbG8rWUlLUVB1bDdtVndMcG9KcEtqNHRFaHdza0dVbVhHeURKYXFxc0xTT3FNQi9ubW1OemEyVkE0UGJLVjNMUi9rbzZrOEtvTWpVK05qUllwVGdCdndrZ1RSSlJFaWRycWlrdXpYdjc3RXFhRVcyYVo4dzJ4bVlnaURPdU1NTjA5Y3Vadm96enkzUi9aamxWY3VYV2twL0pzTDFKOGlUVU9JL0dFdEYyR3JXMUxYb21ScjVjaUdVeXNZSzdMU1hYTUpxeEp0WHpvcTA3UmVaOWlyK2oyODUrd1FCTS83a2tEVVMwTFViVXYxSjNIUUlPTm9VdXF4d2NnR0V4M2tNa09aOGd3S1htZ0ZWaFNXUWFWbnhDeFVqRGpJY3hLd2RJZWlEVGNUVVNZbG9raXBrYWlUa3JybHM3UE5UWDIxbk1wRnJpNGZaSXUrdXlxRi9JWlZGaFFoc1Qzb0oxR2NIdHFycTh3RHFRS1hsKy9YdkhybGs3TmJYMm1tTm5yenZLZkJlUFh2ZDdMb2EvWFZQUEtJYnUxelcvQVpoUk1XQXY5TEFHdFphODhEUFg4OEs1anFvcUxTaVdTcmRTazVkTWVvYXFKcTM3NVB5VVBNVDlOY2VROXZHaG5vNllUb1JTTjNmTEZ1QWRnc3k4d0pUQ0k4TjVTWEExR3N4ZURSTXF3ckRia05leWVwekg0eVV0UXI4dnl6OVVvbHFQVHRRbi8xSVd5Si84VUltcDdPampIMWVJMmdNdGZpZzd0NDNyVWZLQVlBTGxqd2h2RVF4eWRRNU9PczhyWWVyOFRCVm9Ub25USC81UWpiNkFvNnFvZHRDWStzTWYwcmlTVTBCeWpHdEIzR0xCdGVlK1o0UUVpeGdHeVJpaFJqdFdYYmQ0dkhMdDBnNmk2Zk1WUWxVeUo1cDFMYUpSMVNJaXJrUmtQdHRNaFFqaUxsY2dObng0cmo1a1hQbmdBZWE3UGJOKzdYaTVwaklNOUxuYzJHb0k4bWhXR1Y3SWxiZlpmN3Q4a1dPOEU4L3BkaW4xRTVnaFJPM1hBNENkNzBxVkFuby9NMUt4aVZONnEwNDluNG4zTWRTMGVwa2NDK2o3bVBKZ254NjRxVjVrMWcwMm03Z2Q0N0thNnVER3VzR3JWa0tlUHVFQjdzK1RCV3A5VDFXZkFOL2hKSUlweGZ4Q1pDQS9zaWlmWks2V3dBZ1ZjaElwQ3ZPMzBLRnBja1ZUNE9ReVh0bnNaZDFzLy82S0hvMk5obUtqMFRDVjJycnhlYWFnOHl4Qkk1NGJ4UXBkWXRORmVXSlQrZ3hBeStlWXMzUlVuVkZqWENLSlFTbXE0cjluN3I0cjZxQVZmWTYzeHlUaFh1Y2lVemlwbXA3TDlDTW1QM1RlbjNlcjhUdFl0WFBVcmU2cVhoWm5tS3NtZnllWWp4ZXFvRzJBdTA3aVd5dlJxQUVrNnZqVnMvMGlWUzd2SXJJcHpDVkJHdC95RVIvMDZoNHh4QWdZRXBobnF3TC80RnNUQlFZMVBZYjhxaVQ3RDRleFpNclNsY2luVXQ4dXBQcXB1aGkzWWtaRW9zaVVLWE9MWkZLNkhkVUVXY2I3WFVHOTFmWFIyUHZTTjFmOTB2SGY2dTZWZlMvdnhxcGtIbnRGZDRiUk1iTzBiOGQyWm1yc0xGb1dSdGRkYzlXVnk0Y083TjkzY3VuazdwM2I5KzdZdTJWK2V0djZiZXNteGlyamxmSkFxYWM0MmpsYXlGa0pxOTN2YzBGSXkva2c1SUtnQTJjOWR1ZlM5WkJjeUlZQmdnSmJ6SjVYQzJMS0lOdEhQQStTV29Od1JHNEFMN2p3SlYvUUY5WTlzQkpPWHVxQ2xYTy9OeVJyZ0J6R1cxT3A5b0VCT3h3KzNhY0FudWpySGk3M2RIYW1DN2p3N0lIOXpJOW1QN1RTbVlld3ZCTGdPSjg3SDljRW8xYkFtYTVJc2lLK1M5SFMvYWxMNTBPcDBQdDE1WThVYlhqSDhQdFBkMDExcnBOVmVZdlhRaGNsMUJDblZhTzlXSzFFdUVWbkh1dnFFbGIwSFJYUGxyUGxJeGFNcGJVTnhGaFhGVlUvRElSWFZhNXNwTXlxTHFqTEdzaGpqQmF6ZlpVYXczaE13ajNXclg0UCtkakx1MGxsc3ZsNjVmZ3J1UUdNcml3eks3MlVLY242YnpBbFhTeG83T0ttb2Y5VngvZFhyVnA4T2NhZkk2enRWYlhOWjJxYmg3bldRT1pqSUVMdUJKbWlBdzJoaldnUlhZWHVxYndoMHlJSmdyaCtmS0JMbE9RckR1emFMS29heUYwc0RCRzVDSTc1clJJQmhBWDV1SzM3QlZWVFQ1azFKWkZQc1FSSjA2UkZYcEMwSlFOcmtyYXdkOC9zekhBNW40dUVEeDNjYzlYZXE3WXR6Q3pPTGs2dUxXOGMzdGpia3h2S0R5WGF3aDJSam1nb0VHRFlpOVA4d2dvaVB5UTFCUWNwVGNmcDdBb0pUVmFhamp2eHl2YjQ2MkhSa041UWhrMVlGRGVyTWZXUFJOempuT1crMGlMM2xYNktseXZNVjd0U1pPV1ZHL3lSaGhia2NGaUN1MGtTdSt0bUZXNW12cW5lOXNubWF5OVl5WGsxMStFOWlFcG9IWXU2ZFZFcWx1QUVsM2ZQajREbzZ5Vm90Tnk3cm05ZElaZHFSeVZTVWp3d1hhNDZ5akVJNjRhcDhML25PNlUycXhQSWowN0Vzd1NvdUNiQ0x3MzE1RGQyeXFKdVNpckp4dUdNNjR5ZWpUa0pxc09ZKzRONFJzZkQyWGc2N2d2N1ZaOWRtdGRvKzlwYzJBWWE2SU5hZDdUeWNmdWtEbkloRzZkVXIrSHhYcUJFT3lwYlkxZ2djUUMyTXN6ekRvR0lLQWZpdmpTbmNjWHVTZ2RrMll2UmtVUWVuWU5SVjJjMjNkWVNDbG9HNnNNOGpqY0hpRDNIUWp6S09lWUV3ZDBuTXN3alZ3SXd6MTBxQmdkR3BIRE50VUlJNXFhanp2TkFaZUxSRGJtK0hiMjlPdzd0NkhPK1Y1N2s1YjdwZnB6dDNiNjhIY28vYjQvZnI0V2xzSFIvUzRLMzZ0M1JyNTh1c21KdjE0Tm1QMnNQRFd0K3hVemZzQi9sSzltZ3EzR29PZVNpS29yZnZXTjhMSmZwRlhsb0VRc0ZHcTdHQXZHWW9SQ0FaZUE2SEsvQWpQQjBRaGNQRzJyOHBJVzhVTXhaZXNnWGE4bGxPdnFtdXdxeU5qTFpWUkFFclNORXBaK2xld0huZmF4a204WDJaSGRuOTQzZHhaNUVlNmNaNkoxSTk4YmFTbWtTVHZjUEYvRmpWc0FNK2hKR2FEelRQUitPRlBNVG1wSzllZFBJWlZsQkZSUmJFL29TUm0rMjVSZkJvQytTN29odkxBN3VpYlcweFBZTUZqZkdzNW1JTDJ6SEF2SFdWRDdPdkpsYWg3dThtRzNvazJmSVl6RG1DNVVPeFB4QldlUU1jNjRSWEk4a0ZveEhoSVZ5cmx6T0RYSnRSN211S3dPK3JBZzhKR0RGR000eTc2dEo3dmRDbm9uNm5WLzVJeEYvUENuUGlPMTJyejhhOVdPem9TWWRTWkFqY1ZaUjhFY0tVZWZEd1JndmVzZDRWekNXcVBuZzNRdmZOQTdTOUNEYWdIWXoyeFVMYlJHcHl0VkpJdERLWmNsVkt6TEhLaFBMT2xhcERLd0pjeGdQdXlxT3ozZGd0SFBicHRucHliSGgzdTZPUVJBek1vbTJrR3NTamVPNHRhcUhTZlVOYzFVQ2w1V2FvWHpWaTd0dUMxMXhMQng3b1pTNktkbjdBbFBha1Y4d3MrZEc3bWx5RTc3cTNJZjB3R2dSZjdVNGFqc1BldlpKd0JlZjgxQUdISlBUV3hrUzJWcFgrbzJ4Um1PZkE1aS90bk4wdEJQL0RZUDUzREpxY1VUenkzcloxUjM5bS9CNThuZlFnNzJWYmxkM0JCUDhsSWk1NFZoa0xtbnd3UkdMdmt5MEJnTTZkN0NYdkxndUw1S2RhN3FpOWNqMjRWcjh6ZnZPdlJiazlFK0FuTTZDS0orZ0ZPOTBZeUtoeWlSMzZnRS9maVJHUHdsUW9KdFM1M0d2RVl1MC9LUVc4d1BTRGE3VVI2UlJMNlBFK1Z3eUlRb0V6N0huNDdSWWd2bUxoVVdKaFl3dXNjbThrTTFnbE9uTjlyYTF1S29HK1VLcUJzd0RJMkhrUmpIelVzNFhNSnZpck9GcXdaQk9KNHRtdkhUMGNMZlRua2pqQTFEQS81eElzOHJWb2lDZEFSNDhtVTQ0N2QySG5lK2xFL2lmdXcrUDhqb1BEN0xjRHVUTGdGazZVRmVsNE5FaEpGUVZvYUxJeldPTXdSQnhZU1FZTDl1U0ZPOTJYVHlBS0VuTU9Dd05NY3RZaGlrZDVYQytPaTdMK1B2UWtmZ3ZGRWtPbjMxVUQ0aFVlTGpWY0Q2VXZhekQrYkFTTkxIcjhNaXRZUStacG9YTm9Qb09uNms1LzA4cWdkZktwaTQrK3l5akRaNU82TitGTVBrRWlxRVVLcklZNUxBYlB3UHpVRVFTQzh4d1k0OWsxM2RScnZ0b1p0SXQ4VncyWGN3VTIxdmpxWlpVZVpCeUQ4MWUzS0JkWm9RVFBnWjhDQ0ZiNXRKOWJSOGV1WFRZK1R5Yi9uaHkrTklSbjYrbHhlZDcrbnZmYSszcWF1VmIvT1BSSzhZaS9uTnY5RWZHcmhqdHpIZTBKenJ5emwrZDZaM3N4ZWt6Zld1aHA0WGYvQVkydndDNkZvR1Izby9XVjZiZ2lWY0UyeUxQNEgzK0MrUTZZdEh1cm83K1hIK2lQWnFOWlZ0RC9BVllNSDZHKzZtRXVGL0tBUGRWV2VIS0p6UjZEQW8vS3IzdHNpdis4WXJMM2xZU3hWcFJkWlR4NVRIUGdXNjgwZlB2NFAzNVlqRi8vMEVhVktwRit4dDFUenQ4d0dzSkc0Ky9mVUVBcWcySWQzOWxMMUlGOWFTR0VhRUVNVzlUbVZBUTBPR2xaSHhNaHhkV1dDZ2tXVzVPWnRGWkpHanJ3c3pHdFdPRC9jVzluWHRxS1RrS3BHRFViU2V5bDVKanVNSGJkQ1hSeTdoY2p6TkkzaStNMXZscTFsdFhRZTVxeHlKeXRpSDAyamEyTWtMMkIxVjMzSUR6dlVQN0ZvZEhLUW1ZNDdxZnlEc21wemNsZ2FoYzQ0WlJZN2tXYUUxWWFMV0o0UmJmNEVhVWgzUWV5QjF3SFQ1Nmt6aHEySGhvYUdEUHZpdU5vRStidXozYkVhUFh3YVdkbEVtYU1iYWhURWtCZFRWOUg3UGhob0FicmtYckt1TTFidzZaR2ZWZHBhY0luYmVJb0J1WG1HRE9kWjNGZkNiZDFob3VSVW9YQ2N4V0JqaXBZU1lOaTFFZTVrRUtZc1FrRGtaWW40R3d5R09YSXZqWE8yYzNGanM3aXh0bjMxMHQ3Snc0TWtIMkt6cVJKM2ROeWxpbis4bkVrWTVBTVdpYUNxWEo5dlpVVUNmM3JiaUVGM2JBZFZwSXBZWGg0WUtpaFRRNGRMNnJtZG4rbm1LWG1HalA1ck9GS2pabDc5NkJCbEFGYlFaY2NuWGxLaDFMZUFBanFRVm0rend3VW5GT053a1ZWZUMzeHpXc3FpZGc2aWhZUWxoYWxnWGd1cUtJRm5rQnNmR0Z4SVgxMHhqdDJybGoyOHlHNmMzck42OWJPekxjMjVOb2k0WnRueUtoRHR6aE10bWFtVWRoWGNManVxTk4vRGFkS2ZRU2wycEh3aVBRTk11bHI0Rm9SSTVtYlE4N1N0eGR5WVpMeVkvMkJjVm9heTZZdHdEYXkxWXUxTkVhRllOTE5mblorU2M3RUk0U2pScitxQ3pmWllTQ3RpekhXNmhHWHYvMUQ4VXloaU5tNHgvNE9qWHdyeE16c1ZiYkoxRXErZjJ0c1psRVhhQ1dsWGhhb3kyUm9CMDJGVm0yZzVFV3FxZWVjWDZaaVFFK0NYMG1uc1VnRks4WVYybFVabjd2MlF5UjNHREVWeEQrMzk5WHlNRW9TMGZTRnczL2J5QkpoZkpxUWYrckRLL3BFOVBUSjE3SE5sbU9kdFZsMTh0aHRURjE3a2RlVTlpY3ZZdWIyMDI2N0RwVHVHT0ovQUxlMTBRNXRBbms3MnRZckVRUWlOUEdkY01DUnBXeExOQ2pLdzRRV2RtMW1ZaVNOSWRjdjBZQXV4VERUSk14MHkwakZoTUE4dzNRRnB0dlRDd1JoUVcvZGVTcVF3ZjNMbTViU0xYSHdsYk9ueXVxVEhaZllhajBNT2g1WkNvM2hRZkszTGN3TWdnMEhPaFRHQVlRU0RCTTB6bUZ1U3lETCtLN1J2N2xEYUpCWS81clpScGkyZ1Q2SlE2cVhnMUY1OUFhZ2lORWd2OTREU0drQTFOQWp6MEUva2xRN0FCZVAyclFPdFF0d3NFMytVRVBOUWg1ZzBqbGEvMHhhdXpJeHU5bnlnb254VzhOSnc4cEdKY0lLUkdZYlRpTGhUVkV3RkZDb2tDZjFnZzRTMFRuTDJxdUNWYzFPQ25RbWl6VkhMZDBRK1ZrQUZ1U0JZQk84a2tua1UvMG5XUk1YWVJQUUxDR2lYYmNqelVCL2gxVHNhRER2Mk5JMTAvWUJ1RnBxTmdlNFNXVG1jOFczQkNtVlVLV05rWDVuMkI1TUNpMWMrRFFHSllRWGFsb0tOUUZTbDRmelRXZmJ6ck9OUm5xbTQrYkRmOTRxTzRRMWdIay8yRTNJOFhEd0ExOEt3NmRON2hhNlljOVhqRUdlNUJYSDNacm5TOVVSZThBL24zUHl3eUUrTXZydGRPMTRwYmFWZXhlVFBMeURoK0N3MC9YZnBBSndNN2Z1bnZ2TVRZRnFoNXNnUmZyd2o1K3FGNWR0ZDI1dmhVR2p4cmNXOWt0c3FCTFJTREtjY3FZbHNJREkxZ0lNM001VVpEQVZaeGNTMWYzK3k3MStFeU0zRkMvZkpZRjFwcmR2bTQzRWtKdmpvU0FicTdIUGxqbjVYbkFLOXpUZnQwMTE5azF1empYMlRtSDkxMVZiT25SZWxvLzNWSXllclJzNk1vcXp5ODVsOVdqK2ZBL2RNN3RtdXZxbkZ1Yzdid3BzekhXMWhiYjZHZFduQUhPMDcrYUtqa0dEOVdidkJiYW8rb1lmL3Q1WS93QjlIVEZPanBmQkFxN285OHZzRUI2MTFTOHpzWSt5L0pkR2ZDSEJRc0ZrUlc4UElTUnFSSXUyUUtERUhXRmNPRldrd21ueEd4ZkpjV3RsYlhzZXQvSjMrN3kvWlhCNjAreEtML1gzZldhVjk5KzI4MDNuWHJnK2dldXUvYndGWTJHczFJWEQwTVB1R2F6eUNwZWxCZnpwQS8rcnVjdllzQjJVMXA0bHVoei82d3hBTXRDSjdSNjZYUDF1UGQ2NmFtbVJyeTB2SXFsRy8vRFNzTjE3U1kzMWU3cFF0dVhVNG5mdXJweG5NK2ZSbi9ZU21XZFFtU0JtZE5nM3JDbzdSUFVEVUduOVJEMGwwcTFGR3pLYU5HNVNoYVV4bjU4N294dTk2U3VaZTQvbno3M1dlNFhaSU1RUEhIV1NmVjQ4ZWhFdHcwbndqcUd0UENjSVQrQjdrbmhmekhzRjB1cERZd1liR0NwVUZiSmhUSmNHVVJlS2hUa1pVSkJYaUlVeEY4SzFkNnA3UDRaNE9iQkJ2ME9lK3h3MDdGOWtXUGg3UmRNR25XQk12bVdTOS9ncXp4ZTgyMXlycXY1UWVHMDV3RmxHLzhIMzFOcGZvK200K0JMdnVlTkFmM2MxN2xPcDFjUEZOeWdOemNBN3N4di9hb05zVlhzWGRlZ2JDWGxxV0lKVTl5SXhIWHRZdTQvaVNoQU42WXFZSDdDSXcyS21nYVc2Vld4MUI4Tm5GYjUrQWRsbjR3L0tFbC94bklNN3BhSkpFa2ZrUHpTbW1qMGt1aFU5TndNQ1Z0ZjF4UlJsQitYL0xBVnYvWkJXY1lmZ3NZZmtGaDdpL2drWHU2UHJJTXJvbWYveElvSUF3SmM0SmNlbCtFQ0hkWDBkKzY3QkQwTjN0SEs0ZW14Tlozd3BmQ2NpdUdMaVlwODNLUUdmRU5SQm95T2tRQVk3QkNTZEN3cWtzZytMeUs3bUZ2OUVnTzdhS0U4bE9zSWh3aWFuQmphVU43QTlIaTV3VVJyS0J2T01nL0p1dHVCbEY0WkhwbEwyK25tdEdpNHlYTFJiTmtRM243Mm8wd3RJV3p6d3p0K1NTQm5IWEtIWTNBQzgyc2daYzR0cmhjMmtCMTgyL09zeUh5elQwWGRDL3h3Y1hTclFKeGY2dXFOWHNJMzV5NW93eHMyYm1wNU1UN00rMnFFZWN4NTJxRzZLaDRmNmV3cEQ0aFNyRHZZbERDSHhlRzdodGNzQTVPc0hvQlR4RE5BUkhqd1BwdXpqOWQ5Q01tUDU4ZjZTcTBEUThuQnNabDlWTGZwNHNhUndjUlFQcFJKNWJ2N0p4UWFGSHhzZEo3OUU3WVY3RHpBSFMyUk1rSTRRZnlxVTlGMHNRMkhqR1JNOVltaWJxWkZTOEdmMVhSdi9ONHJsRkNVejFTbWMzUk5CNEpVUzhQQ3d5dVlVc0pMd2hKTnRyYTJCcGlxT1NmSm1VS3U1dDVkemFnWktseWd2b1R6UXlPNTRZR29GQWtwMEVhNDNYbll5bHJPSTdxK1I5VEZaMUpia3MvQ2ZvK3VOOVZ2VHJuMXpuYm5iWWFCci9GbExYeU5ZVGh2czdKSHZrcnBWK1dvM0M4SXJ3a0VYaU1JL1hMMGgxOVYxYTlLTVluVjJUYXJrMktocjBwUjJXMHJmVlZ4NlRISGZmM3dEZnNCVSs5QTM2MzROMDBENmhsYkE2aW5GNE9JQUJKSkhDU1NOWWpGU3ltSG9XOElFUTh6YjNsQlFVSU5CS2t1SUZRWklOelA1djdXMWkwZmFZRUxCeG91bEVSeS9PVmNDY1NTWHlRZmZ3VlhzZlFkak90dDNUS3pZZDFFZVRDVDl2Y0grdDM1cGEwbW56VFl3SmltajNubE15VnIxUkIyWGdLZFpnR0UvTWhEUHo5Z3R0bWZmY2dDeEdzbC9MSm9oVFBqbWJBbHl2NEtKcUZuRFhxQVFaMEROUnNyYkVnL1lLZnY4YXN6OGF6em9iZy9aQnVXUWlYVk1vTHJpc1ZFS21CWXFrVGwxcHl2WlpaZGxLaUY0ZkdTaDlsYnlTMkFZSmxQOStZS3c2ak1jUnRHcThiemVyTGdmazZUZ0c3SnNodnBJUzlSTnZzV01Cb3VENndwOVhRV1UrMHQwVkRBWjZnS3l1R2M3amxBTWVlWmJKcXJmMEN5aG1rYjlQSUw4ZHkzaFhKK1dBbEZtRU5FUm81V0Mvajl1S0RvZUZnd05HZVVDbjZ0M3dpU2dObDJDSXI0SUM4N1g5WDhSQW9rM0tDRUY5d2RQa1NWejJpK05zM3d4NFBPNS9uT1VMRVYrNGtiOHhCMmQxWGRkSVlzSUIybFdPNmhSdjljWmcxQ05XUFFhR3pJWnFUSDFlMHhwYlRNZE5LZTQyNTlJR1R3ODR5enRFcUtkZTVyTEkvVzdvRHliR1FxK3B3U2NMOHN4ajJTaEdYVnhyWjZVcVBLVjhMaHJ5aFVjODZ5ajllUUg0alpBbnBZVm1HV1V4VlZ5WWNvVkIyZHVFV1BaZGdwRmpxeXFXUXM2cXBJbEF1cFNJSjRSZHhJallDczVsdjRCdWU3YWx6OVUrWjdGS2Q3WkZ2K051eTd0ZFg4Q3AzSG5IK2s5RkhhUXJ0VWRhOHNmNTlmNVBuc2ZrejRZNUF6NTlDR1NtV0d4WGpNc1p5ZXlIc05BaEluY1Iwc20wVVdndFpQalkrczZVdW40bEUwUithVUJyMXNnU25NdU02UVJVOHl3K3F3RjZNT1Zld2s0ZVNlcTgxZzBqWGE2Y3AyTHhaK0Q0aS9xYW42L09lT2JsNjdkRGtoRXlQakR5OXV1bWRFdzJxUlJ0U2hlMlk3Y3NPekVaOGFLYjVoWWZ6YW9xR0xQdXNlUGVEWDhiTG1JemFMcTdyYm90UlFObzJGZkoxakh6Mjg3UTlIMTFVR2VxSExpaFFyUFVsYmphU1AzREhWa1p0ZDZDbnFmdDBJNkd0MXYwL0Rod3o3ZjA2V2E1WlJYMXFXTzNPaExIMi9neWpuMmxxRks4Z01ZUFZZSmV6bW1HYWpsdVhpUVFZeEJJWWZXR0p1ejdZei9LNm1oRmxreGdwUjV5Z3dxRWZNZGo0MzdoVStDTHcxZ1VxSWZxeFVERkZTNnNhUzNNdjVPeDhVWHJaZ3JwSUhPdHlMcGR3a2RxVURQazJGWTg0dFptc2dhaTcvWVVkZTE2N2V1ZXZ5UTB1THIrL0l5NlRWK1dOOGg2M3E2NWV2dkNHVUN1TUgvd25JdDRXL1l3WEVscnN2WFQ2Ni9PaGdXZFBhMjI3ZHVmdGdObU1abHoxTkMvNUwxazRHeE5hUXM4M2s3OHkrNzE5d2ZOV084dkI5UjVrbGlmSnhyMGdzQWM1SlhkWkVWYXBPNERYOXhVSXlnVkY1cUg5MHpXaFBkNkd2MkpmTkpQTEpmQ2lBMm5HN2NZRXNkbFZQaTBJZVZ5UEFCczhyc01sOWROM2txQ2F2RlczanZXYm81R3RmZmV6bzJpazhOWG4wbVBPT1pHL3ZWS24weFJVN1FSb2J2ZXlLRzQ4YzhRWGVZL2lGS1ZsYmg4ZWg1cWRYTG8rTU93WnJVaW14N1ZTdnUyMmlXWG5tZXlCNjg1d0lqWlNLcGQ1MHFaUjBRU3BsWWM0UFdPWm5KcVJHSTZ0WktJOFN2KzZjMG0wTU5CcW01WU82SDZqMWFxWkpXL05aZWphcCtYeGF4cU5KTDVCbnlOZFc1bS9ETnRNYU0wRUtEMGZJTXcwampuejAzQkliajNpcm1xUjRKMHZneHVTN3Q4QzdEZ0dQUElGT3M4eWg5NzMyTnZqY0xDa09GMVk1amNaaU5Yc2RKOTR5RUc5WlB2TG0rKys5NTQ1WDNYTHovR3pXcjdEUUJaNjJsaXVWR0ZuaktUT0dYYW1WWjNIcFl3NGFCUmF5d050NGNRekRlUjdLMEl0NS9nM1cyZzJBaVBKNGg2b3NYSFhOOW9SZ05sNml0WXdvOVl4aHRVUmpWWlhqVisyQUZaVjBRWWxWMXNmYnduYkxuYkZNcURNWUQxQlZDaXI5TEd4QU5OdnlPM2JtNHExMzlHUmF1bnBlZFVkdkY5VndmeW1aN1N2ZGVuTlBYcVZHTVNrMzNpS2M2OHJIZ2xTQk8vVEtXRktwSEloa1NvVmR1VVRrVy90bGVSaDQ1dDdkc0JtVzVkMDczZU9kZTkzajB6S2h6TVV4RnRRajhablorSjB4VlJLb0d0Sk1sU2o5aG1tb3NobUsrc3lRRG85enl5Mmx2bXdDSGllQy9iMTN2S3FucXlVRGp4TWhBblBnVjZxMytMMEkwR1Fhb2hZbFNxOWt5Wm91Mjc2SVNzMlFQL0tUSmZkbkw5a05qeUg1NVYwNzNlT2QreVNKUFZZenJtTTBmQTVkaHE2dFhHMVVzN0JxSnNBMVFRVkM3c2NxMGtWVlgxWXM0a1VaKzVnOVQxNkVuVXlYRUpYcHd1YjVlb0RYcnUzemwyMitqTEcvL3JtQnVmTTFMdmJLV01hWGxaeFZhWEEwYjJxM2V2MWpBSHBzVnhjREVQOHl6Z3IrOUx4eXdNc2lYV3ZZVkNIMHJBZ3Zyb1YzM2RrUXlRV3N0REgrQzcvVzF1L2g4VjZOOFYyZWJZWEZkL1ZYU3N3UElzelNRc3pWUFFuRUZZRmUxVEF2cVNITXExbG51ekxNaTN5M3lhNUJheFlQL09IelRCT0xOYk1GcXRvUkkvejVxdG5nVDFXT3N3alkvaUtScFIzemhFZS9xcFZSb2hCcHJwWXh5NEF0U3dYRm1MMGJkcVBDT0ZkVWNsN09ySllZUVN2WElvZ1ZXbW9aaU0xVm9sdXJ1amlsQ2FOSWRXalBQWFNhWFVhYklRcjVibU80cWdZZDhCaXI4QUpXbmIrcXB3bDVvVjRzZXJsbFgyaUtSL1ZDVUJ2alVldUdteGRXTSthb0Y3RGwzSVBlaVI2dXZEVlVuVytCcUJ3Und6SmhETmFHV2RlR2JSU2tkbkRaMTJMRXRaaE1UWjJvRmxXWFc3SGw5MXVMc0xQOFM4aHYrUmZ1dTdjNUc5Mlp0NTErNE41MzN2Zk8xOTM1cWx0UDNYUERQUzgvSTEzN0tuTlRhckxJTk9jQ2FENXV0dUJjclAzdk5MZlBmWmZQUHJiQmhNKzdlL1NHNHN0bzhGdFRnZFUyalpSaHRjM0xvQmJWM0o5L3k4ZE1nWStZbzVYRHlKQ05rOGlVRk1sa3Z0eEVVc2d4RVJNcUVYcE14MVNRS0E5UGxnUjBEQ0ZWUXVveGhubFoxaVlXdGdBelU5UFVSYVNxMmhKTVZXMWg2K2FaOWVzbVFMb2M3SURaMVJIS2xnY3NxYjA3MXl4aFozbitieDQ0MHMxWHVCZ3NNMHUveEprdmZFSVFPN0poTHZ5VUFjWVVtaVYwL05vQWk1eUVuZ1M1T3ZEalF6NmRuZ0VPZElicTFpVWozYjE5ZStabWRwSjd2WnBMMXl5TjdabWZMWGF4Wm9SZjZBcmtnZGRXRFhZNmRvTDBYYUw0TGpYUXQ3K3Q3YWJPempjUHdSRU5qdTNyaDRPWitUMUJpdis1MXJxYUc4VE5BVG5PYzZRellxdHdZaXRTUWlUaWh1RWdOd3BIUHNMbXowQi9WNUd0OE9FZkQ0eGYyRW9nWlZlTVQrYmU0SkVxVDE1eDB6U3pKay96NGRPZktnWEk3VGN5ODBpL0h1anB5SmNNMjJkMEZtSmRmUzA5L2Z2V2JNZ1VTL2d6Z0VabTlVQnZFdDluMk1IZTVGUE1obkRqNEtWdENUaHhGK0FYVlRKOWtxcFp1ZTd0TDNBVFFvUHNta1FiMEZ4bFl6L0FDY3h6WEp4VTNBVWJLS2tsNlQ5L3dZYkpkZVdCbGNzMXFDOWp1UVpwUmY2aVBFT216U0ZIMFF1dDFyREc4K05oQVVqWDBSZ09hZEF1UnE5em80MHVzRnJEbmFvSzEzQkRMSGNoT3NOUEgzVVhhK2hpaXpYVThOb1h5S1BBeTVnMnBPYWowUHphMFdBd3dyUWh1UWFGd29pblVHQlFEcDkwdmtCcEZ5RGlYOGkyakw4QmhTNUt6LzFBamFmeEZOTWxVUHJ2a29TL3pid21XK2k1NzJxZXZvRDhHOC9IejJKOHExQXhHV0V4dnBJcm5WZC9nTGxpc2tXSE11UzBjd3JlN0VGWC84QitGSTlUMnExRU4rRDc0SGZ3bStBQXpqbFAwN2dLRzJpbG5KY2ZlRDFhUXRzckN6dm5MUW5raUltQlhKdElSRExITXZyeVorQmpXNUFidEM4c3l5ODV3bkw3N2x2Y3NubDZzanlVelRUbjlsMlp4VGZpcWdqaDYrZjdjSU1VemdkRnJpbUpyOHlIQ1c3SStEdkV3eTBaY1JBKzZIekxVb3hhR3Q5RGVzUTYrd0R1VkRWQ3E5bDFIMTgyb3dIaDl5TXNCVzlZNWFsNURTQTdSZFU4ZTdpYXhKZlN4dy9wc3MvNWpoWVNlbFpyZVpVUlVKcWJocU80bS8rNGw4V1gvYmh3L2Nwc3Y4dG1MRmlkVjNjTFh4Wlk1cXhUSHRycTRObXlPYWhwd2p4MXlGUEl1NkFuNzJHZWFCWGdETE5GVHZpRkx1YTVJT1R4N2pVODR0NDZUL1NpejFZbFMxVGJObTFwUzhXQzdhZGJDMzJsVkFDa3JvZ3lyS3V5cGJUYitYTHBVREViZS9OQXdlZnJINWpiZVA5UXYyemdBME16Rys1ZTA2TnBabWZSVXJYV3padmJVdkZnNG5STG9iL1VGdUUzS0FPZW9jRkFXK2ZCU3p1ejhkTmxPMURzbDBVUnNLK290VVdzZU91MkhZblRjVXUzZlFITkIxOXAyTENwajdhcWNZMmFrUkQ4NEQzclp3WkhRcUhzMEJyUmI1SW4rMzIrNGtDWDFrb0VRMURWdG9nWmI5ME9kMmd4aklBUjBpMlFaQUNXVU5NTzJTMjJGUTdGVHcvTnpiekpuVC9QQ0RlVDc0R2NORllaN21iZXduT0lFeTZXVUIwTHg1RWduSkN3U0lpNENEdVJMREZyMmdKOGx6N1VOeEtQdHNsTXZjbTcva0pPenlOZVJBZW40Z1htSFlxdlozNWNSUEpXZkhITzFzbk1OU3JWcmoyd05Ed3FBL1V5TGFMY2UrcG0vQitDb01ncU5JK3FiTDZ5SmI5cUM4L1FpQ0FPbDVjdU9hYjdBK1o5UDk0d2c4d0wrRG13eklEdlJFK2d6NksvUjA5Vi9ycWxLZ2UyeTIxaXE4VEZRQXBpWU1wSWFnbXBKdnhsQXhsL1dyS0NOdkdGTE45eVBwYUxkRWloY0RpMDZCVkQ0YVY0bElSRDRZWFBQL1hSajd6N1hhY2ZQRDlYOGROZmZPcnZQLy8zbi9yNFJ6NzcwYzkrNEgzdmV1TGRUNXg1MjRQdlBQM08zeTZIY2VHL1FXTDh2NjM5aXFVL3pyMlo2d2tmWno1Q25WNFJCTWdpcStBcXhQK0JCcTlBQW4zcXBVOS83aUx5NlV0ZlhlV3ZRMlE3Nm1kek5HZkJvSTFqRWFCc1NTSjRSbUxPYUtlSXUwUUQ0VXMwQ0V4bHl1Wm9QK29mVHVTTGJJNXlwWkhnTFV2aFFyV1JTWnpBMFNEZkpabnV1NHJ3K3BoV0hQK0xvaGppdG1uQnAzS2owZXhCMFIveWtlMUhSWC9BRW9kNDNRblZKNlpQaWRiclJObVBSLzlRMVRnRyt5YXdGVU56L3VaNTJPdjBObDZuMGEzL0g5Vlc1T3hjNllQMG5VcmJHM0hRTWtGNE9ybzhYeW1tWkZGYTJqSGFIL1BMUUJQbnRud2svSCtGUnhKR3Y5L2trZFM4NWw5SHBzM3pTTUsvbFVkU003cCtwZWRySGtuWjFUMlN5SCtlKzArbW1XREJuSWJ6NEdveGZ2ZS83TXJpUURRZGV4TCtEM0NQWVFvM3hoOW0zcHBWcllmejAxcnpxMnFsSjE5bUhSWkRkalJxaDl4dE51NEdtTWF6aU9kS09qL1AvTDdLb2lXYXhKRDRxcFRBdmtBSXN6VS85VW5BNjAvcUtsR1VJNzl0WnFSR0dKSyt5UEVyYmgvOW5hbVZCRkRsa3h6MHpYSHJ5cXBsdGk2UzgwbnVialBISmZsVnkyeUt5bDc4eldNcitwZXR4TVlVOHl4V1REM0ZDSk1iMWN5V1N4QkVsb0dOVW1rUmRoSmQwakNWNk1LbEIvYnMycnE1WExWQUdZQjNtejNxMGszNFZWcnAvRnB1eHNjWE8zK212aVNVVUd4VVBwNzlUdjBNZVFiT2ZJaWZXZFFENTNJWHVvWnNxNW1tdkVXa2JQMGJxeERxMWVvdTNJK0FpUW1MQ09lTElFRG5zWTRUSlJaN3A2cHU3SjI2eFB0NDFmNzdIZnZuZjdiLzdxMTEyL2h2MDRGTVBuMFhZSzVXMUkyQ0ZYL2RGamlaR09SWnNGeUhnSWpzcGNpMXNBZUVlekhMSXNQVE9zRjVGbVFaSWI0bDRHVTRiZm1KL2k5VUVnNktaa3ovbVJLa1A5ZmpwclFrU01yUGRXS2JPQjJSRG9qUnFDQTR2NkpxdUpVK0xnZFU1K2RtUktZZmtLUVBVRGxpNHJBYWtCK25yV0ZnSjZaYWZjNi9iTUNodFNXSU9BNVZQWURiNStKUjVxSE5BVEJld204QmVmWUdnSmtnMStJeEtQOHREd2trNTV4YkdBQzl4WVc2ZUxpNjZhSlZlZUR0WkQvOFZxclNMbURYeHczQTB5SjMrR0lvYWlFWWpBWVkxbFpkRXluL3VXZ0QzaGJlV3Y4RkJua2JmZ0dmZFc2QXAzbUxoNDYvQ09VUi9sUWVCdjVMNFZ2a0U3V28vTTJWT1NBQ1ZLVklQWTZJcXFsRU80NUVUVHpGRXZaaGllVmxoTk1JMDJVRXB4cjFZYnUyYjU2RFFUMGFEWVpIYloxcHdseTFScU9DSjlQWDdNeCtNYWZMNW1QOExVQUpQTHNLakQzREw4MjRJSUxsVS9rKzRQNXZ3V2dkWllPU2ZJbnJJZXNwNTRBaWN1MFhVTVIvbzNTV3FxYkQyam1xSnMweS9VQ01QcWVxUEpEd1d6Vng3bkZ2RWdCUnJvOWlOamIrQU1ad045ckV0V0hlT2tjd1FsaFNBZ1Y0MDNHa0tDZEVqQ1RKalN5VmxsU21RMXFZbnVvSVpVdlpqbkEycDdHNEFNQ3g3YTVwZ2tXTGUxM0Rzdy9MUEdqQTZ5aWVoampDR1g5ZGtjanpEN05ZY3RhTHdxZmZSWU5QcWRyMUtzaGJINWI4MG9lcFlSM1gxS2RjVFo5N3pqTFV4eVUvakhQZHgwNXBwdmd1R1YvSERrOTZoNUpVYTBvdmRCZjRCZmx4eFkrcU9YVi8yc0N6OTdEWU1hQ1I4a21rQ01vcE5vOFlSUVMrRCsvUFZvUnA5cWZadXFWUUpZVzhRODUzUkYxQjJzNVRqVFo3QU9hYmNqaTc2NTMrbFBOTS91ME5lMnM5bCtEV3h2ckdOUWFkTTJyZ05hejhtaUI5cHlTUm0yc2YzN211Tmpad3FrWUE4VU4xdDE2eVJIWHJGRDl4QSt0eDExam82bEJ2NW12YkRxSHIzSXc1SFh5aGJWZVp4T0lVRWJtU0pTTEFhSkZGUkRFSE5NVGMxckpOemNqSjgxdnRyMFJ0RUlCNk9yUHAxcGgveUI1eWhSMmVjcndKV2VhWWhxUVdsVzJIbUtQRVpHTUZYelIxQ1dZUjgrbGxzOGg1dzl6YXNZMDhLajIvdmxqYTB1TUdxT2NyNjd2cWJHQ3JXTWkvWmc3THpGSFUrYy9PdVJJUmlwdDYzSGgzNTFjTGxjbHNSODFPTmtTdVFIRXZtL29DdXFRQ3pCRWpHL01sL3hoRFlNbVdaUkRic2Joc0tMcWtnZWhIaEVXdktEQ1ZoVUJZOE9iRTRFQnJ5NmI1alFzekM0MnAxbnU2V3RhMHJpbVlQTFVCYy85Z3NYV3lrZ0JRcjdncnhBMFhtUDlaMDRLQVBNaER1YkFiaFJBbFl1dkU0Ylg1dWZiSks4ZkNpVlpGcWxDVE9JZlhIcDVvRTNCWU1OVUtGY3RUY0RoeCtFbC9MSmFPUnE5ZXNjUHRWRnd6UExZOEZvK1lXMDlNamZSUnZ5aEU0VHFjaGNxUmZrWGFvSnJ3TTBKeWJQbUc1YkVYMlRYcFdPTzJMb01ROGhBS29DNHZnL3BSZEhQbGhoaVd4Y0Z1SXFBaTFvWGRXNGltYjVnZ1ZKWG0yTEl5TWhLQWpyUHNmaUxRY0pPY245cE1JbFE2TDA5eE9IajR5bjFlQ3ZXUk1sc3BwTDBsMkJYdXlwUnRDL2gxem00QVExbnV4N0NhclhWRjVvQ1hhWFZjYVp0bHRrZUdRT0xaRjdydGhPWEhYN21LSVpSM1ZXc041eFBlMnBacmVTN2NKejBNVXZSV0hvRE53a0Z1elYwdjAyZHhKUnQzM3NDdUZXbXNEYS9OeHEvaXhsMWU5UUpjOVpJV3lVY1BpbFJlenkyL3JuL2JPNEVHVGpPUEY4R1RaNkQ3bUo2Y2pWUk1GZ2hhT3phMEJrMlRhWkhaUUZ4Zzd2b2pjeDFsTk1JZDJYb3hlL2NSTnlDMkYzdmFUemUyT05JWWpId3RURGZQZVczVDVMN0xDUmtmR2JwN3N5L2tNMlp1emtWVVgyUnVwRE8xOWZTdzU3UG10M1RuVHpUZjZpNXJJeFdaQk13eHcwZmtUWk81anFrN2pxU2pORmdjYm5aWVExV00xcGhEZlJIZGhoeVhsaDFFV0tNZzZSNUhpQW9DT2d6Q2dVNVUvVGpTUXBnaWpmSVZPWWdxa012RFdFZUdwQnZMQVpaeDNXUmN3VVIrMmZRdkk1OWkrUmFETFArNnhkemVmRDVyQ1ZrK0M0RCtwWTIzcDJ3by8zZmVmMzlsWk4rZWFROUczbmo5cVJQWEhMbjhza01IOTl5Mjd6YTJUbFZsY1hyeGZEaFpIb3l3NlBqd3lqREo1cVM2elN1MW5wZEVkekM4Y3IxWGRySytvRm00U2EwR2ZOK0wrUlUrM3lqZG5Ic1dIK0Q4NmIwc29pYllJUFo4Z2xjWi9QUzVTbjlBRCtsMnhMOFAyTllUanpMZTlab2JHWVhtU3g2OTVpWW9rbTlWSmYrQTg3MDZTM3g4VlFVWHVmb0Zmdk9vUDJJYlFXQ2Nkd1gwSUREV3FQK01WN00xQXNXb1oydTVXZWhIS1o0L2ZSWXRWRFlsWUxiTVRyQ1ZyK2FJUWxoVU9XTHJCd0NBNGpGN0RGR2RsMnFSNVIzcUx4VnpMVEhiQWhrMVJWTFVuVlByV1BCZEZHaDhPUVNkdGE1aFJVd2xnUXRocVNuSGI0NDdoZWFuQUZCTUVqZlZ6VGUzQmtjdkd4blkyUmZhR3VRTFpPN1lPTDJORU4wa0gyTnJZZkUwaWtkVEplYzd4TkR1MTNTU2lVUzA0a1E1RlE3aUg5dGsrSkpCVVJnOU1DaEQvM3NMWi9aMHZXa25WVzM2SHI3QTgybDJnNG9Lcy9GRzM1clJvaDRwdFVlTGhvYzFQaTU4Z1dPTkp2OUlTMmUrSFlLcmRiTFk2cUlOYWdZUS9YdXg4S2RuUDJBRk1NVTMyMEZndy80d3ZwM2lnQ0FGV2pSbklaUndmczYvVDdnMWlwL1VXZ0llMW5nSDJkZUFOVTdWbDJ0WVlzYStHdGJ3VnVMa0pqWXZ6eStIUEh2d2ZReGQzT2VDR1c1UTQ2YTFMdVdwRmZobndrVWJYV3AwaFcvZ1JwYlpoSEovWmdXN1BuSGNya1lFTDlXdzZ5ZTRkbUowWkdpUWVUVzN0YnIrZ3VvRkE3K2o3a05XRjRMeFBKeUhWdk4wWmpMMWF0N09xWWU1cDVmMHNPeitINVpscUhuRWRmOTZCUDQvTExtVjRxb08wTm42TmU2TldIdDJIYXQ4UklKYnltWDN6bDR1bXMveFhEU2xTcGZyTHdnZi9SVHpLaFFXV1Q2YUplNDZlVjRxbW1CNnRkd1MvRml1RXB4cGNxZVhpWVlsamRnSm4rQUoxeExETXRHY2U2MXUrM0JIakg3U2plekZ1eG5lMmVsYWtldVphQnJ0NFZtUUwxZ1VnQ0FSaVdkZ0ZFR1M1K3NhQUIzRlBISkM0T0hxaXNKOWxGbVdJVkdCUjU5WnY0NUhkTEpYQUdrVVhrRnRzSE13bmxaZjVHQTRVcFB4YmI3WVFYUHVEVGR3b0NsRDZwODVEeHFCZ1BHSXBXbk9KOTNvWVR5clJrSTZpSzdXaTlNQjJ4UFhuelBDeW5xRzkxN1BBbTlKYTZvVUUzb3NlTlZ3UkhVKzVjWWw0emxvOElnZURobjRoR2s1YXpmNlk4OVVrMnVvNnJRYXF5WFhlSTJwTm1LZk1NcWhNcG9CN01QVzlhT0Vua1NxcEo2cVJrM0lHa0dLcXhocWR1UEdhUGVPTGZNYktoT2pnLzNkeFd3S0JIY0xoWEZZcnlaZ2FvUi9uZ2oxTytLamlUc0EwSWppTzlYQUhVWXdTUDcwbFFJai9NSHJmVHA5SEFieTQ2cGhuZURTLzlPdkFCeDVPWTRZSDhDb0IxWFlpaUtWTXBHNTI2eWJhMUVFVGdEQXh1VUFaQlVPSUpDQnZrSkhNaEdQK2kxVklUMUNEK2NBWVNsZDVxdDFKOWpxU1RYVHBNc0J3azBqNTN6aS94UTU2aGg5dXdaNmQwNFlSRk8yVXdQN0RxN2Z1TUI1UUpYMGwvNDNJLzI2TG1TaVljTWovZjlCOXg0WVhCb1ZoTXgwbDZ6NTZLWWJrMGxHK3UvZmNhaEs5UEVKNEJwdlZFR1V1dEcvWnFSRytZbUhoZTRDZVdvZUxWWjJyb2tBRzJUWk1RRG95VG9oS21iaDdDemxFMGpuQWwzV1hOaW5zYm0zeENnR1g3ZHNabU5sY21KOFpMaXYxSkZ0aWZubjdYblhWbUdzZ3YxWW90SlFKR3F4aGFVS1hoWTN0eW9TWmw3eitZSlhGZUo1SWdaNXlBNEx3eUZmZEE0b2h1dXVwM2ZDZjgwY3lSVEhDTEhEMllGczJDWmtySmdaTlRRZGpyTHhOcXdyK0FPS1J0cEFubjVYUGYwZVBwT05tM0dheUdKb2JsTWxFV1FuQWttRjJ1eGVIUWtLcDdOd2kzOVVWRlg1UnlqVS9WSGk1RldvYlNWL3hNaGQ0bDE0cVNYZXVYMzZYMWRmcWgzdjNEaExici9nNHV1MTN6NVNqVjF3VittR3loV3hDOURMdmRoamxySXczK1FzZm12RFN1QzF2TWlEMVhYT0dRT09ZR0RBYzE1b3E3ZlFXYkdRU2NkajdPNFNjMThvOUFvOHJJR3RQRC9DVmdMZ0srTFU4dzNBQXdpZmNweWlIZFQwUzk3ODJMWXQxN2UxK2ZmKy9zNzVtZldqR0xtcjRKejl6b1liN3I1aEE5K0VNUnBkUHpPLzYvZjMrTnZhYnRpODdiMzNIOVMxZ0YzOERlSkwzK0R2YmZBYXJyK0JQL09kd2o4SUU1eDNseXNEWlN5SUpXQlE3VEFhQlhkbGViN2kxc242cDVtZUdoc1o2R1A1VHVQdU9ndE1HS3ZGWlhDTVUyQXBycXQ2d1lac3AxVUVPTnlZL3R6TklEZXgvL2FiYjc3OXo1UHc1OCtoZE51ZnA2QjBUS2ZmVkF4RDJhcnFtdm9OVlRlVmI2aWFxV3hWREUyRkUrU3hwV3I3MnorYVNpUlNIMlVsNTE5VlhhZmZVRXdkTHRGMHRkb2E3cVZxaHNKNTlHbk8vMjVFYjZ5OExnR2pUaWl3RkNDWHp4Sk5YZG9PZEVDc3ZUbG0zbkJzWlBpeHBocHcvWEVMRzZacW1NZVFhWjZnQUxCRXBLcG8wUzBoZGNuMjZZS0tWT0FBSjY0N2N2aktLeTVoVm9HRm1ZM3JweWZHaGdaNnVqdUxhZUFHalBQRElMc1IzOGlYcnNuV0hJYXk1VnF4bGxtazVqZkVrZzk3eFJwMnFIa2dEWVpyeGRvS1p6WGZvdkpnclZqRkdJKzlhUStsYVNVZ1AzVDhJVVZoaFVWTzZ4ZWhsRllVVnNzTGU5N0VLUDJiOWloS2t0cnlReWNmWW9XZ3ZNaVhTRjJFcWlTbHA0OC9SQU1TRkhhL2labTlIbUhWN2oyZ09rM3BIbGF0djhRUEpxSHhzWWVVb0pSa1B3ak0yLzFCT1BQZzhZZmNYOTViZFFCbFkvYTd3djhpejhFOG0wREZTbzR0b0JwbTBxV3JZYW9xMmNtUlpHS2dQekdSbk9oa21UQnorZW9TVkR3SkpodXJLM1JHRjZBeHJoRDZOa0hxTEhWdjNybzBPVDVTdXVMZHZmMnRyVmxMdlZuVnlia1BMbTNkMUYwcUtsS1hvS3MzVytxMlMvWXZiTzR1UWVzRng5VG1GM2JQejNaMlJjSjUvZGl1UGN1YnB0U0FKUFFSWGNXZjd1cWNuZCs5YmRiVWJsWU5vVStRU3F6aXNmbVp6cTVxZmlXYjNBTFNTQnh0UjRjclYvUW1veEdRTGZBVzRCNkl6S2tZZ3l5Rytmcm5JSldoWTlBdkVpTFNjVVFsZWtxRE9hdGd0bzRCVktGZFREdTN4Sll6WEdodFVlVDUyY0UxcFc0WVNxbVc3YTNiL1Q0NXJzUURiQ2wwTEllelF5T2VaMk05dnA2bEEyVmVyYjRtTGZVazRURjRpa1VZZDhsenQ2MEVIcGtrSTN5dDlEaGVpM0UrSWF2aW9tU0lZVW1hVmNPYnB0WnRsWEJKby9JV3lSSzN5RlRya2RaZFBscTV0clZka2NiMjlaVXZ6eHBhVENCUzU3RzFjM2NzU0hJdSswWjhnMktheW0ycS9IcVFGVVM0a1NIT1hTK3I5MmN6dDg1cnRuS0pKRjFDL2RySXdmS0cwYkhwdnIxam9wVExXMmE3S0V2ZDhCU3p0OHp0bU4yNHF5R21vNFJNR0RsbHRCVWRSak9WOVFpRVg2YUFCZWtYSFdmS055UWNBOVNpQ0Z6WEQzMklqL0VJUmlLdVVHKzN0cmFHbzIxaG13ZnF1WTVVbnVBKzFaU0tQbGRQckRkVWFFaTRkNEhrZTBQQ0JkcVRCS0FPcDJ4bittejhaVm5lT2VsNlZVM3lxQlduYzJTWExjRGZuYU9VMW9vSythODFjemJ4Qy82NU5ZcXlaZzRLeEo1YlEzK1lIekt3aWZWeVhwWnp3em9ValhKT3hwK1JaV2ZJN3Mydyt3TzRtWFJUQlUyeThCanBVeXZ2N0JYLy85S3U1cmVKSTRydjdPNTg3UGZhWHNjMnR2UGxPUDVJY0dMd1luQlJNQ21Kb1NFa29SRFZwRVNxRUlyVU5FUWNVQlZ4cWFwS1NJaEtsRlpWLzRCVVFybTBoMTdhQTBKQTFWTjdCZEZlZXV1aFVxVVNxWmZFN2J6Wk9IR1FXZzcxd1RPN3EvMk50YnQrKzN0djN2eGU2eDVIWmt3Zzd3MFNSaHRtQmFCOU1jcVJMQ0dEUGg4bHVBZGZLcjhvZlVJcm9jN3Z3UmRvdnQ3YkZ6RTFHVE5wR0ZuMHhvcHNXL2RtWk5jY1FNUk5jQytTTkthK0RzKytWWjh4RUxlc3E2b2M0cVFKU1ZjaWVsaUJNbjVYSkl2YTFMSlhKQnVpUU11U2F4TGlYb1Y1RzJvaCtnN25ZS2JybUIxc3N3bHNFOWFicHpqc3VVNVlhZlYvbys3L25mOE5hTHBrNVpXSXpXYTlQSDdTcnlEcDg4OCsrbkR0L2V1cmkyK2ZicHljSHA5K3JWYXArL1hSVW40d25ZeDZybVBvQkVQcFMxSEhOaFB0RXVTaDZ2ZnQ5akl2a2VVOVQwd3NMTW1LTi9RWUNxUWlPamVFUUM3TUxnQTM0UjQ2RU1mY3JyWnc1K3Y4Y0pkUUlZT2x1bUJvUGRqMGdLbTN1WUR5MDZKc3hKTnhianNmN1hRV0NXVlkrUVl6ZW9iaHJSZVFtcUJZbUcybmJNOUxlaEg1amgzaHJkZjZnT0pzdjZvaUhSa2ttNCtua2oyajhlUndUaVVNSjZFK2RqcUpNYWZXQnU3cFQ1aDZlcUJjUEZqY09TaC82OWdKeDBuWVRydlZ5TFlHSThsL0VXMzdEZEVUMnplajlrVTd3cG5YUlR2YTBkM2U0Q2lLSXpQTW4yd2xoTUk5WFlZYlRXUXpoM1JFY1FyT2pQRmhkQTR5UUxCc2FleEExQXFObmprQ1ZSTjcrZUc5K0g1V3ZzUDVia2txUzY5TGsxSlQrcXJ1eHJqRmhqd21pVTV6b3FHMGM2Z2ttWERPU0JCcGl6c3pFRldscXNadEY0UHlhbFFzMmRld0NwWDBZQTBEYnpTOUNaTzIvRWtjKzdmektVVGpYZ25Rckh1bkczTXpqZWJwWnJRUUNSZFN1ZXdBcERVZ0dtb0xBTk5NZnltb3NuVDRVQXdjTkFKckdrdEJEZkZZV2FUNTUyS1o3UDQ5M0tOQnNRenRmMGxUbWhOZHNvbHhYaVcvcTBaWWNjenZySkZVSWYyOUdWV2MxbTJEemlwTzJGRm5DVFBEbWR5eDZ0QThlcXgyN0RsYU51ankwUHlueGJsdWFqSVVaeWJ0bnBQUERiVHVxNFNvYUNianhLSW9GVStuVTdLVDhGb2ZPKzREcHV2c2dXMkhuZTZIUzF0N0c4Y2Q5K3JTUmpwQkdSSzVUUnBKcEhlMTFHOUx0alFDRWJhRGhncVRBbzFPcjRXVE9odlpnZGZDelhvSWxBNzhFUCt6NEYwRkUwb0MrWktYcEV1UW1zaDQ4YjZZbDBHYnVVSmZQbDQ2M2xNcFdhNWVMS2VQamlUeS9VVitYWFQ1ZHFZU2JoMXo0M0VYL1JDdVpON3pzRXF4RlZKSUNOdXRsbTRxRmxGZFMyVVlkOGs2Umc0aGUzN1dFLzRzREVvajllRVVaL2xKbTNKZUx3ZE1kMGV0TjVqZ0NNaFRQQllkOElSTTcyaFpUTzdEQW83QkVXNlBnOXlJQ01UY3FxQ0NVZTNyNW45dTVZbmxrYVUvdktSMWdIM3l0MFE4WWxDNjVWVzl1L2NXcWFXaDQrRUVJcHBGbDM3MERHMzlWMEpNR3FLbzZYbDM3OC9UaUNYTGlZZ3MzZy92S3I4cGI0cjZSR1BTbEhRQmRCYWhnQ3RscXFqYkttbUVhYUtTSzVZaE9BVWhOVjJVQURGMnRDV2hBTWowMmZxSm9TSklUTTdObnIwd2ZXRnk0c1JVZmNxdkZNZUd4bnA3b29XdVFoQjNkSGI5U3hmdVJpOVFQamNRbklSdklhdDhDSTRFVTZldmxLWlV3TDhHNDRnMmI5MjRQajR4TVg3OUJyTGJ2VnNybHhmOGF0VmZ1UHk4M1ZrNVB6bVJMeGJ6RTVQcmpWTUYvam5WbVBJWGZIOWgrWkx2WHpxU3I5WG1halhsUEp6ZCtuTS80dGJOZlVpaUl6OEVoUFY5bUszSUR0cnlnby95Z0RkWGs5b2NVeGJQYzFvYWhsd1lEY25jRGVRdUtyOXdjR0hFTkxzdzc4RHVjdFY5eElhS0ZBZXZLd2hqVmFDKzZTTTdwT09udXZjTTQ4ZDJ2LzBZNDJkNi9pbldRL1lqcktOVG05d3VYbU5wOTJmZXJ0SGFtbUlvcTR5dDhtWU5sOVlVUXA2N2FYYU50eS8wZndCd0d0b0lBQUI0bkdOZ1pHQmdBT0thMnl4SjhmdzJYeG00bVY4QVJSaHVWSld2Z2RKci8vLzduOFg4amprWXlPVmdZQUtKQWdCekt3MzNlSnhqWUdSZ1lBNzZud1VrWC96LzkvOFg4enNHb0FnSzZBRUF0eGdJSHdCNG5HTit3Y0RBVERiKy80OTh2WGh3Tm8zVVF0ejhueVp1SGlFWUFQY0dnNFlBQUFBQUFBQUFBRndBdWdFWUFkZ0NXQU1BQTJZRDdBUndCVG9GbGdZYUJ2b0hvZ2YrQ0ZRSWRnamFDU2dKL0FyS0M4b01iQXphRFlJT1dBOEFFQUFRVEJEMEViNFNMaExJRTA0VDJoVFVGV2dXSGhacUZzSVhFQmVNR0RnWXhCa3VHZVlhbEJ2c0hPNGR2QjR5SHFJZk5oK01JQzRnZ0NEdUlVSWhvaUlTSXJ3ak9pUG9KR0FsSmlZV0pwZ250aWdjS0pBcEJpbHNLZ0lxWmlya0s4SXNQQ3lHTE9vdGRpM3NMaFF1Wmk3Z0x6UXZWakJZTVE0eFhqSU1NeVl6ekRRK05NUTFBalU0TmVvMm9qY01PSFE0MmpuK09xNDdVanZ5UEVZOGZEeTZQVlE5MkQ1dVB2SS9sRUJhUU5CQjdrSjhRckpDN2tOMFE4WkVWa1R5UlhoR0RFWktSbkpHekVkR1NDWkltRWxDU2dSTGhFeGlUTUJORkUzS1Roa0FBQUFCQUFBQWpBRFFBQTBBQUFBQUFBSUFUZ0JlQUhNQUFBRFJDM0FBQUFBQWVKeDFrTTFLdzBBVWhjL1lIN1VGRlFXM3prb3EwdlFIWENnVUNwVjJvNXNpM1VvYTgxZlNUSm1aRnZvYXZvTVA0MHY0TEo2bVU1R0tDWlA1N3JubjNya1pBT2Y0Z3NEMnVlUGFzc0FSb3kwZjRCQTl4eVhxajQ3TDVDZkhGZFR4NHJoSy9kVnhEYmVJSGRkeGdYZDJFT1ZqUmpOOE9CWTRFNmVPRDNBaXJoeVhxRGNkbDhrOXh4VmNpbWZIVmVxQjR4b213aml1NDFwOER0UmlyZE00c2JJeHVKSGRkdWRlVHRkU1VVcHpQNVArMGlaS0c5bVhrY3B0bUdYS0M5VGNSTTAwVUxrWmgvRXk4L1V1M08yVFVKdFU1YkxqdFhmU0tNeEQ3ZHZ3YmRQZHJPS3V0WkdNdEpyTG9lc3JGMXJOd3NCNmliV0xoMWJyOTNrWVFHR0JOVFJTWGxVQ0M0a0cxUnZ1WGJUUndUMXBTb2VrYyt0S2tjTkhSc1hIa2hWSmtUR00rMXdSbzV4cVNFZEc5aER3TzJjK1FwTzFRWkUzR05NUnN6NWpGLzBudXg5UDZONjQwaUtXbk12amRQdXVFVjE1NGZTTENkNStaamRZOGJRdVZjdWF6WlM2bUVwaXVEZXY1SDFzY2pNcUFYV3Z1QlZMOVFFdHZ2LzgzemVMd29KTkFIaWNiVlBubnhzMUVMMFhiN0d2QndLRTNqc0hkeGNJaE41Nzc5M0kwcXhYOGE2a2s3VDJPZlRld3YvTXlIZm1sdy9zQjIyYmVlL05tNW1WRXl0SDErcksvMThYY1FJOVpNaFJvRVFmQTZ4aURldll3Q2Eyc0kyVHVBeVg0eFN1d0pXNENxZHhOYTdCdGJnTzErTUczSWliY0ROdXdhMjREYmZqRHR5SnUzQTM3c0c5dUE4N3VCOFBZQmQ3Mk1jWlBJaUhjQllQNHhHY3c2TjRESS9qQ1R5SnAvQTBuc0d6ZUE3UDR3VzhpSmZ3TWw3QnEzZ05yK01OdkltMzhEYmV3YnQ0RCsvakEzeUlqL0F4UHNHbitBeWY0d3Q4aVNHK2dzQUlFZ3FFQ21QVTBEaVBDUnEwTUxCd09JQkhRRVNIS1dZNHhCd1g4RFcrd2JmNER0L2pCL3lJbi9BemZzR3YrQTIvNHcvOGliL3dOeTdpbjVYOGpMSXg5SVJTdVd4c29JSHpXdExJMmtsV1UrUDZ4c2FqTjI5bm9laGNZOFVpVWs2S3NiZWRDMnZXa1JsV3RsSGt0NzBlMTNFb0dqMDJ3MGlIc1hUZXFrN0dqWU9PUXRTV0E0bFVPUlBlYURQT3VrQStYK1NzTTQrdXRCUXBLS3R0UzMxcFRmUkN4cEsxcGNCTU9CY3lhZDA4MTYwWVU1YUkrNEZpWktoUVhMQzIxYWJ3SksxWEErRlpyN0l6MDVOZDNOS0c4eU1yYWwwakltMmtURkxIb2dkQkt4bzJPc1F5WWRndUZnY2RWeDNXUGFWb3RmaVhqWldWWlREYU9ZcVpZLzQxMllWbzIyR1NWUzc0T2xlSUdJV3NTeVhtVTAyelRKdktiaS9aeFhoWWFXcFU3a1NJbEFYclk4K3BpaVU3ZnN5aUNKTStnM2s3RmMxYXNGS0xKdFRDVStISXVvWUtIZGxZV1NocWlOTkhRazU2STJGeWFvVnVzaEhYd201VG9zMFhhUU1sUWoyeXdxc2kxc0pNUWg0dDYxcGQrcnF6VndhbmplRVd1TnBHbTlPVVRDeEhuVTZ1ckovbjZuUTFYN1R4cE9RLzVDOXBiRVpLeDZJUmM3YXJ6eU5qdlk3ejdSQ0ZVVXc0dEtQekpHTW9FeGRUOVkrc09uZW1YSWhOekoyVUZFTHBxZklVNnEyR3Frdm5Ka3V0eXlXWEVUTStZMDdzcjg5UzFKcW4xazVUdzh5RVlkcFcrSG1mZTlPMXJMRlFYbFF4YkJ4L1Z4U1pqa200N1pLeVJrK29uNUNQaHJnbU9WbmpjK3F0U2NnRkhUcldueVhrUE9YTTh5aEdEV1dMbVYyNHM3TzNHWFZEUTVtS1RHTnhpcmVsVG9wSFhaUGFvaGF6a281K0phYkpGVm8vcGxqTStaSXZxU2dxM2JDcldTcG5jNG1qaldLZVFjYzN6MEtvbjhoVHJ6T09wb3kvMi84NFRkZU95Qzg1ZVNWWGp4RFQrK0NZcUhPOHJTUjhXVm5QYTZkV0RjMkdNNTBFYkMxeHVJZUp0T2hNQXVHRlR2UFlHZTVvNW15SUozaXVBMFBJdXNmSlJlWHRCVjQ4YWR2a2VFZ2JseFR6U21vNVkvOU9LeDJrN2ZnWFMxQmRRNXFuSU96czdpK25ZUGY0WWY5c1Azb3lpdGUzaU1LUGVhOWtONktWbFg4QjhqamFpZ0FBZUp4ajhON0JjQ0lvWWlNalkxL2tCc2FkSEF3Y0RNa0ZHeGxZblRZeE1ESm9nUmlidVpnWU9TQXNQZ1l3aTgxcEY5TUJvRFFua00zdXRJdkJBY0ptWm5EWnFNTFlFUml4d2FFallpTnppc3RHTlJCdkYwY0RBeU9MUTBkeVNBUklTU1FRYk9aaFl1VFIyc0g0djNVRFMrOUdKZ1lYQUF4MkkvUUFBQT09JykgZm9ybWF0KCd3b2ZmJyksXG5cdHVybCgnZGF0YTphcHBsaWNhdGlvbi9vY3RldC1zdHJlYW07YmFzZTY0LEFBRUFBQUFQQUlBQUF3QndSMU5WUWlDTEpYb0FBQUQ4QUFBQVZFOVRMekkrSUVvQ0FBQUJVQUFBQUZaamJXRndIc1RzcVFBQUFhZ0FBQWtTWTNaMElBYlgvd1FBQUxOZ0FBQUFJR1p3WjIyS2taQlpBQUN6Z0FBQUMzQm5ZWE53QUFBQUVBQUFzMWdBQUFBSVoyeDVadXJ6aGJvQUFBcThBQUNjTW1obFlXUVVBREw3QUFDbThBQUFBRFpvYUdWaEIwRUQyUUFBcHlnQUFBQWthRzEwZUNIbi8vMEFBS2RNQUFBQ01HeHZZMkhHZ2FKSUFBQ3BmQUFBQVJwdFlYaHdBaXdNb0FBQXFwZ0FBQUFnYm1GdFpiOWFwZUVBQUtxNEFBQUN6WEJ2YzNUN2tjdVBBQUN0aUFBQUJjOXdjbVZ3NVVFcnZBQUF2dkFBQUFDR0FBRUFBQUFLQURBQVBnQUNSRVpNVkFBT2JHRjBiZ0FhQUFRQUFBQUFBQUFBQVFBQUFBUUFBQUFBQUFBQUFRQUFBQUZzYVdkaEFBZ0FBQUFCQUFBQUFRQUVBQVFBQUFBQkFBZ0FBUUFHQUFBQUFRQUFBQUVENWdHUUFBVUFBQUo2QXJ3QUFBQ01Bbm9DdkFBQUFlQUFNUUVDQUFBQ0FBVURBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUZCbVJXUUFRT2dBNkl3RFV2OXFBRm9EVXdDV0FBQUFBUUFBQUFBQUFBQUFBQVVBQUFBREFBQUFMQUFBQUFRQUFBSnlBQUVBQUFBQUFXd0FBd0FCQUFBQUxBQURBQW9BQUFKeUFBUUJRQUFBQUFZQUJBQUJBQUxvaWVpTS8vOEFBT2dBNkl2Ly93QUFBQUFBQVFBR0FSZ0FBQUFCQUFJQUF3QUVBQVVBQmdBSEFBZ0FDUUFLQUFzQURBQU5BQTRBRHdBUUFCRUFFZ0FUQUJRQUZRQVdBQmNBR0FBWkFCb0FHd0FjQUIwQUhnQWZBQ0FBSVFBaUFDTUFKQUFsQUNZQUp3QW9BQ2tBS2dBckFDd0FMUUF1QUM4QU1BQXhBRElBTXdBMEFEVUFOZ0EzQURnQU9RQTZBRHNBUEFBOUFENEFQd0JBQUVFQVFnQkRBRVFBUlFCR0FFY0FTQUJKQUVvQVN3Qk1BRTBBVGdCUEFGQUFVUUJTQUZNQVZBQlZBRllBVndCWUFGa0FXZ0JiQUZ3QVhRQmVBRjhBWUFCaEFHSUFZd0JrQUdVQVpnQm5BR2dBYVFCcUFHc0FiQUJ0QUc0QWJ3QndBSEVBY2dCekFIUUFkUUIyQUhjQWVBQjVBSG9BZXdCOEFIMEFmZ0IvQUlBQWdRQ0NBSU1BaEFDRkFJWUFod0NJQUlrQWlnQ0xBQ1lBQUFFR0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUF3QUFBQUFCcUFBQUFBQUFBQUFqQUFBNkFBQUFPZ0FBQUFBQVFBQTZBRUFBT2dCQUFBQUFnQUE2QUlBQU9nQ0FBQUFBd0FBNkFNQUFPZ0RBQUFBQkFBQTZBUUFBT2dFQUFBQUJRQUE2QVVBQU9nRkFBQUFCZ0FBNkFZQUFPZ0dBQUFBQndBQTZBY0FBT2dIQUFBQUNBQUE2QWdBQU9nSUFBQUFDUUFBNkFrQUFPZ0pBQUFBQ2dBQTZBb0FBT2dLQUFBQUN3QUE2QXNBQU9nTEFBQUFEQUFBNkF3QUFPZ01BQUFBRFFBQTZBMEFBT2dOQUFBQURnQUE2QTRBQU9nT0FBQUFEd0FBNkE4QUFPZ1BBQUFBRUFBQTZCQUFBT2dRQUFBQUVRQUE2QkVBQU9nUkFBQUFFZ0FBNkJJQUFPZ1NBQUFBRXdBQTZCTUFBT2dUQUFBQUZBQUE2QlFBQU9nVUFBQUFGUUFBNkJVQUFPZ1ZBQUFBRmdBQTZCWUFBT2dXQUFBQUZ3QUE2QmNBQU9nWEFBQUFHQUFBNkJnQUFPZ1lBQUFBR1FBQTZCa0FBT2daQUFBQUdnQUE2Qm9BQU9nYUFBQUFHd0FBNkJzQUFPZ2JBQUFBSEFBQTZCd0FBT2djQUFBQUhRQUE2QjBBQU9nZEFBQUFIZ0FBNkI0QUFPZ2VBQUFBSHdBQTZCOEFBT2dmQUFBQUlBQUE2Q0FBQU9nZ0FBQUFJUUFBNkNFQUFPZ2hBQUFBSWdBQTZDSUFBT2dpQUFBQUl3QUE2Q01BQU9nakFBQUFKQUFBNkNRQUFPZ2tBQUFBSlFBQTZDVUFBT2dsQUFBQUpnQUE2Q1lBQU9nbUFBQUFKd0FBNkNjQUFPZ25BQUFBS0FBQTZDZ0FBT2dvQUFBQUtRQUE2Q2tBQU9ncEFBQUFLZ0FBNkNvQUFPZ3FBQUFBS3dBQTZDc0FBT2dyQUFBQUxBQUE2Q3dBQU9nc0FBQUFMUUFBNkMwQUFPZ3RBQUFBTGdBQTZDNEFBT2d1QUFBQUx3QUE2QzhBQU9ndkFBQUFNQUFBNkRBQUFPZ3dBQUFBTVFBQTZERUFBT2d4QUFBQU1nQUE2RElBQU9neUFBQUFNd0FBNkRNQUFPZ3pBQUFBTkFBQTZEUUFBT2cwQUFBQU5RQUE2RFVBQU9nMUFBQUFOZ0FBNkRZQUFPZzJBQUFBTndBQTZEY0FBT2czQUFBQU9BQUE2RGdBQU9nNEFBQUFPUUFBNkRrQUFPZzVBQUFBT2dBQTZEb0FBT2c2QUFBQU93QUE2RHNBQU9nN0FBQUFQQUFBNkR3QUFPZzhBQUFBUFFBQTZEMEFBT2c5QUFBQVBnQUE2RDRBQU9nK0FBQUFQd0FBNkQ4QUFPZy9BQUFBUUFBQTZFQUFBT2hBQUFBQVFRQUE2RUVBQU9oQkFBQUFRZ0FBNkVJQUFPaENBQUFBUXdBQTZFTUFBT2hEQUFBQVJBQUE2RVFBQU9oRUFBQUFSUUFBNkVVQUFPaEZBQUFBUmdBQTZFWUFBT2hHQUFBQVJ3QUE2RWNBQU9oSEFBQUFTQUFBNkVnQUFPaElBQUFBU1FBQTZFa0FBT2hKQUFBQVNnQUE2RW9BQU9oS0FBQUFTd0FBNkVzQUFPaExBQUFBVEFBQTZFd0FBT2hNQUFBQVRRQUE2RTBBQU9oTkFBQUFUZ0FBNkU0QUFPaE9BQUFBVHdBQTZFOEFBT2hQQUFBQVVBQUE2RkFBQU9oUUFBQUFVUUFBNkZFQUFPaFJBQUFBVWdBQTZGSUFBT2hTQUFBQVV3QUE2Rk1BQU9oVEFBQUFWQUFBNkZRQUFPaFVBQUFBVlFBQTZGVUFBT2hWQUFBQVZnQUE2RllBQU9oV0FBQUFWd0FBNkZjQUFPaFhBQUFBV0FBQTZGZ0FBT2hZQUFBQVdRQUE2RmtBQU9oWkFBQUFXZ0FBNkZvQUFPaGFBQUFBV3dBQTZGc0FBT2hiQUFBQVhBQUE2RndBQU9oY0FBQUFYUUFBNkYwQUFPaGRBQUFBWGdBQTZGNEFBT2hlQUFBQVh3QUE2RjhBQU9oZkFBQUFZQUFBNkdBQUFPaGdBQUFBWVFBQTZHRUFBT2hoQUFBQVlnQUE2R0lBQU9oaUFBQUFZd0FBNkdNQUFPaGpBQUFBWkFBQTZHUUFBT2hrQUFBQVpRQUE2R1VBQU9obEFBQUFaZ0FBNkdZQUFPaG1BQUFBWndBQTZHY0FBT2huQUFBQWFBQUE2R2dBQU9ob0FBQUFhUUFBNkdrQUFPaHBBQUFBYWdBQTZHb0FBT2hxQUFBQWF3QUE2R3NBQU9ockFBQUFiQUFBNkd3QUFPaHNBQUFBYlFBQTZHMEFBT2h0QUFBQWJnQUE2RzRBQU9odUFBQUFid0FBNkc4QUFPaHZBQUFBY0FBQTZIQUFBT2h3QUFBQWNRQUE2SEVBQU9oeEFBQUFjZ0FBNkhJQUFPaHlBQUFBY3dBQTZITUFBT2h6QUFBQWRBQUE2SFFBQU9oMEFBQUFkUUFBNkhVQUFPaDFBQUFBZGdBQTZIWUFBT2gyQUFBQWR3QUE2SGNBQU9oM0FBQUFlQUFBNkhnQUFPaDRBQUFBZVFBQTZIa0FBT2g1QUFBQWVnQUE2SG9BQU9oNkFBQUFld0FBNkhzQUFPaDdBQUFBZkFBQTZId0FBT2g4QUFBQWZRQUE2SDBBQU9oOUFBQUFmZ0FBNkg0QUFPaCtBQUFBZndBQTZIOEFBT2gvQUFBQWdBQUE2SUFBQU9pQUFBQUFnUUFBNklFQUFPaUJBQUFBZ2dBQTZJSUFBT2lDQUFBQWd3QUE2SU1BQU9pREFBQUFoQUFBNklRQUFPaUVBQUFBaFFBQTZJVUFBT2lGQUFBQWhnQUE2SVlBQU9pR0FBQUFod0FBNkljQUFPaUhBQUFBaUFBQTZJZ0FBT2lJQUFBQWlRQUE2SWtBQU9pSkFBQUFpZ0FBNklzQUFPaUxBQUFBaXdBQTZJd0FBT2lNQUFBQUpnQUFBQU1BQUFBQUE4SUIwZ0FNQUJrQUpnQTZRRGNJQkFjQ0JnVUFBUUVBVkFnRUJ3SUdCUUFBQVZnRkF3SUJBQUZNR3hvT0RRRUFJU0FhSmhzbUZCTU5HUTRaQndZQURBRU1DUVVVS3hNeUhnRVVEZ0VpTGdFMFBnRWhNaDRCRkE0QklpNEJORDRCSVRJZUFSUU9BU0l1QVRRK0Fab2ZOUjhmTlQ0MUh4ODFBWGtmTlI4Zk5UNDFIeDgxQVhrZ05SOGZOVDgxSHg4MUFkRWZOVDQxSHg4MVBqVWZIelUrTlI4Zk5UNDFIeDgxUGpVZkh6VStOUjhBQUFBQkFBRC90d09iQXdVQUx3QTBRREVBQWdFQ2J3QUZBQVZ3QXdFQkFBQUJWQU1CQVFFQVdBUUdBZ0FCQUV3Q0FDb25JaDhhRnhJUENnY0FMd0l2QndVVUt3RWhNalk5QVRRbUl5RWlKalVSTkNZckFTSUdGUkVVQmlNaElnWWRBUlFXTXlFeUZoVVJGQlk3QVRJMk5SRTBOZ0pCQVQwTUVSRU0vc01KQ2hJTE9nc1NDZ24rd3d3UkVRd0JQUWtLRWdzNkN4SUtBU1FTQ3pvTEVnb0pBVDBNRVJFTS9zTUpDaElMT2dzU0Nnbit3d3dSRVF3QlBRa0tBQUFBQUFFQUFQLzVBMWNDd1FBdkFDaEFKUUlCQUFFQWJ3VUJBd1FEY0FBQkJBUUJWQUFCQVFSWUFBUUJCRXdURXg4VEV4WUdCUm9yQVRjMk5DOEJKaUlQQVFZaUx3RW1JZzhCQmhRZkFSWVVEd0VHRkI4QkZqSS9BVFl5SHdFV01qOEJOalF2QVNZMEFsVDZDUWttQ1JjSi9BVVFCZndKRndrb0NRbjhCUVgrQ1Frb0NSY0ovQVVRQnZzSkZ3a29DUW42QlFGcS9BZ1hDU2dKQ2Z3RkJmNEpDU2dKRnduN0JoQUYvZ2tYQ1NnSkNmd0dCdndKQ1NnSkZ3bjhCUkFBQlFBQUFBQUREQUtLQUNjQU53QkhBRmNBWndCMFFIRmdVRUF3QkFNSldFZzRLQVFJQkFKSEFBRUFBZ2tCQW1BUUFRQVBEUXNEQ1FNQUNXQUFBd0FFQ0FNRVlBNE1DZ01JQlFjSVZBQUZBQVlIQlFaZ0Rnd0tBd2dJQjFnQUJ3Z0hUQUlBWkdKY1dsUlNURXBFUWp3Nk5ESXNLaUlmSEJvWEZSUVNEdzBNQ2djRkFDY0NKeEVGRkNzQklTSUdIUUVqSWdZVUZqc0JGU01pQmhRV093RVZJeUlHRkJZN0FSVVVGak1oTWpZMUVUUW1BUlFHS3dFaUpqMEJORFk3QVRJV0ZSY1VCaXNCSWlZOUFUUTJPd0V5RmhVWEZBWXJBU0ltUFFFME5qc0JNaFlWRnhRR0t3RWlKajBCTkRZN0FUSVdGUUxOL29nWkpCUVFHQmdRRkJRUUdCZ1FGQlFRR0JnUUZDVVlBWGdaSmlYK3h3VUZLQVFHQmdRb0JRVlFCUVVVQkFZR0JCUUZCV1FGQlNnRUJnWUVLQVVGVUFVRkZBUUdCZ1FVQlFVQ2lpTVhGaGNoR0dRWElSaGtGeUVZRWhjbktSa0I0QmdlL21ZRUJnWUUzQVVGQlFYY0JBWUdCTndGQlFVRjNBUUdCZ1RjQlFVRkJkd0VCZ1lFM0FVRkJRVUFBZ0FBLzVBREt3TXZBREVBUVFBK1FEc0FBZ0VBQVFJQWJRWUJBQVVCQUFWckFBTUFBUUlEQVdBQUJRUUVCVlFBQlFVRVdBQUVCUVJNQWdBL1BEYzBJeUVhRnhFUEFERUNNUWNGRkNzbEl5SW1QUUUwTmpjMk56WTNOaTRCSnlZR0J3WUhEZ0VyQVNJbU56NEJOejRCRng0QkZ4WVhGZzRCQnc0QkhRRVVCaGNVQmlzQklpWTlBVFEyT3dFeUZoVUNJbUFMRUVjNkpCb2lCZ1VuUnlzZk94Z21CZ0lQREdBTkVRRUdNQ2N1YzBCT2hpZ3BBd014WGo0TkVCTVRFUXhnQ3hJU0MyQU1FWGNRQ3gwOVpCUU5HeW92SzAwd0FRRVdGU015Q1F3U0RUWmhKeXN0QVFOUlFrUlBRbmxjRndVVkRCME1FY29MRWhJTFlRc1JFUXNBQUFRQUFQK1FBNXNETEFBbkFEY0FSd0JYQUdOQVlBNEJBQUFOQWdBTllBQUJBQUlNQVFKZ0FBd0FDd1FNQzJBQUF3QUVDZ01FWUFBS0FBa0ZDZ2xnQ0FFRkFBWUhCUVpnQ0FFRkJRZFlBQWNGQjB3Q0FGVlNURXBFUWowNk5USXNLaUlmSEJvWEZSUVNEdzBNQ2djRkFDY0NKdzhGRkNzQklTSUdIUUVqSWdZVUZqc0JGU01pQmhRV093RVZJeUlHRkJZN0FSVVVGak1oTWpZMUVUUW1BeFFHSXlFaUpqMEJORFl6SVRJV0ZUY1VCaU1oSWlZOUFUUTJNeUV5RmhVM0ZBWWpJU0ltUFFFME5qTWhNaFlWQTA3OXZ4OHVPUmtoSVJrNU9Sa2hJUms1T1JraElSazVMaDhDUVNBdExhWUxDZjd6Q0FzTENBRU5DUXNtQ3dqK3Bna0xDd2tCV2dnTEp3c0ovbGtJQ3dzSUFhY0pDd01zTFNBNklUSWdtaUV5SVpraE1pRTZIeTR0SUFNQ0lDMzljZ2tLQ2drbUNRb0tDWFFKQ3dzSkpna0tDZ21hQ1FvS0NYTUpDd3NKQUFBQUFBTUFBQUFBQTVzQ3VBQVBBQjhBTHdCQlFENEFBUVlCQUFNQkFHQUFBd2NCQWdVREFtQUFCUVFFQlZRQUJRVUVXQWdCQkFVRVRDSWdFaEFDQUNvbklDOGlMeG9YRUI4U0h3b0hBQThDRHdrRkZDc0JJU0ltUFFFME5qTWhNaFlkQVJRR0F5RWlKajBCTkRZeklUSVdIUUVVQmdNaElpWTlBVFEyTXlFeUZoMEJGQVlEZnZ6c0RCRVJEQU1VREJFUkRQenNEQkVSREFNVURCRVJEUHpzREJFUkRBTVVEQkVSQWtVUkREa01FUkVNT1F3Ui91RVNDem9LRVJJTE9nb1IvdDRSRERrTUVSRU1PUXdSQUFJQUFQK1FBOElETFFBZkFFUUFTRUJGQUFRR0JHOEFCZ1VHYndnQkJRQUZid0lKQWdBSEFHOEFCd0VIYndBQkF3TUJWQUFCQVFOWUFBTUJBMHdDQUQ4K05qTXVMU29wSWlFYUZ4SVBDZ2NBSHdJZkNnVVVLeVVqSWdZZEFSUUdJeUVpSmowQk5DWXJBU0lHRlJFVUZqTWhNalkxRVRRbUFTWWlCd0VHRkI4QkZqSS9BVFl5RmhVUkZCWTdBVEkyTlJFME5oOEJGakkvQVRZMEp3T2xPZ3NTRVF6OWhnd1JFZ3M2Q3hFdEh3TUNJQzBTL2xjSUdBaisvQWdJS1FnWUNHd0ZFUXdRQ3pvTEZCWUtiQWtYQ1NnSUNQNFNDOEFNRVJFTXdBc1NFZ3YrL0NBdExoOEJCQXNTQWlZSUNQNzhDQmdJS0FrSmF3WUxDUDVvQ3hJVENnR1dEUWtKYXdrSktBa1hDQUFEQUFEL2tBUENBeXdBRkFBcEFEOEFSRUJCQUFRREJRTUVCVzBBQlFJREJRSnJCZ0VBQUFNRUFBTmdCd0VDQVFFQ1ZBY0JBZ0lCV0FBQkFnRk1GaFVCQURvNU1pOGdIeFVwRmlrTENnQVVBUlFJQlJRckFTSUhCZ2NHRkJjV0Z4WXlOelkzTmpRbkppY21BeUluSmljbU5EYzJOell5RnhZWEZoUUhCZ2NHQXlZOUFUUW1Ld0VpQmgwQkZCOEJGakkvQVRZMEp3SDBmV3RwUFQ4L1BXbHIrbXhvUGo4L1BtaHNmVjFSVGk4dkx5OU9VYnBSVGk4dkx5OU9VUndIRWdzNkN4SUlqZ2tYQ1NnSkNRTXNQejVvYlBwc2FENC9QejVvYlBwc2FENC8vTmd2TDA1UnVsRk9MeTh2TDA1UnVsRk9MeThCVmdnTnVRc1NFZ3ZwQ1F5T0NRa29DUmNKQUFBREFBRC84Z1BvQXNzQUtBQlBBSHNBTFVBcU9nWUNCQUFCUndJQkFBUUFid0FFQVFSdkF3RUJCUUZ2QUFVRlpuUnhYbDFLUnpjMUh4MHBCZ1VWS3dFbU5UUTNOamNtSnlZaklnY09BUlVVRnhZVkZBY0dCd1lIQmdjZUFUc0JNalkzTmpjMk56NEJKU1luSmpVME56WTFOQ1luSmlNaUJ3WUhGaGNXRlJRSEJoWVhGaGNlQVRzQk1qWTFOaWNtQlNZbkpqVTBOejRCTlRRbUp5WWlCdzRCRlJRV0Z4WVZGQWNHQndZSEJnY1VGak1oTWpZMUppY21KeVlCTWlrYUdTd1FHeDBrS1I4ZElDc2NDUTBoUFNBcEFRSWxIa0FIRGdRVktSd3VEUVlDS2lFTUNod3JIeDBmS2lRZEhCRXNHUm9wQndjTVpDUUVEZ2RBSGlVQkp5RCsxU1FPRENFWEdTSWdJMW9qSUNJWkZ5RUxEaVZJSUM4QkxpRUJrQ0V1QVJZVEpSa0JPRDFOUVRjMEloc1BFUlVUUkNoQ0pSNFlFUXdSRGhzZEpTc2hLZ2dISmg4V0dBWWFNUThQREJJY0dpZEFLRVFURlJFUEd5STBOMEZOUFF3WkJqQkRCd2dxSVNzbEhYRVFFUTRTSFI4V095SXNTaFVYRnhWS0xDSTdGaU1aRkF3UkVCOFpKQzhqTWpJaklCb1hGZzRBQUFJQUFQKzNBOElEQlFBWEFDY0FQRUE1QUFFREFXOEZBUUFFQWdRQUFtMEFBZ0p1QmdFREJBUURWQVlCQXdNRVdBQUVBd1JNR1JnQ0FDRWVHQ2NaSnhJUENnY0FGd0lYQndVVUt3RWhJaVl2QVM0Qkt3RWlCaFVSRkJZeklUSTJOUkUwSmljaElnWWZBUll6SVRJWEZqWTFOQ1lEZGY1TEZDUUxRd3NrRllNZ0xDd2dBd0lnTFMwZy9qQUZCUU1lQmd3QnB5SVpCZ3d0QWtVVkVYUVNGQzBnL1V3Z0xTMGdBZlFnTFpvSkJUUUxEQU1JQnlBdEFBQUVBQUQveWdPYkF2SUFEd0FmQUM4QVB3QlRRRkFJQVFBQUFRSUFBV0FKQVFJQUF3WUNBMkFMQVFZQUJ3UUdCMkFLQVFRRkJRUlVDZ0VFQkFWWUFBVUVCVXd5TUNJZ0VoQUNBRG8zTUQ4eVB5b25JQzhpTHhvWEVCOFNId29IQUE4Q0R3d0ZGQ3NCSVNJR0hRRVVGak1oTWpZOUFUUW1CeUVpQmgwQkZCWXpJVEkyUFFFMEpnTWhJZ1lkQVJRV015RXlOajBCTkNZbklTSUdIUUVVRmpNaE1qWTlBVFFtQTM3ODdBd1JFUXdERkF3UkVRejloZ3dSRVF3Q2Vnd1JFUXo5aGd3UkVRd0NlZ3dSRVF6ODdBd1JFUXdERkF3UkVRTHlFZ3M2Q3hFUkN6b0xFdWNSRERrTUVSRU1PUXdSL2pNU0N6b0xFaElMT2dzUzVoRUxPZ3dSRVF3NkN4RUFBQUFIQUFBQUFBTWdBb29BRHdBZkFDOEFQd0JQQUY4QWJ3Q09RSXR0WlFJTkRFeEVQRFFzSkIwVkRRVUtBQUZkVlFJTENnTkhDQVlFRHdJRkFRMEFEUUVBYlJJSkVRY1FCUU1PQ0FBS0RRQUtheFFCREFBTkFRd05ZQk1CQ2dzTENsUVRBUW9LQzFnQUN3b0xUR0ZnVVZCQVFEQXdJQ0FSRUFFQWFXZGdiMkZ2V1ZkUVgxRmZRRTlBVGtoR01EOHdQamcySUM4Z0xpZ21HUmNRSHhFZkNRY0FEd0VQRlFVVUt6Y3pNalkxRVRRbUt3RWlCaFVSRkJZQkl5SUdGUkVVRmpzQk1qWTFFVFFtQVRJMk5SRTBKaXNCSWdZVkVSUVdPd0V5TmpVUk5DWXJBU0lHRlJFVUZqTWpNalkxRVRRbUt3RWlCaFVSRkJZekJTRWlCaDBCRkJZeklUSTJQUUUwSmdNaElnWWRBUlFXTXlFeU5qMEJOQ2JjTWdnTURBZ3lDQXdNQWpneUNBd01DRElJREF6Ky9nZ01EQWc4Q0F3TUNMUUlEQXdJRkFnTURBandDQXdNQ0JRSURBd0lBWnI5MEFnTURBZ0NNQWdNREFqOTBBZ01EQWdDTUFnTURMNE1DQUUyQ0F3TUNQN0tDQXdCWGd3SS9zb0lEQXdJQVRZSURQNmlEQWdCTmdnTURBait5Z2dNREFnQk5nZ01EQWoreWdnTURBZ0JOZ2dNREFqK3lnZ01QQXdJRkFnTURBZ1VDQXdDQ0F3SUZBZ01EQWdVQ0F3QUFBQUFBd0FBQUFBRElRSjNBQndBTEFCV0FGVkFVakVCQkFZbEhRSUNBd0pIQUFVSEJnY0ZCbTBBQmdRSEJnUnJDQUVBQUFjRkFBZGdBQVFBQXdJRUEyQUFBZ0VCQWxRQUFnSUJXQUFCQWdGTUFRQlJUMGxHUVVBMU15a25JUjhVRWdBY0FSd0pCUlFyQVNJSEJnY0dGUlFYRmc4QkJoWS9BVFlYRmpNeU56WTNOalFtSnlZREZBWXJBU0ltUFFFME5qc0JNaFlWTnc0QkhRRVVCaXNCSWlZOUFUUStBVGMyTGdJSEJnY09BU3NCSWlZM05qYytBUmNlQWhjV0JnSDBVa1pES0NrbUJRTWNCQklNV0FrSVNGWlNSa01vS1ZKRFJqUU1DQlFJREF3SUZBZ01DQU1GREFnVUNBd2JLZ2NRQlNJdUZBMERBZ29IRlFrTUFRZ2FFUzBaSHpVZ0FRSXRBblltSlVCQlRFaEJDQWhaREJFRUh3TUZLaVlsUUVHWWdTVW0vajRJREF3SUZBZ01EQWhyQVFVRUVBZ05EUWdRRmlVUEN4VXVId0VTRFE4SENROEpKaGtSRWdFQklEVWZKMEFBQS8vKy83Y0Q2d01KQUE0QUZ3QW5BRGhBTlNBQkF3UUJSd0FFQXdSdkFBTUFBZ0VEQW1BRkFRRUFBQUZVQlFFQkFRQllBQUFCQUV3UUR5UWlIUm9VRXc4WEVCYzVCZ1VWS3lVQkxnRUdCd0VHSGdFeklUSStBU1VpSmpRMk1oWVVCamNVQmlzQklpWTlBVFEyT3dFeUZoVUQzZjVIQ3lVbEMvNUlEUVlnRndOd0dDRUcvZ2taSVNFeUlTRWhDd2hOQ1FzTENVMElDeUVDeHhNT0RoUDlPUll5SWlJeVJpRXlJQ0V3SXEwSkNnb0orZ2dMQ3dnQUFBSUFBUCtRQThJRExRQWRBQ29BSkVBaEJBRUNBd0p2QUFNQkEyOEFBUUFCYndBQUFHWWZIaVVrSGlvZktpc3pCUVVXS3lVVkZBWWpJU0ltUFFFME56WS9BVFlYRmpNeU5qYzJId0VXRnhZWEZnRXlIZ0VVRGdFaUxnRTBQZ0VEd2pjbS9SNGxOMUE1ZEF3UURVeFpLMVVtRFE4TVRTNUFJQ2YrTWo1cVBUMXFmR285UFdvWEtpVTROeVlxUzBBdE13WUZCeklhR0FjRkJpRWJKQ2N2QXVCRWRZcDFSRVIxaW5WRUFBQUJBQUQvN0FMYkFzd0FEQUFLdHdBQUFHWVRBUVVWS3lVUk5ENEJGd0VXRkFjQkJpWUJEUTRVQ1FHWERBeithUTRkQ2dLb0NnNEJCLzZ6Q0I4Si9xOEtEZ0FBQUFJQUFQK1FBOElETUFBakFDOEFPMEE0QUFFQUFXOENCZ0lBQUFNRUFBTmdCd0VFQlFVRVZBY0JCQVFGV0FBRkJBVk1KaVFDQUNzcUpDOG1MeDRiRmhNTUNnQWpBaU1JQlJRckpTTWlKajBCTkNjbUp5WUhCZ2NPQVIwQkZBWXJBU0lHSFFFVUZqTWhNalk5QVRRbUJTTWlCaGNlQVRJMk56WW1BM1VLR3lnc0xFbExWMUZGUWswbkhBb2ZMUkVMQTJJTEVpMyt2YndKREFJSFFGUkFDQUVNMXlnYzNWWkpSeWdwQXdRdEs0OVQxUndtTGlBZEN4QVJEQjBmTGRNUENDZzFOaWNKRGdBQUFRQUEvNUFEeEFNc0FDSUFMRUFwQUFVQUJXOEVCZ0lBQWdCdkFBSUJBbThEQVFFQlpnRUFIUndWRkJBT0N3b0hCQUFpQVNJSEJSUXJBU01SRkFZckFTSW1OUkVqRVJRR0t3RWlKalVSSXlJbUp5WTNBVFl5RndFV0J3WURybUFLQ2NBSkMrWUxDY0FJQzJBR0N3RUVDQUc3QlJJRUFib0lCQU1CUy81WkNRc0xDUUZIL3JrSkN3c0pBYWNHQlF3S0Fib0dCdjVHQ0E0TEFBQUFCQUFBLzVBRHdnTXNBQlVBTEFCREFGb0FrMEFRVWtrT0JRUUFBVHN5SkJzRUF3SUNSMHV3Q1ZCWVFCa0dBUUVBQVc4SENBSUFBZ0J2QlFrQ0FnTUNid1FCQXdObUcwdXdDbEJZUUIwQUJnRUdid0FCQUFGdkJ3Z0NBQUlBYndVSkFnSURBbThFQVFNRFpodEFHUVlCQVFBQmJ3Y0lBZ0FDQUc4RkNRSUNBd0p2QkFFREEyWlpXVUFiR0JZQ0FGbFdURXRDUHpVMElpRVdMQmdzREFzQUZRSVZDZ1VVS3dFaE1qWXZBVGMyTkM4QkpnWVBBU2NtQmhVUkZCWUhJU0lHSHdFSEJoUWZBUll5UHdFWEhnRTJOUkUwSmhjUkZCWS9BUmNXTWo4Qk5pWXZBVGMrQVNZaklTSUdKeEUwSmc4Qkp5WWlEd0VHRkI4QkJ3NEJGak1oTWpZQ09RRW9Ed1lMWHEwSUNFY0lGQW10WWdzWkZJRCsyQThHQzE2dEJ3ZEhDQlFKcjJJR0VRd1ZZaGtMWUs4SUZnZEhCZ0VIclY0SUFnb0ovdGNLRWswYUMyQ3ZCeFlJUndjSHIxNElCQW9LQVNZS0Z3R0ZHUXRncndnV0IwY0dBUWV0WGd3SER2N1hDaEpOR2d0Z3J3Y1dDRWNIQjY5ZUNBUUtDZ0VtQ2hjZi90Z1BCZ3RlclFjSFJ3Z1VDYTFpQnhJTUZZQUJLQThHQzE2dENBaEhCeFVKcjJJR0VBd1VBQU1BQVAra0E4QURHZ0FyQURnQVhBQ1NRQW81QVFRSFBnRUZCQUpIUzdBUlVGaEFMZ0FBQWdCdkNRRUhDQVFJQjJVR0FRUUZCUVJqQ2dFQ0FBZ0hBZ2hnQUFVQkFRVlVBQVVGQVZrREFRRUZBVTBiUURBQUFBSUFid2tCQndnRUNBY0ViUVlCQkFVSUJBVnJDZ0VDQUFnSEFnaGdBQVVCQVFWVUFBVUZBVmtEQVFFRkFVMVpRQm90TEZwWVZWSlBUVWhHUTBBOU96TXlMRGd0T0Nja0hRc0ZGU3NsTkRZM05qYzJOelkzUGdFdUFRNEJCd1lYRmhjV0Z4WUhCZ2NHRHdFR0J3WUhCaDRCTXlFeU5pY3VBUUVpRGdFVUhnRXlQZ0UwTGdFWEZBWXJBUlVVQmlzQklpWTlBU01pSmowQk5EWTdBVFUwTmpzQk1oWWRBVE15RmhVQnBSZ1VEUkVLRkJzTUpBMHRab0JoRkJnTkRUSVpEQTRLQ0JrUElBMUtKemtMQnhrNkpnRkhDd3NISkNjQk5ENXJQajVyZkdzK1BtczNEQWs0REFrbUNRazdDUWtKQ1RzSkNTWUpERGdKRElzbVZDTVhGQTBWSFJFMWkzVkNBMGc3UkVSSkx4Z2FJQndXRWdvUEJpRWVMVHNrUlNzV0NDcG9BUjArYW54cVB6NXJmR28rK2dnTE9nZ0xDZ2s2Q2drbkNRbzZDUW9MQ0RvTENBQUpBQUQvdHdPYkF3VUFEd0FmQUM4QVB3QlBBRjhBYndCL0FJOEFpRUNGR0F3VkJoSUZBQTBIQWdFRUFBRmdHaEFYQ2hRRkJCRUxBZ1VDQkFWZ0dRNFdDQk1GQWdNREFsUVpEaFlJRXdVQ0FnTllEd2tDQXdJRFRJS0FjbkJpWUZKUVFrQXlNQ0lnRWhBQ0FJcUhnSStDajNwM2NIOXlmMnBuWUc5aWIxcFhVRjlTWDBwSFFFOUNUem8zTUQ4eVB5b25JQzhpTHhvWEVCOFNId29IQUE4Q0R4c0ZGQ3NUSXlJR0hRRVVGanNCTWpZOUFUUW1BeU1pQmgwQkZCWTdBVEkyUFFFMEpnTWpJZ1lkQVJRV093RXlOajBCTkNZQkl5SUdIUUVVRmpzQk1qWTlBVFFtQXlNaUJoMEJGQlk3QVRJMlBRRTBKZ01qSWdZZEFSUVdPd0V5TmowQk5DWUJJeUlHSFFFVUZqc0JNalk5QVRRbUF5TWlCaDBCRkJZN0FUSTJQUUUwSmdNaklnWWRBUlFXT3dFeU5qMEJOQ2I2Y3hraElSbHpHU0VoR1hNWklTRVpjeGtoSVJsekdTRWhHWE1aSVNFQkczUVlJU0VZZEJnaElSaDBHQ0VoR0hRWUlTRVlkQmdoSVJoMEdDRWhBUnR6R1NFaEdYTVpJU0VaY3hraElSbHpHU0VoR1hNWklTRVpjeGtoSVFNRklSbHpHU0VoR1hNWklmMlpJUmx6R1NFaEdYTVpJUUV6SVJoMEdDRWhHSFFZSVFFMElSbHpHU0VoR1hNWklmMlpJUmx6R1NFaEdYTVpJUUV6SVJoMEdDRWhHSFFZSVFFMElSbHpHU0VoR1hNWklmMlpJUmx6R1NFaEdYTVpJUUV6SVJoMEdDRWhHSFFZSVFBQUFBVUFBUCtRQTVzRExBQVJBQ0VBTVFCQkFGRUFZRUJkT2pJQ0FnZ0JSd0FDQ0FjSUFnZHRDd0VBQUFFREFBRmdBQU1BQmdVREJtQUFCUUFLQ1FVS1lBQUpBQWdDQ1FoZ0FBY0VCQWRVQUFjSEJGZ0FCQWNFVEFJQVQweEhSRDg4TnpRdkxDY2tIeHdYRkF3S0J3VUFFUUlSREFVVUt3RWhJZ1lkQVNFeUZoVVJNekkyTlJFMEpnTTBKaU1oSWdZVkVSUVdNeUV5TmpVQkZBWXJBU0ltUFFFME5qc0JNaFlWRXhRR0l5RWlKajBCTkRZeklUSVdGVGNVQmlNaElpWTlBVFEyTXlFeUZoVURUdjRNSHk0QnppQXRKaUF0TFpNdElQNE1JQzB1SHdIMElDMytwZ3NKbVFrTEN3bVpDUXVhQ3duK3pRa0xDd2tCTXdrTFRBb0ovb0FKQ3dzSkFZQUpDZ01zTFNBbkxTRDk1aTBnQWtFZ0xmN3lJQzB0SVAyL0h5NHVId0c3Q1FvS0NTWUpDZ29KL3FZSUN3c0lKd2dMQ3doekNRb0tDU1lKQ3dzSkFBTUFBUC9kQThJQzN3QVBBQ01BTEFCTFFFZ0FBd1lGQmdNRmJRZ0JCUVFHQlFSckFBUUNCZ1FDYXdBQUFBWURBQVpnQndFQ0FRRUNWQWNCQWdJQldBQUJBZ0ZNSlNRU0VDa29KQ3dsTEI4ZUZ4WVFJeElqTlRJSkJSWXJBVFFtSXlFaUJoVVJGQll6SVRJMk5TY2hJaVkzRXpZeUh3RWVBVDhCTmpJZkFSWUdBeUltTkRZeUZoUUdBOEl0SVB6K0h5MHRId01DSUMzSS9kSVJFUW1wQmhVR1pnVVdCVk1HRlFhWUNBMUNJQzB0UUMwdEFwSWdMUzBnL1pnZ0xTNGZUUjRQQVNZS0NxOEpBZ2wzQ1FueURoa0JXaTFBTFMxQUxRQUFBQUFEQUFEL2tBUENBeXdBQWdBeUFGY0FYa0JiRUFFQkFnRkhBQVlEQ0FNR0NHMEFDQWNEQ0FkckNnRUhBZ01IQW1zQUNRRUpjQXNCQUFBREJnQURZQVFCQWdFQkFsUUVBUUlDQVZnRkFRRUNBVXdGQTFkV1RrdEdSVUpCT2prdEtpVWlIUm9WRWcwS0F6SUZNZ3dGRkNzM05SVUJJU0lHRlJFVUZqc0JNalk5QVRRbUt3RWlKalVSTkRZeklUSVdGUkVVQmlzQklnWWRBUlFXT3dFeU5qVVJOQ1lETnpZMEx3RW1JZzhCQmhRZkFSWXlQd0UyTWhZVkVSUVdPd0V5TmpVUk5EWWZBUll5bWdMYi9QNGZMUzBmNXdrS0NnbWpEQkVSREFKNkRCRVJES01KQ2dvSjV5QXRMY1FwQ0FqekNCZ0k4QWtKS0FnWUNGa0ZFUXdRQ3pvTEZCWUtXUWdhc1F3WUFvY3RJUDFMSUMwTENVMElDeEVNQWVBTUVSRU0vaUFNRVFzSVRRa0xMaDhDdFNBdC9ZMG9DUmNJOHdnSThRZ1hDU2dKQ1ZnR0N3aitwd3NTRWdzQldRMEpDVm9IQUFBREFBRC9rZ09sQXlvQURBQmFBR2NBZEVCeEtoMENDUUlPQVFFQVVVUUNCd2dEUndRQkFnTUpBd0lKYlFvQkFBa0JDUUFCYlFBQkNBa0JDR3NBQndnRkNBY0ZiUUFGQmdnRkJtc0FBd0FKQUFNSllBc0JDQWNHQ0ZRTEFRZ0lCbGdBQmdnR1RGeGJBUUJpWVZ0blhHZFZVMHhKUWtBdkxTVWlHUmdIQmdBTUFRd01CUlFyQVNJT0FSUWVBVEkrQVRRdUFRRW5OalFuTno0Qkx3RXVBU01pRHdJbUx3RXVBU3NCSWdZUEFRWUhMd0VtSXlJR0R3RUdGaDhCQmhRWEJ3NEJId0VlQVRNeVB3RVdId0VlQVRzQk1qWS9BVFkzRnhZek1qWS9BVFltQlNJdUFUUStBVEllQVJRT0FRSDJKVDRrSkQ1S1BpUWtQZ0Z2UndVRlJ4SUpEQjhJSGhFSEN3TlpNajhRQkNNWVBoZ2pCQkE2T1ZnRUN3Y1JIZ2dmREFnVFJ3VUZSeElKREI4SUhoRU5DVmd5UHhBRkloZytGeVFFRUVRelV3NEpFUjRJSFEwSS9sbzZZVGs1WVhSaE9UbGhBZU1rUGtvOUpDUTlTajRrL3dBOEdrNGFQQTh1RkRZT0VBSUJJUzBVV3hZYUdoWlpFaThnQVFNUURqWVVMdzQ4SXp3alBBOHVGRFlPRUFNaExSUmRGeDBmRjEwWE1DRUVFUTR5RHkxTE9XQjBZVGs1WVhSZ09RQUFBQU1BQVArUEE4SURMQUFqQUVRQVVRQm9RR1VsQVFrRVBRRUhDUUpIQUFFS0FBb0JBRzBBQkFNSkF3UUpiUUFJQndod0FBWUFDZ0VHQ21BQ0N3SUFCUUVEQkFBRFlBd0JDUWNIQ1ZRTUFRa0pCMWdBQndrSFRFWkZBUUJNUzBWUlJsRkFQem80THk0ZUhCZ1dFeEVMQ2djRUFDTUJJdzBGRkNzQkl6VTBKaXNCSWdZZEFTTWlCaDBCRkJZN0FSVVVGanNCTWpZOUFUTXlOajBCTkNZQkp6WTNOalUwSnlZbkppSUhCZ2NHRkJjV0Z4WXpNamMyTnhjV01qOEJQZ0VsSWk0Qk5ENEJNaDRCRkE0QkFsUnpDd2hOQ1F0ekNBc0xDSE1MQ1UwSUMzTUpDZ29CWGQwa0V4UTFNMWRhMEZwWE16UTFNMWRaYUQ0OE9ESGRDUmNKS0FrQi9lVkplMGxKZTVKN1NVbDdBZVZ6Q1FvS0NYTUxDVXdKQzNNSkNnb0pjd3NKVEFrTC9namJNamc3UG1oYVZ6TTFOVE5YV3RCYVZ6TTFGQk1rM1FnSUtBa1p2RWw3a250SlNYdVNlMGtBQUFnQUFBQUFBd3dDaWdBUEFDOEFQd0JQQUY4QWJ3Qi9BSThBa0VDTkhRMENBQUtJZ0ZoUUJBb0xlSEJJUUFRSUNXaGdPREFFQmdjRVJ3UVRBZ0lCQUFFQ0FHMEFBUklCQUFNQkFHQUFBeEVCQ3dvREMyQVFBUW9QQVFrSUNnbGdEZ0VJRFFFSEJnZ0hZQXdCQmdVRkJsUU1BUVlHQlZnQUJRWUZUQkVRQVFDTWlvU0NmSHAwY214cVpHSmNXbFJTVEVwRVFqdzZORElxSnlJZkdoY1FMeEV2Q2djQUR3RVBGQVVVS3dFek1qWTlBVFFtS3dFaUJoMEJGQllsSXlJR0hRRVVCaXNCSWlZOUFUUW1Ld0VpQmhVUkZCWXpJVEkyTlJFMEpnRVVCaXNCSWlZOUFUUTJPd0V5RmhVMUZBWXJBU0ltUFFFME5qc0JNaFlWTlJRR0t3RWlKajBCTkRZN0FUSVdGUVVVQmlzQklpWTlBVFEyT3dFeUZoVTFGQVlyQVNJbVBRRTBOanNCTWhZVk5SUUdLd0VpSmowQk5EWTdBVElXRlFHRzNBZ01JeG1NR1NNTUFWSVVCQVl2SWR3aEx3VUZGQmtqSXhrQnVCa2pJLzZkREFnVUNBd01DQlFJREF3SUZBZ01EQWdVQ0F3TUNCUUlEQXdJRkFnTUFSZ01DTWdJREF3SXlBZ01EQWpJQ0F3TUNNZ0lEQXdJeUFnTURBaklDQXdDRWd3SUtCa2pJeGtvQ0F4R0JRVW9JUzh2SVNnRkJTTVovbElaSXlNWkFhNFpJLzVTQ0F3TUNCUUlEQXdJVUFnTURBZ1VDQXdNQ0ZBSURBd0lGQWdNREFqY0NBd01DQlFJREF3SVVBZ01EQWdVQ0F3TUNGQUlEQXdJRkFnTURBZ0FBQUFBQVFBQS82TURQUU1ZQUNVQUlVQWVBQU1CQTI4RkFRRUNBVzhFQVFJQUFtOEFBQUJtRXhVMUV4Y1ZCZ1VhS3pjR0ZCY0JGakkzQVRZMEx3RW1JZzhCQmlJbU5SRTBKaXNCSWdZVkVSUUdJaThCSmlJSHVRd01BU0FNSHdzQklnd01OUXdmQzFzSEZBOFhEMDBRRnc4VUIxc0xId3YrQ3g0TC91VUxDd0ViQ3g0TE5Bc0xXUWNPQ3dJSER4Y1lEdjM1Q3c0SFdRc0xBQUFFQUFEL25BT2xBeTBBTVFBNkFFTUFWd0E1UURZa0h3OERBZ0FCUndBRkFBVnZBQUFDQUc4RUFRSUJBbThIQXdZREFRRm1QRHN6TWtaRlFEODdRenhETnpZeU9qTTZJaUVJQlJRckpTWUhBUzRCRHdFT0FSY1RGaFFQQVNZSERnRUhCaFlYRmpjK0FUYzJKaWMzTmpJZkFRNEJGeDRCRnhZM1BnRW5MZ0VGSWlZME5qSVdGQVloSWlZME5qSVdEZ0VERmpJL0FUWW1KemNISmk4QkpnWVBBUVlVRndNUExTNytWd1FSQmc4WkJ4UExCZ1p0S2pFMVRBY0hOVEF6T1ROT0N3Y01FbEVJSGdoUkVnd0hDazQwT1RNd05RY05UdjIyR1NFaE1pRWhBZHNaSVNFeUlRRWlxUVlUQnBvUUFoQUNBZ0lPRFFZUUJha0dCdllMRVFJMEJnTUZEQk0rR3Y3eUJ4UUhrUkFLQzFBMU9HQVlHZ29JU1RNalFSbHNDd3RzSEVBaE0wa0lDaG9ZWURnM1Q5Y2hNaUVoTWlFaE1pRWhNaUVCMGdjSHloVTBGUUlDQkFzS0JBSUc0UWNVQ0FBRkFBRC9rQVBDQXl3QUl3QTZBRW9BV2dCcUFIdEFlQUFHRFF3TkJneHRBQUVNQ1F3QkNXMEFDUWdNQ1FockFBUURCSEFBQndBTENnY0xZQUFLQUE4T0NnOWdBQTRBRFFZT0RXQUFEQUFJQUF3SVlBSVFBZ0FEQXdCVUFoQUNBQUFEV0FVQkF3QURUQUVBYUdWZlhWaFZUMDFIUlQ4OU9qZzFNeTRyS0NZZUhCa1dFeEVNQ2djRUFDTUJJeEVGRkNzbEl6VTBKaXNCSWdZZEFTTWlCaDBCRkJZN0FSVVVGanNCTWpZOUFUTXlOajBCTkNZbE5EWTdBUkUwSmlNaElnWVZFUlFXTXlFMU5EWTdBUUVVQmlzQklpWTlBVFEyT3dFeUZoVVRGQVlqSVNJbVBRRTBOak1oTWhZVk54UUdJeUVpSmowQk5EWXpJVElXRlFPbFZ4RU1PUXdSVndzU0VndFhFUXc1REJGWEN4SVMvdDRSRERBdElQM2xIeTB0SHdHb0VRdFgvcVlMQ0hRSUN3c0lkQWdMNXdzSi9xWUlDd3NJQVZvSkMwd0tDZjVaQ0FzTENBR25DUXAzVndzU0VndFhFUXc1REJGWEN4SVNDMWNSRERrTUVhUUxFZ0duSUMwdElQM2xJQzB3REJFQnV3a0xDd2ttQ1FvS0NmNm1DUW9LQ1NZSkN3c0pkQWtMQ3drbUNRb0tDUUFBQUFJQUFQKzNBOGdEQlFBVkFDWUFZVXV3Q2xCWVFDTUFBUUFBQVdNRkFRTUNCQUlEQkcwQUJBUnVBQUFDQWdCVUFBQUFBbGNBQWdBQ1N4dEFJZ0FCQUFGdkJRRURBZ1FDQXdSdEFBUUViZ0FBQWdJQVZBQUFBQUpYQUFJQUFrdFpRQTRZRmlFZUZpWVlKaE01TWdZRkZ5c0JOQ1lqSVNJbkppOERKaWNtS3dFaUJoMEJJUmNoSWc0QkZ4TWVBVE1oTWpZM0V6WW1BMDR0SVA3bUVCRU5EQW93Q0FvTUVSUkpJQzBDdERqODNCTWVEUVJ1QmlBVUFrb1ZJUVJ1QlNVQ01pQXRDZ2NMQ2pvS0N3Y0tMU0N0VFJVaUV2NXNFeGNYRXdHVUhDMEFBQUFBQlFBQS83Y0R3Z01GQUE4QUh3QXZBRDhBVHdCZVFGc0xBZ29EQUFBREJBQURZQXdCQkFBRkJnUUZZQTBCQmdBSENBWUhZQTRCQ0FFQkNGUU9BUWdJQVZnSkFRRUlBVXhDUURJd0lpQVNFQUlBU2tkQVQwSlBPamN3UHpJL0tpY2dMeUl2R2hjUUh4SWZDZ2NBRHdJUER3VVVLd0VoSWdZVkVSUVdNeUV5TmpVUk5DWWhJeUlHSFFFVUZqc0JNalk5QVRRbUJ5TWlCaDBCRkJZN0FUSTJQUUUwSmdjaklnWWRBUlFXT3dFeU5qMEJOQ1lISXlJR0hRRVVGanNCTWpZOUFUUW1BNlg5K1F3UkVRd0NCd3NTRXYxbjFBc1JFUXZVQ3hJU0M5UUxFUkVMMUFzU0VndlVDeEVSQzlRTEVoSUwxQXNSRVF2VUN4SVNBd1VSRFB6c0RCRVJEQU1VREJFUkRHQUxFaElMWUF3UjV4RUxZUXNSRVF0aEN4SG1FZ3RnREJFUkRHQUxFdWNTQzJBTUVSRU1ZQXNTQUFBRUFBRC9qd1BDQXl3QUNRQVRBRFFBUVFCSVFFVVZBUWNBTFFFRkJ3SkhBQVlGQm5BQUJBQUlBUVFJWUFJQkFRTUJBQWNCQUdBSkFRY0ZCUWRVQ1FFSEJ3VllBQVVIQlV3Mk5UdzdOVUUyUVJVcEd5WVJKU0FLQlJzckFUTXlOajBCTkNZckFURWpJZ1lkQVJRV093RUJKelkzTmpVMEp5WW5KaUlIQmdjR0ZCY1dGeFl6TWpjMk54Y1dNajhCUGdFbElpNEJORDRCTWg0QkZBNEJBVzNuQ1FvS0NlZHpDQXNMQ0hNQ1RkMGtFeFExTTFkYTBGcFhNelExTTFkWmFENDhPREhkQ1JjSktBa0IvZVZKZTBsSmU1SjdTVWw3QVhFTENVd0pDd3NKVEFrTC9ucmRNamc3UG1oYVZ6TTFOVE5YV3RCYVZ6TTFGQk1rM1FnSUtBa1p2RWw3a250SlNYdVNlMGtBQkFBQUFBQUREUUo0QUJJQUlnQXlBRHNBV2tCWER3RURBVVlBQlFjR0J3VUdiUWtCQmdNSEJnTnJBQU1FQndNRWF3QUVBZ2NFQW1zSUFRQUFCd1VBQjJBQUFnRUJBbFFBQWdJQldBQUJBZ0ZNTkRNQ0FEZzNNenMwT3k0dEppVWVIUllWQ2drQUVnSVNDZ1VVS3dFakpnY0JCaFFmQVJZeU53RStBU2MxTkNZREJ3WWlMd0VtTkQ4Qk5qSWZBUllVTndjR0lpOEJKalEvQVRZeUh3RVdGRGNpSmpRMk1oWVVCZ0xRMnhNUi92UVJFZFFSTWhJQkR3Z0lBU1B4RGdZUUJvZ0dCZzRHRUFhSUJrb09CaEFHaUFZR0RnWVFCb2dHTWhVZEhTb2RIUUoyQVJIKzh4RXlFdFFSRVFFUUNCWUswaGtqL2tnT0JnYUlCaEFHRGdZR2lBWVFTZzRHQm9nR0VBWU9CZ2FJQmhDa0hTb2RIU29kQUFnQUFBQUFBeUFDaWdBV0FDWUFOZ0JHQUZZQVpnQjJBSVlBbEVDUkJRRUJBRDgzTHljRUJRWmZWMDlIQkFrS0RRRUNEbmRuQWcwQ0JVZC9id0lDQVVZQUFnNE5EZ0lOYlJFQkFBQUJBd0FCWUJJQkF3Z0JCZ1VEQm1BSEFRVU1BUW9KQlFwZ0N3RUpFQUVPQWdrT1lBOEJEUVFFRFZRUEFRME5CRmdBQkEwRVRCZ1hBZ0NEZ1h0NWMzRnJhV05oVzFsVFVVdEpRMEU3T1RNeEt5a2dIUmNtR0NVUkR3b0hBQllDRmhNRkZDc0JJU0lHSFFFVUZqTWhNaFlWRVJRV016STJOUkUwSmdVaUJoVVJGQll6SVRJMk5SRTBKaU1IRkFZckFTSW1QUUUwTmpzQk1oWVZGeFFHS3dFaUpqMEJORFk3QVRJV0ZRY1VCaXNCSWlZOUFUUTJPd0V5RmhVWEZBWXJBU0ltUFFFME5qc0JNaFlWQnhRR0t3RWlKajBCTkRZN0FUSVdGUmNVQmlzQklpWTlBVFEyT3dFeUZoVUM1UDdBR1NNR0JBRWlHU01HQkIwcEkvNGJHU01qR1FGQUdTTWpHZkFNQ0JRSURBd0lGQWdNM0F3SWpBZ01EQWlNQ0F6Y0RBZ1VDQXdNQ0JRSUROd01DSXdJREF3SWpBZ00zQXdJRkFnTURBZ1VDQXpjREFpTUNBd01DSXdJREFLS0l4a0tCQVlqR2Y3S0JBWXBIUUZLR1NPTUl4bityQmtqSXhrQlZCa2pqQWdNREFnVUNBd01DQlFJREF3SUZBZ01EQWg0Q0F3TUNCUUlEQXdJRkFnTURBZ1VDQXdNQ0hnSURBd0lGQWdNREFnVUNBd01DQlFJREF3SUFBQUFCd0FBLzJvRGF3TlNBQTBBRVFBVkFCa0FIUUF1QURjQWRFQnhKd3dDQ3dBQlJ5OEJBRVVNRGdJTEFBb0FDd3B0QUFvQ0FBb0Nhd0FDQXdBQ0Eyc0FBd0FFQlFNRVhnQUZBQVlIQlFaZUFBY0FDQWtIQ0Y0TkFRQUFERWdBQ1FrQldBQUJBUTBCU1I0ZUFRQTNOUjR1SGkwZ0h4MGNHeG9aR0JjV0ZSUVRFaEVRRHc0SkJnQU5BUTBQQlJRckV5SUdGUkVVRmpNaE1qWTFFUWtCSVJVaEZTRVZJUlVoRlNFVk14VWpBUlVqSnlZbkppY21OeGNXRnhZWEZqTURGUlFYRmhjV093RlFJUzh2SVFMTElTLysyZjVhQVZIK3J3RlIvcThCVWY2dndNQUN6Y2dRRWhBVkRBOEJBZ01JQ2hJV0gxd0hDaE1YSk1nRFVpOGgvTGdoTHk4aEFsc0JQZjI0SVNvaEtpRXFJUUlMRHdRSENnMFNGeDBPRVEwVUN3NEJQK1FSRWhnT0VnQUdBQUQvM1FQQ0F0OEFEd0FmQUM4QVB3QlBBRjhBYVVCbURRSU1Bd0FBQXdVQUEyQUFCUTRFQWdFR0JRRmdFQWdQQXdZQUNRb0dDV0FSQVFvSEJ3cFVFUUVLQ2dkWUN3RUhDZ2RNVWxCQ1FESXdJaUFTRUFJQVdsZFFYMUpmU2tkQVQwSlBPamN3UHpJL0tpY2dMeUl2R2hjUUh4SWZDZ2NBRHdJUEVnVVVLd0VqSWdZZEFSUVdPd0V5TmowQk5DWXBBU0lHSFFFVUZqTWhNalk5QVRRbUFTRXlOajBCTkNZaklTSUdIUUVVRmdjaklnWWRBUlFXT3dFeU5qMEJOQ1lwQVNJR0hRRVVGak1oTWpZOUFUUW1CeUVpQmgwQkZCWXpJVEkyUFFFMEpnRVgxQXNSRVF2VUN4SVNBb1A5K1F3UkVRd0NCd3NTRXYzdUFVWU1FUkVNL3JvTUVSRjcxQXNSRVF2VUN4SVNBb1A5K1F3UkVRd0NCd3NTRXN6K3Vnd1JFUXdCUmd3UkVRTGZFZ3Y2REJFUkRQb0xFaElMT2dzU0VnczZDeEwrekJFTU9nc1JFUXM2REJHYUVRejZDeElTQy9vTUVSRU1PUXdSRVF3NURCSEFFZ3M2Q3hJU0N6b0xFZ0FBQWdBQS81QURkUU1zQUJjQUpRQXBRQ1lEQVFFRUFXOEFCQUFFYndVQkFBSUFid0FDQW1ZQ0FDSWdHeG9TRHdvSEFCY0NGd1lGRkNzQkl5SW1QUUUwSmlNaElnWVZFUlFXTXlFeU5qVVJOQ1kzSnlZaUJoMEJGQlk3QVRJMk5BTlcxeVlyRWczK3dTVTRPQ1VDU0NZM0Vnek1CaFFPSnhxa0NBMEI1U3NsMkEwU055YjlIaVU0T0NVQjJRMFNkY3dHRFFtakdpY09GQUFCQUFEL2tBUENBeXdBS3dBZFFCb2pBUUlBQVVjQUFRQUJid0FBQWdCdkFBSUNaaDBxRlFNRkZ5c0JMZ0VQQVFZaUx3RW1ORDhCTmlZbkppTWlCZ2NHRnhZWEFRNEJGaGNlQVRJMk53RVdGeFkzUGdFMU5BTzJBeEFJbkFnWkNXNElDSjRHQkFnb0tsR0dJaVFLQnd6K21CVU9EaFVRS1NncEVBRm1HeTVTU0VaVUFtY0pBd2FjQ0FodUNSa0luQVlRQlF4VVJraFNMQjMrbWhVNE54UVFFUkVRQVdZTUJ3b2tJb1pSS3dBQUFBRUFBUCtrQXlnREdRQWxBQ0ZBSGdBQUFnQnZCQUVDQVFKdkJRRUJBd0Z2QUFNRFpoTVZOUk1YRlFZRkdpc0JOalFuQVNZaUJ3RUdGQjhCRmpJL0FUWXlGaFVSRkJZN0FUSTJOUkUwTmpJZkFSWXlOd01jREF6KzRBd2ZDLzdmQ3dzMkRCOExXd2NVRHhjUFRROFlEeFFIV2d3ZkN3RytEQjBMQVJzTEMvN2xDeDBNTkFzTFdRY09DLzM1RHhjWkRRSUhDdzRIV1FzTEFBQUFBQUVBQVArSEE4c0RNd0JIQUJGQURnQUJBQUZ2QUFBQVpoTVJBZ1VXS3lVV05qOEJQZ0VXRkE4QkRnRW1Md0V1QVRZM0FUNEJGaDhCSGdFR0R3RU9BUmNXRng0Qk5qOEJQZ0VtSnlNdUFRWUhBUTRCRmg4QkhnRTJQd0UrQVM0Q0JnOEJCaFFYQVZNSUZ3bkFDeDhZRE93YVJVWWFBaG9SRVJvQm9obEdSUm9DR2hJU0dnSUlBZ1lTQ1FNVkVnc0pNQ0lpTUFRd2dvSXcvbDh3SWlJd0F6R0FnVER2SGhRWFBWSlFIYjBJQ0pBSUFRZkJDZ0VYSWd6cEdoRVJHZ0lhUmtVYUFhRWFFaElhQWhwRlJoa0NDQklKSHlRTUJoRU1DakNDZ2pBd0lpSXcvbUF3Z29FeEJEQWlJakR0SGxKUk94TVhIN3dKR1FnQUF3QUEvNUFEbXdNc0FCOEFMd0JDQUp1MU53RUpDZ0ZIUzdBTlVGaEFNd01CQVFBQUFXTUFDUW9JQ2drSWJRUUNDd01BQUFVR0FBVmhEQUVHQUFvSkJncGdBQWdIQndoVUFBZ0lCMWdBQndnSFRCdEFNZ01CQVFBQmJ3QUpDZ2dLQ1FodEJBSUxBd0FBQlFZQUJXRU1BUVlBQ2drR0NtQUFDQWNIQ0ZRQUNBZ0hXQUFIQ0FkTVdVQWhJaUFCQUVBL09qazBNeW9uSUM4aUx4b1hFaEFOREFrSUJRUUFId0VmRFFVVUt3RWpOVFFtSWdZZEFTRTFOQ1lpQmgwQkl5SUdIUUVVRmpNaE1qWTlBVFFtRnlFaUJoVVJGQll6SVRJMk5SRTBKZ0VWRkFZaUpqMEJCd1lpSmpRL0FUWXlGaFVEVG1BaUx5TCs4aUV3SW1BZ0xSRU1BeFFNRVMwUS9Pd01FUzRmQXJRZ0xSSCtwQmdlRngwSUZ4RUtTd3NpR0FMTEp4Z2lJaGduSnhnaUloZ25MUjh4Q3hFUkN6RWdMUG9SQy80b0h5NHRJQUhZQ3hIK1dRTU1GeGdPd1I4SUVoWUtTd3dYRUFBQUFBQURBQUQva0FQQ0F5d0FGQUFkQUQ4QVgwQmNNZ0VHQnpvc0FnVUdKaDRDQkFVRFJ3QUVCUUVGQkFGdEFBRUJiZ2tCQUFvQkFnTUFBbUFBQXdBSEJnTUhZQUFHQlFVR1ZBQUdCZ1ZZQ0FFRkJnVk1GaFVCQUQwOE5qUXZMaWtvSWlBYUdSVWRGaDBMQ2dBVUFSUUxCUlFyQVNJSEJnY0dGQmNXRnhZeU56WTNOalFuSmljbUJ6SVdGQVlpSmpRMkV4UUdLd0VpSmowQk5EWXlOajBCTkNZaUpqMEJORFk3QVRJV0hRRVVGaklXRlFIMGZtdHBQRDgvUEdsci9HeG9QVDgvUFdoc2Zoa2hJVEloSVhrS0Nab0hEQXNRQ3dvUURBc0lkQWNNQ2hBTUF5dy9QV2hzL0d4b1BUOC9QV2hzL0d4b1BUL3BJVElnSVRBaS9td0lDUWtJSndjT0NRaE5DQTBKQ0NjSERnMEltZ2dKRFFnQUFBQUFBd0FBQUFBRDZBS1VBQlFBS1FBNUFBcTNOQ3drR0FzQ0F5MHJBU2NtQmdjREJoUVhFeDRCUHdFK0FTOEJOelltQlFNdUFROEJEZ0VmQVFjR0ZoOEJGalkzRXpZMEFTY21CZ2NEQmhZZkFSWTJOeE0ySmdFNkxRb1dDTjhHQnVFSEZ3b3NDd0lKdExZR0F3S2U0UWNZQ1N3TEFnbTN0d2NDQ1N3S0ZnamhCdjU0T2dzWEFvOEREUXM2REJZRGpnTU1BbWNsQndJSi91Y0hGUWorNlFrRENDVUhHUWpoNFFrWDhBRVhDUVFKSkFnWUNlSGhDQmtISlFjRENBRVpDaE1CR2c0RERRdjkzZ3dVQXc0Q0RBd0NJZ3dVQUFBRkFBRC9rQU9iQXl3QUR3QXZBRDhBVHdCZkFHMUFhbGhRQWdvTFNFQUNDQWtDUndRTkFnSUJBQUVDQUcwQUFRd0JBQU1CQUdBQUF3QUxDZ01MWUFBS0FBa0lDZ2xnQUFnQUJ3WUlCMkFBQmdVRkJsUUFCZ1lGV0FBRkJnVk1FaEFDQUZ4YVZWSk1Ta1ZDUERvMU1pb25JaDhhRnhBdkVpOEtCd0FQQWc4T0JSUXJBU0V5TmowQk5DWXJBU0lHSFFFVUZpVWpJZ1lkQVJRR0l5RWlKajBCTkNZckFTSUdGUkVVRmpNaE1qWTFFVFFtQXhRR0l5RWlKajBCTkRZeklUSVdGVFVVQmlNaElpWTlBVFEyTXlFeUZoVTFGQVlqSVNJbVBRRTBOak1oTWhZVkFWRUJSd3NSTFNEbUlDMFJBZ2t3Q3hJdElQNkFJQzBTQ3pBZkxpNGZBclFnTFMyVEN3aitXUWtMQ3drQnB3Z0xDd2orV1FrTEN3a0Jwd2dMQ3dqK1dRa0xDd2tCcHdnTEFtc1NDMWNnTFMwZ1Z3c1NkQklMVnlBdExTQlhDeEl0SVAxTEh5NHRJQUsxSUMzOVh3a0xDd2ttQ1FvS0NYTUlDd3NJSndnTEN3aHpDQXNMQ0NjSUN3c0lBQUFBQUFJQUFQK1BBOElETFFBakFFY0FoMHV3Q2xCWVFDTUFBQVVBYndBRkFRVnZBd0VCQmdGdkFBWUVCbThBQkFJRWJ3QUNCd0p2QUFjSFpodExzQXRRV0VBZkFBQUZBRzhBQlFFRmJ3TUJBUVFCYndZQkJBSUVid0FDQndKdkFBY0haaHRBSXdBQUJRQnZBQVVCQlc4REFRRUdBVzhBQmdRR2J3QUVBZ1J2QUFJSEFtOEFCd2RtV1ZsQUN4Y1lPQlFZT0JjVkNBVWNLd0UyTkM4QkppSVBBUVlVSHdFV01qOEJOaFlWRVJRV093RXlOalVSTkRZZkFSWXlOd0VuSmlJUEFRWW1OUkUwSmlzQklnWVZFUlFHTHdFbUlnOEJCaFFmQVJZeVB3RTJKZ0lSQ0FqYkNSY0ozUWdJS1FnWENVVUpHQkVNT1F3UkdBbEZDUmNKQWM4b0NSY0pSUWtZRVF3NURCRVlDVVVKRndncENBamRDUmNKM1FnQkFoNEpGd25kQ0FqZENSY0pLQWtKUlFrSkRmNW9DeElUQ2dHWURRa0pSUWtKL3FnbUNRbEZDUWtOQVp3TEVoTUsvbWdOQ1FsRkNRa3FDUmNKM1FnSTNRa1pBQWdBQVA5cUEyc0RVZ0FOQUI0QUp3QTRBRUFBVGdCV0FHOEJkMEFYRnd3Q0F3QnRaMFl3QkFnSFlTb0NCZzBEUng4QkFFVkxzQTlRV0VCVkJCUUNBd0FDQUFNQ2JRQUNCd0FDQjJzU0N3SUhDQUFIQ0dzQUVBa0ZCaEJsRlFFRkRRWUZZd0FQQ1FnUFVnQUpFQWdKVkJrT0dBd1dCUWdBRFFZSURXQVRBUUFBREVnUkZ3b0RCZ1lCV1FBQkFRMEJTUnRMc0JGUVdFQldCQlFDQXdBQ0FBTUNiUUFDQndBQ0Iyc1NDd0lIQ0FBSENHc0FFQWtGQ1JBRmJSVUJCUTBHQldNQUR3a0lEMUlBQ1JBSUNWUVpEaGdNRmdVSUFBMEdDQTFnRXdFQUFBeElFUmNLQXdZR0FWa0FBUUVOQVVrYlFGY0VGQUlEQUFJQUF3SnRBQUlIQUFJSGF4SUxBZ2NJQUFjSWF3QVFDUVVKRUFWdEZRRUZEUWtGRFdzQUR3a0lEMUlBQ1JBSUNWUVpEaGdNRmdVSUFBMEdDQTFnRXdFQUFBeElFUmNLQXdZR0FWa0FBUUVOQVVsWldVQkZXRmRRVDBKQk9qa3BLQTRPQVFCc2FXUmpZRjVhV1ZkdldHOVRVVTlXVUZaTFNFRk9RazQ5T3psQU9rQTFNaTBzS0RncE9DY2xEaDRPSFJBUENRWUFEUUVOR2dVVUt4TWlCaFVSRkJZeklUSTJOUkVKQVJVakp5WW5KaWNtTnhjV0Z4WVhGak1ERlJRWEZoY1dPd0VCSXhVVUJpSW1QUUUwTmpzQk1oWVVCaWNqRlRNeU5qUW1GeU1pSmowQk5EWTdBVElXRkFZbkl4VXpNajRCSmpNakZUTXlGaFFHS3dFVkZBWWlKajBCTkRZN0FUSVZGZ1pRSVM4dklRTExJUy8rMlFFbnlBOFREeFVMRHdFQ0F3Z0tFaFVmWFFjS0V4Y2t5UDErTkFZS0J3b0hPaHNnSUIweU1oRVZGWkl2QndvS0J5OHJOalVzS1NraEp3RW4zRnBaQkFVRkJGa0hDZ2NMQjJBS0FRWURVaThoL0xnaEx5OGhBbHNCUGY3QkR3UUhDZzBTRngwT0VRMFVDdzRCUCtRUkV4Y09FdjVCUUFVR0J3U2dCd29oTUNCZFNCUWdGS2dMQjVrSENqWlFOcWlTS2o4cFBRWUpCa3NGQmdjRW9BY0tDd1FGQUFBRkFBQUFBQU1NQW9vQUR3QXZBRDhBVHdCZkFRbEFGaDBOQWdBQ1NBRUxDVmdCQnd0UVFEZ3dCQVlIQkVkTHNBNVFXRUE4QkEwQ0FnRUFBUUlBYlFBTENRY0pDMlVBQndZSkIyTUFBUXdCQUFNQkFHQUFBd0FKQ3dNSllBb0lBZ1lGQlFaVUNnZ0NCZ1lGV0FBRkJnVk1HMHV3SDFCWVFEMEVEUUlDQVFBQkFnQnRBQXNKQndrTFpRQUhCZ2tIQm1zQUFRd0JBQU1CQUdBQUF3QUpDd01KWUFvSUFnWUZCUVpVQ2dnQ0JnWUZXQUFGQmdWTUcwQStCQTBDQWdFQUFRSUFiUUFMQ1FjSkN3ZHRBQWNHQ1FjR2F3QUJEQUVBQXdFQVlBQURBQWtMQXdsZ0NnZ0NCZ1VGQmxRS0NBSUdCZ1ZZQUFVR0JVeFpXVUFqRVJBQkFGeGFWRkpNU2tSQ1BEbzBNaW9uSWg4YUZ4QXZFUzhLQndBUEFROE9CUlFyQVRNeU5qMEJOQ1lyQVNJR0hRRVVGaVVqSWdZZEFSUUdLd0VpSmowQk5DWXJBU0lHRlJFVUZqTWhNalkxRVRRbUFSUUdLd0VpSmowQk5EWTdBVElXRlJjVUJpc0JJaVk5QVRRMk93RXlGaFVYRkFZckFTSW1QUUUwTmpzQk1oWVZBWWJjQ0F3akdZd1pJd3dCVWhRRUJpOGgzQ0V2QlFVVUdTTWpHUUc0R1NNai9zVU1DQlFJREF3SUZBZ01aQXdJRkFnTURBZ1VDQXhrREFnVUNBd01DQlFJREFJU0RBZ29HU01qR1NnSURFWUZCU2doTHk4aEtBVUZJeG4rVWhrakl4a0JyaGtqL21ZSURBd0laQWdNREFoa0NBd01DTDRJREF3SXZnZ01EQWlXQ0F3TUNBQUdBQUFBQUFNV0FuOEFGQUFrQURRQVJBQlVBR1FBaDBDRUlob0ZBd01FUWpveUtnUUZCbUphVWtvRUNRb0RSd0FBQVFCdkFBRUVBVzhBQkFNRWJ3QUNBd1lEQWdadEVRc1FBd2tLQ1hBTkFRTUlBUVlGQXdaZ0R3Y09Bd1VLQ2dWVUR3Y09Bd1VGQ2xnTUFRb0ZDa3hXVlVaRk5qVW1KUllWWGx4VlpGWmtUa3hGVkVaVVBqdzFSRFpFTGl3bE5DWTBIaHdWSkJZa0Z4UVNFZ1VYS3dFbkppSVBBU2NtSWc4QkJoUWZBUll5UHdFMk5BVWhJaVk5QVRRMk15RXlGaDBCRkFZSElTSW1QUUUwTmpNaE1oWWRBUlFHSVNNaUpqMEJORFk3QVRJV0hRRVVCZ2NqSWlZOUFUUTJPd0V5RmgwQkZBWXBBU0ltUFFFME5qTWhNaFlkQVJRR0FkSVZCQXdGaERVRURBVVZCQVJLQ1JnSm1RUUJMUDc4Q0F3TUNBRUVDQXdNQ1A3QUNBd01DQUZBQ0F3TS9rQW9DQXdNQ0NnSURBd0lLQWdNREFnb0NBd01BYkQrd0FnTURBZ0JRQWdNREFKbEZRVUZoRFVGQlJVRURBVktDUW1aQkEyTERBZ29DQXdNQ0NnSURMUU1DQ2dJREF3SUtBZ01EQWdvQ0F3TUNDZ0lETFFNQ0NnSURBd0lLQWdNREFnb0NBd01DQ2dJREFBQUFnQUFBQUFESUFLUUFDMEFQUUE2UURjakFRSUFBVWNCQlFJQUFBSURBQUpnQmdFREJBUURWQVlCQXdNRVdBQUVBd1JNTHk0Q0FEZzFMajB2UFNjbElCMEFMUUl0QndVVUt3RWpJaVkxTmpjMk56WTNOamMySmljbURnRVZGQmNXRnhZWEZoY1VCaXNCSWdZZEFSUVdNeUV5TmowQk5DWUhJU0lHSFFFVUZqTWhNalk5QVRRbUF1UnVHU01DQ1FVTkNnUUdBUU0wTENaRUtRWUVDdzBGQ1FJakdXNFpJd3dJQWpBSURDTVkvaDRJQ3lNWkFaRVpJZ3NCTmlNWklSa1BGUkFKRHhFdFNBb0lIVHdsRlJFS0VoVVBHU0VaSXlNWktBZ01EQWdvR1NPMEN3Z0JHU01qR1FFSUN3QUJBQUQva0FQQ0F5NEFMd0JRUUUwWUFRTUNHUUVCQXdZQkFBRWtBd0lFQUNVQkJRUUZSd29CQXdGR0FBSURBbThBQXdFRGJ3QUJBQUZ2QmdFQUJBQnZBQVFGQkc4QUJRVm1BUUFxS1NNaEhCb1VFdzRNQUM4Qkx3Y0ZGQ3NsSWdZSEpUWTFOQ1kxSlI0Qk16SStBVFF1QVNJT0FSMEJCU1lqSWc0QkZCNEJNekkzQlJVVUhnRXlQZ0UwTGdFREV5VkJGLzduQWdJQkdSZERKUzlRTGk1UVhsQXYvdDQxUGk5UUxpNVFMMEV3QVNNdVQyQlBMaTVRNngwWmpBb1ZCUlVGakJvZUxsQmVVQzh1VURBTGtpZ3VVRjVRTGlxUURUQlFMaTVRWUU4dUFBSUFBUCtRQThJRExBQXJBRmtBSmtBakV3RUNBQUZIQUFBQ0FHOEFBZ0VDYndBQkF3RnZBQU1EWmxOUU9qa2xJaTRFQlJVckFTWW5KalUwTmpjK0FUVTBKaWNtSXlJSEJnY1VGeDRCRlJRR0J3WVVGeFlmQVJZN0FUSTJQUUUwSnlZRkppY21OVFEzUGdFMU5DWW5KaUlIRGdFVkZCWVhGaFVVQndZSEJnY0dCd1lkQVJRV015RXlOajBCTkNjbUF5Z2xEZ3NVRHhnYUpTSWtMMEVxSndZS056NHFKd01EQ2lRVUNBWHBJUzR2SXY2MUxSRU5LQjBmS3lrcmN5c29MQjRkS1EwU0xqc2hMaGdjTFNFQ0ZTRXdOaWdCcFE0U0RSTVBIZ3dVT2lJclNCVVdLQ1k3Q2djamRVazNYeU1EQ1FNSEVRb0RMeDRNTGlNYTdoTVREeFloSkJsRUtETlZHQm9hR0ZVektFUVpJeUlXRHhVUkdCSVpHeUFtR1NBdExoOGJOaW9mQUFBQUFRQUFBQUFDMndLbEFDMEFKMEFrQUFBRkFRRUNBQUZnQkFFQ0F3TUNWQVFCQWdJRFdBQURBZ05NTlNVMU5TVXpCZ1VhS3dFMU5DWWpJU0lHSFFFVUZqTXlGZ2NERGdFckFTSUdIUUVVRmpNaE1qWTlBVFFtSXlJbU54TStBVHNCTWpZQzJ4Y1Evdk1RRmhZUUdSOEdSUVFkRVM0UUZ4Y1FBUTBRRmhZUUdSOEdSUVFkRVNFV0hnSm1HUkFXRmhBbkVCWW5GLzZ1RXhnV0VDY1FGaFlRSnhBV0p4Y0JVaE1ZSGdBQUFBVUFBUCtRQTRnRExBQVpBQ01BTXdCREFGTUFYa0JiVEVROE5BUUlDUUZIQUFFQUJBQUJCR0FGQWd3REFBQURCZ0FEWUEwQkJnc0JDUWdHQ1dBS0FRZ0hCd2hVQ2dFSUNBZFlBQWNJQjB3bUpBRUFVVTVKUmtFK09UWXVLeVF6SmpNakloNGNGQkVNQ2djRUFCa0JHUTRGRkNzQkl6VTBKaXNCSWdZZEFTTWlCaDBCRkJZeklUSTJQUUUwSmlVME5qc0JNaFlkQVNNRklTSUdGUkVVRmpNaE1qWTFFVFFtQVJRR0t3RWlKalVSTkRZN0FUSVdGUk1VQmlzQklpWTFFVFEyT3dFeUZoVURhL0F0SUhRZkx2QUxFaElMQXU0TEVoTCtSQXNKVFFnTGRBRmsvYXdMRWpnb0FjNG9PQkgra0FvSkpna0xDd2ttQ1FyQkN3a21DUW9LQ1NZSkN3S1NUU0F0TFNCTkVnczZDeElTQ3pvTEVqa0pDd3NKT2NFUkMvNDhLVGc0S1FIRUN4SCtXUWdMQ3dnQkRnZ0xDd2orOGdnTEN3Z0JEZ2dMQ3dnQUFBRUFBUC92QThJQ3pRQWpBQzVBS3dBQkFBRnZBQUlEQW5BRUFRQURBd0JVQkFFQUFBTllBQU1BQTB3Q0FCNGJFeElMQ2dBakFpTUZCUlFyQVNFaUpqOEJOalF2QVNZaUJ3RUdGQmNCRmpJL0FUWTBMd0VtTmpNaE1qWTlBVFFtQTZmOWdRMEpDYmdKQ1NvSUdBaityd2dJQVZFSUdBZ29DUW00Q1FrTkFuOExFaEFCbUJnSXVRa1hDQ3NJQ1A2dENCZ0kvcThJQ0NrSUdBaTVDaGdRQ3pvTUV3QUFBd0FBLzVBRHdnTXNBQlFBSVFBdUFEcEFOeVlsSHg0RUF3SUJSd1FCQUFBQ0F3QUNZQVVCQXdFQkExUUZBUU1EQVZnQUFRTUJUQ01pQVFBaUxpTXVIQm9MQ2dBVUFSUUdCUlFyQVNJSEJnY0dGQmNXRnhZeU56WTNOalFuSmljbUFUUTNOamMyTXpJV0Z3RXVBUUVpSmljQkhnRVZGQWNHQndZQjlIMXJhVDAvUHoxcGEvcHNhRDQvUHo1b2JQNHBMeTlPVVYwNFpTditIUjRoQVZvNFpTc0I0eDRoTHk5T1VRTXNQejVvYlBwc2FENC9QejVvYlBwc2FENC8vakpkVVU0dkx5RWUvaDByWmY3ZUlSNEI0eXRsT0YxUlRpOHZBQUFBQUFJQUFBQUFBOElDeXdBTkFDUUFLa0FuQUFFREFXOEFBd0FEYndBQUFnQnZBQUlFQkFKVUFBSUNCRmdBQkFJRVREY1RHVFVSQlFVWkt3RVdNamNCTmljbUl3VWlEZ0VYQlRRbUJ3RUdJaWNCSmlJR0ZTWWRBUlFXTXlFeU5qVUIzd2dZQ0FHekJ3VUdGZnlrQ3hJRUNBT1dHd3orckNOZkpQNnVCeE1OQVMwZkF3SWdMUUVQQ0FnQmxBME5EZ0VORXdtY0R3MEsvc1lnSGdFOEJnMExCTnpjSUMwdUh3QUFBQU1BQVAveEF4VUN1QUFZQUNBQUtBQkJRRDRWQVFNRUFVY0FBQUFGQkFBRllBY0JCQUFEQWdRRFlBWUJBZ0VCQWxRR0FRSUNBVmdBQVFJQlRDSWhHaGtsSXlFb0lpZ2RHeGtnR2lBMU13Z0ZGaXNCTkM0Qkl5RWlCaFVSRkJZeklUSStBVFUwSnlZbk5qYzJBeU0xTXpJV0ZBWURJelV6TWhZVUJnTVZOMTAyL3NJUUZoWVFBVDQyWFRjUER4b2FEdy9LM3Q0Yktpb2IzdDRiS2lvQjVUaGlPUllRL1lVUUZqbGlPQ2ttSkIwZUpDYit1NW91UGk0Qklab3ZQQzhBQUFQLy93QUFBKzRDcFFBV0FDTUFNQUJDUUQ4SEFRUURCUU1FQlcwQUJRSURCUUpyQUFBQUF3UUFBMkFHQVFJQkFRSlVCZ0VDQWdGWUFBRUNBVXdsSkJnWEt5b2tNQ1V3SGgwWEl4Z2pHeFFJQlJZckFTNEJKeVlpQnc0QkJ3WVVGeDRCRnhZeU56NEJOellGSWk0Qk5ENEJNaDRCRkE0QkF5SU9BUlFlQVRJK0FUUXVBUVBrTFpkZll0WmlYNWN0QkFRdGwxOWkxbUpmbHkwSi9nYzZZRGs1WUhSaE9UbGhPaVUrSkNRK1NqNGtKRDRCYjF5TUppZ29Kb3hjQ0JNSFhJd21LQ2dtakZ3UjB6bGdkR0U1T1dGMFlEa0JXaVErU2o0a0pENUtQaVFBQWdBQS81QUR3d010QUNjQVZnQlpRRllBQ1FNSmJ3b0JBQUlJQWdBSWJRQUlCZ0lJQm1zQUJnRUNCZ0ZyQ3dVQ0F3Y0JBZ0FEQW1BQUFRUUVBVlFBQVFFRVdBQUVBUVJNS1NnQ0FFMU1SVVE4T1RNd0tGWXBWU0lmR2hjU0R3b0hBQ2NDSnd3RkZDc0JJeUlHSFFFVUJpTWhJaVkxRVRRMk93RXlOajBCTkNZckFTSUdGUkVVRmpNaE1qWTFFVFFtQVNJSEJnY0dCd1lXT3dFeU5qYytBVGMyT3dFeUZnOEJCaFFmQVJZeU53RTJOQ2NCSmlJUEFRNEJId0VXQmlNRHBUb0xFaEVNL1lZTUVSRU1UUXNTRWd1Ukh5MHRId01DSUMwUy90NWVWMVEyT0FnQ0VnMDZDeEFDQmxBK1FVa2ZEUWtKYVFrSktBa1hDQUVHQ0FqKy9BZ1lDQ2dKQWdsckNRa05BUkVSRE5NTUVSRU1BWlFMRVJJTE9nc1NMU0Q5NVNBdExoOEJGd3dSQVRRME1sVlhZd3dURHdwSGVTTWtHQWhzQ0JnSUtRZ0lBUVFJR0FnQkJBZ0lLQWtYQ1d3SUdBQUFBQU1BQUFBQUF5QUNpZ0FVQUMwQVBBQTlRRG9GQVFNQ0JBSURCRzBHQVFBSEFRSURBQUpnQUFRQkFRUlVBQVFFQVZnQUFRUUJUQllWQVFBb0ppSWhIQnNWTFJZdEN3b0FGQUVVQ0FVVUt3RWlCd1lIQmhRWEZoY1dNamMyTnpZMEp5WW5KZ2N5SGdFVkZBY2pJZ1lIRGdFaUppY3VBU3NCSmpVMFBnRVRGajRCTnpZM05pWUhCZ2NPQVJZQjlGRkdSQ2dwS1NoRVJxSkdSQ2dwS1NoRVJsRTdaanNDV1FjTEFnWStVajRHQVFzSVdRSTdaaVFTS0JNTkRRY0lDQjhkSFNBVEN3S0tLU2hFUnFKR1JDZ3BLU2hFUnFKR1JDZ3BVRHRtT3dvVUNRZ25OalluQndvVUNqdG1PLzdhQ2cwak1Dd29LZ1FlSFNNbUl5Y0FBQVVBQUFBQUF5QUNpZ0FrQURJQVFBQktBRlFBWjBCa0N3RUZBVElCQUFVYUFRUUFTQUVKQ0FSSEN3MENDQVFKQkFnSmJRb0JDUWx1QWdFQkJ3RUZBQUVGWUFZRERBTUFCQVFBVkFZRERBTUFBQVJZQUFRQUJFeENRUUVBVWxGUVRrVkRRVXBDU2owOE56WXVMQjRjRnhVUkR3Y0ZBQ1FCSkE0RkZDc0JJelltSnlZaklnWUhCZ2NtSnk0Qkl5SUhEZ0VYSXlJR0hRRVVGak1oTWpZOUFUUW1JU0luTGdJM05qTXlGaGNXRlRjR0J3WWpOVFEzUGdFeUZ4WUdGeU1STXpJMlBRRTBKZ1VWRkJZN0FSRWpJZ1lDNUZjVEJCY2JKUk1tRGdVRkJBWU9KUlFrR3hjRUUxZ1pJd3dJQWpBSURDUCsyUkVTRlJjQ0NnZ01FQmNHQm9BTUZCTVJCZ1laR2dnS0FvUFNyQmdpRFA0RUl4bXEwZ2dNQWZRZVJSZ2JFUThGQ0FnRkVCQWJHRVVlSXhrb0NBd01DQ2daSXdZSEdTRUtDQm9XRXhFVkRRY0dCaEVURmhvSUN5RGIvdklpR01BSURCUytHU01CRGd3QUFBTUFBQUFBQXlBQ2lnQVVBQ0VBTlFCTFFFZ2pJZ0lGQkFGSEFBUURCUU1FQlcwQUJRSURCUUpyQmdFQUFBTUVBQU5nQndFQ0FRRUNWQWNCQWdJQldBQUJBZ0ZNRmhVQkFEQXZKeVVjR3hVaEZpRUxDZ0FVQVJRSUJSUXJBU0lIQmdjR0ZCY1dGeFl5TnpZM05qUW5KaWNtQXlJdUFUUStBVEllQVJRT0FTYzFOQ1lyQVNJR0hRRVVId0VXTWo4Qk5qUW5BZlJSUmtRb0tTa29SRWFpUmtRb0tTa29SRVpSUVc1QlFXNkNia0ZCYmlNTUNCUUlEQWxnQmhBR0RnWUdBb29wS0VSR29rWkVLQ2twS0VSR29rWkVLQ245NUVGdWdtNUJRVzZDYmtIOGdBZ01EQWlNRFFoZ0JnWU9CaEFHQUFVQUFBQUFBdTRDaWdBTkFDVUFTUUJaQUdrQVlFQmRFd0VBQWtROU5nTUJBRUE1SXdNSEFXSmFBZ1lIVWtvQ0JBVUZSd0FDQUFKdkFBQUJBRzhJQVFFQUJ3WUJCMkFBQmdBRkJBWUZZQUFFQXdNRVZBQUVCQU5ZQUFNRUEwd1FEbVprWGx4V1ZFNU1JQjBZRlE0bEVDVW9DUVVWS3dFbkppSUdIUUVVRmpzQk1qWTBCeU1pSmowQk5DWXJBU0lHRlJFVUZqTWhNalkxRVRRbUpUOEJNalUzTmpJZkFSWXpGeDRCRHdFR0ZSY1dCaThCSmc4QkJpWS9BVFF2QVNZMkFSUUdJeUVpSmowQk5EWXpJVElXRlRjVUJpTWhJaVk5QVRRMk15RXlGaFVDNm9RRURBZ1lFR29HQ0JTTUdTTU1DTWdaSXlNWkFYd1pJd3orWGpFQ0FSWUNCUUVXQWdFeEFnSUNKQUVJQVFVQ0xBSUNMQUlGQVFnQkpBRURBVGdNQ1A3OENBd01DQUVFQ0F3b0RBaisxQWdNREFnQkxBZ01BZ0tFQkFnR2FoQVlDQXhRSXhtTUNBd2pHZjRnR1NNakdRRXNDQXhlQndFQkxRSUNMUUlIQVFVQkl3RURNUUlEQVJjQ0FoY0JBd0l4QXdFakFnVCtzd2dNREFnVUNBd01DR1FJREF3SUZBZ01EQWdBQUFnQUFQK1FBOElETEFBUEFCOEFMd0EvQUU4QVh3QnZBSDhBY2tCdkVnRU9CUTV2QmdFRkR3VnZBQThFRDI4SEFRUUFCRzhJQVFJQkNnRUNDbTBRQVFvREFRb0Rhd2tCQXdzQkF3dHJBQXNMYmhFTUFnQUJBUUJVRVF3Q0FBQUJXQTBCQVFBQlRISndZbUJTVUhwM2NIOXlmMnBuWUc5aWIxcFhVRjlTWDBwSkZ4Y1hGeGNYRXpVekV3VWRLd0UxTkNZckFTSUdIUUVVRmpzQk1qWVhKaUlQQVFZVUh3RVdNajhCTmpRbkFSWXlQd0UyTkM4QkppSVBBUVlVRnlVbUlnOEJCaFFmQVJZeVB3RTJOQ2NCSmlJUEFRWVVId0VXTWo4Qk5qUW5KU01pQmgwQkZCWTdBVEkyUFFFMEppVWpJZ1lkQVJRV093RXlOajBCTkNZQkl5SUdIUUVVRmpzQk1qWTlBVFFtQVRRU0M5UUxFUkVMMUFzU0pBZ1lDSllKQ1NnSkZ3bVdDQWdCRHdnWUNKWUpDU2dKRndtV0NBaitoQWtYQ1NnSkNaWUlHQWdwQ0FnQk9RZ1lDQ3NJQ0pZSkZ3a29DUW4rd3pvTEVoSUxPZ3NTRWdHSjFBc1NFZ3ZVQ3hJUy9tRTZDeElTQ3pvTEVoSUJRVG9MRWhJTE9nc1NFa3NJQ0pZSkZ3a29DUW1XQ0JnSUFROElDSllKRndrb0NRbVVDQmdJdkFrSktBa1hDWllJQ0NrSUdBait5UWdJS1FnWUNKWUpDU2dKRndsSkVndlVDeElTQzlRTEV2b1NDem9MRWhJTE9nc1NBWlFTQzlRTEVoSUwxQXNTQUFBQUFBTUFBUC9kQThJQzN3QU1BQ3NBT0FCV1FGTUVDUUlDQXdjREFnZHRDQUVBQndFSEFBRnRBQUVHQndFR2F3QURBQWNBQXdkZ0NnRUdCUVVHVkFvQkJnWUZXQUFGQmdWTUxTd1BEUUVBTXpJc09DMDRKaU1lR3hZVERTc1BLd2NHQUF3QkRBc0ZGQ3NCSWc0QkZCNEJNajRCTkM0QkpTTWlMd0V1QVNzQklnWVBBUTRCS3dFaUJoVVJGQll6SVRJMk5SRTBKZ0VpTGdFMFBnRXlIZ0VVRGdFQjlDcEhLU3BHVkVjcEtVY0JWMlFvR2l3S0xCdThHaTBNTEFvakZHTWZMUzBmQXdJZ0xTMytYejVyUGo1cmZHcytQbXNCMFNsSFVrY3FLVWRVUmlsMElrUVlIQndZUkJBU0xTRCtNaUF0TGg4QnppQXQvZ3crYTN4cVBqNXFmR3MrQUFBQUNBQUEvNUFEbXdNc0FBOEFId0F2QUQ4QVR3QmZBRzhBandES1FBNW9TQ2dEQkFWUU1CQURBZ01DUjB1d0RWQllRRDBSQVE4T0RnOWpFaEFWQXc0QUV3QU9FMkVVQVFBTkNRSUZCQUFGWUF3SUFnUUxCd0lEQWdRRFlBb0dBZ0lCQVFKVUNnWUNBZ0lCV0FBQkFnRk1HMEE4RVFFUERnOXZFaEFWQXc0QUV3QU9FMkVVQVFBTkNRSUZCQUFGWUF3SUFnUUxCd0lEQWdRRFlBb0dBZ0lCQVFKVUNnWUNBZ0lCV0FBQkFnRk1XVUF6Y1hBQ0FJcUhnb0I5ZkhsNGRYUndqM0dQYkdwbFlseGFWVkpNU2tWQ1BEbzFNaTBxSkNJZEdoUVNDZ2NBRHdJUEZnVVVLd0VoSWdZVkVSUVdNeUV5TmpVUk5DWUJGQVlyQVNJbVBRRTBOanNCTWhZVk5SUUdLd0VpSmowQk5EWTdBVElXRlJNVUJpc0JJaVk5QVRRMk93RXlGaFUxRkFZckFTSW1QUUUwTmpzQk1oWVZFeFFHS3dFaUpqMEJORFk3QVRJV0ZUVVVCaXNCSWlZOUFUUTJPd0V5RmhVVEl6VTBKaUlHSFFFaE5UUW1JZ1lkQVNNaUJoMEJGQll6SVRJMlBRRTBKZ04rL093TUVTNGZBclFnTFJIOTR3b0pUUWdMQ3doTkNRb0tDVTBJQ3dzSVRRa0t3UXNJVFFrTEN3bE5DQXNMQ0UwSkN3c0pUUWdMd0FzSVRRa0tDZ2xOQ0FzTENFMEpDZ29KVFFnTFlHQWlMeUwrOGlFd0ltQWdMUkVNQXhRTUVTMEIwUkVML2lnZkxpMGdBZGdMRWY1WkNBc0xDRTBKQ3dzSmRBa0xDd2xOQ0FzTENQN3lDQXNMQ0UwSkN3c0pkQWtMQ3dsTkNBc0xDUDd5Q0FzTENFMEpDd3NKZEFrTEN3bE5DQXNMQ0FHVEp4Z2lJaGduSnhnaUloZ25MUjh4Q3hFUkN6RWdMQUFEQUFEL3R3UENBd1VBRHdBZkFDOEFRRUE5QndJR0F3QUZBUVVBQVcwREFRRUJiZ2dCQkFVRkJGUUlBUVFFQlZnQUJRUUZUQ0lnRWhBQ0FDb25JQzhpTHhvWEVCOFNId29IQUE4Q0R3a0ZGQ3NUSXlJR0ZSRVVGanNCTWpZMUVUUW1LUUVpQmhVUkZCWXpJVEkyTlJFMEppY2hJZ1lkQVJRV015RXlOajBCTkNiZG1nc1JMQ0JxREJFUkFyejl2d3dSRVF3Q0VTQXRFanY4L2lBc0VRc0RZZ3NTTFFJTEVReitGaUF0RVF3Q0dnd1JFUXo5NWd3UkxTQUI2Z3dSK2kwZ1F3c1NFZ3RESUMwQUFBQUVBQUQveWdPYkF2SUFEd0FmQUM4QVB3QTJRRE1BQUFBQkFnQUJZQUFDQUFNR0FnTmdBQVlBQndRR0IyQUFCQVVGQkZRQUJBUUZXQUFGQkFWTU5UVTFOVFUxTlRJSUJSd3JBVFFtSXlFaUJoMEJGQll6SVRJMk5SVTBKaU1oSWdZZEFSUVdNeUV5TmpVUk5DWWpJU0lHSFFFVUZqTWhNalkxRVRRbUl5RWlCaDBCRkJZeklUSTJOUU9iRVF6ODdBd1JFUXdERkF3UkVRejg3QXdSRVF3REZBd1JFUXo4N0F3UkVRd0RGQXdSRVF6ODdBd1JFUXdERkF3UkF0VUxFaElMT2dzUkVRdXREQkVSRERrTUVSRU0vbXdMRWhJTE9nc1NFZ3NCSVFzUkVRczZEQkVSREFBQUJBQUEvOG9EbXdMeUFBOEFId0F2QUQ4QU5rQXpBQUFBQVFJQUFXQUFBZ0FEQmdJRFlBQUdBQWNFQmdkZ0FBUUZCUVJVQUFRRUJWZ0FCUVFGVERVMU5UVTFOVFV5Q0FVY0t3RTBKaU1oSWdZZEFSUVdNeUV5TmpVSE5DWWpJU0lHSFFFVUZqTWhNalkxQXpRbUl5RWlCaDBCRkJZeklUSTJOUk0wSmlNaElnWWRBUlFXTXlFeU5qVURteEVNL093TUVSRU1BeFFNRVhNU0MvM1NDeElTQ3dJdUN4SW5FUXorSUF3UkVRd0I0QXdSbWhFTS9Pd01FUkVNQXhRTUVRTFZDeElTQ3pvTEVSRUxyUXdSRVF3NURCRVJEUDVzQ3hJU0N6b0xFaElMQVNFTEVSRUxPZ3dSRVF3QUFBQURBQUQvandQQ0F5d0FEd0FmQURFQUkwQWdBQU1CQTI4QUFRSUJid0FDQkFKdkFBUUFCRzhBQUFCbUhoY2FGeElGQlJrck54Y1dNamNCTmpRdkFTWWlCd0VHRkFFR0ZCOEJGakkvQVRZMEx3RW1JZ2NCQmhZL0FUWS9BVFkwTHdFbUlnOEJCZ2UzcXdZUEJnR3JCUVdwQmhBRi9sTUdBZ1VGQmFvRkVBVXhGeGRiRno4WC9VVUNGUTdTQ2djRUJBYXRCUkFFQkFZRTBLc0dCZ0dzQmhBRnFnVUYvbE1HRGdJUEJSQUZxZ1VGTUJZOUYxc1hGL3llRGhZRE1nTUhCQVFRQmEwR0JBUUdDd0FBQUFBRkFBRC9rQVBDQXl3QUR3QVRBQ01BTXdCREFHaEFaVUU1TVNrRUJnY0JSd2tCQndRR0JBY0diUTBJREFNR0FnUUdBbXNBQVFBREJRRURYZ0FGQ3dFRUJ3VUVZQUFDQUFBQ1VnQUNBZ0JZQ2dFQUFnQk1OVFFsSkJVVUFnQStPelJETlVNdUt5UXpKVE1lR3hRakZTTVRFaEVRQ2djQUR3SVBEZ1VVS3dVaElpWTFFVFEyTXlFeUZoVVJGQVlsSVJFaEFTRWlKajBCTkRZeklUSVdIUUVVQmdFaklpWTlBVFEyT3dFeUZoMEJGQVloSXlJbVBRRTBOanNCTWhZZEFSUUdBNXY4c2hBV0ZoQURUaEFYRi96SUF3TDgvZ0o3L2d3SUN3c0lBZlFKQ2dyK2RuTUlDd3NJY3drTEN3RjQ1d2dMQ3dqbkNRb0tjQmNRQTA0UUZ4Y1EvTElRRjAwREF2N3lDd2x6Q1FvS0NYTUpDLzZBQ3dqbkNBc0xDT2NJQ3dzSTV3Z0xDd2puQ0FzQUFBQUNBQUQva0FPdUF5d0FEd0EzQUIxQUdnQUFBZ0J2QUFJREFtOEFBd0VEYndBQkFXWXBMRFV5QkFVWUt4TTBKaXNCSWdZVkVSUVdPd0V5TmpVQkJnY0dKeVluSmljbUl3WUhEZ0VWRVJRV056WXpGaGNXRnhZWEZoY1dOelkzUGdFMUVUUW1yUkVNT1F3UkVRdzVEQkVDNVVnNUx5MGJNalFmTXpsRlZ3Z0xFUWhVUkRjekhqUW1GQ0lnSmlzd093Y0lFd01QQ3hJU0MveWVDeElTQ3dNUkpnWUdFUW9lSUF3VUFSNENFQW4rUUFvTEJCd0JGQXdmR0FrUEJBUUxEU0VFRGdjQnZ3b0xBQU1BQVArUEE0Z0RMUUFYQUM4QVB3QXVRQ3NBQkFVRWJ3QUZBd1Z2QUFNQUFnRURBbUFBQVFBQUFWUUFBUUVBV0FBQUFRQk1GeDhiR3hzU0JnVWFLeVVGQmlJbkpTWTBQd0UyTWg4QkZqSS9BVFl5SHdFV0ZDY0ZCaUluSlNZMFB3RTJNaDhCRmpJL0FUWXlId0VXRkMwQkpqUTNKVFl5RndVV0ZBY0ZCaUlEZWY2V0RpTU8vcGdMQzFVRUN3VGJJRXNmM0FRTEJGVUxDLzZXRGlNTy9wZ0xDMVVFQ3dUYklFb2czQVFMQkZVTC9rLytsd3dNQVdrUEl3NEJhUXdNL3BjT0kyYk9DQWpPQmhjR01BTURmUklTZlFNRE1BWVg0YzRKQ2M0RkdBVXdBd045RVJGOUF3TXdCUmdVemdVWEJzNElDTTRHRndYT0J3QUFBQVFBQUFBQUF5QUNNQUFQQURBQVFBQlFBTnBBRUVsQkFnWUhPVEVDQkFVdUFRSUVBMGRMc0JsUVdFQXhBQWNEQmdNSFpRQUVCUUlDQkdVSUFRQUFBd2NBQTJBQUJnQUZCQVlGWUFrQkFnRUJBbFFKQVFJQ0FWa0FBUUlCVFJ0THNCcFFXRUF5QUFjREJnTUhaUUFFQlFJRkJBSnRDQUVBQUFNSEFBTmdBQVlBQlFRR0JXQUpBUUlCQVFKVUNRRUNBZ0ZaQUFFQ0FVMGJRRE1BQndNR0F3Y0diUUFFQlFJRkJBSnRDQUVBQUFNSEFBTmdBQVlBQlFRR0JXQUpBUUlCQVFKVUNRRUNBZ0ZaQUFFQ0FVMVpXVUFiRWhBQ0FFMUxSVU05T3pVeklpRVFNQkl3Q2djQUR3SVBDZ1VVS3dFaElnWVZFUlFXTXlFeU5qVVJOQ1lCSXlJbU5UWTNOamMyTnpZMU5DY21ORFl5RmhVVUJ3WVZGQmNXRnhZWEZnWTNGQVlyQVNJbVBRRTBOanNCTWhZVk5SUUdLd0VpSmowQk5EWTdBVElXRlFMay9pQVpJeU1aQWVBWkl5UCs2YXdPRkFFVURoNFFCZ1FPRlNJNkloVU9CQVlRUUFFQ0ZOd01DRm9JREF3SVdnZ01EQWlXQ0F3TUNKWUlEQUl3SXhuKzNoa2pJeGtCSWhrai9xd1pFQlFSREE0SENBVUpEZ3dUUFNnb0hpQVNEQTRKQlFnR0d5VVBHa1lJREF3SUhnZ01EQWhRQ0F3TUNCNElEQXdJQUFNQUFBQUFBeHNDZGdBbEFDNEFOd0JLUUVjQUFnQURBQUlEWUFBQkNnRUFCUUVBWUFBRkFBUUhCUVJnQ1FFSEJnWUhWQWtCQndjR1dBZ0JCZ2NHVEFFQU5qVXlNUzBzS1NnZ0hSb1hGQklQREFrSEFDVUJKUXNGRkNzQklUSTJQd0UySmlNaEp5NEJLd0VpRGdFV093RVRIZ0V6SVRJK0FTWWpJU0ltSnpVbU5nY1VGakkyTkNZaUJoY1VGakkyTkNZaUJnR29BU2NIQ3dFMkF3d0svamdJQXhBS01Bd1RBaElOSEY0REVBb0JYQXdUQWhJTi9zNEtFQUlGRWg0ZEtoMGRLaDN3SFNvZEhTb2RBVjRJQjc0S0R4d0tEQkFaRS83Q0Nnd1FHUk1NQ1FFT0dPWVZIUjBxSFIwVkZSMGRLaDBkQUFBQ0FBQUFBQU1pQWt3QUN3QWdBQ1JBSVFBQkFBRnZBQUFDQUc4QUFnTURBbFFBQWdJRFdBQURBZ05NT0JnMEVRUUZHQ3NCRmpJM0FUWW1Jd1VpQmhjRk5DWVBBUVlpTHdFbUJoVVJGQll6SVRJMk5TSUI1d1lQQmdFYkJRY08vZEFNREFnQ1V4SUgzQlkvRjkwSEVpTVpBZUFaSXdFQkxBVUZBUVlKRVFFUkNXOEtDQWZNRlJYTUJ3Z0svdndaSXlNWkFBQUFBZ0FBLzVBRHdnTXNBQlFBTEFBMFFERUdBUUFGQUc4QUJRTUZid0FEQkFOdkFBUUNCRzhBQWdFQ2J3QUJBV1lCQUNnbkpDTWdIeGdYQ3dvQUZBRVVCd1VVS3dFaUJ3WUhCaFFYRmhjV01qYzJOelkwSnlZbkpoTUJCaUl2QVNZMFB3RTJNaDhCRmpJL0FUWXlId0VXRkFIMGZtdHBQRDgvUEdsci9HeG9QVDgvUFdoc2hQN2FDUmtKb1FrSktna1pDRlVHRVFiWENSa0lLd29ETEQ4OWFHejhiR2c5UHo4OWFHejhiR2c5UC82bC90WUlDS1FJR2dncUNRbFdCZ2JmQ1FrcUNSa0FBQUFCQUFEL3RRT2RBd1VBUndCRFFFQkZBUU1BQVVjR0FRQURBRzhBQXdRRGJ3QUNCUUVGQWdGdEFBRUJiZ0FFQlFVRVZBQUVCQVZZQUFVRUJVd0NBRUkvT2pjeEx5RWdHUmNBUndKSEJ3VVVLd0VqSWdZZEFSUUdKeVluTGdFSEJnY09BUWNHRmhjZUFUTXlOamMrQVM4QkxnRUhEZ0VuSmljdUFqYzJOejRCTXpJV0Z4WVhGZ1lyQVNJR0hRRVVGak1oTWpZMUVTNEJBMzQ1REJFTkNna0xTTUZvU2p4WVlRSUNPemM2bGxSSmh6Y0tBUWtvQ0JZSk5JZEdKQ1UyUmhZUENSWW9oRXc2YWlnTUN3UVBEb2NMRWhBTEFXQUtEd0lSQXdVUkRJWU9DQWdNQjBrNUZBOHBPYkpsVHBVNFBVQXlMZ2taQ1NnSUFRY3NIeEVKRmlGbWV6OGtKVVpNTENnTEVBc01FZ3M4Q3hBUENnRmVEQkVBQkFBQS84b0Rtd0x5QUE4QUh3QXZBRDhBTmtBekFBQUFBUUlBQVdBQUFnQURCZ0lEWUFBR0FBY0VCZ2RnQUFRRkJRUlVBQVFFQlZnQUJRUUZURFUxTlRVMU5UVXlDQVVjS3dFMEppTWhJZ1lkQVJRV015RXlOalVITkNZaklTSUdIUUVVRmpNaE1qWTFFVFFtSXlFaUJoMEJGQll6SVRJMk5STTBKaU1oSWdZZEFSUVdNeUV5TmpVRG14RU0vT3dNRVJFTUF4UU1FWm9SRFAyR0RCRVJEQUo2REJFUkRQMkdEQkVSREFKNkRCR2FFUXo4N0F3UkVRd0RGQXdSQXRVTEVoSUxPZ3NSRVF1dERCRVJERGtNRVJFTS9td0xFaElMT2dzU0Vnc0JJUXNSRVFzNkRCRVJEQUFBQUFBQkFBQUFBQU5pQWtVQURBQVlRQlVDQVFBQkFHOEFBUUZtQWdBSUJ3QU1BZ3dEQlJRckV5RXlIZ0VIQVFZaUp3RW1OcUFDcUFvT0FRZitzd2dmQ2Y2dkNnNENSUTRVQ1A1b0RBd0JtQTBkQUFJQUFQK0lBNnNETFFBZUFDMEFDTFV0S0JRSUFpMHJBUVVHTGdFMUVUUW1CdzRCQndZWEhnRVhGaGNXTno0Qk56WTFOQ2N1QVFVbFBnRW5KaWNtSnlZR0ZSRVVGZ05yL25ZTkd4SVhEV0NWSkNZTENtZFJVbUZlV0ZTREpDWUdBaHYrblFGN0VRa0xRbUJqY2hRZ0ZRR1EyUWNHRlE0QjJBNFNCQnFHWFdCb1lLUXpOUW9LSFJ4M1VWTmNJeUlPREYvS0NDY1FXencrRWdRYkZQNU9EUXdBQUFBQUJBQUEvN01Ed2dNRkFCMEFKZ0F2QURnQVFVQStDQUVBQXdCdkJ3VUNBd0lEYndzR0NnUUpCUUlCQW04QUFRRm1NVEFvSng4ZUFRQTFOREE0TVRnc0t5Y3ZLQzhqSWg0bUh5WVVFZ0FkQVIwTUJSUXJBU0lIQmdjR0ZSUVhGZzhCQmhZL0FUWVhGak0yTnpZM05pWW5KaWNtQVNJbU5EWXlGaFFHTXlJbU5EWXlGaFFHTXlJbU5EWXlGaFFHQWZSK2EyZzlQamdLQmp3RUVReW1EUlJ2Z1h4cmFEdy9BVDgrYUd2K25COHVMajh0TGNjZkxpNC9MUzNISHk0dVB5MHRBd1U1T0Y5aWMyWm1EeEtqREJBRFB3WUtQUUU2T0Y5aTZHTmdOenIrREM0L0xTMUFMUzQvTFMwL0xpNC9MUzAvTGdBQUFBSUFBUCtRQThJRExBQVVBQ1lBSmtBakJBRUFBd0J2QUFNQ0EyOEFBZ0VDYndBQkFXWUJBQ01nR2hjTENnQVVBUlFGQlJRckFTSUhCZ2NHRkJjV0Z4WXlOelkzTmpRbkppY21FdzRCSXlFaUppY21OejRCTXlFeUZoY1dBZlI5YTJrOVB6ODlhV3Y2YkdnK1B6OCthR3hvQWhBTC9uQUxFUUVEQXdJUUN3R1FDeEFDQXdNc1B6NW9iUHBzYUQ0L1B6NW9iUHBzYUQ0Ly9oRUtEdzRMSXg4S0R3OEtJZ0FBQUFFQUFQL3dBdHNDMEFBTUFBcTNBQUFBWmhNQkJSVXJBUkVVRGdFbkFTWTBOd0UyRmdMYkRoUUkvbWdNREFHWURSMENzdjFZQ2c0QkJ3Rk5DUjhJQVZFS0RnQUFBd0FBLzQ0RHdnTTBBRGNBYmdDU0FEeEFPWXFCZUFNRkFBRkhBQUlEQW04QUF3UURid0FFQVFSdkFBRUFBVzhBQUFVQWJ3QUZCZ1Z2QUFZR1pvMk1pSWQ3ZW5aMVNFWWpFQWNGRmlzbElpY21KeVlHRHdFT0FTWW5MZ0UyUHdFMk56WVdGeFlYRmhjZUFUOEJOaThCSmljbUp5NEJCZ2NHRHdFT0FSWVhIZ0UyUHdFMkpnRStBU1luTGdFR0R3RUdGaGNXRnhZMlB3RStBUllYSGdFR0R3RUdCd1luSmljbUp5NEJEd0VPQVI4QkZoY1dGeFlYRmpZM05qY1hOelkwTHdFbUlnOEJKeVlpRHdFR0ZCOEJCd1lVSHdFV01qOEJGeFl5UHdFMk5DY0J6aEVTRGhjRkN3TUhHRUJDR1J3VkVScC9HQ0lVS1JNWkVnZ0pCUk1ITUFvSUNna0VEUndtVUZFbEdSdDdMQ0lhS2l4NmV5NHFDQW9CTUMwZkl5OHRkM1VzSmdrSURDZ2ZCZ3NEQnhoQVFoa2NGUkVhZnhVbEtpWVlFd2dIQlJNSExnWUJCUWtJQmhJV0lpMG5VaVVlRnRWWkJnWTJCZzhHVmxNR0R3WTJCZ1pUVVFZR05nWVBCbEZXQmc4R05nWUdrZ1lDQ0FFQ0F3Z1lFd3NXR1VWR0dYOFlDUVVEQ0FrVUNnMEpBZ2N3REEwTUNRWU5GQmNQRFJRTEczc3Nkbll0THlNZUxpb0lGZ0VRTG50NkxDb2FJaXdtQ1JZQ0F3b0JBZ01IR0JNTEZobEZSaGwrRmdzTUVnZ1VDQTRJQWdjdUJRNEdDZ3NHRVE4V0NRZ05GQkFXNWxnR0R3WTJCZ1piVXdZR05nVVFCbEpSQmc4R05nWUdVVmNGQlRZR0R3WUFBQUFBQlFBQS81QUR3Z01zQUE4QUh3QXZBRWNBWHdCcVFHY01BUUFBQVFJQUFXQUtEUUlDQUFNSkFnTmdFQUVKQUFzRUNRdGdCdzRDQkFBRkJnUUZZQThCQmdnSUJsUVBBUVlHQ0ZnQUNBWUlURXBJTWpBaUlCSVFBZ0JhVjFKUFNGOUtYMEkvT2pjd1J6SkhLaWNnTHlJdkdoY1FIeElmQ2djQUR3SVBFUVVVS3dFaElnWWRBUlFXTXlFeU5qMEJOQ1lISVNJR0hRRVVGak1oTWpZOUFUUW1BeUVpQmgwQkZCWXpJVEkyUFFFMEpnY2hJaVk5QVRRbUt3RWlCaDBCRkJZeklUSTJQUUUwSmdNaElpWTlBVFFtS3dFaUJoMEJGQll6SVRJMlBRRTBKZ09sL0o0TEVSRUxBMklMRWhJTC9WOE1FUkVNQXFFTEVoSUwvVjhNRVJFTUFxRUxFaElML1JJTUVSSUxPZ3NSRVFzRFlnc1NFZ3Y5RWd3UkVnczZDeEVSQ3dOaUN4SVNBeXdTQzJBTUVSRU1ZQXNTNXhJTE9nc1NFZ3M2Q3hMK2Z4RU1PUXdSRVF3NURCSEFFUXlHREJFUkRQb0xFaElMT2dzU0FZRVJDNGNMRWhJTCtnc1NFZ3M2Q3hJQUFBSUFBQUFBQXU0Q2lnQVhBQ1VBTUVBdEJRRURBUlVCQWdBQ1J3QUJBd0Z2QUFNQUEyOEVBUUFDQUc4QUFnSm1BZ0FpSUJJUENnY0FGd0lYQlFVVUt3RWpJaVk5QVRRbUt3RWlCaFVSRkJZeklUSTJOUkUwSmpjbkppSUdIUUVVRmpzQk1qWTBBdHFNR1NNTUNNZ1pJeU1aQVh3Wkl3d0loQVFNQ0JnUWFnWUlBYTRqR1l3SURDTVovaUFaSXlNWkFTd0lERlNFQkFnR2FoQVlDQXdBQUFBRkFBQUFBQU1XQW9vQUZ3QW5BRGNBUndCWEFIQkFiUVVCQVFBd0tBSUdCVkJJQWdrS0RRRUNDVUE0QWdjQ0JVY0xBUUFBQVFNQUFXQU1BUU1BQlFZREJXQUFCZ0FLQ1FZS1lBQUpDQUVDQndrQ1lBQUhCQVFIVkFBSEJ3UllBQVFIQkV3YUdBSUFWRkpNU2tSQ1BEbzBNaXdxSWg4WUp4b25FZzhLQndBWEFoY05CUlFyQVNFaUJoMEJGQll6SVRJV0ZSRVVGanNCTWpZMUVUUW1CeUVpQmhVUkZCWXpJVEkyTlJFMEpnVTBOanNCTWhZZEFSUUdLd0VpSmpVWEZBWXJBU0ltUFFFME5qc0JNaFlWTnhRR0t3RWlKajBCTkRZN0FUSVdGUUxhL3NBWkl3WUVBU0laSXdZRUNoa2pJNlgrd0Jrakl4a0JRQmtqSS82N0RBaklDQXdNQ01nSURQQU1DTWdJREF3SXlBZ01LQXdJOEFnTURBandDQXdDaWlNWkNnUUdJeG4reWdRR0l4a0JWQmtqakNNWi9xd1pJeU1aQVZRWkkyUUlEQXdJRkFnTURBandDQXdNQ0JRSURBd0laQWdNREFnVUNBd01DQUFKQUFEL2tBUENBeXdBRHdBZkFDOEFQd0JQQUY4QWJ3Q0hBSjhBbGtDVEZBRUFBQUVDQUFGZ0VoY0dGZ1FWQmdJSEJRSURFUUlEWUJ3QkVRQVRDQkVUWUE4YURCa0tHQVlJRFFzQ0NRNElDV0FiQVE0UUVBNVVHd0VPRGhCWUFCQU9FRXlLaUhKd1ltQlNVRUpBTWpBaUlCSVFBZ0NhbDVLUGlKK0tuNEovZW5kd2gzS0hhbWRnYjJKdldsZFFYMUpmU2tkQVQwSlBPamN3UHpJL0tpY2dMeUl2R2hjUUh4SWZDZ2NBRHdJUEhRVVVLd0VoSWdZZEFSUVdNeUV5TmowQk5DWUZJeUlHSFFFVUZqc0JNalk5QVRRbUlTTWlCaDBCRkJZN0FUSTJQUUUwSmlFaklnWWRBUlFXT3dFeU5qMEJOQ1lCSXlJR0hRRVVGanNCTWpZOUFUUW1JU01pQmgwQkZCWTdBVEkyUFFFMEppRWpJZ1lkQVJRV093RXlOajBCTkNZSElTSW1QUUUwSmlzQklnWWRBUlFXTXlFeU5qMEJOQ1lESVNJbVBRRTBKaXNCSWdZZEFSUVdNeUV5TmowQk5DWURwZnllQ3hFUkN3TmlDeElTL2RxR0RCRVJESVlNRVJFQkFvY0xFaElMaHdzUkVRRUNod3NTRWd1SEN4SVMvZHFHREJFUkRJWU1FUkVCQW9jTEVoSUxod3NSRVFFQ2h3c1NFZ3VIQ3hJU0MvMFNEQkVTQ3pvTEVSRUxBMklMRWhJTC9SSU1FUklMT2dzUkVRc0RZZ3NTRWdNc0VndGdEQkVSREdBTEV1Y1NDem9MRWhJTE9nc1NFZ3M2Q3hJU0N6b0xFaElMT2dzU0VnczZDeEwrZnhFTU9Rd1JFUXc1REJFUkREa01FUkVNT1F3UkVRdzVEQkVSRERrTUVjQVJESVlNRVJFTStnc1NFZ3M2Q3hJQmdSRUxod3NTRWd2NkN4SVNDem9MRWdBQUFBQUVBQUQva0FQSkF5d0FEd0FuQUQ4QVR3Qm9RR1VBREFZTWJ3QU5CUWNGRFFkdEFBY0NCUWNDYXdRQkFnZ0ZBZ2hyQ3dFSUF3VUlBMnNBQXdBRkF3QnJBQUFKQlFBSmF3QUJDZ0Z3QUFZQUJRMEdCV0FBQ1FvS0NWUUFDUWtLV0FBS0NRcE1UVXBGUWowN05qVTBNeVFWRVJRa0ZDTTFNZzRGSFNzbE5DWWpJU0lHSFFFVUZqTWhNalkxQXlNaUJoOEJGakkvQVRZbUt3RTBOamMyTXpVaUJ3NEJCU1lpRHdFR0Zqc0JGQTRCSXhVeU56WTNOalV6TWpZbkV6UW1JeUVpQmgwQkZCWXpJVEkyTlFHQkVndiszd3NSRVFzQklRc1M1VjRQQ3dpYUJnOEdtZ2dMRGxzM0t5NHZWVWRGVVFLSUJnOEdtZ2dMRGwweFdEbFZTRVlvS2w0UEN3Z0NFZ3YrM3dzU0Vnc0JJUXNTZ1FzU0VndlVDeElTQ3dIK0V3aWdCQVNnQ1JJdldSd2NkQ2twalRRRUJLQUlFemxYTUhRcEtVVklWUk1JQWVNTEVoSUwxQXNTRWdzQUFBSUFBUCszQTVzREJRQVBBRG9BUEVBNUFBTUFBMjhIQVFBQ0FHOEVDQUlDQlFKdkFBVUJCVzhBQVFZQmJ3QUdCbVlTRUFJQU1qQXFLQ01oR2hjUU9oSTZDZ2NBRHdJUENRVVVLeE1qSWdZVkVSUVdPd0V5TmpVUk5DWUZJeUltUFFFMEppc0JJZ1lkQVJRR0J3WWpJZ1lWRVJRV014WVhGaGNXRnhZek1qYzJOelk5QVRRbXltQU1FUkVNTUNBdEVnSjVjeDh1TFNBd0N4SXNKQ1l0REJFUERDa25HQ292R2l3d1Z6RkRJaWd0QWI0UkRQNUdDeEl1SHdHS0RCRVRMaC9BSUMwUkRITXpYUndlRVF6K2dBd1JBZ2tGRFE4RkNRb09KU3RQOENBdEFBQUFBQUlBQVArUUE4SURMQUFmQUVNQVIwQkVNQUVGQmdGSEFBWUZCbThIQVFVQUJXOENDQUlBQkFCdkFBUUJCRzhBQVFNREFWUUFBUUVEV0FBREFRTk1BZ0ErUFRVeUtpa2lJUm9YRWc4S0J3QWZBaDhKQlJRckpTTWlCaDBCRkFZaklTSW1QUUUwSmlzQklnWVZFUlFXTXlFeU5qVVJOQ1lGRmpJM0FUWTBMd0VtSWc4QkJpWTFFUzRCS3dFaUJoVVJGQVl2QVNZaUR3RUdGQmNEcFRvTEVoRU0vWVlNRVJJTE9nc1JMUjhEQWlBdEV2NHhDQmdJQVFRSUNDa0lGd2xzQ0JnQkZBbzZDeElZQ0d3SkZ3Z3BDQWorRWd2QURCRVJETUFMRWhJTC92d2dMUzRmQVFRTEVuOEpDUUVFQ0JjSktBa0phd2tKRFFHYUN4SVNDLzVvRFFrSmF3a0pLZ2tYQ0FBQUFBQUJBQUFBQUFQREFxUUFGd0FrUUNFQUFnQUNid0FBQVFCdkFBRURBd0ZVQUFFQkExZ0FBd0VEVEJjVEV4WUVCUmdySlFFbU5EOEJOaklmQVJZeU53RTJNaDhCRmhRSEFRWWlBVy8rd3dnSUtna1pDZTRHRVFZQjB3a1pDU29JQ1AzZ0NSa2hBVDhKR1FnckNBanhCUVVCMXdrSktnZ2FDUDNhQ2dBQUFRQUEvN1VDN3dNRkFCY0FFVUFPQUFBQkFHOEFBUUZtSHhZQ0JSWXJCUUVtTkRjQk5qSWZBUllVQndFR0ZCY0JGaFFQQVFZaUFwTCtjQWtKQVpBSUdnZ3FDUW4rd3dnSUFUb0lDQ3NIRjBNQmlna1pDQUdMQ0FnckNCb0kvc29JR1FuK3lnZ2FDQ29IQUFBQUJBQUEvNUFEd2dNc0FCVUFMQUJDQUZnQVQwQk1VVWdPQlFRQkFEc3lKUndFQWdRQ1J3Y0lBZ0FCQUc4QUFRWUJid0FHQXdadkFBTUVBMjhBQkFJRWJ3VUpBZ0lDWmhnV0FnQlhWRXRLUVQ0MU5DTWlGaXdZTEF3TEFCVUNGUW9GRkNzQklTSUdId0VIQmhRZkFSWXlQd0VYRmpZMUVUUW1BU0V5TmlZdkFUYzJOQzhCSmlJUEFTY21CaFVSRkJZbEVUUW1Ed0VuSmlJUEFRWVVId0VIQmhZeklUSTJBUkVVRmo4QkZ4WXlQd0UyTkM4Qk56WW1JeUVpQmdPci90VU9Cd3hlclFjSFJ3Z1VDYTllQ3hZTy9JOEJLUWtLQWdoZXJRZ0lSd2NWQ2ExZ0RSY1NBNGtXQzE2dEJ4VUpSd2NIcjE0TUJ3NEJLQWtOL0dVWkMyQ3ZDQllIUndnSXJWNExCZy8rMkFvVUF5d1dDMTZ0QnhVSlJ3Y0hyMTRNQnc0QktBa04vR1FNRWdkZ3J3Z1dCMGNJQ0sxZUN3WVAvdGdLRlJjQkt3NEhERjZ0Q0FoSEJ4VUpyMTRMRmc0RGNmN1lEd1lMWHEwSEIwY0lGQW10WUEwWUV3QUFBQUFDQUFEL2hnUExBekVBT2dCd0FBcTNBQUFBWmlRQkJSVXJKUzhCSmljbUJnOEJEZ0VtSnk0Qk5qOEJOamMyRnhZWEZoY2VBVDhCTmljbUx3RW1KeVluSmdZSEJnOEJEZ0VYRmhjV0Z4WTJQd0UyTkNZQkppY21CZzhCQmhZWEZoY1dQd0UrQVJZWEhnRUdEd0VHQndZbkppY21KeTRCRHdFT0FSY1dGeFlYSGdFMk56WS9BVFkzTmlZQ0N5Z1BFUWtGRGdRSkhFbExIQ0FZRXgyU0d5Y3ZMU0FTQ2drR0ZnYzJDd2tHRGdjZEVTWTFMVjRvSXhpTk1pY1BEekF5UjBTTU5EQUdEQUZhTkVWRGhqRXNDZ29OS1NnT0NRb2JTa29jSUJrVEhwSWFKekF0SEJZS0NRWVdCelVHQVFVSUV4SWNLVnhkS1NNWmtqVVJFaWd3QmdRRUF3SURCQW9jRmc0WkcwNVFIcElaRGdzUkR4SUtEd29DQ0RZTUVRZ1BDQnNKR1FvSURSWVVHSTB5aDBKRk16Y1VGQ00wTVFRUURRSzBNQThQS0RJcUNoc0NBd3dEQ1FrY0ZnMFpHMDlRSHBJYURBd1NEQlFMRGdzQ0NUWUZFQWdORVJRUkdoRU9GUlFaa2pSSFJZc0FBQUVBQVAvYkEzVUMzZ0F2QURsQU5pc0JBd0VCUndBQUJBQnZBQUVDQXdJQkEyMEFBd051QlFFRUFnSUVWQVVCQkFRQ1dBQUNCQUpNQUFBQUx3QXZOeGtYSEFZRkdDc0JKaWNtSnlZL0FUWTBMd0VtSWdjQkJoUVhBUll5UHdFMk5DOEJKalkzRmhjV0Z4WVhGQlk3QVRJMkp5NEJKeVlCY1FJREJRSUNCV3NKQ1NnSkZ3aisvQWtKQVFRSUZ3a29DUWxwQ1FnS2FscFlOamdHRWdzNkRRNENCNGh3ZFFIMkF3TUhCZ2tGYXdrWENTb0pDZjc4Q0JjSi92d0lDQ2tJR0Foc0NCWURCRFkxV0Z0ckN4QVNEWXJsUTBVQURRQUEvNUFEbXdNc0FBOEFId0F2QUQ4QVR3QmZBRzhBZndDUEFKOEFyd0MvQU04QXdFQzlHZ0VBQUFFQ0FBRmdIUVljQkJzRkFnY0ZBZ01JQWdOZ0lBd2ZDaDRGQ0EwTEFna09DQWxnSXhJaUVDRUZEaE1SQWc4VURnOWdKaGdsRmlRRkZCVVZGRlFtR0NVV0pBVVVGQlZZR1JjQ0ZSUVZUTUxBc3JDaW9KS1Fnb0J5Y0dKZ1VsQkNRREl3SWlBU0VBSUF5c2ZBejhMUHVyZXd2N0svcXFlZ3I2S3ZtcGVRbjVLZmlvZUFqNEtQZW5kd2YzSi9hbWRnYjJKdldsZFFYMUpmU2tkQVQwSlBPamN3UHpJL0tpY2dMeUl2R2hjUUh4SWZDZ2NBRHdJUEp3VVVLd0VoSWdZZEFSUVdNeUV5TmowQk5DWUZJeUlHSFFFVUZqc0JNalk5QVRRbUlTTWlCaDBCRkJZN0FUSTJQUUUwSmlFaklnWWRBUlFXT3dFeU5qMEJOQ1lGSXlJR0hRRVVGanNCTWpZOUFUUW1JU01pQmgwQkZCWTdBVEkyUFFFMEppRWpJZ1lkQVJRV093RXlOajBCTkNZRkl5SUdIUUVVRmpzQk1qWTlBVFFtSVNNaUJoMEJGQlk3QVRJMlBRRTBKaUVqSWdZZEFSUVdPd0V5TmowQk5DWUZJeUlHSFFFVUZqc0JNalk5QVRRbUlTTWlCaDBCRkJZN0FUSTJQUUUwSmlFaklnWWRBUlFXT3dFeU5qMEJOQ1lEZnZ6c0RCRVJEQU1VREJFUi9ZMnREQkVSREswTEVoSUJLYTBNRVJFTXJRc1JFUUVvclFzU0VndXREQkVSL1kydERCRVJESzBMRWhJQkthME1FUkVNclFzUkVRRW9yUXNTRWd1dERCRVIvWTJ0REJFUkRLMExFaElCS2EwTUVSRU1yUXNSRVFFb3JRc1NFZ3V0REJFUi9ZMnREQkVSREswTEVoSUJLYTBNRVJFTXJRc1JFUUVvclFzU0VndXREQkVSQXl3U0MyQU1FUkVNWUFzUzV4SUxPZ3NTRWdzNkN4SVNDem9MRWhJTE9nc1NFZ3M2Q3hJU0N6b0xFc0FTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDem9MRWhJTE9nc1NFZ3M2Q3hMQkVRdzVEQkVSRERrTUVSRU1PUXdSRVF3NURCRVJERGtNRVJFTU9Rd1J3QklMT2dzU0VnczZDeElTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDem9MRWdBQUFRQUFBQUFETkFKUEFEQUFPVUEySlE0Q0FBRVpBUVFBQWtjdEJRSUJSUVVCQkFBRWNBSUJBUUFBQVZRQ0FRRUJBRmdEQVFBQkFFd0FBQUF3QURBMkhpWW9CZ1VZS3lVaUp5WW5Bd2NPQVNzQklpWTlBVFEyT3dFM1BnRWVBUmNUTno0QkhnRWZBVE15RmgwQkZBWXJBU0ltTHdFSERnRUI2Z2NIREFST1FRTVBDVm9JREF3SVJsd0VFQlFQQWs5b0JCQVNEZ1EwV2dnTURBaHVDUThFSVhBRURvSUVCaEFCT0pVSkNnd0lGQWdNMUFrS0Fnd0svc1RuQ1FvQ0N3aDREQWdVQ0F3S0NFMzNDQW9BQ0FBQUFBQUREQUtLQUE4QUh3QXZBRDhBVHdCZkFHOEFqd0RZUUJ5RkFSTU9EUUVGQUdoZ1NFQW9JQVlFQlZoUU9EQVlFQVlDQXdSSFM3QVZVRmhBUFJFQkR3NE9EMk1TRUJVRERnQVRBQTRUWVJRQkFBMEpBZ1VFQUFWZ0RBZ0NCQXNIQWdNQ0JBTmdDZ1lDQWdFQkFsUUtCZ0lDQWdGWUFBRUNBVXdiUUR3UkFROE9EMjhTRUJVRERnQVRBQTRUWVJRQkFBMEpBZ1VFQUFWZ0RBZ0NCQXNIQWdNQ0JBTmdDZ1lDQWdFQkFsUUtCZ0lDQWdGWUFBRUNBVXhaUUROeGNBRUFpWWVDZ0gxOGVYaDFkSENQY1k5c2FtUmlYRnBVVWt4S1JFSThPalF5TENva0lod2FGQklLQndBUEFROFdCUlFyQVNFaUJoVVJGQll6SVRJMk5SRTBKZ0VVQmlzQklpWTlBVFEyT3dFeUZoVTFGQVlyQVNJbVBRRTBOanNCTWhZVkZ4UUdLd0VpSmowQk5EWTdBVElXRlRVVUJpc0JJaVk5QVRRMk93RXlGaFVYRkFZckFTSW1QUUUwTmpzQk1oWVZOUlFHS3dFaUpqMEJORFk3QVRJV0ZSTWpOVFFtSWdZZEFTTTFOQ1lpQmgwQkl5SUdIUUVVRmpNaE1qWTlBVFFtQXZqOStBZ01JeGtCdUJrakRQNlFEQWdvQ0F3TUNDZ0lEQXdJS0FnTURBZ29DQXlNREFnb0NBd01DQ2dJREF3SUtBZ01EQWdvQ0F5TURBZ29DQXdNQ0NnSURBd0lLQWdNREFnb0NBd29NaGNoR0xRWElSZ3lHU01NQ0FJSUNBd2pBYTRNQ1A3VUdTTWpHUUVzQ0F6KzZBZ01EQWdvQ0F3TUNHUUlEQXdJS0FnTURBaTBDQXdNQ0NnSURBd0laQWdNREFnb0NBd01DTFFJREF3SUtBZ01EQWhrQ0F3TUNDZ0lEQXdJQVFRVUVSY1hFUlFVRVJjWEVSUWpHUlFJREF3SUZCa2pBQUFHQUFEL3R3T2JBd1VBRHdBZkFDOEFQd0JQQUY4QVYwQlVEZ1FOQWd3RkFBRUFid1VEQWdFR0FXOFJDaEFJRHdVR0J3WnZDd2tDQndkbVVsQkNRREl3SWlBU0VBSUFXbGRRWDFKZlNrZEFUMEpQT2pjd1B6SS9LaWNnTHlJdkdoY1FIeElmQ2djQUR3SVBFZ1VVS3dFaklnWVZFUlFXT3dFeU5qVVJOQ1loSXlJR0ZSRVVGanNCTWpZMUVUUW1JU01pQmhVUkZCWTdBVEkyTlJFMEpnRWpJZ1lWRVJRV093RXlOalVSTkNZaEl5SUdGUkVVRmpzQk1qWTFFVFFtSVNNaUJoVVJGQlk3QVRJMk5SRTBKZ0VYclF3UkVReXRDeElTQVNtdERCRVJESzBMRVJFQktLMExFaElMclF3UkVmMk5yUXdSRVF5dEN4SVNBU210REJFUkRLMExFUkVCS0swTEVoSUxyUXdSRVFNRkVReit1UXNSRVFzQlJ3d1JFUXordVFzUkVRc0JSd3dSRVF6K3VRc1JFUXNCUnd3Ui9qTVNDLzY1REJFUkRBRkhDeElTQy82NURCRVJEQUZIQ3hJU0MvNjVEQkVSREFGSEN4SUFBQUFBQmdBQUFBQUR3Z0tsQUE4QUh3QXZBRDhBVHdCZkFFUkFRUUFDQVFKdkN3RUpDQWx3QUFFQUFBTUJBR0FBQXdZQkJBVURCR0FIQVFVSUNBVlVCd0VGQlFoWUNnRUlCUWhNWFZwVlVrMUtOVFUxTlRVMU5UVXlEQVVkS3hNVUJpc0JJaVk5QVRRMk93RXlGaFVoTkNZaklTSUdIUUVVRmpNaE1qWTFCVFFtS3dFaUJoMEJGQlk3QVRJMk5TVTBKaU1oSWdZZEFSUVdNeUV5TmpVRk5DWXJBU0lHSFFFVUZqc0JNalkxSlRRbUl5RWlCaDBCRkJZeklUSTJOWm9TQ3pvTEVSRUxPZ3NTQXlnU0MvMWZEQkVSREFLaEN4TDgyQklMT2dzUkVRczZDeElDMnhJTC9hd01FUkVNQWxRTEV2MGxFZ3M2Q3hFUkN6b0xFZ01vRWd2OVh3d1JFUXdDb1FzU0FrNExFUkVMT2d3UkVRd01FUkVNT2dzUkVRdlRDeElTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDOU1MRWhJTE9nc1NFZ3M2Q3hJU0N6b0xFaElMQUFBQUFBWUFBQUFBQThJQ3BRQVBBQjhBTHdBL0FFOEFYd0E4UURrQ0FRQURBUUVFQUFGZ0JnRUVCd0VGQ0FRRllBb0JDQWtKQ0ZRS0FRZ0lDVmdMQVFrSUNVeGRXbFZTVFVvMU5UVTFOVFUxTlRJTUJSMHJFelFtS3dFaUJoMEJGQlk3QVRJMk5TVTBKaU1oSWdZZEFSUVdNeUV5TmpVRk5DWXJBU0lHSFFFVUZqc0JNalkxSlRRbUl5RWlCaDBCRkJZeklUSTJOUVUwSmlzQklnWWRBUlFXT3dFeU5qVWxOQ1lqSVNJR0hRRVVGak1oTWpZMW1oSUxPZ3NSRVFzNkN4SURLQklML1Y4TUVSRU1BcUVMRXZ6WUVnczZDeEVSQ3pvTEVnTGJFZ3Y5ckF3UkVRd0NWQXNTL1NVU0N6b0xFUkVMT2dzU0F5Z1NDLzFmREJFUkRBS2hDeElDaUF3UkVRdzZDeEVSQ3pvTUVSRU1PZ3NSRVF2VEN4SVNDem9MRWhJTE9nc1NFZ3M2Q3hJU0M5TUxFaElMT2dzU0VnczZDeElTQ3pvTEVoSUxBQUFBQVFBQS82QUR3Z01iQUNzQUUwQVFBZ0VBQVFCdkFBRUJaajRlTXdNRkZ5c0JFeDRCTXlFeUZnWVBBUTRCRnhNV0RnRXZBU1lpRHdFR0xnRTNFelltTHdFdUFUWXpJVEkzRXo0QkZnSVBXQU1QQ1FFaERoQUNDK29JQlFOY0JBMFlDK2tIRXdqckN4a05CVmdEQlFmckN3SVJEUUVoRmdWYUJCY1hBd1ArOHdnSkZSc0lyUVlTQ2Y3ckRSWUdDS29GQmFvSUJoWU5BUlVKRWdhdENCc1ZFUUVQRFFrTEFBQUFBUUFBLzdZQzd3TUZBQmNBRVVBT0FBRUFBVzhBQUFCbUh4WUNCUllyQ1FFV0ZBY0JCaUl2QVNZME53RTJOQ2NCSmpRL0FUWXlBVmdCamdrSi9uSUlHUWtxQ1FrQk9Ra0ovc2tKQ1NvSUdBTDkvbllJR2dqK2Rna0pLZ2dhQ0FFMkNCb0lBVFlJR2dncUNBQUFBUUFBQUFBRG13SlpBQmNBSUVBZEF3RUJBZ0Z2QUFJQUFBSlVBQUlDQUZnQUFBSUFUQk1URnhJRUJSZ3JDUUVHSWljQkpqUS9BVFl5RndFV01qY0JOaklmQVJZVUE1UCtkZ2dhQ1A1MkNRa3FDUmtJQVRZSUdnZ0JOZ2dhQ0NvSUFmeitjZ2tKQVk0SUdnZ3FDUW4reHdrSkFUY0pDU29JR0FBQUFBUUFBUCsyQTlVQ3VBQWtBRFFBUkFCVUFFcEFSd01CQUFnSkNBQUpiUUFDQ1FvSkFncHRBQVFLQkhBQUJRQUdBUVVHWUFjQkFRQUlBQUVJWUFBSkFnb0pWQUFKQ1FwWUFBb0pDa3hTVDBwSE5UVTFPQmNURlRnUkN3VWRLeVVtSWc4QkJpWTlBVFFtS3dFaUJoMEJGQVlpTHdFbUlnOEJCaFFmQVJZeVB3RTJOQ2NCTkNZaklTSUdIUUVVRmpNaE1qWTFGVFFtSXlFaUJoMEJGQll6SVRJMk5SVTBKaU1oSWdZZEFSUVdNeUV5TmpVQjFRZ1lDRVVKR0JFTU9nc1JEQkFGUlFrWENTb0pDZDBKRnduZkNBZ0IxUklML1RnTEVSRUxBc2dMRWhJTC9ma01FUkVNQWdjTEVoSUwvcmtMRWhJTEFVY0xFdThJQ0VZSUNRMytDeEVSQy80SkNnVkdDQWdyQ0JnSTNRa0ozd2dZQ0FIVkRCRVJERGtNRVJFTXJRc1JFUXM2Q3hJU0M2MExFaElMT2dzU0Vnc0FBUUFBLzVFRHdnTXJBRWtBUEVBNUFBSUJBbThEQVFFQUFXOElBUVlGQndVR0IyMEFCd2R1QkFFQUJRVUFWQVFCQUFBRldBa0JCUUFGVEVFL0pCUWpMU01rRlNNbENnVWRLd0VuSmdZZEFTTWlKajBCTXpJK0FTOEJKaUlQQVFZV093RVZGQVlyQVRVMEpnOEJCaFFmQVJZMlBRRXpNaFlkQVNNaUJoOEJGakkvQVRZbUt3RTFORFk3QVJVVUhnRS9BVFkwQTd5Z0NCUEFDUXB4Q1EwQkJhNEZFQVd1Q0F3T2JRb0p3Qk1Jb0FRRW9BZ1R3QWtLY1E0TUNhMEZFQWF0Q0FzUGJRb0p3QW9OQktBR0FXeXRDQXNQYndvSndBb05CS0FGQmFBSUU4QUpDbkVPREFpdUJSQUZyZ2dNRG0wS0NjQVRDS0FFQktBSUU4QUpDbkVKRFFFR3JRY1FBQUFBQlFBQS83Y0Q2QU1GQUE4QUh3QXZBRDhBVlFBOVFEb0FCZ0FHYndBSEF3ZHdBQUFBQVFRQUFXQUlBUVFKQVFVQ0JBVmdBQUlEQXdKVUFBSUNBMWdBQXdJRFRFMUxKelUxTlRVMU5UVXlDZ1VkS3dFMEppTWhJZ1lkQVJRV015RXlOalVETkNZckFTSUdIUUVVRmpzQk1qWTFFelFtSXlFaUJoMEJGQll6SVRJMk5RRTBKaXNCSWdZVkVSUVdPd0V5TmpVQkpnWWRBU01pQmgwQkZCWTdBUlVVRmo4Qk5qUW5BK2dSRFA2NUN4SVNDd0ZIREJGTkVRejZDeElTQy9vTUVVMFJEUDY1Q3hJU0N3RkhEQkgrTXhJTE9nc1NFZ3M2Q3hMK21na1NmUXNTRWd0OUV3aWZCUVVDZFFzU0VnczZDeElTQy81c0RCRVJERGtNRVJFTUFTQU1FUkVNT2dzUkVRc0JsQXdSRVF6ODdBd1JFUXdDV0FnTERuQVJERG9MRVhJT0RBbXRCZzhHQUFBQUFnQUEvN2NEZFFLNEFBOEFOQUJzUzdBUlVGaEFKQVVCQXdRRGJ3QUVBZ1J2QndFQ0FBQUNZd1lCQUFFQkFGUUdBUUFBQVZrQUFRQUJUUnRBSXdVQkF3UURid0FFQWdSdkJ3RUNBQUp2QmdFQUFRRUFWQVlCQUFBQldRQUJBQUZOV1VBWEVSQUNBQ3dwSXlFYkdCQTBFVFFLQndBUEFnOElCUlFySlNFaUJoMEJGQll6SVRJMlBRRTBKaVVtSnk0Qk5SRTBOanNCTWhZVkVSUWVBUmNXUGdFMUVUUTJPd0V5RmhVUkZBY0dCd1lEV1AwNEN4SVNDd0xJQ3hJUy9vUkhQRGxFRmhBbkVCWW1RaWd0U3l3V0VDY1FGaWNtUUVJcUVRczZEQkVSRERvTEVVMEVKeVo5UndFR0VCWVdFUDc0S1VjdEFnTW9TU3dCRFJBV0ZoRCs4MHhBUGlNa0FBQUFCUUFBQUFBRE5BSmlBQmtBTVFBNkFFTUFUQUJiUUZnTEFRRUFFUUVDQXdKSEFBQUJBRzhKQVFFSUJnSUVBd0VFWUF3SEN3VUtCUU1DQWdOVURBY0xCUW9GQXdNQ1dBQUNBd0pNUlVROE96TXlHeHBKU0VSTVJVeEFQenREUEVNM05qSTZNem9zS2hveEd6RW5EUVVWS3dFbU56WTFOQzRCSXlJR0J4NENGUlFITmpjMkh3RVdOaWNCSWc0QkZSUVhGZzhCQmhZL0FUWVhGak15UGdFMExnRUhJaVkwTmpJV0ZBWXpJaVkwTmpJV0ZBWXpJaVkwTmpJV0ZBWURGd0lFR3p0bFBDWkhIVDVqT1JVZUd3Y0ZRQWdOQXY1bFBHVTdIQU1CRlFNTkNVQUlCRFUvUEdVN08yVzBFQmdZSVJjWFp4QVlHQ0VYRjJjUUdCZ2hGeGNCSFFnRU1UWTVZRGtaRmcxTmJqODNMd2dRQkFNWEF3MEpBU001WURrM01BY0ZRd2tOQXhjQ0F4ODVZSEpnT2ZvWUlSY1hJUmdZSVJjWElSZ1lJUmNYSVJnQUFBQUFCZ0FBQUFBREFnS1VBQklBS2dBNkFFb0FXZ0JvQUhWQWNoZ0JCZ1F6S3dJREFDZ0JDd05UU3dJS0MwTTdBZ2dKQlVjQUFBWURCZ0FEYlFBRURBRUdBQVFHWUFjTkFnTUFDd29EQzJBQUNnQUpDQW9KWUFBSUFBVUNDQVZnQUFJQkFRSlVBQUlDQVZnQUFRSUJUQlVUWldOWFZVOU5SMFUvUFRjMUx5MGxJaDBhRXlvVktpSTFFUTRGRnlzbEVTSUdGUkVVRmpNaE1qWTFJeUluSmljbUFTTWlKajBCTkNZckFTSUdGUkVVRmpNaE1qWTlBVFFtSlRRMk93RXlGaDBCRkFZckFTSW1OUmNVQmlzQklpWTlBVFEyT3dFeUZoVTNGQVlyQVNJbVBRRTBOanNCTWhZVk55Y21JZ1lkQVJRV093RXlOalFCSWhrakl4a0JMQmtqOENzUkhnNFFBY3hrR1NNTUNLQVpJeU1aQVN3Wkl3eit1QXdJUEFnTURBZzhDQXpjREFpMENBd01DTFFJRENnTUNOd0lEQXdJM0FnTVRGd0VEQWdZRUVJR0NOd0JRQ01aL29RWkl5TVpCQWdZSEFFOEl4bGtDQXdqR2Y2RUdTTWpHZkFJRENnSURBd0lGQWdNREFqd0NBd01DQlFJREF3SVpBZ01EQWdVQ0F3TUNLUmNCQWdHUWhBWUNBd0FBUUFBLzdVRG53TUZBRUVBSmtBakF3RUFBUUJ2QUFFQ0FnRlVBQUVCQWxnQUFnRUNUQUlBUERrME1RQkJBa0VFQlJRckV6TXlGaDBCRkJZM05qYytBUmNXRng0QkZ4WUdCdzRCQnk0QlBRRTBOamMrQVRjMk56WXVBU2NtSnlZR0J3WUhCaFk3QVRJV0hRRVVCaU1oSWlZMUVUUTJham9MRVEwS0NRdEl3V2hKUGxkaEFnSTZOelNHU2c4VUR3eEZkU1VXQ1E4V1J6Y3BJRTJTTmd3TEJBOE9od3NRRGd2K25nb1BFUU1GRVF5R0RnZ0lEQWRKT1JRUEtUbXlaVTZWT0RkQUJnSVNEVGtNRHdJR1NUNGxKRDk3WmlFWENCTW9OZ3NRQ3d3U0N6d0xFQThLQVY0TUVRQUFBQUFHQUFEL3R3UENBd1VBRHdBZkFDOEFQd0JVQUhnQS9rdXdFVkJZUUZ3QUFRb0lDZ0VJYlFBQUNBTURBR1VBQ1FJTEFna0xiUUFLRkFFSUFBb0lZQUFERVFFQ0NRTUNZUlVCQ3dBTUJRc01ZQklCQkFBRkRRUUZZQUFOQUJBR0RSQmdBQThIRGc5VUV3RUdBQWNPQmdkZ0FBOFBEbGdBRGc4T1RCdEFYUUFCQ2dnS0FRaHRBQUFJQXdnQUEyMEFDUUlMQWdrTGJRQUtGQUVJQUFvSVlBQURFUUVDQ1FNQ1lSVUJDd0FNQlFzTVlCSUJCQUFGRFFRRllBQU5BQkFHRFJCZ0FBOEhEZzlVRXdFR0FBY09CZ2RnQUE4UERsZ0FEZzhPVEZsQU4xZFZRVUF5TUNJZ0VoQnpjWEJ1YVdaaFgxNWNWWGhYZUU5TVIwUkFWRUZVT2pjd1B6SS9LaWNnTHlJdkdoY1FIeElmTlRNV0JSWXJBUlVVQmlNaElpWTlBVFEyTXlFeUZnRWhNalk5QVRRbUl5RWlCaDBCRkJZRklTSUdIUUVVRmpNaE1qWTlBVFFtQnlFaUJoMEJGQll6SVRJMlBRRTBKZ0V6RlJRV093RXlOalVSTkNZckFTSUdIUUVVRmhNaklnWWRBUlFXT3dFVkl5SUdIUUVVRmpzQk1qWTlBVFFtS3dFMU16STJQUUUwSmdQQ0VndjkrUXdSRVF3Q0J3c1MvZHdCV2dzU0VnditwZ3dSRVFJVC9ma01FUkVNQWdjTEVoSzQvcVlNRVJFTUFWb0xFaEw5UURBU0N4UUxFUllRVndzUkVhK2tDeEVSQzMxekVCWVdFS01NRVJFTWZYUVFGaFlDMVRvTEVSRUxPZ3NTRXY3ZUVnczZDeElTQ3pvTEVxMFJERGtNRVJFTU9Rd1J3QklMT2dzU0VnczZDeElDWi9BTUVSRU1BUmNRRmhFTUV3c1Mvb0FTQ3hNTUVVMFhFSm9RRmhFTUV3c1NUUllRbWhBWEFBUUFBUCtRQTNVRE1BQWdBQ0lBTWdCR0FFeEFTUjRCQUFGR093SUdCQUpIQWdjQ0FBRUVBUUFFYlFBRUJnRUVCbXNBQXdBQkFBTUJZQUFHQlFVR1ZBQUdCZ1ZZQUFVR0JVd0NBRGcxTUMwb0pSb1lFUTRKQ0FBZ0FpQUlCUlFyRXpNeVBRRTBQZ0VYSGdJVk5SUTdBVEk5QVRRbkppY21Cd1lIRGdFSEhnRW5GUVUwSmlNaElnWVZFUlFXTXlFeU5qVWxGZ1lyQVNJbVB3RXVBVDRDSGdFVkZBWUgxRTBUT0Y4M01sRXZGRTBUTEN4SlMxZFFSRUZPQWdJTERRSzFMU0Q5bUI4dUxoOENhQ0F0L3RnQ0RBcU1DZ3NDSWhZV0NpZzdOU0FWRXdIbEVRSTJXek1FQXpoYU13WVJFUUpXU1Vjb0tRTUVMQ3FMVVFnSkVRaWpJQzB0SVA2U0h5NHVIMEFKRUE0TGN3OHhPQ2dMRmkwZEZ5Z01BQUFBQVFBQS83Y0R3d01GQUJjQUdFQVZBZ0VBQVFCdkFBRUJaZ0lBRGdzQUZ3SVhBd1VVS3dFaElnNEJGd0VXRlJFVUZqc0JNalkxRVRRM0FUWXVBUU9oL0tvT0VnRUlBWFVSRXd3NkN4QVZBWGtJQVJJREJSSWFDdjVNRkI3KzZ3d1JFUXdCRlJzWEFiUUtHaElBQVFBQUFBQURuQUpYQUJjQUlFQWRBd0VCQWdGd0FBQUNBZ0JVQUFBQUFsZ0FBZ0FDVEJNVEZ4SUVCUmdyTndFMk1oY0JGaFFQQVFZaUp3RW1JZ2NCQmlJdkFTWTBWUUdLQ0JvSUFZb0pDU29JR2dqK3lnZ2FDUDdLQ0JrSktnZkFBWTRKQ2Y1eUNCa0pLZ2tKQVRzSkNmN0hDUWtxQ1JjQUFnQUEvNUFEd2dNc0FCUUFSQUE2UURjSUFRQUZBRzhIQVFVR0JXOEFCZ01HYndBREFnTnZCQUVDQVFKdkFBRUJaZ0VBUERzNE56UXpKQ01nSHh3YkN3b0FGQUVVQ1FVVUt3RWlCd1lIQmhRWEZoY1dNamMyTnpZMEp5WW5KZ01YRmhRUEFRWWlMd0VtSWc4QkJpSXZBU1kwUHdFMk5DOEJKalEvQVRZeUh3RVdNajhCTmpJZkFSWVVEd0VHRkFIMGZtdHBQRDgvUEdsci9HeG9QVDgvUFdoc0lKWUdCallGRUFXV0JoQUZsZ1lRQlRZR0JwWUdCcGdHQmpZRkVBYVlCUkFHbGdVUUJUWUdCcFlFQXl3L1BXaHMvR3hvUFQ4L1BXaHMvR3hvUFQvK0k1WUdFQVUyQmdhV0JnYVdCZ1kyQlJBR2xnVVFCcGdGRUFVMkJnYVlCUVdXQmdZMUJoQUZsZ1lRQUFFQUFQL3ZBOEVDelFBakFDMUFLZ0FDQXdKdkFBRUFBWEFBQXdBQUExUUFBd01BV0FRQkFBTUFUQUlBSGhzVEVnc0tBQ01DSXdVRkZDc1RJVElXRHdFR0ZCOEJGakkzQVRZMEp3RW1JZzhCQmhRZkFSWUdJeUVpQmgwQkZCWkJBbjhOQ1FtNENRa3FDUmNJQVZFSkNmNnZDQmNKS0FrSnVBa0pEZjJCQ3hFUEFTUVlDTGtJR0FnckNBZ0JVd2dZQ0FGUkNBZ3BDQmNKdVFvWUVBczZEQk1BQUFBQUFnQUEvNUFEd2dNc0FDTUFTZ0JLUUVjQUF3VUNCUU1DYlFBQ0JBVUNCR3NJQVFBQUFRWUFBV0FBQmdBRkF3WUZZQUFFQndjRVZBQUVCQWRZQUFjRUIwd0NBRVZDUFRvMU1pMHFIaHNURWdvSEFDTUNJd2tGRkNzQklTSUdIUUVVRmpzQk1oWUhBUVlVSHdFV01qY0JOaFlkQVJRV093RXlOalVSTkNZREJ3WWRBUlFHSXlFaUpqVVJORFk3QVRJMlB3RTJKaU1oSWdZVkVSUVdNeUV5TmpVUk5DWURxZjZRREJJU0RKZ09DZ3IrdVFrSktBa1hDUUZHQ1JZVUN6Z0xFZzc2UVJJUkMvNXNEQkVSRE4wTUZRZENDQWtOL29NZkxTMGZBaHNnTFJnRExBNExPZ3dWRmduK3Vna1hDU2dKQ1FGSENBa05tQXNWRkF3QmJnME8vanhFRUJqYkRCRVJEQUdVQ3hFSkNVRUpHQzBnL2VVZ0xTNGZBWDBOQ1FBQUJRQUEvN2NENkFNRkFCVUFKUUExQUVVQVZRQkxRRWdBQ0FJSWJ3QUpCUWx3QUFJQUF3QUNBMkFHQ2dJQUJ3RUJCQUFCWUFBRUJRVUVWQUFFQkFWWUFBVUVCVXdCQUZOUVMwaERRRHM0TXpBcktDTWdHeGdRRGdBVkFSVUxCUlFyQVNNMU5DWVBBUVlVSHdFV05qMEJNekkyUFFFMEppVTBKaU1oSWdZZEFSUVdNeUV5TmpVRE5DWXJBU0lHSFFFVUZqc0JNalkxRXpRbUl5RWlCaDBCRkJZeklUSTJOUUUwSmlzQklnWVZFUlFXT3dFeU5qVUJPM3NUQ0o4RUJKOEpFbnNNRXhNQ29SRU0vcmtMRWhJTEFVY01FVTBSRFBvTEVoSUwrZ3dSVFJFTS9ya0xFaElMQVVjTUVmNHpFZ3M2Q3hJU0N6b0xFZ0dyY1E4TENLMEdFQVd0Q1F3T2JoRUxPZ3dSeWdzU0VnczZDeElTQy81c0RCRVJERGtNRVJFTUFTQU1FUkVNT2dzUkVRc0JsQXdSRVF6ODdBd1JFUXdBQXdBQS81QURkUU13QUFFQUxBQkFBRWhBUlVBMUFnWUFBVWNBQWdFQUFRSUFiUVFIQWdBR0FRQUdhd0FEQUFFQ0F3RmdBQVlGQlFaVUFBWUdCVmdBQlFZRlRBTUNNaThuSkI4ZUdSY1FEZ2tIQWl3RExBZ0ZGQ3NURlFVaE5UUStBVGMySGdFWEhnRTdBVEkySnk0Qkp5WUhCZ2NPQVFjVklnWVZFUlFXTXlFeU5qVVJOQ1lERmdZckFTSW1Qd0V1QVQ0Q0hnRVZGQVlId0FKby9nd3ZVakl1VVRzTUFnb0hUd2dNQVE5Y1FrUk1VRVJCVGdJZkxpNGZBbWdnTFMzN0Fnd0tqQXNMQXlJWEZRd29PelVnRlJNQjlnaFdXak5ZT0FNRElrRXFCZ29QQ0Vsekh4OERCQ3dxakZCZUxTRCtraDh1TGg4QmJpQXQvb1VKRUE4S2N4QXhOeWdMRmkwZEZ5Z01BQUlBQUFBQUF6UUNnQUFQQUVnQVZFQlJNUllDQndJQlJ3QUVBZ1J2QmdzQ0Fna0JCd01DQjJBRkFRTUFDQUFEQ0dBS0FRQUJBUUJVQ2dFQUFBRllBQUVBQVV3UkVBRUFSVVJBUGpzNk56WXZMU1FqR2hnUVNCRklDZ2NBRHdFUERBVVVLeVVoSWdZZEFSUVdNeUV5TmowQk5DWVRJZ1lWRkJZWERnRW5MZ0VuTkRjK0FUVTBKaUlHRlJRV0Z4WVZEZ0VIQmlZblBnRTFOQ1lpQmhRV014Y2VBVE1oTWpZL0FUSTJOQ1lDeC81YUJ3d2pHUUZVR1NNTEtSa2pDd29OTnlJb09RSUNFUlVqTWlNVkVRSUNPU2dpT0F3S0N5TXlJeU1aSEFFTEJ3R3FCd29DSEJrakk2QUxDQUVaSXlNWkFRZ0xBWm9qR1EwWkNCNGpBUUk1S0JFSUJ4NFRHU01qR1JJZkJ3Z1JLRGtDQWlRZUNCa05HU01qTWlQV0J3a0pCOVlqTWlNQUFBQUFBUUFBQUFBREdRSjZBQndBR0VBVkFnRUFBUUJ2QUFFQlpnRUFGQklBSEFFY0F3VVVLd0VpQndZSEJoVVVGeFlQQVFZV1B3RTJGeFl6TWpjMk56WXVBU2NtQWV4U1JrTW9LU1lGQXh3RUVneFlDUWhJVmxKR1F5Z3BBVkZFUmdKNUppVkFRVXhJUVFnSVdRd1JCQjhEQlNvbUpVQkJtSUVsSmdBQUFBRUFBQUFBQTJZQ1JRQU1BQmhBRlFBQkFBRnZBZ0VBQUdZQ0FBZ0hBQXdDREFNRkZDc2xJU0l1QVRjQk5qSVhBUllHQTBqOVdBb09BUWNCVFFrZkNBRlJDZzUzRGhRSkFaY01EUDVwRGgwQUFnQUEvNDhEd2dNekFCMEFLZ0FrUUNFQkFRSUJGZ0VBQWdKSEFBRUNBVzhBQWdBQ2J3QUFBR1lvSnlJaEdSZ0RCUlFyQlFFMk56WW5MZ01IRGdFSEJoNENGeFkzTmpjQkZqSS9BVDRCQVRRK0FUSWVBUlFPQVNJdUFRTzYvdjRvRVJNS0MxdU5wVTVMY1J3Y0VGYUpVVWhGUWpnQkFBa1hDU2dKQWZ6WVEzS0dja05EY29aeVF4VUJBRGhDUlVoU2lWVVFIQnh5U2s2bWpGd0xDaElSS1A4QUNBZ29DUmtCM2tOeVEwTnlobkpEUW5JQUFnQUEvMzhEMFFNN0FCUUFSQUExUURJMUFRTUVMUUVBQXgwQkFRQURSd0FFQXdSdkJRRURBQU52QWdFQUFRQnZBQUVCWmtFL09UY3lMeW9uSWg4WkZ3WUZGQ3NCSmljbUJ3NEJCd1lYSGdFWEZqYytBVGMySnlZREZBWXJBU0lHSFFFVUJpc0JJaVk5QVRRbUt3RWlKajBCTkRZN0FUSTJQUUUwTmpzQk1oWWRBUlFXT3dFeUZoVURPMWw1ZFhWNXNSOGZIeCt4ZVhWMWVMRWdIeDhmYXdzSTFBY01EQWROQ1FzS0NkTUpDdzBIMHdrS0RRZE5Cd3dLQ2RRSERBS2xXQjhmSHgreGVYVjFlYklnSGg0Z3NubDFkWG4rN0FrTEN3alRCdzBMQ2RNSkNnc0pUUWNNQ2duVUJ3d0xDTlFKQ2d3SEFBRUFBUCtTQThJRExBQnpBSVZBZ2g0VkFnRURKd3dDQUFGaFJnSUtDVmhQQWd3S0JFY0FCQU1FYndVQkF3RURid2NCQVFBQmJ4QUJDZ2tNQ1FvTWJRNEJEQTBKREExckFBME5iZ2dHQWhJRUFBa0pBRlFJQmdJU0JBQUFDVmdSRHdzRENRQUpUQUVBYm14bVpXTmlXMXBWVWsxTVJVUkNRVHM1TkRJc0t5a29JU0FiR0JNU0N3b0lCd0J6QVhNVEJSUXJBU00zTmpRdkFTWWlEd0VqTlRjMk5DOEJKaUlQQVRVMEppc0JJZ1lkQVNjbUlnOEJCaFFmQVJVakp5WWlEd0VHRkI4Qkl5SUdIUUVVRmpzQkJ3WVVId0VXTWo4Qk14VUhCaFFmQVJZeVB3RVZGQlk3QVRJMlBRRVhGakkvQVRZMEx3RTFNeGNXTWo4Qk5qUXZBVE15TmowQk5DWURwWXRWQ0FnaEJ4SUdsRzJVQndjaEJ4SUdWQklMT2dzU1ZBY1NCaUVIQjVSdGxBY1NCaUVIQjFXTEN4RVJDNHRWQndjZkNCRUdsRytVQndjZkNCTUdWQkFMT2dzVVZBZ1JCaDhJQ0pKdGxBZ1NCUjhJQ0ZPTEN4SVNBWmhVQ0JFR0lRY0hsRzJVQ0JJRklRZ0lWWXNMRWhJTGkxVUlDQ0VIRWdhVWJaUUhCeUVIRWdaVUVnczZDeEpVQnhJR0h3Y0hsR3VVQnhNRkh3Y0hWWXNNRlJZTGkxVUhCeDhIRWdhUWJaUUhCeDhJRVFaV0VnczZDeElBQUFBQ0FBRC8yZ1BGQXQwQUhRQTdBQ2hBSlE0QkFRQVZBUUlCQWtjQUFBRUFid01CQVFJQmJ3QUNBbVlmSGpJd0hqc2ZPeWtFQlJVckpTWTNOalUwSnlZbkppTWlCd1lISGdFWEZoVVVCelkzTmg4QkZqWW5BU0lIQmdjR0ZSUVhGZzhCQmhZL0FUWVhGak15TnpZM05qUW5KaWNtQTVjREJTa3RLMHBOV0Q0Nk55MWlvaTR3R3hzakRnbDFDUXNDL2F0WVRVa3JMU2dIQlNvREN3bDFEZ2xPVzFsTVNpc3RMU3RLVFA0TkNraE1VMGhHS1NvV0ZTWUxhMUpWWUVrL0NSSUZBeThDQ3drQnZDb3BSa2hUVGtZTkNuVUpEQU12QXdVdEtpbEdTS1ZJUlNrcUFBQURBQUFBQUFNUkFuWUFCUUFaQUU4QVpVQmlMaDhYRmdBRkJBRkxDd0lDQUFKSENRRUJCd1FIQVFSdEJnRUVBQWNFQUdzQUFnQUZBQUlGYlFBSUJRaHdDZ0VEQUFjQkF3ZGdBQUFDQlFCU0FBQUFCVmdBQlFBRlRCc2FCd1pJUmpNeExTc25KaUlnR2s4YlR4QVBCaGtIR1JJTEJSVXJBUVlWSXpRM0pTTWlCaDBCRkI4QkZqSS9BVFkwTHdFMU5DWW5JZ2NPQVE4Qkl5SUdId0VXTWo4Qk5pWXJBVFUrQWpNeUZoY1dCdzRDQndZbUp5WVBBUVlXRng0Qk56NENOelluTGdFQkdRRThBUUVtSGdZSkJGUUZEQVFWQlFWR0NSVkpQejFOQlFFdENnZ0dTd1VPQkVzR0NBb3NCVDFoT0VCcUd4MEhCVGxYTHpWaEl3d0tHQU1DQlNsclBFZDdUQVVHSlNPRkFYSUhEUTBIZUFrR2d3VUdWQVFFRlFVTUJFZHhCZ21NSXlKM1NBb1JCMXNGQlZzSUVBbzNYRFZET0RsQkwxWTVCQVVsSmc0TkhRUUdCU3N1QVFGR2RrZFFSa1JTQUFBQUJRQUEvNUFEd2dNdEFBMEFIUUExQUUwQVpRQkZRRUlBQlFJRmJ3QUVBZ0FDQkFCdEFBQURBZ0FEYXdBR0F3Y0RCZ2R0QUFjQkF3Y0Jhd0FCQVc0QUFnUURBbFFBQWdJRFdBQURBZ05NR3hzYkZSY2NGUkVJQlJ3ckFTWWlCd0VHRkJZeU53RTJOQ2MvQVRZMEx3RW1JZzhCQmhRZkFSWXlKUjRCRnhZeU56NEJOelkwSnk0Qkp5WWlCdzRCQndZVUFTNEJKeVlpQnc0QkJ3WVVGeDRCRnhZeU56NEJOelkwQXg0QkZ4WXlOejRCTnpZMEp5NEJKeVlpQnc0QkJ3WVVBaDRGRUFiK05SRWlMeEVCeXdZR1VUNElDQ2tJR0FnK0JRVTJCZy8rS1RkU0VRTVJBeEZST0FnSU4xSVJBeEVERVZFNEJ3TDVNVWNSQWhBREVFY3hCd2N4UnhBREVBSVJSekVJNFNZMERBRU5BUXMxSmdZR0pUWUxBUTBCRERVbEJnRytCZ2IrTkJFdUloRUJ5d1lRQlRZK0NCZ0lLUWdJUGdZUEJqWUZ1aEZST0FnSU4xSVJBeEVERVZFNENBZzNVaEVERWY2U0VFY3hDQWd4UnhBREVBTVFSekVIQnpGSEVBTVNBYW9NTkNZR0JpVTFEQUVOQVFzMkpRWUdKalVMQVEwQUFBVUFBUCtsQTl3RElRQWpBRE1BUUFCTkFKZ0JWa0FnSVJNTUNRSUZDQUFzQVEwSGRXMENEZzJTVHdJUURDUUJCaEFaQVFVR0JrZExzQkpRV0VCUEN3RUpBQWx2QkFJUkF3QUlBUUJqRXdvU0F3Z0JBUWhqQUEwSERnY05EbTBBRGc4SERnOXJBQkFNQmdZUVpRTUJBUUFIRFFFSFlRQVBBQXdRRHd4Z0FBWUZCUVpVQUFZR0JWa0FCUVlGVFJ0THNCeFFXRUJPQ3dFSkFBbHZCQUlSQXdBSUFHOFRDaElEQ0FFQkNHTUFEUWNPQncwT2JRQU9Ed2NPRDJzQUVBd0dCaEJsQXdFQkFBY05BUWRoQUE4QURCQVBER0FBQmdVRkJsUUFCZ1lGV1FBRkJnVk5HMEJQQ3dFSkFBbHZCQUlSQXdBSUFHOFRDaElEQ0FFQkNHTUFEUWNPQncwT2JRQU9Ed2NPRDJzQUVBd0dEQkFHYlFNQkFRQUhEUUVIWVFBUEFBd1FEd3hnQUFZRkJRWlVBQVlHQlZrQUJRWUZUVmxaUURGQ1FUVTBBUUNXbElTQ2VYZHhiMTVjU0VkQlRVSk5Pem8wUURWQU1DNG9KaDBiRlJRUUR3c0tCZ1VBSXdFakZBVVVLd0VqRlJZT0FTSXVBVGMxSVJVV0RnRWlMZ0UzTlNNaUJoVVJGQll6SVRJMk5SRTBKZ01VQmlNaElpWTFFVFEyTXlFeUZoVWxJaVk5QVRRK0FSWWRBUlFHSVNJbVBRRTBQZ0VXSFFFVUJnRTFOQ1lqSmljdUFUOEJQZ0VYRmhjeU5qUW1KeVluSmpVME5qYytBVDBCTkRZN0FUSVdIUUVVRmpNV0Z4NEJEd0VPQVNjbUl5SUhCaFFXRng0QkZBWUhEZ0VkQVJRR0t3RWlKZ1BPWGdJTEdCc1lDd0w5d2dJTEdCc1lDd0plQmdjSUJRTzBCUWdIU1FnRi9QTUZDQWdGQXcwRkNQMGNEaFFVR3hRVEFvd09FeFFiRkJUK2dBY0ZKU0lFQkFFS0FRc0dKU2dZSEJzZk1CZ2JMQ2NFQmdnRkd3VUlCd1VkR3dVRkFna0JDd1VmSWhrTUNoMGtNU290S2dRR0NBVWJCUWdDdVE4T0dROFBHUTRQRHc0WkR3OFpEZzhKQnYwSkJRZ0lCUUwzQmduOVNnVUlDQVVDQ1FVSUNBVjdGUTVWRGhNQkZBNVZEaFVWRGxVT0V3RVVEbFVPRmYycUd3VUlBdzhDQ0FVbUJnWURFUUVTSHhZTEVCVVpKU015Q2dFSEJSd0ZDQWdGRndVSUFnb0NDUVVrQmdVQ0RRa0lHaFVORVRCSk5na0JCd1VnQlFnSUFBQUFBQVlBQUFBQUF5VUNqQUFjQUM0QU1RQkRBRVlBV1FDdlFCQVhDZ0VEQmdJQ0FRQUhUUUVLQ1FOSFM3QVZVRmhBUFFBQ0JnSnZBQVlCQm04QUFRTUJid0FEQ0FOdkFBQUhCQWtBWlFBSUFBY0FDQWRnQUFVQUJBa0ZCR0FMQVFrS0NnbFVDd0VKQ1FwWkFBb0pDazBiUUQ0QUFnWUNid0FHQVFadkFBRURBVzhBQXdnRGJ3QUFCd1FIQUFSdEFBZ0FCd0FJQjJBQUJRQUVDUVVFWUFzQkNRb0tDVlFMQVFrSkNsa0FDZ2tLVFZsQUZFaEhVVTlIV1VoWkZTa1RFaWtjSnlVa0RBVWRLd0VIRVJRR0t3RWlKalVSQnlNaUxnRTJQd0UrQVRNeUZ6YzJIZ0VHQVRZdkFTNEJJZ1lQQVFZWE1SWVhGak15SnhjakpTNEJJZ1lQQVFZWE1SWVhGak15TnpZdkFSY2pCeUlHQndZZEFSUVdNeUV5TmowQk5DY3VBUU1HOUFVRktBUUc3QVFMRWdNUERMb05MeHdwSGNVTUZRTVAvb29MQjFBRER4SVBCRkFHQ0F3U0l5YzVOeXRXQWNNRUR4SVBCRkFHQ0F3U0l5YzRNUXNIYXl0V2t5cFJIZ2NNQ0FFWUNBd0hIbEVDVGlUK3FBUUdCZ1FCVHlNUEZ4VUJIQmdkSFJ3Q0R4a1UvbzBQRUw0SUNnb0l2ZzRPRWc4ZXdHZjhDQW9LQ0w0T0RoSVBIandQRUdWbnFoMFpCd2dCQ0F3TUNBRUpCaGtkQUFJQUFBQUFBeUFDaWdBT0FDOEFJRUFkTFFzRUF3RUFBVWNDQVFBQkFHOEFBUUZtQVFBSUJ3QU9BUTREQlJRckFTSUdGQmNSRkJZeU5qVVJOalFtQlFZSEJpY21KeVluSmdjR0ZSRVVGamMyRnhZWEZoY1dOelkzUGdFMUVUUW1BUVFaSXhRWUlSY1VJd0gwSnlraEtCZ3VQQjgwTGcwUUNpb3hIVGd2R1NnaUtpZ0VCZ29DaWlNMEV2NDVFQmdZRUFISEVqUWpiQlFGQkFjRkRSRURCaEVGRHY3K0Nnd0REUVlFRUEwRUNBVUZGZ0lLQlFFUEJnWUFBQUFBQVFBQUFBQUR4QUp2QUNZQUwwQXNIQUVEQkJzT0J3TUFBd0pIQUFRREJHOEFBd0FEYndBQUFRQnZBQUVDQVc4QUFnSm1HQmNWSkJRRkJSa3JBVEF4RkFZaUx3RUhCaU1pSmk4QkJRWWlMd0VtTkRjVE5qSWZBVGNuSmpRMk55RWVBUjBCQThRTkZBWm43eFFiRFJvSWtmOEFCaFFHQ3djSC9CUTNGSkNTWGdjTkNRRThFaGtCQmdrTkIyZk5GQXNKcE9FR0Jnd0hFUWNCV1JRVWtLaFdCeE1OQWdJWkV3SUFCUUFBLzJvRDZBTlRBQlFBS1FBK0FFc0FWQUJnUUYwTUFRUUFCd2dFQjJBT0FRZ0FDUVlJQ1dBTkFRWUFCUUlHQldBQUF3TUFXQW9CQUFBTVNBc0JBZ0lCV0FBQkFRMEJTVTFNUUQ4cktoWVZBUUJSVUV4VVRWUkdSVDlMUUVzMU5DbytLejRnSHhVcEZpa0xDZ0FVQVJRUEJSUXJBU0lIQmdjR0VCY1dGeFlnTnpZM05oQW5KaWNtQXlJbkppY21ORGMyTnpZeUZ4WVhGaFFIQmdjR0F5SUhCZ2NHRkJjV0Z4WXlOelkzTmpRbkppY21BeUl1QVRRK0FUSWVBUlFPQVFNaUJoUVdNalkwSmdIMGgzVnhRa1ZGUW5GMUFRNTFjVUpGUlVKeGRZZHRYVnMxTnpjMVcxM2FYVnMxTnpjMVcxMXRVa1pGS0NvcUtFVkdwRWRFS1NrcEtVUkhTelZiTlRWYmExbzFOVm8yS0RvNlVUbzZBMUpGUW5GMS92SjFjVUpGUlVKeGRRRU9kWEZDUmZ4N056VmJYZHBkV3pVM056VmJYZHBkV3pVM0FzQXBLVVJIcEVaRktDb3FLRVZHcEVkRUtTbitFelZiYTFvMU5WcHJXelVCS0RwUk9qcFJPZ0FBQUFNQUFBQUFBd0lDaWdBT0FCMEFMQUFSUUE0SkFRSUFSQUFBQUdZV0ZRRUZGQ3NCRlJRV1B3RStBVDBCTkNZUEFRWW5OelkwTHdFbUlnOEJCaFFmQVJZSEp5WUdIUUVVRmg4QkZqWTlBVFFDRWdvRndnNFJDZ1hYQ2hUWUJRWEREaUlPd3dVRjJBb28xd1VLRVE3Q0JRb0JSUFFHQlFKdUNCMFEyd1lGQW5rSE9ua0RDd052Q0FodkF3c0RlUVV1ZVFNR0J0b1FIUWh1QXdZRzh3b0FBQUFCQUFBQUFRQUFmTnNFWWw4UFBQVUFDd1BvQUFBQUFOaDZkNndBQUFBQTJIcDNyZi8rLzJvRDdnTlRBQUFBQ0FBQ0FBQUFBQUFBQUFFQUFBTlMvMm9BQUFQby8vNy8rZ1B1QUFFQUFBQUFBQUFBQUFBQUFBQUFBQUNNQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2ovL2dQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBTnJBQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUEyc0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2ovL3dQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBQUFBQUFBRndBdWdFWUFkZ0NXQU1BQTJZRDdBUndCVG9GbGdZYUJ2b0hvZ2YrQ0ZRSWRnamFDU2dKL0FyS0M4b01iQXphRFlJT1dBOEFFQUFRVEJEMEViNFNMaExJRTA0VDJoVFVGV2dXSGhacUZzSVhFQmVNR0RnWXhCa3VHZVlhbEJ2c0hPNGR2QjR5SHFJZk5oK01JQzRnZ0NEdUlVSWhvaUlTSXJ3ak9pUG9KR0FsSmlZV0pwZ250aWdjS0pBcEJpbHNLZ0lxWmlya0s4SXNQQ3lHTE9vdGRpM3NMaFF1Wmk3Z0x6UXZWakJZTVE0eFhqSU1NeVl6ekRRK05NUTFBalU0TmVvMm9qY01PSFE0MmpuK09xNDdVanZ5UEVZOGZEeTZQVlE5MkQ1dVB2SS9sRUJhUU5CQjdrSjhRckpDN2tOMFE4WkVWa1R5UlhoR0RFWktSbkpHekVkR1NDWkltRWxDU2dSTGhFeGlUTUJORkUzS1Roa0FBQUFCQUFBQWpBRFFBQTBBQUFBQUFBSUFUZ0JlQUhNQUFBRFJDM0FBQUFBQUFBQUFFZ0RlQUFFQUFBQUFBQUFBTlFBQUFBRUFBQUFBQUFFQUNBQTFBQUVBQUFBQUFBSUFCd0E5QUFFQUFBQUFBQU1BQ0FCRUFBRUFBQUFBQUFRQUNBQk1BQUVBQUFBQUFBVUFDd0JVQUFFQUFBQUFBQVlBQ0FCZkFBRUFBQUFBQUFvQUt3Qm5BQUVBQUFBQUFBc0FFd0NTQUFNQUFRUUpBQUFBYWdDbEFBTUFBUVFKQUFFQUVBRVBBQU1BQVFRSkFBSUFEZ0VmQUFNQUFRUUpBQU1BRUFFdEFBTUFBUVFKQUFRQUVBRTlBQU1BQVFRSkFBVUFGZ0ZOQUFNQUFRUUpBQVlBRUFGakFBTUFBUVFKQUFvQVZnRnpBQU1BQVFRSkFBc0FKZ0hKUTI5d2VYSnBaMmgwSUNoREtTQXlNREU1SUdKNUlHOXlhV2RwYm1Gc0lHRjFkR2h2Y25NZ1FDQm1iMjUwWld4c2J5NWpiMjF6WmkxcFkyOXVjMUpsWjNWc1lYSnpaaTFwWTI5dWMzTm1MV2xqYjI1elZtVnljMmx2YmlBeExqQnpaaTFwWTI5dWMwZGxibVZ5WVhSbFpDQmllU0J6ZG1jeWRIUm1JR1p5YjIwZ1JtOXVkR1ZzYkc4Z2NISnZhbVZqZEM1b2RIUndPaTh2Wm05dWRHVnNiRzh1WTI5dEFFTUFid0J3QUhrQWNnQnBBR2NBYUFCMEFDQUFLQUJEQUNrQUlBQXlBREFBTVFBNUFDQUFZZ0I1QUNBQWJ3QnlBR2tBWndCcEFHNEFZUUJzQUNBQVlRQjFBSFFBYUFCdkFISUFjd0FnQUVBQUlBQm1BRzhBYmdCMEFHVUFiQUJzQUc4QUxnQmpBRzhBYlFCekFHWUFMUUJwQUdNQWJ3QnVBSE1BVWdCbEFHY0FkUUJzQUdFQWNnQnpBR1lBTFFCcEFHTUFid0J1QUhNQWN3Qm1BQzBBYVFCakFHOEFiZ0J6QUZZQVpRQnlBSE1BYVFCdkFHNEFJQUF4QUM0QU1BQnpBR1lBTFFCcEFHTUFid0J1QUhNQVJ3QmxBRzRBWlFCeUFHRUFkQUJsQUdRQUlBQmlBSGtBSUFCekFIWUFad0F5QUhRQWRBQm1BQ0FBWmdCeUFHOEFiUUFnQUVZQWJ3QnVBSFFBWlFCc0FHd0Fid0FnQUhBQWNnQnZBR29BWlFCakFIUUFMZ0JvQUhRQWRBQndBRG9BTHdBdkFHWUFid0J1QUhRQVpRQnNBR3dBYndBdUFHTUFid0J0QUFBQUFBSUFBQUFBQUFBQUNnQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBakFFQ0FRTUJCQUVGQVFZQkJ3RUlBUWtCQ2dFTEFRd0JEUUVPQVE4QkVBRVJBUklCRXdFVUFSVUJGZ0VYQVJnQkdRRWFBUnNCSEFFZEFSNEJId0VnQVNFQklnRWpBU1FCSlFFbUFTY0JLQUVwQVNvQkt3RXNBUzBCTGdFdkFUQUJNUUV5QVRNQk5BRTFBVFlCTndFNEFUa0JPZ0U3QVR3QlBRRStBVDhCUUFGQkFVSUJRd0ZFQVVVQlJnRkhBVWdCU1FGS0FVc0JUQUZOQVU0QlR3RlFBVkVCVWdGVEFWUUJWUUZXQVZjQldBRlpBVm9CV3dGY0FWMEJYZ0ZmQVdBQllRRmlBV01CWkFGbEFXWUJad0ZvQVdrQmFnRnJBV3dCYlFGdUFXOEJjQUZ4QVhJQmN3RjBBWFVCZGdGM0FYZ0JlUUY2QVhzQmZBRjlBWDRCZndHQUFZRUJnZ0dEQVlRQmhRR0dBWWNCaUFHSkFZb0Jpd0dNQVkwQUJUTmtiM1J6QTJGa1pBVmpiRzl6WlFsd2NtbGpaV0p2YjJzRWFHVnNjQWh1YjNSbFltOXZhd1J5YjNkekJuVndiRzloWkFWamJHOWphd1puY205MWNITUxiM0JsYmw5bWIyeGtaWElRY21sbmFIUmZZV3hwWjI1ZmRHVjRkQWR3Y205a2RXTjBEWEYxWlhOMGFXOXVYMlpsWldRSGQyRnlibWx1WndSMWMyVnlCWEpwWjJoMERHNXZkR2xtYVdOaGRHbHZiZ1JvYjIxbENHTnZiblJ5WVdOMEIyRmtaSFZ6WlhJRVlYQndjd1JqYjNCNUJXbHRZV2RsQkc5d1pXNEljMlYwZEdsdVozTUdlbTl2YldsdUJuSmxZMjl5WkFsaGNuSnZkMlJ2ZDI0RFkzVjBEMmx1YzJWeWRGOTBaVzF3YkdGMFpRMXZjR1Z1WldSZlptOXNaR1Z5Q1hOcFpHVmZiR2x6ZEFkNmIyOXRiM1YwQm5GMWIzUmxjd3h5Wld4aGRHVmtYMnhwYzNRRVoyUnZZd2R6Ym1sd2NHVjBCSEJoWjJVTFkzVnpkRzl0WDJGd2NITUhZWEp5YjNkMWNBWmhkSFJoWTJnSFpHRjVkbWxsZHdScGJtWnZFR2x1YzJWeWRGOTBZV2RmWm1sbGJHUUZjR0Z6ZEdVRWMyOXlkQU53WkdZR2NtVndiM0owQkhSaGMyc0lZWEJ3Y205MllXd0xjMjlqYVdGc2MyaGhjbVVHY0dWdmNHeGxCbWwwWVd4cFl3WmtaV3hsZEdVRVltRmphd05pWVc0RlpXMWhhV3dFWW05c1pBZHdjbVYyYVdWM0JYTm9ZWEpsQ1dSaGMyaGliMkZ5WkFaMGFHRnVhM01GZEc5a1lYa0tZMjl1ZEhKaFkzUXRNUWR6Y0dsdWJtVnlCWEJvYjNSdkJXVjJaVzUwQjJKMWFXeGtaWElNYW5WemRHbG1lVjkwWlhoMEVXTmxiblJsY2w5aGJHbG5ibDkwWlhoMEJHVmthWFFHYkdGNWIzVjBDSEJ5YVc5eWFYUjVFSE4wWVc1a1lYSmtYMjlpYW1WamRITUhZMjl1ZEdGamRBaGpkWE4wYjIwNU13ZGxiV0ZwYkMweEIzTjFZMk5sYzNNSGNtVm1jbVZ6YUE5c1pXWjBYMkZzYVdkdVgzUmxlSFFFWkc5M2JnVmphR0Z5ZEFSamFHRjBCV1Z5Y205eUJHeGxablFMY21WdGIzWmxYMnhwYm1zSGMzVnRiV0Z5ZVFoa2IyTjFiV1Z1ZEFaa2NtRm1kSE1OYzNWdGJXRnllV1JsZEdGcGJBZHlaWEJzWVdObEJHeHBhMlVJWkc5M2JteHZZV1FGWTJobFkyc0xZMmhsZG5KdmJteGxablFHWlhod1lXNWtCR3hwYm1zRmNtVndiSGtGZEdGaWJHVUVabVZsWkFkbGRtVnVkQzB4RG5ScGJHVmZZMkZ5WkY5c2FYTjBGSEpwWTJoMFpYaDBZblZzYkdWMFpXUnNhWE4wQkd4cGMzUUlabUYyYjNKcGRHVU1ZMmhsZG5KdmJuSnBaMmgwQzJOb1pYWnliMjVrYjNkdUJtWnBiSFJsY2dSdGIzWmxEbkpwWTJoMFpYaDBhVzVrWlc1MENYVnVaR1Z5YkdsdVpRaG1aV1ZrWW1GamF3Um1hV3hsQkhWdVpHOFVjbWxqYUhSbGVIUnVkVzFpWlhKbFpHeHBjM1FFYkc5amF3cG1hV3gwWlhKc2FYTjBDV05vWlhaeWIyNTFjQVZqYkdWaGNnZG1iM0ozWVhKa0NtNWxkMTkzYVc1a2IzY1BjbWxqYUhSbGVIUnZkWFJrWlc1MEJuVnViRzlqYXd0dmNIQnZjblIxYm1sMGVRUndiM04wQW5Wd0JuTmxZWEpqYUFOdVpYY0dabkp2ZW1WdUNHTnZiVzFsYm5SekJuSmxZMlZ1ZEFsdFlXZHBZM2RoYm1RWVpHbHpZMjkxYm5SelkyaGxaSFZzWldsamIyNXpMVEF5Q0dOMWMzUnZiVGt3Q0dOMWMzUnZiVEkyQ0hSeVpXNWthVzVuQm5SaGNtZGxkQVJqZFdKbEFBQUFBQUVBQWYvL0FBOEFBQUFBQUFBQUFBQUFBQUFBQUFBQUFCZ0FHQUFZQUJnRFUvOXFBMVAvYXJBQUxDQ3dBRlZZUlZrZ0lFdTRBQTVSUzdBR1UxcFlzRFFic0NoWllHWWdpbFZZc0FJbFlia0lBQWdBWTJNalloc2hJYkFBV2JBQVF5TkVzZ0FCQUVOZ1FpMndBU3l3SUdCbUxiQUNMQ0JrSUxEQVVMQUVKbHF5S0FFS1EwVmpSVkpiV0NFaklSdUtXQ0N3VUZCWUliQkFXUnNnc0RoUVdDR3dPRmxaSUxFQkNrTkZZMFZoWkxBb1VGZ2hzUUVLUTBWalJTQ3dNRkJZSWJBd1dSc2dzTUJRV0NCbUlJcUtZU0N3Q2xCWVlCc2dzQ0JRV0NHd0NtQWJJTEEyVUZnaHNEWmdHMkJaV1ZrYnNBRXJXVmtqc0FCUVdHVlpXUzJ3QXl3Z1JTQ3dCQ1ZoWkNDd0JVTlFXTEFGSTBLd0JpTkNHeUVoV2JBQllDMndCQ3dqSVNNaElHU3hCV0pDSUxBR0kwS3hBUXBEUldPeEFRcERzQUZnUldPd0F5b2hJTEFHUXlDS0lJcXdBU3V4TUFVbHNBUW1VVmhnVUJ0aFVsbFlJMWtoSUxCQVUxaXdBU3NiSWJCQVdTT3dBRkJZWlZrdHNBVXNzQWRESzdJQUFnQkRZRUl0c0FZc3NBY2pRaU1nc0FBalFtR3dBbUptc0FGanNBRmdzQVVxTGJBSExDQWdSU0N3QzBOanVBUUFZaUN3QUZCWXNFQmdXV2F3QVdOZ1JMQUJZQzJ3Q0N5eUJ3c0FRMFZDS2lHeUFBRUFRMkJDTGJBSkxMQUFReU5Fc2dBQkFFTmdRaTJ3Q2l3Z0lFVWdzQUVySTdBQVE3QUVKV0FnUllvallTQmtJTEFnVUZnaHNBQWJzREJRV0xBZ0c3QkFXVmtqc0FCUVdHVlpzQU1sSTJGRVJMQUJZQzJ3Q3l3Z0lFVWdzQUVySTdBQVE3QUVKV0FnUllvallTQmtzQ1JRV0xBQUc3QkFXU093QUZCWVpWbXdBeVVqWVVSRXNBRmdMYkFNTENDd0FDTkNzZ3NLQTBWWUlSc2pJVmtxSVMyd0RTeXhBZ0pGc0dSaFJDMndEaXl3QVdBZ0lMQU1RMHF3QUZCWUlMQU1JMEpac0ExRFNyQUFVbGdnc0EwalFsa3RzQThzSUxBUVltYXdBV01ndUFRQVk0b2pZYkFPUTJBZ2ltQWdzQTRqUWlNdHNCQXNTMVJZc1FSa1JGa2tzQTFsSTNndHNCRXNTMUZZUzFOWXNRUmtSRmtiSVZra3NCTmxJM2d0c0JJc3NRQVBRMVZZc1E4UFE3QUJZVUt3RHl0WnNBQkRzQUlsUXJFTUFpVkNzUTBDSlVLd0FSWWpJTEFESlZCWXNRRUFRMkN3QkNWQ2lvb2dpaU5oc0E0cUlTT3dBV0VnaWlOaHNBNHFJUnV4QVFCRFlMQUNKVUt3QWlWaHNBNHFJVm13REVOSHNBMURSMkN3QW1JZ3NBQlFXTEJBWUZsbXNBRmpJTEFMUTJPNEJBQmlJTEFBVUZpd1FHQlpackFCWTJDeEFBQVRJMFN3QVVPd0FENnlBUUVCUTJCQ0xiQVRMQUN4QUFKRlZGaXdEeU5DSUVXd0N5TkNzQW9qc0FGZ1FpQmdzQUZodFJBUUFRQU9BRUpDaW1DeEVnWXJzSElyR3lKWkxiQVVMTEVBRXlzdHNCVXNzUUVUS3kyd0ZpeXhBaE1yTGJBWExMRURFeXN0c0Jnc3NRUVRLeTJ3R1N5eEJSTXJMYkFhTExFR0V5c3RzQnNzc1FjVEt5MndIQ3l4Q0JNckxiQWRMTEVKRXlzdHNCNHNBTEFOSzdFQUFrVlVXTEFQSTBJZ1JiQUxJMEt3Q2lPd0FXQkNJR0N3QVdHMUVCQUJBQTRBUWtLS1lMRVNCaXV3Y2lzYklsa3RzQjhzc1FBZUt5MndJQ3l4QVI0ckxiQWhMTEVDSGlzdHNDSXNzUU1lS3kyd0l5eXhCQjRyTGJBa0xMRUZIaXN0c0NVc3NRWWVLeTJ3Sml5eEJ4NHJMYkFuTExFSUhpc3RzQ2dzc1FrZUt5MndLU3dnUExBQllDMndLaXdnWUxBUVlDQkRJN0FCWUVPd0FpVmhzQUZnc0NrcUlTMndLeXl3S2l1d0tpb3RzQ3dzSUNCSElDQ3dDME5qdUFRQVlpQ3dBRkJZc0VCZ1dXYXdBV05nSTJFNEl5Q0tWVmdnUnlBZ3NBdERZN2dFQUdJZ3NBQlFXTEJBWUZsbXNBRmpZQ05oT0JzaFdTMndMU3dBc1FBQ1JWUllzQUVXc0N3cXNBRVZNQnNpV1Myd0xpd0FzQTByc1FBQ1JWUllzQUVXc0N3cXNBRVZNQnNpV1Myd0x5d2dOYkFCWUMyd01Dd0FzQUZGWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqc0FFcnNBdERZN2dFQUdJZ3NBQlFXTEJBWUZsbXNBRmpzQUVyc0FBV3RBQUFBQUFBUkQ0ak9MRXZBUlVxTGJBeExDQThJRWNnc0F0RFk3Z0VBR0lnc0FCUVdMQkFZRmxtc0FGallMQUFRMkU0TGJBeUxDNFhQQzJ3TXl3Z1BDQkhJTEFMUTJPNEJBQmlJTEFBVUZpd1FHQlpackFCWTJDd0FFTmhzQUZEWXpndHNEUXNzUUlBRmlVZ0xpQkhzQUFqUXJBQ0pVbUtpa2NqUnlOaElGaGlHeUZac0FFalFySXpBUUVWRkNvdHNEVXNzQUFXc0FRbHNBUWxSeU5ISTJHd0NVTXJaWW91SXlBZ1BJbzRMYkEyTExBQUZyQUVKYkFFSlNBdVJ5TkhJMkVnc0FRalFyQUpReXNnc0dCUVdDQ3dRRkZZc3dJZ0F5QWJzd0ltQXhwWlFrSWpJTEFJUXlDS0kwY2pSeU5oSTBaZ3NBUkRzQUppSUxBQVVGaXdRR0JaWnJBQlkyQWdzQUVySUlxS1lTQ3dBa05nWkNPd0EwTmhaRkJZc0FKRFlSdXdBME5nV2JBREpiQUNZaUN3QUZCWXNFQmdXV2F3QVdOaEl5QWdzQVFtSTBaaE9Cc2pzQWhEUnJBQ0piQUlRMGNqUnlOaFlDQ3dCRU93QW1JZ3NBQlFXTEJBWUZsbXNBRmpZQ01nc0FFckk3QUVRMkN3QVN1d0JTVmhzQVVsc0FKaUlMQUFVRml3UUdCWlpyQUJZN0FFSm1FZ3NBUWxZR1Fqc0FNbFlHUlFXQ0ViSXlGWkl5QWdzQVFtSTBaaE9Ga3RzRGNzc0FBV0lDQWdzQVVtSUM1SEkwY2pZU004T0Myd09DeXdBQllnc0FnalFpQWdJRVlqUjdBQkt5TmhPQzJ3T1N5d0FCYXdBeVd3QWlWSEkwY2pZYkFBVkZndUlEd2pJUnV3QWlXd0FpVkhJMGNqWVNDd0JTV3dCQ1ZISTBjalliQUdKYkFGSlVtd0FpVmh1UWdBQ0FCall5TWdXR0liSVZsanVBUUFZaUN3QUZCWXNFQmdXV2F3QVdOZ0l5NGpJQ0E4aWpnaklWa3RzRG9zc0FBV0lMQUlReUF1UnlOSEkyRWdZTEFnWUdhd0FtSWdzQUJRV0xCQVlGbG1zQUZqSXlBZ1BJbzRMYkE3TENNZ0xrYXdBaVZHVWxnZ1BGa3VzU3NCRkNzdHNEd3NJeUF1UnJBQ0pVWlFXQ0E4V1M2eEt3RVVLeTJ3UFN3aklDNUdzQUlsUmxKWUlEeFpJeUF1UnJBQ0pVWlFXQ0E4V1M2eEt3RVVLeTJ3UGl5d05Tc2pJQzVHc0FJbFJsSllJRHhaTHJFckFSUXJMYkEvTExBMks0b2dJRHl3QkNOQ2lqZ2pJQzVHc0FJbFJsSllJRHhaTHJFckFSUXJzQVJETHJBckt5MndRQ3l3QUJhd0JDV3dCQ1lnTGtjalJ5TmhzQWxES3lNZ1BDQXVJeml4S3dFVUt5MndRU3l4Q0FRbFFyQUFGckFFSmJBRUpTQXVSeU5ISTJFZ3NBUWpRckFKUXlzZ3NHQlFXQ0N3UUZGWXN3SWdBeUFic3dJbUF4cFpRa0lqSUVld0JFT3dBbUlnc0FCUVdMQkFZRmxtc0FGallDQ3dBU3NnaW9waElMQUNRMkJrSTdBRFEyRmtVRml3QWtOaEc3QURRMkJac0FNbHNBSmlJTEFBVUZpd1FHQlpackFCWTJHd0FpVkdZVGdqSUR3ak9Cc2hJQ0JHSTBld0FTc2pZVGdoV2JFckFSUXJMYkJDTExBMUt5NnhLd0VVS3kyd1F5eXdOaXNoSXlBZ1BMQUVJMElqT0xFckFSUXJzQVJETHJBckt5MndSQ3l3QUJVZ1I3QUFJMEt5QUFFQkZSUVRMckF4S2kyd1JTeXdBQlVnUjdBQUkwS3lBQUVCRlJRVExyQXhLaTJ3Uml5eEFBRVVFN0F5S2kyd1J5eXdOQ290c0Vnc3NBQVdSU01nTGlCR2lpTmhPTEVyQVJRckxiQkpMTEFJSTBLd1NDc3RzRW9zc2dBQVFTc3RzRXNzc2dBQlFTc3RzRXdzc2dFQVFTc3RzRTBzc2dFQlFTc3RzRTRzc2dBQVFpc3RzRThzc2dBQlFpc3RzRkFzc2dFQVFpc3RzRkVzc2dFQlFpc3RzRklzc2dBQVBpc3RzRk1zc2dBQlBpc3RzRlFzc2dFQVBpc3RzRlVzc2dFQlBpc3RzRllzc2dBQVFDc3RzRmNzc2dBQlFDc3RzRmdzc2dFQVFDc3RzRmtzc2dFQlFDc3RzRm9zc2dBQVF5c3RzRnNzc2dBQlF5c3RzRndzc2dFQVF5c3RzRjBzc2dFQlF5c3RzRjRzc2dBQVB5c3RzRjhzc2dBQlB5c3RzR0Fzc2dFQVB5c3RzR0Vzc2dFQlB5c3RzR0lzc0RjckxyRXJBUlFyTGJCakxMQTNLN0E3S3kyd1pDeXdOeXV3UENzdHNHVXNzQUFXc0RjcnNEMHJMYkJtTExBNEt5NnhLd0VVS3kyd1p5eXdPQ3V3T3lzdHNHZ3NzRGdyc0R3ckxiQnBMTEE0SzdBOUt5MndhaXl3T1NzdXNTc0JGQ3N0c0dzc3NEa3JzRHNyTGJCc0xMQTVLN0E4S3kyd2JTeXdPU3V3UFNzdHNHNHNzRG9yTHJFckFSUXJMYkJ2TExBNks3QTdLeTJ3Y0N5d09pdXdQQ3N0c0hFc3NEb3JzRDByTGJCeUxMTUpCQUlEUlZnaEd5TWhXVUlyc0FobHNBTWtVSGl3QVJVd0xRQkx1QURJVWxpeEFRR09XYkFCdVFnQUNBQmpjTEVBQlVLeUFBRUFLckVBQlVLekNnSUJDQ3F4QUFWQ3N3NEFBUWdxc1FBR1Fyb0N3QUFCQUFrcXNRQUhRcm9BUUFBQkFBa3FzUU1BUkxFa0FZaFJXTEJBaUZpeEEyUkVzU1lCaUZGWXVnaUFBQUVFUUloalZGaXhBd0JFV1ZsWldiTU1BZ0VNS3JnQi80V3dCSTJ4QWdCRUFBQT0nKSBmb3JtYXQoJ3RydWV0eXBlJyk7XG59XG4vKiBDaHJvbWUgaGFjazogU1ZHIGlzIHJlbmRlcmVkIG1vcmUgc21vb3RoIGluIFdpbmRvenplLiAxMDAlIG1hZ2ljLCB1bmNvbW1lbnQgaWYgeW91IG5lZWQgaXQuICovXG4vKiBOb3RlLCB0aGF0IHdpbGwgYnJlYWsgaGludGluZyEgSW4gb3RoZXIgT1MtZXMgZm9udCB3aWxsIGJlIG5vdCBhcyBzaGFycCBhcyBpdCBjb3VsZCBiZSAqL1xuLypcbkBtZWRpYSBzY3JlZW4gYW5kICgtd2Via2l0LW1pbi1kZXZpY2UtcGl4ZWwtcmF0aW86MCkge1xuICBAZm9udC1mYWNlIHtcbiAgICBmb250LWZhbWlseTogJ3NmLWljb25zJztcbiAgICBzcmM6IHVybCgnLi4vZm9udC9zZi1pY29ucy5zdmc/ODc3NDI0NDYjc2YtaWNvbnMnKSBmb3JtYXQoJ3N2ZycpO1xuICB9XG59XG4qL1xuXG5bY2xhc3NePVwic2YtaWNvbi1cIl06YmVmb3JlLCBbY2xhc3MqPVwiIHNmLWljb24tXCJdOmJlZm9yZSB7XG5cdGZvbnQtZmFtaWx5OiBcInNmLWljb25zXCI7XG5cdGZvbnQtc3R5bGU6IG5vcm1hbDtcblx0Zm9udC13ZWlnaHQ6IG5vcm1hbDtcblx0c3BlYWs6IG5vbmU7XG5cblx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHR0ZXh0LWRlY29yYXRpb246IGluaGVyaXQ7XG5cdHdpZHRoOiAxZW07XG5cdG1hcmdpbi1yaWdodDogLjJlbTtcblx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHQvKiBvcGFjaXR5OiAuODsgKi9cblxuXHQvKiBGb3Igc2FmZXR5IC0gcmVzZXQgcGFyZW50IHN0eWxlcywgdGhhdCBjYW4gYnJlYWsgZ2x5cGggY29kZXMqL1xuXHRmb250LXZhcmlhbnQ6IG5vcm1hbDtcblx0dGV4dC10cmFuc2Zvcm06IG5vbmU7XG5cblx0LyogZml4IGJ1dHRvbnMgaGVpZ2h0LCBmb3IgdHdpdHRlciBib290c3RyYXAgKi9cblx0bGluZS1oZWlnaHQ6IDFlbTtcblxuXHQvKiBBbmltYXRpb24gY2VudGVyIGNvbXBlbnNhdGlvbiAtIG1hcmdpbnMgc2hvdWxkIGJlIHN5bW1ldHJpYyAqL1xuXHQvKiByZW1vdmUgaWYgbm90IG5lZWRlZCAqL1xuXHRtYXJnaW4tbGVmdDogLjJlbTtcblxuXHQvKiB5b3UgY2FuIGJlIG1vcmUgY29tZm9ydGFibGUgd2l0aCBpbmNyZWFzZWQgaWNvbnMgc2l6ZSAqL1xuXHQvKiBmb250LXNpemU6IDEyMCU7ICovXG5cblx0LyogVW5jb21tZW50IGZvciAzRCBlZmZlY3QgKi9cblx0LyogdGV4dC1zaGFkb3c6IDFweCAxcHggMXB4IHJnYmEoMTI3LCAxMjcsIDEyNywgMC4zKTsgKi9cbn1cbi5zZi1pY29uLTNkb3RzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDAnOyB9IC8qICfuoIAnICovXG4uc2YtaWNvbi1hZGQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMSc7IH0gLyogJ+6ggScgKi9cbi5zZi1pY29uLWNsb3NlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDInOyB9IC8qICfuoIInICovXG4uc2YtaWNvbi1wcmljZWJvb2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMyc7IH0gLyogJ+6ggycgKi9cbi5zZi1pY29uLWhlbHA6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNCc7IH0gLyogJ+6ghCcgKi9cbi5zZi1pY29uLW5vdGVib29rOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDUnOyB9IC8qICfuoIUnICovXG4uc2YtaWNvbi1yb3dzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDYnOyB9IC8qICfuoIYnICovXG4uc2YtaWNvbi11cGxvYWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNyc7IH0gLyogJ+6ghycgKi9cbi5zZi1pY29uLWNsb2NrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDgnOyB9IC8qICfuoIgnICovXG4uc2YtaWNvbi1ncm91cHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwOSc7IH0gLyogJ+6giScgKi9cbi5zZi1pY29uLW9wZW5fZm9sZGVyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGEnOyB9IC8qICfuoIonICovXG4uc2YtaWNvbi1yaWdodF9hbGlnbl90ZXh0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGInOyB9IC8qICfuoIsnICovXG4uc2YtaWNvbi1wcm9kdWN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGMnOyB9IC8qICfuoIwnICovXG4uc2YtaWNvbi1xdWVzdGlvbl9mZWVkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGQnOyB9IC8qICfuoI0nICovXG4uc2YtaWNvbi13YXJuaW5nOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGUnOyB9IC8qICfuoI4nICovXG4uc2YtaWNvbi11c2VyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGYnOyB9IC8qICfuoI8nICovXG4uc2YtaWNvbi1yaWdodDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODEwJzsgfSAvKiAn7qCQJyAqL1xuLnNmLWljb24tbm90aWZpY2F0aW9uOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTEnOyB9IC8qICfuoJEnICovXG4uc2YtaWNvbi1ob21lOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTInOyB9IC8qICfuoJInICovXG4uc2YtaWNvbi1jb250cmFjdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODEzJzsgfSAvKiAn7qCTJyAqL1xuLnNmLWljb24tYWRkdXNlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE0JzsgfSAvKiAn7qCUJyAqL1xuLnNmLWljb24tYXBwczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE1JzsgfSAvKiAn7qCVJyAqL1xuLnNmLWljb24tY29weTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE2JzsgfSAvKiAn7qCWJyAqL1xuLnNmLWljb24taW1hZ2U6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNyc7IH0gLyogJ+6glycgKi9cbi5zZi1pY29uLW9wZW46YmVmb3JlIHsgY29udGVudDogJ1xcZTgxOCc7IH0gLyogJ+6gmCcgKi9cbi5zZi1pY29uLXNldHRpbmdzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTknOyB9IC8qICfuoJknICovXG4uc2YtaWNvbi16b29taW46YmVmb3JlIHsgY29udGVudDogJ1xcZTgxYSc7IH0gLyogJ+6gmicgKi9cbi5zZi1pY29uLXJlY29yZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFiJzsgfSAvKiAn7qCbJyAqL1xuLnNmLWljb24tYXJyb3dkb3duOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWMnOyB9IC8qICfuoJwnICovXG4uc2YtaWNvbi1jdXQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxZCc7IH0gLyogJ+6gnScgKi9cbi5zZi1pY29uLWluc2VydF90ZW1wbGF0ZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFlJzsgfSAvKiAn7qCeJyAqL1xuLnNmLWljb24tb3BlbmVkX2ZvbGRlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFmJzsgfSAvKiAn7qCfJyAqL1xuLnNmLWljb24tc2lkZV9saXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjAnOyB9IC8qICfuoKAnICovXG4uc2YtaWNvbi16b29tb3V0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjEnOyB9IC8qICfuoKEnICovXG4uc2YtaWNvbi1xdW90ZXM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMic7IH0gLyogJ+6goicgKi9cbi5zZi1pY29uLXJlbGF0ZWRfbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIzJzsgfSAvKiAn7qCjJyAqL1xuLnNmLWljb24tZ2RvYzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI0JzsgfSAvKiAn7qCkJyAqL1xuLnNmLWljb24tc25pcHBldDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI1JzsgfSAvKiAn7qClJyAqL1xuLnNmLWljb24tcGFnZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI2JzsgfSAvKiAn7qCmJyAqL1xuLnNmLWljb24tY3VzdG9tX2FwcHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyNyc7IH0gLyogJ+6gpycgKi9cbi5zZi1pY29uLWFycm93dXA6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyOCc7IH0gLyogJ+6gqCcgKi9cbi5zZi1pY29uLWF0dGFjaDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI5JzsgfSAvKiAn7qCpJyAqL1xuLnNmLWljb24tZGF5dmlldzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODJhJzsgfSAvKiAn7qCqJyAqL1xuLnNmLWljb24taW5mbzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODJiJzsgfSAvKiAn7qCrJyAqL1xuLnNmLWljb24taW5zZXJ0X3RhZ19maWVsZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODJjJzsgfSAvKiAn7qCsJyAqL1xuLnNmLWljb24tcGFzdGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyZCc7IH0gLyogJ+6grScgKi9cbi5zZi1pY29uLXNvcnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyZSc7IH0gLyogJ+6gricgKi9cbi5zZi1pY29uLXBkZjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODJmJzsgfSAvKiAn7qCvJyAqL1xuLnNmLWljb24tcmVwb3J0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzAnOyB9IC8qICfuoLAnICovXG4uc2YtaWNvbi10YXNrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzEnOyB9IC8qICfuoLEnICovXG4uc2YtaWNvbi1hcHByb3ZhbDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODMyJzsgfSAvKiAn7qCyJyAqL1xuLnNmLWljb24tc29jaWFsc2hhcmU6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzMyc7IH0gLyogJ+6gsycgKi9cbi5zZi1pY29uLXBlb3BsZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODM0JzsgfSAvKiAn7qC0JyAqL1xuLnNmLWljb24taXRhbGljOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzUnOyB9IC8qICfuoLUnICovXG4uc2YtaWNvbi1kZWxldGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzNic7IH0gLyogJ+6gticgKi9cbi5zZi1pY29uLWJhY2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzNyc7IH0gLyogJ+6gtycgKi9cbi5zZi1pY29uLWJhbjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODM4JzsgfSAvKiAn7qC4JyAqL1xuLnNmLWljb24tZW1haWw6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzOSc7IH0gLyogJ+6guScgKi9cbi5zZi1pY29uLWJvbGQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzYSc7IH0gLyogJ+6guicgKi9cbi5zZi1pY29uLXByZXZpZXc6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzYic7IH0gLyogJ+6guycgKi9cbi5zZi1pY29uLXNoYXJlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4M2MnOyB9IC8qICfuoLwnICovXG4uc2YtaWNvbi1kYXNoYm9hcmQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzZCc7IH0gLyogJ+6gvScgKi9cbi5zZi1pY29uLXRoYW5rczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODNlJzsgfSAvKiAn7qC+JyAqL1xuLnNmLWljb24tdG9kYXk6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzZic7IH0gLyogJ+6gvycgKi9cbi5zZi1pY29uLWNvbnRyYWN0LTE6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0MCc7IH0gLyogJ+6hgCcgKi9cbi5zZi1pY29uLXNwaW5uZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0MSc7IH0gLyogJ+6hgScgKi9cbi5zZi1pY29uLXBob3RvOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDInOyB9IC8qICfuoYInICovXG4uc2YtaWNvbi1ldmVudDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQzJzsgfSAvKiAn7qGDJyAqL1xuLnNmLWljb24tYnVpbGRlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQ0JzsgfSAvKiAn7qGEJyAqL1xuLnNmLWljb24tanVzdGlmeV90ZXh0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDUnOyB9IC8qICfuoYUnICovXG4uc2YtaWNvbi1jZW50ZXJfYWxpZ25fdGV4dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQ2JzsgfSAvKiAn7qGGJyAqL1xuLnNmLWljb24tZWRpdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQ3JzsgfSAvKiAn7qGHJyAqL1xuLnNmLWljb24tbGF5b3V0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDgnOyB9IC8qICfuoYgnICovXG4uc2YtaWNvbi1wcmlvcml0eTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQ5JzsgfSAvKiAn7qGJJyAqL1xuLnNmLWljb24tc3RhbmRhcmRfb2JqZWN0czpiZWZvcmUgeyBjb250ZW50OiAnXFxlODRhJzsgfSAvKiAn7qGKJyAqL1xuLnNmLWljb24tY29udGFjdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODRiJzsgfSAvKiAn7qGLJyAqL1xuLnNmLWljb24tY3VzdG9tOTM6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Yyc7IH0gLyogJ+6hjCcgKi9cbi5zZi1pY29uLWVtYWlsLTE6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0ZCc7IH0gLyogJ+6hjScgKi9cbi5zZi1pY29uLXN1Y2Nlc3M6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0ZSc7IH0gLyogJ+6hjicgKi9cbi5zZi1pY29uLXJlZnJlc2g6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Zic7IH0gLyogJ+6hjycgKi9cbi5zZi1pY29uLWxlZnRfYWxpZ25fdGV4dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODUwJzsgfSAvKiAn7qGQJyAqL1xuLnNmLWljb24tZG93bjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODUxJzsgfSAvKiAn7qGRJyAqL1xuLnNmLWljb24tY2hhcnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Mic7IH0gLyogJ+6hkicgKi9cbi5zZi1pY29uLWNoYXQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Myc7IH0gLyogJ+6hkycgKi9cbi5zZi1pY29uLWVycm9yOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTQnOyB9IC8qICfuoZQnICovXG4uc2YtaWNvbi1sZWZ0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTUnOyB9IC8qICfuoZUnICovXG4uc2YtaWNvbi1yZW1vdmVfbGluazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODU2JzsgfSAvKiAn7qGWJyAqL1xuLnNmLWljb24tc3VtbWFyeTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODU3JzsgfSAvKiAn7qGXJyAqL1xuLnNmLWljb24tZG9jdW1lbnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1OCc7IH0gLyogJ+6hmCcgKi9cbi5zZi1pY29uLWRyYWZ0czpiZWZvcmUgeyBjb250ZW50OiAnXFxlODU5JzsgfSAvKiAn7qGZJyAqL1xuLnNmLWljb24tc3VtbWFyeWRldGFpbDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODVhJzsgfSAvKiAn7qGaJyAqL1xuLnNmLWljb24tcmVwbGFjZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODViJzsgfSAvKiAn7qGbJyAqL1xuLnNmLWljb24tbGlrZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODVjJzsgfSAvKiAn7qGcJyAqL1xuLnNmLWljb24tZG93bmxvYWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1ZCc7IH0gLyogJ+6hnScgKi9cbi5zZi1pY29uLWNoZWNrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NWUnOyB9IC8qICfuoZ4nICovXG4uc2YtaWNvbi1jaGV2cm9ubGVmdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODVmJzsgfSAvKiAn7qGfJyAqL1xuLnNmLWljb24tZXhwYW5kOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjAnOyB9IC8qICfuoaAnICovXG4uc2YtaWNvbi1saW5rOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjEnOyB9IC8qICfuoaEnICovXG4uc2YtaWNvbi1yZXBseTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODYyJzsgfSAvKiAn7qGiJyAqL1xuLnNmLWljb24tdGFibGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Myc7IH0gLyogJ+6hoycgKi9cbi5zZi1pY29uLWZlZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2NCc7IH0gLyogJ+6hpCcgKi9cbi5zZi1pY29uLWV2ZW50LTE6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2NSc7IH0gLyogJ+6hpScgKi9cbi5zZi1pY29uLXRpbGVfY2FyZF9saXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjYnOyB9IC8qICfuoaYnICovXG4uc2YtaWNvbi1yaWNodGV4dGJ1bGxldGVkbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODY3JzsgfSAvKiAn7qGnJyAqL1xuLnNmLWljb24tbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODY4JzsgfSAvKiAn7qGoJyAqL1xuLnNmLWljb24tZmF2b3JpdGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2OSc7IH0gLyogJ+6hqScgKi9cbi5zZi1pY29uLWNoZXZyb25yaWdodDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODZhJzsgfSAvKiAn7qGqJyAqL1xuLnNmLWljb24tY2hldnJvbmRvd246YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Yic7IH0gLyogJ+6hqycgKi9cbi5zZi1pY29uLWZpbHRlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODZjJzsgfSAvKiAn7qGsJyAqL1xuLnNmLWljb24tbW92ZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODZkJzsgfSAvKiAn7qGtJyAqL1xuLnNmLWljb24tcmljaHRleHRpbmRlbnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2ZSc7IH0gLyogJ+6hricgKi9cbi5zZi1pY29uLXVuZGVybGluZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODZmJzsgfSAvKiAn7qGvJyAqL1xuLnNmLWljb24tZmVlZGJhY2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3MCc7IH0gLyogJ+6hsCcgKi9cbi5zZi1pY29uLWZpbGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3MSc7IH0gLyogJ+6hsScgKi9cbi5zZi1pY29uLXVuZG86YmVmb3JlIHsgY29udGVudDogJ1xcZTg3Mic7IH0gLyogJ+6hsicgKi9cbi5zZi1pY29uLXJpY2h0ZXh0bnVtYmVyZWRsaXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzMnOyB9IC8qICfuobMnICovXG4uc2YtaWNvbi1sb2NrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzQnOyB9IC8qICfuobQnICovXG4uc2YtaWNvbi1maWx0ZXJsaXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzUnOyB9IC8qICfuobUnICovXG4uc2YtaWNvbi1jaGV2cm9udXA6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3Nic7IH0gLyogJ+6hticgKi9cbi5zZi1pY29uLWNsZWFyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzcnOyB9IC8qICfuobcnICovXG4uc2YtaWNvbi1mb3J3YXJkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzgnOyB9IC8qICfuobgnICovXG4uc2YtaWNvbi1uZXdfd2luZG93OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzknOyB9IC8qICfuobknICovXG4uc2YtaWNvbi1yaWNodGV4dG91dGRlbnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3YSc7IH0gLyogJ+6huicgKi9cbi5zZi1pY29uLXVubG9jazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODdiJzsgfSAvKiAn7qG7JyAqL1xuLnNmLWljb24tb3Bwb3J0dW5pdHk6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3Yyc7IH0gLyogJ+6hvCcgKi9cbi5zZi1pY29uLXBvc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3ZCc7IH0gLyogJ+6hvScgKi9cbi5zZi1pY29uLXVwOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4N2UnOyB9IC8qICfuob4nICovXG4uc2YtaWNvbi1zZWFyY2g6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3Zic7IH0gLyogJ+6hvycgKi9cbi5zZi1pY29uLW5ldzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODgwJzsgfSAvKiAn7qKAJyAqL1xuLnNmLWljb24tZnJvemVuOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODEnOyB9IC8qICfuooEnICovXG4uc2YtaWNvbi1jb21tZW50czpiZWZvcmUgeyBjb250ZW50OiAnXFxlODgyJzsgfSAvKiAn7qKCJyAqL1xuLnNmLWljb24tcmVjZW50OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODMnOyB9IC8qICfuooMnICovXG4uc2YtaWNvbi1tYWdpY3dhbmQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4NCc7IH0gLyogJ+6ihCcgKi9cbi5zZi1pY29uLWRpc2NvdW50c2NoZWR1bGVpY29ucy0wMjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODg1JzsgfSAvKiAn7qKFJyAqL1xuLnNmLWljb24tY3VzdG9tOTA6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4Nic7IH0gLyogJ+6ihicgKi9cbi5zZi1pY29uLWNhbmNlbC1jaXJjbGVkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODYnOyB9IC8qICfuooYnICovXG4uc2YtaWNvbi1jdXN0b20yNjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODg3JzsgfSAvKiAn7qKHJyAqL1xuLnNmLWljb24tdHJlbmRpbmc6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4OCc7IH0gLyogJ+6iiCcgKi9cbi5zZi1pY29uLXRhcmdldDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODg5JzsgfSAvKiAn7qKJJyAqL1xuLnNmLWljb24tY3ViZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODhiJzsgfSAvKiAn7qKLJyAqL1xuLnNmLWljb24tcGFpcmVkLWxpbmVzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4OGMnOyB9IC8qICfuoownICovXG5cbi8qIFRoZSBmb2xsb3dpbmcgaXMgY29waWVkIGZyb20gaWNvbnMvY3NzL3NiLWVtYmVkZGVkLmNzcyBhcyBsZXNzLXBsdWdpbi1jbGVhbi1jc3MgY291bGQgaGFuZGxlIGEgQGltcG9ydCAqL1xuQGZvbnQtZmFjZSB7XG4gIGZvbnQtZmFtaWx5OiAnc2InO1xuICBzcmM6IHVybCgnLi4vZm9udC9zYi5lb3Q/NDkzNDAyNDgnKTtcbiAgc3JjOiB1cmwoJy4uL2ZvbnQvc2IuZW90PzQ5MzQwMjQ4I2llZml4JykgZm9ybWF0KCdlbWJlZGRlZC1vcGVudHlwZScpLFxuICAgICAgIHVybCgnLi4vZm9udC9zYi5zdmc/NDkzNDAyNDgjc2InKSBmb3JtYXQoJ3N2ZycpO1xuICBmb250LXdlaWdodDogbm9ybWFsO1xuICBmb250LXN0eWxlOiBub3JtYWw7XG59XG5AZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6ICdzYic7XG4gIHNyYzogdXJsKCdkYXRhOmFwcGxpY2F0aW9uL29jdGV0LXN0cmVhbTtiYXNlNjQsZDA5R1JnQUJBQUFBQUJYMEFBNEFBQUFBSkJnQUFRQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJQVXk4eUFBQUJSQUFBQUVRQUFBQldQaWxKRW1OdFlYQUFBQUdJQUFBQU9nQUFBVXJRTmhtM1kzWjBJQUFBQWNRQUFBQUtBQUFBQ2dBQUFBQm1jR2R0QUFBQjBBQUFCWlFBQUF0d2lKQ1FXV2RoYzNBQUFBZGtBQUFBQ0FBQUFBZ0FBQUFRWjJ4NVpnQUFCMndBQUFxQ0FBQVAzTTQ0K08xb1pXRmtBQUFSOEFBQUFEVUFBQUEyQ0J1c0JHaG9aV0VBQUJJb0FBQUFIZ0FBQUNRSGx3TnhhRzEwZUFBQUVrZ0FBQUEvQUFBQW5JTkhBQUJzYjJOaEFBQVNpQUFBQUZBQUFBQlFTWlJObG0xaGVIQUFBQkxZQUFBQUlBQUFBQ0FBekF2U2JtRnRaUUFBRXZnQUFBRnpBQUFDaGYvRWpHNXdiM04wQUFBVWJBQUFBU0FBQUFHNkFSaTJsM0J5WlhBQUFCV01BQUFBWlFBQUFIdmRhd09GZUp4allHU09ZNXpBd01yQXdWVEZ0SWVCZ2FFSFFqTStZREJrWkdKZ1lHSmdaV2JBQ2dMU1hGTVlIRjR3dkZCbER2cWZ4UkRGSE1Rd0hTak1DSklEQU9MUUM3bDRuR05nWUdCbWdHQVpCa1lHRUhBQjhoakJmQllHRFNETkJxUVpHWmdZR0Y2by92OFBVdkNDQVVSTE1FTFZBd0VqRzhPSUJ3Q00rQWJUQUFBQUFBQUFBQUFBQUFBQUFBQjRuSzFXYVhNVFJ4Q2QxV0hMTmo2Q0R4STJnVm5HY294MlZwakxDQkRHN0VvVzRCenlsZXhDamwxTGR1NkxUL3dHL1pwZWtWU1JiL3kwdkI0ZDJHQW5WVlFvU3YybTkrMU05K3VlWHBQUWtzUmVXSStrM0h3cHByWTJhV1RuU1VnM2JGcU80a1BaMlFzcFUweitMb2lDYUxYVXZ1MDRKQ0lTZ2FwMWhTV0MyUGZJMGlUalE0OHlXcllsdldwU2J1bEpkOWthRCtxdCt2YlQwRkdPM1FrbE5adWhRK3VSTGFuQ3FCSkZNdTJSa2pZdHc5VmZTVnJoNXl2TWZOVU1KWUxvSkpMR20yRU1qK1JuNDR4V0dhM0dkaHhGa1UyV0cwV0tSRE04aUNLUHNscGluMXd4UVVENW9CbFNYdmswb255RUg1RVZlNVRUQ25ISmRwcmY5eVUvNlIzT3Z5VGllb3V5SlFmK1FIWmtCM3VuSy9raTB0b0s0NmFkYkVlaGl2QjBmU2ZFSTV1VDZwL3NVVjdUYU9CMlJhWW56UWlXeWxlUVdQa0paZllQeVdyaGZNcVhQQnJWa29PY0NGb3ZjMkpmOGc2MEhrZE1pV3NteUlMdWprNklvTzZYbktIWVkvcTQrT085WFN3WElRVElPSmIxamtxNEVFWXBZYk9hSkcwRU9ZaVNza1dWMUhwSFRKenlPaTNpTFdHL1R1M29TMmUwU2FnN01aNnRoNDZ0bktqa2VEU3AwMHltVHUyazV0R1VCbEZLT2hNODV0Y0JsQi9SSksrMnNackV5cU5wYkROakpKRlFvSVZ6YVNxSVpTZVdOQVhSUEpyUm03dGhtbXZYb2tXYVBGRFBQWHBQYjI2Rm16czlwKzNBUDJ2OFozVXFwb085TUoyZURzaEtmSnAydVVuUnVuNTZobjhtOFVQV0FpcVJMVGJEbE1WRHRuNEg1ZVZqUzQ3Q2F3TnM5NTd6SytoOTlrVElwSUg0Ry9BZUw5VXBCVXlGbUZWUUM5MjAxclVzeTlScVZvdFVaT3E3SVUwclg5WnBBazA1RG4xalg4WTQvcStaR1V0TUNkL3Z4T25aRVplZXVmWWx5RFNIM0daZGorWjFhckZkZ001c3orazB5L1o5bmViWWZxRFRQTnZ6T2gxaGErdDBsTzJIT2kydy9VaW5ZMnd2YUVHVDdqc0VjaEdCWE1BR0VvR3dkUkFJMjBzSWhLMUNJR3dYRVFqYklnSmh1NFJBMkg2TVFOZ3VJeEMybDdXc21uNHFhUnc3RThzQVJZZ0Rvem51eUdWdUtsZFR5YVVTcm90R3B6YmtLWEtycEtKNFZ2MHJBLzNpa1Rlc2diVkF1a1RXL0lwSnJueFVsZU9Qcm1oNTA4UzVBbzVWZjN0elhKOFREMlcvV1BoVDhML2FtcXFrVjZ4NVpISVZlU1BRaytORTF5WVZqNjdwOHJtcVI5Zi9pNG9PYTRGK0E2VVFDMFZabGcyK21aRHdVYWZUVUExYzVSQXpHek1QMS9XNlpjM1A0ZnliR0NFTDZINzhOeFFhQzl5RFRsbEpXZTFncjlYWGoyVzV0d2Zsc0NkWWttSyt6T3RiNFl1TXpFcjdSV1lwZXo3eWVjQVZNQ3FWWWFzTlhLM2d6WHNTODVEcFRmSk1FTGNWWllPa2pjZVpJTEdCWXg0d2I3NlRJQ1JNWGJXQjJpbWNzSUc4WU13cDJPK0VRMVJ2bE9Wd2U2RjlIbzJVZjJ0WDdNZ1pGVTBRK0czMlJ0anJzMUR5VzZ5QmhDZS8xTmRBVlNGTnhiaXBnRXNqNVlacThHRmNyZHRHTWs2Z3I2allEY3V5aWc4ZlI5eDNTbzVsSVBsSUVhdEhSeit0dlVLZDFMbjl5aWh1M3p2OUNJSkJhV0wrOXI2WjRxQ1VkN1dTWlZadEExTzNHcFZUMTVyRHhhc08zYzJqN252SDJTZHkxalRkZEUvYzlMNm1WYmVEZzdsWkVPM2JISlNsVEM2bzY4TU9HNmpMemFYUTZtVmNrdDUyRHpBc01LRGZvUlViLzFmM2NmZzhWNm9LbytOSXZaMm9INlBQWWd6eUR6aC9SL1VGNk9jeFRMbUdsT2Q3bHhPZmJ0ekQyVEpkeFYyc24rTGZ3S3kxNW1icEduQkQwdzJZaDZ4YUhicktEWHluQmpvOTB0eU85QkR3c2U0SzhRQmdFOEJpOEludVdzYnpLWUR4Zk1ZY0grQno1akJvTW9mQkZuTVliRE5uRFdDSE9ReDJtY05nanprTXZtRE9Pc0NYekdFUU1vZEJ4QndHVDVnVEFEeGxEb092bU1QZ2ErWXcrSVk1OXdHK1pRNkRtRGtNRXVZdzJOZDBheWh6aXhkMEY2aHRVQlhvd1BRVEZ2ZXdPTlJVR2JLLzQ0VmhmMjhRczM4d2lLay9hcm85cFA3RUMwUDkyU0NtL21JUVUzL1ZkR2RJL1kwWGh2cTdRVXo5d3lDbVB0TXZ4bktad1Y5R3ZrdUZBOG91TnAvejk4VDdCOElhUUxZQUFRQUIvLzhBRDNpY2hWZDdjRlRsRmIvbnU2L2RtK1R1M24zY20yeVNUWFkzMlp0SENiaFBtc1FRWXdTR0JwcUpHWVRnQUdXczBQQXdPandzYjhNVVgybENIYnVpUmxTR0pvelZqT1VoanVQSTFGcTFDRTUxS3RnT0Z0b3lhY0lmTkNQWU9wVDkwdlBkelVJUU10M2tudjFlOTN6bmQ5N0xBY2VOZC9JamZCc25jdEpoZ1lOcDFWb0FORkhqUitnQVBjbTNJVjEzamZSeStCR3VuK1U1bWN2aEhGeGVvNUtYYTdlSkFuREN0R3F2RnRBQUgvZkVON3hGNThGYjIrQW8vUUVjVGJFWmliSkordFNOTWVOcnY0V3Ztek80UXE2RUMzRkdveWRRV2x4VWtPLzFhTTdzWFhhOEt4NzE4aE9QZTRyeFZmYlpOb21tcmw2RlRaa243YnI5bU1rajNWWWVyVkdkTElQMFhSa0NYcGg0ckx0K1RuNlVmam56VEhFdGN1ZkdIK2IveXJkd0JPOTBjOG94cHlJaGF4NVp1NEczOHcya0JIU1ZUSWR3TTdoT3dRRHdkQWs0U0cycmIxZUJSUXY3NEQ3NkwyaUNBWHFOZHBDdnpYcFMyTzFyclNVRnV3bzU3b1p0YzlDMmRoNXRHN2REMGc2R0hXUTdnRUZIdndJRGpLL29xRVhvNkp5YnAxK3hJN2ZuZytiTi9zRks4TUZLK2p3ZC9pdzdvTS9EU2c1UlpkOHp1Um1jN1doTmxWOGg2Ri94WkNKcEpvM0VMSWdhdXBFMFpMMEV2TElrRzdJcE9TQmtoazNaVEliTnBFZVBKR0poRlZKcS92SzFHeXFuTy91ZDA2bzNyRjJlcjZZeVM5WFRjR2w2cGJWMHFuMXpPLzdEeEtGbEJqdGtMTHY1VUNyTGFtbDllL3VqQzBtYjVkT0RLS00rbFUralBjc25QZnpJdGZ3YnorTCsvckgrL3ErUnZ2UlNSay92SWkvbVFkSmhrZWxKUzZKQ3dkdy9BTmNPcEpmdkIySC9BYUE0T3NEOExLT2ZQYWdmQjVlUCt0R2RNa2RZR0VYRHlRWklSblJETDRhb0JvRjREWmhoU1g2YUZKb3YzTCswdjl5WFNoOENqc3hOeG1hTEtkSTBjTmVpQjJITnZYV3oxcWJmSTAxZHNibUV6SzNOOE9jNHZvKzhnZkxrSWY5Y1JTREl2enpnTlpQZUFLS0pHM0tjNzB1dk9IZU83THUyaSt3N2QyN0hRd2NIdTg1MVBUUnc4S0VNbnAvd2QvQXV6b3Q0M0RhR0o1YUlsQUNqdWxkTEl2V2dJNFhMWXM0clpaR3l5NjVJbVl0dXBqOTFRV0ZCbWVzeTZTNG9LeXRJYjcvc0tvdTQ2V2JZN2Nud1hJMDhQUmJQUEV0SE1YUkozU01GcDRPR05KelVaS1F1ZUJ4MjQ0dXV5MlhSTXJpQ3JHR0Z6d1c3NldaWExPUzZuTjdPZUpQdXk2NFF4NCtueDMvREwrT1o5WkpjTThiUlhYWFY3aHdlNDZnOEhndFhRMUFxQm85ZUI1R0VPMVlEb2FBc1lWeEZJNmhraE9HUlpCVU1iMlkvaGs3WndCc2VGWUkxQkxmOUFGY1UyMnFiWXBHK2h2dnZlR0tPUFcrZUlObEZmL25NS3Iwd1ZBL1dWcjZyU1BGN2NzODg4dUhJeCt1a3plOWVlV2Q3Vy9ZMUJYYmMwVjZ6U1ZXU2dod3U5THU4dmx4blk5aURHNjVnamxQeUZWVzBiZmhnL2ZvUExqTENUSFlkajUrcjRlb1F6OHhJVmRCbnU0NUhtd3pLRzdvQmovOE9YSEVTRUZLbnlBbkZkb2dKRlk4emVsVlc1dHdBQnorZUxQdGlYUEN6SFJ3Y3RxZ0MxeFpQTENqbmI1STNVeGRlUmo5V3VDRFh3QzFnTWRUU0dDa3JjSWdzaGlDS0dTd2Vjb0FrZ3djcEdqcWNxR05lVk1jTW9FVWp1dWdOeE4ybyszaElxa1pFTE5Bd0ZYaVRlQ0x1eG5uVURNbFI5dTJPdXNuekt5b2tRZ2lBUVA4aUhSSlYrWkRObHJmYUFzRndmRTdmK1ZRV0padWtkTjhOZDM0cTJDU2JtUFAwaGxlcmZFLzRxbDR4ZDNZOFJ0WnQ5dGxKanFKSTZkbVNmRWdVRDl1OVBNZkFwVGxsWG5jRVRFVVNnVFR1ak5BdkJVVUdJRTN3VFgxOWEydDlQVHhNKzdoYk1FZTRIekxNemJFWldjemxOekNMVTJLK0dSZWYxWUVzbWRlMWtGWEMvd0ZOaEVud2NqSUtFSGlZVUVHdXBZRm9CclJkM25FTDVsL1UxYlcyMXRYQkk3U1hkSGRIRWI4bzRsVVpGZnpaSWVHd3lZcGRKQ2RKbU5Xcnc4QjZCY2dCT0RrOFRNSzBDL1pZMjdlZWlSZkM4SEFLOXRBdXByZng4ZkhIK1YvelNjN0dhVndwVm5qVVd5aFE0TlpVd2ZLVm9PVFVTeFBPc0JuaFhLaGxGeWNtZEpsSExZWXdNN2dUU1Q1cHdoZlBuVDROTmFkUFAvYyt1QWk5U0hmU2l3UmMwSzNxZkllZzBoTlNya3ZvRVBLcS8zdUVmSEthZm00ZFhrVXZZV29hRXlBZnRvUHZXMEhIYzZyUTRjbURoTXJUTCtjY3ljcStoelJic2hPckY4b0RKamhwSGg3KzduNEd2MWFlMmFleFlleWdzdld1QkgyaW5JdHk5WnlqTVRjZW0xNVJGZ3FVR3JLSUwyQld4eXduQjRKaE04NklacVVjWUY1aGVCTlJCMFJCamhySmVBZ1RreG5TQXZGWUFyU0pDWC9JOEVPcG5oN0ZML29aRXQxNXdaSFFSM0FVRHN3WkhLUXZEZzZ1ZmZPMDN4Z0Z2MDdDWi96R0NObUs1enVzMTE0cDFXR1RubkJjUUFYcng0eE5nN0J0OFAwM1IwZjFVcUF2OXVrSnVvRHNHbUdURjFqdHVKNkRjcmtDcXpaSnJEWkJVQ1YraURSQURZSEpTZktOZTN0YVNmc1RyKzFlS0N6b2hTV1RNZ25wYmVzNTBOTm1FZnJIS2ZLY0RhdEJFUE5jU1lIRExoSE1jNENGb0Fhd3ZwaTN2NURVdFQzYVJoYXVYN2hueW90aGFWMTcrOGIyOW0rbXZOK3FqMlFSNmNhNjcwR016bHhGWkJpeHFJbFNPSTZXTWNvalhzMFR4Q0gwcXlwTjZVVkZPcHlkbDRLTmlrKzVvTHA4OEk3UHBWYlUwcHJhV3ZpODlpYWV1UlpQbDJvWGtLYzdsaXhQWU5pakdjdkRaaXpEZFVpRk5aNmlJZzk5VmgxS3BXQ3BhckdrczVIbEJlWGZ0UlpYN25vZDd5SmJVVTZEMlVLN1JVNTUwcGhmZ2FMMjZINi8zb2FEdlo3U1VnL0tXMlQ3Vm5VV3dkK0xuT3Eza3ljMzhaK3d0V2JKckUyV3VYenlSSVdOakN0OVNvVVBWVmhsamZlcURBQmpTLzNzRHB0NjA4d0tuWEdLOWw2TTlwNkI4Vk1aWVBHRGpvMU9GWjRGNFJDek5CK05KTEFzbDRBZnNDckx6Tnk0aEUxaVF1Y1hlNXhYRGJjMnY2MnJ0ck5saGxEUnZxS2hhV09sb0VrdElwSHFoNWJkOTByWFhLSHgwYjFMMnZiZU9kYzVqZnp1cXFwUGM4NmZYOVBTdWI2enBhWTJMb0U0WDFDbGVhM1F2SDdmMEw3MXpRM2ZuK3R5VDhRMUdTRlBXZjJ0SXFCY3lTRHFNcXBaSGRJRFZiVTlzR1pzN09QNkNsaEtUNlRPbmsweDN4MGYvejMvUy9JZnpHSmVqSGZsV0tIdWRxa2lxOUU2RXoyQVBWc3NDYXpGTUdSa3hlT2FuM1VZWWY3SlhJQm9PSTBkR09SQlYyNUZwREszNzJkTnBWVUFWWTFWbGZOMW95S0NCMHhESjl1OCtmbmVYOUV2b0pyMlFXV3d0TEx5cnFwczNDeTJZck1JT3dUbFdGV2dBT09UeFEzR1JqWk0zQlBOZ0l5OWpZRjZOZDB4a3kzSWt0ZWRhUS9namZVZlBwSU5tZDhxTXF1ZXVmSnFXUUdzZjdZdE5sRlNGUHRLbThMblRBUU5rdlRjVGxZME90blJqNkJENWtXUmwrbUFaTE5oemhqSC9QY3FqNzBtRjBBL0tzaVJlT2FuMkhOSmZ0UUVXRDJlRkdMU0NYNWllR1NFdU92Wmt5bWg5MDg5RVB4ZXJlZjRBMXRhbjFuVlNPclg5QjdvNlpySjMzUGNDOTBybnlHcEUzdWxIdnBDY1pYMytEME5uWHYyOTY2ckZab2VUTTNmOHNCeGI2YW5mSjEvblp6SDZKajREWXRhZCtKRlpoTGJQQ3dtcUlTb2JFWWJnSGhldTNUcHRkNTFzOXRYYkQ5eTVPb1IwdnYyMjF2SkdEay9SbDhmV3pTdi9naHdSNGEybmp3NWNERlR5OFozWUQ2L0UzK2hTb2Nsd3VxQldJZzJjNWVMYnRpeWJRTnNvWitzbzZmb2lVMXdoc0FxK3F6dExIM21iMmRnVmFhMzMybTlxMkZtc3gwdExWQ3NtSXFLN3FUaFJoYkdkSEJBMG0yV0VBZk1Bc09jQmRPeDJDK0Y0dVhGeFlzWTQ3YWlsbitPTENqdStNZkRCejIycGplMTkrNTJEWjNSYlkyemJld3l0ZU4rT29iWFhWb3k4K0QrZUFlb1E3YkhWTzhuVzNLZU9xOXVFNGozRHg5NS93ZTZvdEJFQUFCNG5HTmdaR0JnQU9KRFRyWU44ZncyWHhtNG1WOEFSUmd1ZFovMGd0RHpwZjcvL1ovSi9JSTVDTWpsWUdBQ2lRSUFiQ29OalFBQUFIaWNZMkJrWUdBTytwL0ZFTVg4Z29IaC8zY2dDUlJCQWVvQWtNWUdEZ0FBZUp4amZzSEF3SXlPNzJJUkErRUpRTHdBaUEyaE9CS0tGMEF3NHhrSVpsNEZwQ2RBTUZnZlZCMVRCQVF6RjBBeFNBd2tQd1hKbkRVSSt3Q1BaUm15QUFBQUFBQUFGZ0JDQUlvQXZnRHVBUklCTGdHQUFhWUJ2Z0h1QWc0Q09BSmlBc29ESWdPY0JCWUVLQVE0QklZRWxnU21CUXdGUGdWK0JhZ0YwZ1lDQmpZR2dnYWNCdG9ISmdkaUI0NEhyQWZ1QUFFQUFBQW5BRkFBQ1FBQUFBQUFBZ0FBQUJBQWN3QUFBQ2dMY0FBQUFBQjRuSFdReTByRFFCaUZUM3BSMnFLZ2d1dC9wUzJGOUFKRmNDSEZRcnNTb1l2dWt6Wk5VdEpNbVprS2RlY0QrSXEraGdzM25xU0RpR0RDSk44NS8yMW1BRnppQXg2T3o0anJ5QjRxVkVldTRCUjNqcXRVRDQ1cjVMSGpPbHA0ZEh4Qy84bHhFMTA4TzI3aENxL3M0TlVhVkJ1OE8vYlk2ZE54QmVmNGNseEZ6V3M0cnBIUEhOZHg3VjA0UHFGLzY3aUpoZGQxM01LTjl6WlJ1NE5PNDhSS2U5S1JZWDh3a3ZBZ2lsYWFCNWtFZTVzb2JXUXNhNVhiS011VXYxUmJFODZqZUo4RjJvUW1YRVRhcENxWGdkODM0U3pLSXgzWWFGVjBNUy94ME5xMXJMWGF5dFRWeTA2clRiUzBmbUx0N3I3WCs5MFhFeWpzY0lCR2loZ0pMQVJ0dWgzK2graGp3QXNYaE13UVpoNnpVdVFJa05FSnNHZEZVa1lNOVpoclRaWFRqWmlSa1gwcytkMHlIbUpPTjJaTnhrcGRPc1ZhMEMxVVdsWUtaL3FjWEVSbWpPUmxOQ2c3cm43Mll2RENUa082bGhPTHFicWNJcGorbVM4OFh4SGIwRm5TOTh0VFdycjM2UEg5WjcvZnhuZHZkd0I0bkcxTzJYTENNQkNMUWhwQ0NMVDB2dStXSjMrVTZ6aUppN0U5OXFhVXZ5K0dLWDJwSHJUU3pxeTBTWnJzVUNiL1k1NGtTREZBaGdQa0dLTEFDQ1hHcUREQkZJYzR3Z3pIT01FcHpuQ09DMXppQ3RlNHdTM3VjSThIUE9JSnozakJLOTd3am5uZUtFM1NGOVF4elgwclUrcUdVYXRBdVpOR0tKMExib1RVbWROOUdBamJUcmhXcldHZmZTRFZyRk83eUxRVmkwSitpNDZiVm1hMVhabTBkMVVudFdOQ2VhRmxYU25UMkwwSjFoTXpmQ2xaNzZaL0poNFdrVml0Zk42N09JYkNMaDBQWWVSVjIxSGNGRm8yVzdFcEVxSGFaVEs1ZExRZTE1WitTM0t5VEpxNjJJeEEzRlBWOEVDc3NYN0ZmVDNabWc4dUZ0R2xZbFZxK1NYMTlvTVJKNUtHbERXenZkcUhCc205NkFaQ3JMS1lXa2JhZFNmSkQyWUllUXg0bkdQdzNzRndJaWhpSXlOalgrUUd4cDBjREJ3TXlRVWJHVmlkTmpJd2FFRm9EaFI2SndNREF5Y3lpNW5CWmFNS1kwZGd4QWFIam9pTnpDa3VHOVZBdkYwY0RReU1MQTRkeVNFUklDV1JRTENSZ1VkckIrUC8xZzBzdlJ1WkdGd0FCOU1pdUFBQUFBPT0nKSBmb3JtYXQoJ3dvZmYnKSxcbiAgICAgICB1cmwoJ2RhdGE6YXBwbGljYXRpb24vb2N0ZXQtc3RyZWFtO2Jhc2U2NCxBQUVBQUFBT0FJQUFBd0JnVDFNdk1qNHBTUklBQUFEc0FBQUFWbU50WVhEUU5obTNBQUFCUkFBQUFVcGpkblFnQUFBQUFBQUFHQ0FBQUFBS1puQm5iWWlRa0ZrQUFCZ3NBQUFMY0dkaGMzQUFBQUFRQUFBWUdBQUFBQWhuYkhsbXpqajQ3UUFBQXBBQUFBL2NhR1ZoWkFnYnJBUUFBQkpzQUFBQU5taG9aV0VIbHdOeEFBQVNwQUFBQUNSb2JYUjRnMGNBQUFBQUVzZ0FBQUNjYkc5allVbVVUWllBQUJOa0FBQUFVRzFoZUhBQXpBdlNBQUFUdEFBQUFDQnVZVzFsLzhTTWJnQUFFOVFBQUFLRmNHOXpkQUVZdHBjQUFCWmNBQUFCdW5CeVpYRGRhd09GQUFBam5BQUFBSHNBQVFOZUFaQUFCUUFJQW5vQ3ZBQUFBSXdDZWdLOEFBQUI0QUF4QVFJQUFBSUFCUU1BQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVVHWkZaQUJBNkFEb0pRTlMvMm9BV2dOU0FKY0FBQUFCQUFBQUFBQUFBQUFBQXdBQUFBTUFBQUFjQUFFQUFBQUFBRVFBQXdBQkFBQUFIQUFFQUNnQUFBQUdBQVFBQVFBQ0FBRG9KZi8vQUFBQUFPZ0EvLzhBQUJnQkFBRUFBQUFBQUFBQUFBRUdBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBLzJvRDZBTlNBQVVBQnJNRUFBRXRLeEVoQVJFRkVRUG8vcWIrekFOUy9xYitidndDamdBQUFBQUVBQUQvYWdQb0ExSUFBd0FIQUFzQUR3QU5RQW9OREFrSUJRUUJBQVF0S3hVUklSRUJFU0VSRXhFaEVRRVJJUkVCdHY1S0FiWjlBYlgrU3dHMWxnRzIva29DTXdHMS9rdjl6UUcyL2tvQ013RzEva3NBQUFBQUNRQUEvMm9ENkFOU0FBTUFCd0FMQUE4QUV3QVhBQnNBSHdBakFCZEFGQ0VnSFJ3WkdCVVVFUkFOREFrSUJRUUJBQWt0S3hVMU14VUROVE1WQXpVekZSTTFNeFVETlRNVkF6VXpGUk0xTXhVRE5UTVZBelV6RmZyNit2cjZmZnI2K3ZyNmZmcjYrdnI2bHZyNkFYZjYrZ0YzK3ZyOUV2cjZBWGY2K2dGMyt2cjlFdnI2QVhmNitnRjMrdm9BQUFBQUJnQUEvMm9ENkFOU0FBTUFCd0FMQUE4QUV3QVhBQkZBRGhVVUVSQU5EQWtJQlFRQkFBWXRLeFUxTXhVRE5UTVZBelV6RlJNMUlSVUJOU0VWQVRVaEZmcjYrdnI2alFKaC9aOENZZjJmQW1HVyt2b0JkL3I2QVhmNit2MFMrdm9CZC9yNkFYZjYrZ0FEQUFEL2NRUGVBMHdBQWdBR0FCTUFDcmNRQ2dZRUFRQURMU3NWRXdFRENRTStBaDhCRmc0Q0x3RW1SQUVTelFHbUFRUCtXd0VQQWpwUUdvTVpBanBRR29NYmp3RlgvdThCUWdHbS92eitXZ0x5Snp3Q0c0SWFVRG9DR1lNYkFBQUJBQUQvYWdQb0ExSUFDd0FHc3drREFTMHJOUWtCTndrQkZ3a0JCd2tCQVJmKzZkMEJGd0VYM2Y3cEFSZmQvdW4rNlVjQkZ3RVgzZjdwQVJmZC91bis2ZDBCRi83cEFBQUJBQUQvYWdQb0ExSUFDd0FHc3drREFTMHJOUkVoRVNFUklSRWhFU0VSQVdjQkdnRm4vcG4rNXRFQkdnRm4vcG4rNXY2WkFXY0FBQUlBQVA5cUErZ0RVZ0FuQURBQUNMVXVLaDRLQWkwckVUVTNOamNuTnhjMlB3RXpGeFlYTnhjSEZoOEJGUWNHQnhjSEp3WVBBU01uSmljSEp6Y21KemNVRmpJMk5DWU9BWllPR0dCdGRTa3ZFSndRTFN0MWJXQVlEcGFXRGhoZ2JYVXJMUkNjRUM4cGRXMWdHQTdOVkhwVVZIcFVBUkNjRUMwcmRXMWZGdzZXbGc0WFgyMTFLeTBRbkJBdktYVnRZQmdPbHBZT0dHQnRkU2t2WGp4VVZIaFdBbElBQkFBQS82Y0Q2QU1XQUFNQUJ3QUxBQThBRFVBS0RRd0pDQVVFQVFBRUxTc1ZOU0VWSlRVaEZTVTFJUlVsTlNFVkErajhHQVBvL0JnRDZQd1lBK2habkp6d25KenluSnp3blowQUFBRUFBUCs4QStnREFBQUdBQWF6QlFNQkxTc1JOeGNCRndFbm9xWUIvS1Q5WUtJQkJLS2tBZjZrL1dDa0FBQUFBQUlBQVA5cUE1QURVZ0FQQUJnQUNMVVdFQWNBQWkwckZSRXpKamMrQVRjeUZoY1dIUUV6RVFFaE5TNEJKeVlHQjRzQ0d5ZWFYRjZjSlJxVy9iSUJBQUpJTnpSR0JaWUNRcVpCV0dZQmJGTTdQMjM5dmdKQ2NEUklBZ0pJT2dBQUFBSUFBQUFBQTQ4Q3JRQUdBQTBBQ0xVTUNnUUNBaTBySlNFVkp6Y1ZJU1UxSVRVWEJ6VURqLzFpMzk4Q252eURBcDdmMzM5dnFLZHczM0J2cHFodkFBQUJBQUQvYVFNeEF4SUFGUUFHc3hNSUFTMHJFVFEyTWg4QkVUUTJNaFlWRVRjMk1oWVVCd2tCSmlRMEVQUWtNaVR6RWpJa0V2NTYvbmtTQVJzWkpCTHpBb0laSkNRWi9YN3pFaVF5RS81NkFZWVVBQUFCQUFEL2F3TXhBeFFBRlFBR3N3MERBUzByRVRRM0NRRVdGQVlpTHdFUkZBWWlKamNSQndZaUpoSUJod0dHRWlReUV2TWtNeVFCOUJJeUpBRmlHaElCaHY1NkVqUWpFdlA5Zmhra0pCa0Nndk1TSXdBRC8vMy9zUU5mQXdzQUR3QTNBRVFBQ3JkQk95c1RDd01ETFNzbE5UUW1Ld0VpQmgwQkZCWTdBVEkyRXpRdUFTTWlCd1lmQVJZek1qYytBVElXRlJRR0J3NEJGeFVVRmpzQk1qWTBOajhCUGdNWEZBNEJJaTRDUGdFeUhnRUI5QW9JYXdnS0NnaHJDQXFQUGx3eGlFY0pEVW9FQmdrRkhpVTRLaFliSXp3QkNnaHJDQW9ZRWh3S0hoUU0xM0xHNk1odUJucTg5THArVW1zSUNnb0lhd2dLQ2dGL01WUXVkdzRLTndRSEpoc2VFaFVhREJCQUpoUUlDZ29TSWdzUUJob2NLRkoxeEhSMHhPckVkSFRFQUFBQUEvLzkvN0VEWHdNTEFCNEFMZ0E3QUFxM09ESXFJaG9JQXkwckpUVTBKaXNCRVRRbUt3RWlCaDBCRkJZN0FSVWpJZ1lkQVJRV093RXlOZ00xTkNZckFTSUdIUUVVRmpzQk1qWUZGQTRCSWk0Q1BnRXlIZ0VDT3dvSE5nb0lzZ2dLQ2dnMU5RZ0tDZ2o2QndwSENnaHJDQW9LQ0dzSUNnRmxjc2JveUc0R2VyejB1bjVTV1FnS0FSNElDZ29JV1FnS3N3b0lXUWdLQ2dIOFdRZ0tDZ2haQ0FvSzRIWEVkSFRFNnNSMGRNUUFBQUFFQUFEL2FnT2ZBMUlBQ2dBaUFENEFUZ0FOUUFwTVFESWtHUThGQUFRdEt3RXpMd0VtTlNNUEFRWUhBUlFQQVFZaUx3RW1OanNCRVRRMk93RXlGaFVSTXpJV0JSVWhOUk0yUHdFMUl3WXJBUlVqTlNFVkF3WVBBUlUzTmpzQk5STVZJelV6SnlNSE14VWpOVE1UTXhNQ21XSW9CZ0lDQWdFQkJQN2FCcklGRGdleUNBZ05hd29JYXdnS2F3Z0tBZEwrdXM0SEJRWUlCZ3FDUXdFOXpnUUlCZ2dGQzR0MW9Tb2FpQm9xb0NlQVdvRUNibm9hQ1FJTENnb0cvVVlHQjdJRkJiTUpGUU1BQ0FvS0NQMEFDa3FDTWdFbkNnWUZBUUpBZ0RMKzJBUUtCd0VCQWtJQjlUdzhVRkE4UEFGeC9vOEFBQUFBQkFBQS8yb0Rud05TQUFvQUlnQXlBRThBRFVBS1JEUXdKQmtQQlFBRUxTc2xNeThCSmpVakR3RUdCd1VVRHdFR0lpOEJKalk3QVJFME5qc0JNaFlWRVRNeUZnVVZJelV6SnlNSE14VWpOVE1UTXhNREZTRTFFelkvQVRVSEJpY0dLd0VWSXpVaEZRTVBBUlUzTmpzQk5RS1pZaWdHQWdJQ0FRRUUvdG9Hc2dVT0I3SUlDQTFyQ2dockNBcHJDQW9DQktFcUdvZ2FLcUFuZ0ZxQkMvNjZ6Z2NGQmdRREFRWUtna01CUGM0TUJnZ0ZDNHN6ZWhvSkFnc0tDUWQvQmdleUJRV3pDUlVEQUFnS0NnajlBQXFST3p0UVVEczdBWEwramdLQ2dqTUJKd29GQlFJQkFRRUNRSUF5L3RrUEJnRUJBVUlBQUFFQUFBQUFBY3dDSmdBQ0FBYXpBUUFCTFNzQkN3RUJ6T2JtQWliK2NBR1FBQUFBQUFFQUFBQUFBY3dDSmdBQ0FBYXpBUUFCTFNzMUd3SG01cFlCa1A1d0FBQUFCUC8vLzRjRHF3TTNBQWdBRVFBZ0FDTUFEVUFLSXlFWkV4RU9CQUFFTFNzQklnWVFGaUEyRUNZbk1nQVNBQVFBRWdBRk5oWUhBd1lIQlNNaUpqY1ROamNETnljQjFaZlcxZ0V1MXRhWHdnRVNBdjdxL29EKzZnSUJFZ0dDRGhZRFdnUU8vc29HREJJRVdnUU5LL3UwQXN2Vy90TFcxZ0V1MW1qKzd2NTYvdkFFQVJnQmZnRWErQVFXRHY3S0RnUmFGQTBCTmc0RC90aEh0QUFBQVFBQUFBQUJrQUpFQUFJQUJyTUNBQUV0S3hFTkFRR1EvbkFDUk9ibUFBQUJBQUFBQUFHUUFrUUFBZ0FHc3dFQUFTMHJBUkVsQVpEK2NBSkUvalRtQUFVQUFQOXFBK2dEVWdBZkFDSUFKUUF6QUR3QUQwQU1OVFF2S0NRaklTQVhCd1V0S3dFeUZoY1JGQVlISVNJbUp6VWhJaVluRVRRMlB3RStBVHNCTWhZWEZUWXpEd0V6QVFjekZ6YzFJeFVVQmljakVTRTFORFlCRVNNVkZBWW5JeEVEc2hjZUFTQVcvZWtYSGdIKzBSY2VBUllRNUE4MkZ1Z1hIZ0VtSVVlbnAvNmJwNmR0c05ZZUYra0JIaFlDSnRjZUYrZ0NmQ0FXL1ZvWEhnRWdGcUFnRmdGM0ZqWVA1QkFXSUJhM0YzZW5BWDJud3JEcDZSWWdBZjZianhZMi9rNENnK2dXSUFIK21nQUFBQUwvL2YreEExOERDd0FNQUJrQUNMVVdFQVlBQWkwckFTSU9BaDRCTWo0QkxnSUJGQTRCSWk0Q1BnRXlIZ0VCclZPTVVBSlVpS3FHVmdST2pnRmJjc2JveUc0R2VyejB1bjRDamxLTXBJeFNVb3lrakZMKzBIWEVkSFRFNnNSMGRNUUFBQUFELy8zL3NRTmZBd3NBQ0FBVkFDSUFDcmNmR1E4SkJnSURMU3NCRkFZaUxnRTJNaFluSWc0Q0hnRXlQZ0V1QWdFVURnRWlMZ0krQVRJZUFRSTdVbmhTQWxaMFZwQlRqRkFDVklpcWhsWUVUbzRCVzNMRzZNaHVCbnE4OUxwK0FWNDdWRlIyVkZUMVVveWtqRkpTaktTTVV2N1FkY1IwZE1UcXhIUjB4QUFBQUFJQUFBQUFBbGdDZ2dBTEFCUUFDTFVRREFvRkFpMHJBUllVQndVR0pqVVJORFlYSlRJVkVSUWlOUkUwQVp3T0R2NldGaHdjRmdIY1NwWUJkZ29hQ3VRT0Vob0J1aG9TRGlnNi9pNDZPZ0hTT2dBQUFBSUFBQUFBQWxnQ2dnQU1BQlFBQ0xVU0Rna0VBaTByRXpRM0pUWVdGUkVVQmljbEppYzBNaFVSRkNJMXJnNEJiQlFjSEJUK2xBNnVscFlCWGc0SzVBNFNHdjVHR2hJTzVBcjJPanIrTGpvNkFBQUFBQUlBQUFBQUEzQUNmQUFMQUJjQUNMVVdFUW9GQWkwckFSWVVCd1VHSmpVUk5EWVhCeFlVQndVR0pqVVJORFlYQTJJT0R2Nk1GaDRlRmxJT0R2NllGQ0FnRkFGMkNod0krQTRRSEFIaUhCQU8rQW9jQ1BnT0VCd0I0aHdRRGdBQUFBSUFBQUFBQTNBQ2ZBQU1BQmtBQ0xVV0VRa0VBaTByRVRRM0pUWVdGUkVVQmljbEppVTBOeVUyRmhVUkZBWW5KU1lPQVhZVUlDQVUvb29PQWNZT0FXZ1VJQ0FVL3BnT0FWNE9DdmdPRUJ6K0hod1FEdmdJRGc0SytBNFFIUDRlSEJBTytBZ0FBQUFBQWYvKy83RURXUU1MQURBQUJyTXBJUUV0S3dFVkZBWXJBU0ltUHdFbUl5SU9BaDRETXpJMk56NEJId0VlQVFjT0FRY2lMZ0krQXpNeUZoYzNOaFlEV1JRUStoY1RFVTFTY0RwcVREQUVLRlJpUGtKMktRUVJCa3dGQWdZOHJsOVhvSEJJQkVCNG1GdFNtRDFJRUMwQ3cvb09GaTBRVFUwdVRHcDBha3d1T2pVR0FRVk5CQTRHU2xBQlJIU2VycDUwUkQ0NVNCSVRBQUFCQUFBQUFBTG9Bb29BQ3dBR3N3b0VBUzByTnlJbU5SRXpFU0UxRndjMVpDbzZqQUZzOFBESVBDZ0JYdjdLbHR6Y2xnQUFBLy8vLzhVRGxRTDNBQkVBRlFBZkFBcTNHeFlURWc0RkF5MHJKUllIRGdFSElTNEJKelEzQVQ0Qk1oWVhCeEV6RVFNT0FRY2VBVEkyTkNZRGlRd0JBVE1tL1NFbE5RRU5BWEFNS0RJcERJK0ZRaUFxQVFFcVFDb3BUUllYS0RJQkFUTW5GeFlDZlJVWUdCV2wvdFVCSy82UEFTa2lJQ2twUVNvQUFBUC8vZit4QTFrREN3QU1BQndBTGdBS3R5b2hHUkFHQUFNdEt3RXlIZ0VVRGdFaUxnSStBUk0xTkNZckFTSUdCeFVVRmhjek1qWW5FelFuSmlzQklnY0dGUk1VRmpzQk1qWUJyWFRHY25MRzZNaHVCbnE4d1FvSGF3Z0tBUXdIYXdjS0FRb0dCUWg3Q0FVR0Nnb0pad2dLQXd0MHhPckVkSFRFNnNSMC9VaHFDQW9LQ0dvSUNnRU14d0ZhQndNRkJRTUgvcVlHQ0FnQUF2Ly8vMm9Eb1FNTkFBZ0FJUUFJdFJrTEJnTUNMU3NCTkM0QkJoNEJQZ0VCRkFZaUx3RUdJeUl1QWo0RUhnSVhGQWNYRmdLRGxNeVdCSTdVakFFaUxEb1V2MlI3VUpKb1FBSThiSTZrakhBNEEwVy9GUUdDWjVJQ2xzcVlCb3orbWgwcUZiOUZQbXFRb281dU9nUkNacFpOZTJTL0ZRQUFBUUFBLzZ3RHJBTGdBQmNBQnJNRUFBRXRLd0V5RmhBR0l5SW5OeFl6TWpZUUppSUdCek1ISnpNK0FRSVVxdTd1cW81dVJsUmlmclMwK3JRQ2pyaTRmQUx3QXVEdy9xendXRW84dEFFQXRLNTh6TXltNmdBQUFBRUFBUDkvQStnRFBRQUpBQWF6QmdJQkxTc1JCUnNCRFFFVEpRVVRBWHQ5ZFFGNy9zdHUvczMreW5jQjF3SUJhUDZVQ056K2t1SFhBV2dBQUFJQUFQK0FBK2dEUFFBUkFDSUFDTFVnR1FvRUFpMHJFVE1GRXpjWEV3MEJFeGN2QVE4Qk54TW5Id0lQQVQ4QkZ5Yy9BUzhERHdGZUFSMWdIUjFZQVh2K3kxSWNUT2ZvVGgxYTQzR29GQWhDc0JHK1F4S3UxeFlJUUVZSUFkY0NBUTVhWFA3d0NOeis3bHM0cUtJMVdnRU9yZ2lCRGhYTGV3dUs0QTU5QkFJVnljY1ZBQUVBQUFBQkFBRENRajJBWHc4ODlRQUxBK2dBQUFBQTBvdkpTZ0FBQUFEU2k1OGEvLzMvYVFQb0ExSUFBQUFJQUFJQUFBQUFBQUFBQVFBQUExTC9hZ0JhQStnQUFQLzNBK2dBQVFBQUFBQUFBQUFBQUFBQUFBQUFBQ2NENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQZEFBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQU9RQUFBRG9BQUFBekVBQUFNeEFBQURXUUFBQTFrQUFBT2dBQUFEb0FBQUFjd0FBQUhNQUFBRHFnQUFBWkFBQUFHUUFBQUQ2QUFBQTFrQUFBTlpBQUFDV0FBQUFsZ0FBQU53QUFBRGNBQUFBMWtBQUFMb0FBQURsQUFBQTFrQUFBT2dBQUFEckFBQUErZ0FBQVBvQUFBQUFBQUFBQllBUWdDS0FMNEE3Z0VTQVM0QmdBR21BYjRCN2dJT0FqZ0NZZ0xLQXlJRG5BUVdCQ2dFT0FTR0JKWUVwZ1VNQlQ0RmZnV29CZElHQWdZMkJvSUduQWJhQnlZSFlnZU9CNndIN2dBQkFBQUFKd0JRQUFrQUFBQUFBQUlBQUFBUUFITUFBQUFvQzNBQUFBQUFBQUFBRWdEZUFBRUFBQUFBQUFBQU5RQUFBQUVBQUFBQUFBRUFBZ0ExQUFFQUFBQUFBQUlBQndBM0FBRUFBQUFBQUFNQUFnQStBQUVBQUFBQUFBUUFBZ0JBQUFFQUFBQUFBQVVBQ3dCQ0FBRUFBQUFBQUFZQUFnQk5BQUVBQUFBQUFBb0FLd0JQQUFFQUFBQUFBQXNBRXdCNkFBTUFBUVFKQUFBQWFnQ05BQU1BQVFRSkFBRUFCQUQzQUFNQUFRUUpBQUlBRGdEN0FBTUFBUVFKQUFNQUJBRUpBQU1BQVFRSkFBUUFCQUVOQUFNQUFRUUpBQVVBRmdFUkFBTUFBUVFKQUFZQUJBRW5BQU1BQVFRSkFBb0FWZ0VyQUFNQUFRUUpBQXNBSmdHQlEyOXdlWEpwWjJoMElDaERLU0F5TURFMUlHSjVJRzl5YVdkcGJtRnNJR0YxZEdodmNuTWdRQ0JtYjI1MFpXeHNieTVqYjIxellsSmxaM1ZzWVhKelluTmlWbVZ5YzJsdmJpQXhMakJ6WWtkbGJtVnlZWFJsWkNCaWVTQnpkbWN5ZEhSbUlHWnliMjBnUm05dWRHVnNiRzhnY0hKdmFtVmpkQzVvZEhSd09pOHZabTl1ZEdWc2JHOHVZMjl0QUVNQWJ3QndBSGtBY2dCcEFHY0FhQUIwQUNBQUtBQkRBQ2tBSUFBeUFEQUFNUUExQUNBQVlnQjVBQ0FBYndCeUFHa0Fad0JwQUc0QVlRQnNBQ0FBWVFCMUFIUUFhQUJ2QUhJQWN3QWdBRUFBSUFCbUFHOEFiZ0IwQUdVQWJBQnNBRzhBTGdCakFHOEFiUUJ6QUdJQVVnQmxBR2NBZFFCc0FHRUFjZ0J6QUdJQWN3QmlBRllBWlFCeUFITUFhUUJ2QUc0QUlBQXhBQzRBTUFCekFHSUFSd0JsQUc0QVpRQnlBR0VBZEFCbEFHUUFJQUJpQUhrQUlBQnpBSFlBWndBeUFIUUFkQUJtQUNBQVpnQnlBRzhBYlFBZ0FFWUFid0J1QUhRQVpRQnNBR3dBYndBZ0FIQUFjZ0J2QUdvQVpRQmpBSFFBTGdCb0FIUUFkQUJ3QURvQUx3QXZBR1lBYndCdUFIUUFaUUJzQUd3QWJ3QXVBR01BYndCdEFBQUFBQUlBQUFBQUFBQUFDZ0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUp3QUFBUUlCQXdFRUFRVUJCZ0VIQVFnQkNRRUtBUXNCREFFTkFRNEJEd0VRQVJFQkVnRVRBUlFCRlFFV0FSY0JHQUVaQVJvQkd3RWNBUjBCSGdFZkFTQUJJUUVpQVNNQkpBRWxBU1lCSndabWFXeDBaWElJZEdndGJHRnlaMlVDZEdnSGRHZ3RiR2x6ZEFad1pXNWphV3dHWTJGdVkyVnNCSEJzZFhNRFkyOW5EV0ZzYVdkdUxXcDFjM1JwWm5rQ2Iyc0ViRzlqYXdobGVHTm9ZVzVuWlFSa2IzZHVBblZ3REdobGJIQXRZMmx5WTJ4bFpBeHBibVp2TFdOcGNtTnNaV1FNYzI5eWRDMXVZVzFsTFhWd0RuTnZjblF0Ym1GdFpTMWtiM2R1Q0dSdmQyNHRaR2x5Qm5Wd0xXUnBjZ2RqYjIxd1lYTnpDWEpwWjJoMExXUnBjZ2hzWldaMExXUnBjZ1JrYjJOekRHTnBjbU5zWlMxbGJYQjBlUXRrYjNRdFkybHlZMnhsWkFaMGJ5MWxibVFJZEc4dGMzUmhjblFNWm1GemRDMW1iM0ozWVhKa0RXWmhjM1F0WW1GamEzZGhjbVFDWTNjS2JHVjJaV3d0Wkc5M2JnbGhkSFJsYm5ScGIyNFJZWFIwWlc1MGFXOXVMV05wY21Oc1pXUUdjMlZoY21Ob0EyTmpkd1J6ZEdGeUNuTjBZWEl0Wlcxd2RIa0FBQUFBQUFFQUFmLy9BQThBQUFBQUFBQUFBQUFBQUFDd0FDd2dzQUJWV0VWWklDQkx1QUFPVVV1d0JsTmFXTEEwRzdBb1dXQm1JSXBWV0xBQ0pXRzVDQUFJQUdOakkySWJJU0d3QUZtd0FFTWpSTElBQVFCRFlFSXRzQUVzc0NCZ1ppMndBaXdnWkNDd3dGQ3dCQ1phc2lnQkNrTkZZMFZTVzFnaEl5RWJpbGdnc0ZCUVdDR3dRRmtiSUxBNFVGZ2hzRGhaV1NDeEFRcERSV05GWVdTd0tGQllJYkVCQ2tORlkwVWdzREJRV0NHd01Ga2JJTERBVUZnZ1ppQ0tpbUVnc0FwUVdHQWJJTEFnVUZnaHNBcGdHeUN3TmxCWUliQTJZQnRnV1ZsWkc3QUJLMWxaSTdBQVVGaGxXVmt0c0FNc0lFVWdzQVFsWVdRZ3NBVkRVRml3QlNOQ3NBWWpRaHNoSVZtd0FXQXRzQVFzSXlFaklTQmtzUVZpUWlDd0JpTkNzUUVLUTBWanNRRUtRN0FBWUVWanNBTXFJU0N3QmtNZ2lpQ0tzQUVyc1RBRkpiQUVKbEZZWUZBYllWSlpXQ05aSVNDd1FGTllzQUVyR3lHd1FGa2pzQUJRV0dWWkxiQUZMTEFIUXl1eUFBSUFRMkJDTGJBR0xMQUhJMElqSUxBQUkwSmhzQUppWnJBQlk3QUJZTEFGS2kyd0J5d2dJRVVnc0F0RFk3Z0VBR0lnc0FCUVdMQkFZRmxtc0FGallFU3dBV0F0c0Fnc3NnY0xBRU5GUWlvaHNnQUJBRU5nUWkyd0NTeXdBRU1qUkxJQUFRQkRZRUl0c0Fvc0lDQkZJTEFCS3lPd0FFT3dCQ1ZnSUVXS0kyRWdaQ0N3SUZCWUliQUFHN0F3VUZpd0lCdXdRRmxaSTdBQVVGaGxXYkFESlNOaFJFU3dBV0F0c0Fzc0lDQkZJTEFCS3lPd0FFT3dCQ1ZnSUVXS0kyRWdaTEFrVUZpd0FCdXdRRmtqc0FCUVdHVlpzQU1sSTJGRVJMQUJZQzJ3REN3Z3NBQWpRcklMQ2dORldDRWJJeUZaS2lFdHNBMHNzUUlDUmJCa1lVUXRzQTRzc0FGZ0lDQ3dERU5Lc0FCUVdDQ3dEQ05DV2JBTlEwcXdBRkpZSUxBTkkwSlpMYkFQTENDd0VHSm1zQUZqSUxnRUFHT0tJMkd3RGtOZ0lJcGdJTEFPSTBJakxiQVFMRXRVV0xFRVpFUlpKTEFOWlNONExiQVJMRXRSV0V0VFdMRUVaRVJaR3lGWkpMQVRaU040TGJBU0xMRUFEME5WV0xFUEQwT3dBV0ZDc0E4cldiQUFRN0FDSlVLeERBSWxRckVOQWlWQ3NBRVdJeUN3QXlWUVdMRUJBRU5nc0FRbFFvcUtJSW9qWWJBT0tpRWpzQUZoSUlvalliQU9LaUVic1FFQVEyQ3dBaVZDc0FJbFliQU9LaUZac0F4RFI3QU5RMGRnc0FKaUlMQUFVRml3UUdCWlpyQUJZeUN3QzBOanVBUUFZaUN3QUZCWXNFQmdXV2F3QVdOZ3NRQUFFeU5Fc0FGRHNBQStzZ0VCQVVOZ1FpMndFeXdBc1FBQ1JWUllzQThqUWlCRnNBc2pRckFLSTdBQVlFSWdZTEFCWWJVUUVBRUFEZ0JDUW9wZ3NSSUdLN0J5S3hzaVdTMndGQ3l4QUJNckxiQVZMTEVCRXlzdHNCWXNzUUlUS3kyd0Z5eXhBeE1yTGJBWUxMRUVFeXN0c0Jrc3NRVVRLeTJ3R2l5eEJoTXJMYkFiTExFSEV5c3RzQndzc1FnVEt5MndIU3l4Q1JNckxiQWVMQUN3RFN1eEFBSkZWRml3RHlOQ0lFV3dDeU5Dc0FvanNBQmdRaUJnc0FGaHRSQVFBUUFPQUVKQ2ltQ3hFZ1lyc0hJckd5SlpMYkFmTExFQUhpc3RzQ0Fzc1FFZUt5MndJU3l4QWg0ckxiQWlMTEVESGlzdHNDTXNzUVFlS3kyd0pDeXhCUjRyTGJBbExMRUdIaXN0c0NZc3NRY2VLeTJ3Snl5eENCNHJMYkFvTExFSkhpc3RzQ2tzSUR5d0FXQXRzQ29zSUdDd0VHQWdReU93QVdCRHNBSWxZYkFCWUxBcEtpRXRzQ3Nzc0NvcnNDb3FMYkFzTENBZ1J5QWdzQXREWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqWUNOaE9DTWdpbFZZSUVjZ0lMQUxRMk80QkFCaUlMQUFVRml3UUdCWlpyQUJZMkFqWVRnYklWa3RzQzBzQUxFQUFrVlVXTEFCRnJBc0tyQUJGVEFiSWxrdHNDNHNBTEFOSzdFQUFrVlVXTEFCRnJBc0tyQUJGVEFiSWxrdHNDOHNJRFd3QVdBdHNEQXNBTEFCUldPNEJBQmlJTEFBVUZpd1FHQlpackFCWTdBQks3QUxRMk80QkFCaUlMQUFVRml3UUdCWlpyQUJZN0FCSzdBQUZyUUFBQUFBQUVRK0l6aXhMd0VWS2kyd01Td2dQQ0JISUxBTFEyTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlkyQ3dBRU5oT0Myd01pd3VGend0c0RNc0lEd2dSeUN3QzBOanVBUUFZaUN3QUZCWXNFQmdXV2F3QVdOZ3NBQkRZYkFCUTJNNExiQTBMTEVDQUJZbElDNGdSN0FBSTBLd0FpVkppb3BISTBjallTQllZaHNoV2JBQkkwS3lNd0VCRlJRcUxiQTFMTEFBRnJBRUpiQUVKVWNqUnlOaHNBbERLMldLTGlNZ0lEeUtPQzJ3Tml5d0FCYXdCQ1d3QkNVZ0xrY2pSeU5oSUxBRUkwS3dDVU1ySUxCZ1VGZ2dzRUJSV0xNQ0lBTWdHN01DSmdNYVdVSkNJeUN3Q0VNZ2lpTkhJMGNqWVNOR1lMQUVRN0FDWWlDd0FGQllzRUJnV1dhd0FXTmdJTEFCS3lDS2ltRWdzQUpEWUdRanNBTkRZV1JRV0xBQ1EyRWJzQU5EWUZtd0F5V3dBbUlnc0FCUVdMQkFZRmxtc0FGallTTWdJTEFFSmlOR1lUZ2JJN0FJUTBhd0FpV3dDRU5ISTBjallXQWdzQVJEc0FKaUlMQUFVRml3UUdCWlpyQUJZMkFqSUxBQkt5T3dCRU5nc0FFcnNBVWxZYkFGSmJBQ1lpQ3dBRkJZc0VCZ1dXYXdBV093QkNaaElMQUVKV0JrSTdBREpXQmtVRmdoR3lNaFdTTWdJTEFFSmlOR1lUaFpMYkEzTExBQUZpQWdJTEFGSmlBdVJ5TkhJMkVqUERndHNEZ3NzQUFXSUxBSUkwSWdJQ0JHSTBld0FTc2pZVGd0c0Rrc3NBQVdzQU1sc0FJbFJ5TkhJMkd3QUZSWUxpQThJeUVic0FJbHNBSWxSeU5ISTJFZ3NBVWxzQVFsUnlOSEkyR3dCaVd3QlNWSnNBSWxZYmtJQUFnQVkyTWpJRmhpR3lGWlk3Z0VBR0lnc0FCUVdMQkFZRmxtc0FGallDTXVJeUFnUElvNEl5RlpMYkE2TExBQUZpQ3dDRU1nTGtjalJ5TmhJR0N3SUdCbXNBSmlJTEFBVUZpd1FHQlpackFCWXlNZ0lEeUtPQzJ3T3l3aklDNUdzQUlsUmxKWUlEeFpMckVyQVJRckxiQThMQ01nTGthd0FpVkdVRmdnUEZrdXNTc0JGQ3N0c0Qwc0l5QXVSckFDSlVaU1dDQThXU01nTGthd0FpVkdVRmdnUEZrdXNTc0JGQ3N0c0Q0c3NEVXJJeUF1UnJBQ0pVWlNXQ0E4V1M2eEt3RVVLeTJ3UHl5d05pdUtJQ0E4c0FRalFvbzRJeUF1UnJBQ0pVWlNXQ0E4V1M2eEt3RVVLN0FFUXk2d0t5c3RzRUFzc0FBV3NBUWxzQVFtSUM1SEkwY2pZYkFKUXlzaklEd2dMaU00c1NzQkZDc3RzRUVzc1FnRUpVS3dBQmF3QkNXd0JDVWdMa2NqUnlOaElMQUVJMEt3Q1VNcklMQmdVRmdnc0VCUldMTUNJQU1nRzdNQ0pnTWFXVUpDSXlCSHNBUkRzQUppSUxBQVVGaXdRR0JaWnJBQlkyQWdzQUVySUlxS1lTQ3dBa05nWkNPd0EwTmhaRkJZc0FKRFlSdXdBME5nV2JBREpiQUNZaUN3QUZCWXNFQmdXV2F3QVdOaHNBSWxSbUU0SXlBOEl6Z2JJU0FnUmlOSHNBRXJJMkU0SVZteEt3RVVLeTJ3UWl5d05Tc3VzU3NCRkNzdHNFTXNzRFlySVNNZ0lEeXdCQ05DSXppeEt3RVVLN0FFUXk2d0t5c3RzRVFzc0FBVklFZXdBQ05Dc2dBQkFSVVVFeTZ3TVNvdHNFVXNzQUFWSUVld0FDTkNzZ0FCQVJVVUV5NndNU290c0VZc3NRQUJGQk93TWlvdHNFY3NzRFFxTGJCSUxMQUFGa1VqSUM0Z1Jvb2pZVGl4S3dFVUt5MndTU3l3Q0NOQ3NFZ3JMYkJLTExJQUFFRXJMYkJMTExJQUFVRXJMYkJNTExJQkFFRXJMYkJOTExJQkFVRXJMYkJPTExJQUFFSXJMYkJQTExJQUFVSXJMYkJRTExJQkFFSXJMYkJSTExJQkFVSXJMYkJTTExJQUFENHJMYkJUTExJQUFUNHJMYkJVTExJQkFENHJMYkJWTExJQkFUNHJMYkJXTExJQUFFQXJMYkJYTExJQUFVQXJMYkJZTExJQkFFQXJMYkJaTExJQkFVQXJMYkJhTExJQUFFTXJMYkJiTExJQUFVTXJMYkJjTExJQkFFTXJMYkJkTExJQkFVTXJMYkJlTExJQUFEOHJMYkJmTExJQUFUOHJMYkJnTExJQkFEOHJMYkJoTExJQkFUOHJMYkJpTExBM0t5NnhLd0VVS3kyd1l5eXdOeXV3T3lzdHNHUXNzRGNyc0R3ckxiQmxMTEFBRnJBM0s3QTlLeTJ3Wml5d09Dc3VzU3NCRkNzdHNHY3NzRGdyc0RzckxiQm9MTEE0SzdBOEt5MndhU3l3T0N1d1BTc3RzR29zc0RrckxyRXJBUlFyTGJCckxMQTVLN0E3S3kyd2JDeXdPU3V3UENzdHNHMHNzRGtyc0QwckxiQnVMTEE2S3k2eEt3RVVLeTJ3Ynl5d09pdXdPeXN0c0hBc3NEb3JzRHdyTGJCeExMQTZLN0E5S3kyd2NpeXpDUVFDQTBWWUlSc2pJVmxDSzdBSVpiQURKRkI0c0FFVk1DMEFTN2dBeUZKWXNRRUJqbG13QWJrSUFBZ0FZM0N4QUFWQ3NRQUFLckVBQlVLeEFBZ3FzUUFGUXJFQUNDcXhBQVZDdVFBQUFBa3FzUUFGUXJrQUFBQUpLckVEQUVTeEpBR0lVVml3UUloWXNRTmtSTEVtQVloUldMb0lnQUFCQkVDSVkxUllzUU1BUkZsWldWbXhBQXdxdUFIL2hiQUVqYkVDQUVRQScpIGZvcm1hdCgndHJ1ZXR5cGUnKTtcbn1cbi8qIENocm9tZSBoYWNrOiBTVkcgaXMgcmVuZGVyZWQgbW9yZSBzbW9vdGggaW4gV2luZG96emUuIDEwMCUgbWFnaWMsIHVuY29tbWVudCBpZiB5b3UgbmVlZCBpdC4gKi9cbi8qIE5vdGUsIHRoYXQgd2lsbCBicmVhayBoaW50aW5nISBJbiBvdGhlciBPUy1lcyBmb250IHdpbGwgYmUgbm90IGFzIHNoYXJwIGFzIGl0IGNvdWxkIGJlICovXG4vKlxuQG1lZGlhIHNjcmVlbiBhbmQgKC13ZWJraXQtbWluLWRldmljZS1waXhlbC1yYXRpbzowKSB7XG4gIEBmb250LWZhY2Uge1xuICAgIGZvbnQtZmFtaWx5OiAnc2InO1xuICAgIHNyYzogdXJsKCcuLi9mb250L3NiLnN2Zz80OTM0MDI0OCNzYicpIGZvcm1hdCgnc3ZnJyk7XG4gIH1cbn1cbiovXG4gXG4gW2NsYXNzXj1cInNiLWljb24tXCJdOmJlZm9yZSwgW2NsYXNzKj1cIiBzYi1pY29uLVwiXTpiZWZvcmUge1xuICBmb250LWZhbWlseTogXCJzYlwiO1xuICBmb250LXN0eWxlOiBub3JtYWw7XG4gIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gIHNwZWFrOiBub25lO1xuIFxuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIHRleHQtZGVjb3JhdGlvbjogaW5oZXJpdDtcbiAgd2lkdGg6IDFlbTtcbiAgbWFyZ2luLXJpZ2h0OiAuMmVtO1xuICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gIC8qIG9wYWNpdHk6IC44OyAqL1xuIFxuICAvKiBGb3Igc2FmZXR5IC0gcmVzZXQgcGFyZW50IHN0eWxlcywgdGhhdCBjYW4gYnJlYWsgZ2x5cGggY29kZXMqL1xuICBmb250LXZhcmlhbnQ6IG5vcm1hbDtcbiAgdGV4dC10cmFuc2Zvcm06IG5vbmU7XG4gICAgIFxuICAvKiBmaXggYnV0dG9ucyBoZWlnaHQsIGZvciB0d2l0dGVyIGJvb3RzdHJhcCAqL1xuICBsaW5lLWhlaWdodDogMWVtO1xuIFxuICAvKiBBbmltYXRpb24gY2VudGVyIGNvbXBlbnNhdGlvbiAtIG1hcmdpbnMgc2hvdWxkIGJlIHN5bW1ldHJpYyAqL1xuICAvKiByZW1vdmUgaWYgbm90IG5lZWRlZCAqL1xuICBtYXJnaW4tbGVmdDogLjJlbTtcbiBcbiAgLyogeW91IGNhbiBiZSBtb3JlIGNvbWZvcnRhYmxlIHdpdGggaW5jcmVhc2VkIGljb25zIHNpemUgKi9cbiAgLyogZm9udC1zaXplOiAxMjAlOyAqL1xuIFxuICAvKiBVbmNvbW1lbnQgZm9yIDNEIGVmZmVjdCAqL1xuICAvKiB0ZXh0LXNoYWRvdzogMXB4IDFweCAxcHggcmdiYSgxMjcsIDEyNywgMTI3LCAwLjMpOyAqL1xufVxuLnNiLWljb24tZmlsdGVyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDAnOyB9IC8qICfuoIAnICovXG4uc2ItaWNvbi10aC1sYXJnZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAxJzsgfSAvKiAn7qCBJyAqL1xuLnNiLWljb24tdGg6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMic7IH0gLyogJ+6ggicgKi9cbi5zYi1pY29uLXRoLWxpc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMyc7IH0gLyogJ+6ggycgKi9cbi5zYi1pY29uLXBlbmNpbDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA0JzsgfSAvKiAn7qCEJyAqL1xuLnNiLWljb24tY2FuY2VsOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDUnOyB9IC8qICfuoIUnICovXG4uc2ItaWNvbi1wbHVzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDYnOyB9IC8qICfuoIYnICovXG4uc2ItaWNvbi1jb2c6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNyc7IH0gLyogJ+6ghycgKi9cbi5zYi1pY29uLWFsaWduLWp1c3RpZnk6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwOCc7IH0gLyogJ+6giCcgKi9cbi5zYi1pY29uLW9rOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDknOyB9IC8qICfuoIknICovXG4uc2ItaWNvbi1sb2NrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGEnOyB9IC8qICfuoIonICovXG4uc2ItaWNvbi1leGNoYW5nZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBiJzsgfSAvKiAn7qCLJyAqL1xuLnNiLWljb24tZG93bjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBjJzsgfSAvKiAn7qCMJyAqL1xuLnNiLWljb24tdXA6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwZCc7IH0gLyogJ+6gjScgKi9cbi5zYi1pY29uLWhlbHAtY2lyY2xlZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBlJzsgfSAvKiAn7qCOJyAqL1xuLnNiLWljb24taW5mby1jaXJjbGVkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGYnOyB9IC8qICfuoI8nICovXG4uc2ItaWNvbi1zb3J0LW5hbWUtdXA6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMCc7IH0gLyogJ+6gkCcgKi9cbi5zYi1pY29uLXNvcnQtbmFtZS1kb3duOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTEnOyB9IC8qICfuoJEnICovXG4uc2ItaWNvbi1kb3duLWRpcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODEyJzsgfSAvKiAn7qCSJyAqL1xuLnNiLWljb24tdXAtZGlyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTMnOyB9IC8qICfuoJMnICovXG4uc2ItaWNvbi1jb21wYXNzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTQnOyB9IC8qICfuoJQnICovXG4uc2ItaWNvbi1yaWdodC1kaXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNSc7IH0gLyogJ+6glScgKi9cbi5zYi1pY29uLWxlZnQtZGlyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTYnOyB9IC8qICfuoJYnICovXG4uc2ItaWNvbi1kb2NzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTcnOyB9IC8qICfuoJcnICovXG4uc2ItaWNvbi1jaXJjbGUtZW1wdHk6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxOCc7IH0gLyogJ+6gmCcgKi9cbi5zYi1pY29uLWRvdC1jaXJjbGVkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTknOyB9IC8qICfuoJknICovXG4uc2ItaWNvbi10by1lbmQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxYSc7IH0gLyogJ+6gmicgKi9cbi5zYi1pY29uLXRvLXN0YXJ0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWInOyB9IC8qICfuoJsnICovXG4uc2ItaWNvbi1mYXN0LWZvcndhcmQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxYyc7IH0gLyogJ+6gnCcgKi9cbi5zYi1pY29uLWZhc3QtYmFja3dhcmQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxZCc7IH0gLyogJ+6gnScgKi9cbi5zYi1pY29uLWN3OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWUnOyB9IC8qICfuoJ4nICovXG4uc2ItaWNvbi1sZXZlbC1kb3duOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWYnOyB9IC8qICfuoJ8nICovXG4uc2ItaWNvbi1hdHRlbnRpb246YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMCc7IH0gLyogJ+6goCcgKi9cbi5zYi1pY29uLWF0dGVudGlvbi1jaXJjbGVkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjEnOyB9IC8qICfuoKEnICovXG4uc2ItaWNvbi1zZWFyY2g6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMic7IH0gLyogJ+6goicgKi9cbi5zYi1pY29uLWNjdzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIzJzsgfSAvKiAn7qCjJyAqL1xuLnNiLWljb24tc3RhcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI0JzsgfSAvKiAn7qCkJyAqL1xuLnNiLWljb24tc3Rhci1lbXB0eTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI1JzsgfSAvKiAn7qClJyAqL1xuLyogZW5kIG9mIGltcG9ydCBmcm9tIHNiLWVtYmVkZGVkLmNzcyAqL1xuXG5cbi5zYiAqW2NsYXNzXj1cInNiLWljb24tXCJdOmJlZm9yZSwgLnNiICpbY2xhc3MqPVwiIHNiLWljb24tXCJdOmJlZm9yZSB7XG4gIGZvbnQtZmFtaWx5OiAnc2InO1xuICBjb2xvcjogaW5oZXJpdDtcbiAgLyogQmV0dGVyIEZvbnQgUmVuZGVyaW5nID09PT09PT09PT09ICovXG4gIC13ZWJraXQtZm9udC1zbW9vdGhpbmc6IGFudGlhbGlhc2VkO1xuICAtbW96LW9zeC1mb250LXNtb290aGluZzogZ3JheXNjYWxlO1xufVxuXG4vLyBmaXggZm9yIGljb24gZm9udCB0aGF0IGRpZG4ndCBoYXZlIHZlcnRpY2FsIHNvcnQgYXJyb3dzXG4uc2ItaWNvbi1leGNoYW5nZTpiZWZvcmUge1xuICAucm90YXRlKDkwZGVnKTtcbn1cblxuLy8gVGhlIGxvYWRpbmcgc3Bpbm5lci4gIFRoaXMgaXMgYW4gYW5pbWF0ZWQgZ2lmLCBmb3VuZCBhdCBcImljb25zL2xvYWRlci5naWZcIlxuLnNiLWljb24tbG9hZGluZyB7XG4gIHdpZHRoOiAxNDhweDtcbiAgdGV4dC1hbGlnbjogY2VudGVyO1xufVxuXG4uc2ItaWNvbi1sb2FkaW5nID4gZGl2IHtcbiAgd2lkdGg6IDM2cHg7XG4gIGhlaWdodDogMThweDtcbiAgbWFyZ2luOiAycHg7XG4gIGJhY2tncm91bmQtY29sb3I6IEBzYkhpZ2hsaWdodENvbG9yO1xuXG4gIGJvcmRlci1yYWRpdXM6IDEwJTtcbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAtd2Via2l0LWFuaW1hdGlvbjogYm91bmNlZGVsYXkgMS40cyBpbmZpbml0ZSBlYXNlLWluLW91dDtcbiAgYW5pbWF0aW9uOiBib3VuY2VkZWxheSAxLjRzIGluZmluaXRlIGVhc2UtaW4tb3V0O1xuICAvKiBQcmV2ZW50IGZpcnN0IGZyYW1lIGZyb20gZmxpY2tlcmluZyB3aGVuIGFuaW1hdGlvbiBzdGFydHMgKi9cbiAgLXdlYmtpdC1hbmltYXRpb24tZmlsbC1tb2RlOiBib3RoO1xuICBhbmltYXRpb24tZmlsbC1tb2RlOiBib3RoO1xufVxuXG4uc2ItaWNvbi1sb2FkaW5nIC5zYi1pY29uLWJvdW5jZTEge1xuICAtd2Via2l0LWFuaW1hdGlvbi1kZWxheTogLTAuMzJzO1xuICBhbmltYXRpb24tZGVsYXk6IC0wLjMycztcbn1cblxuLnNiLWljb24tbG9hZGluZyAuc2ItaWNvbi1ib3VuY2UyIHtcbiAgLXdlYmtpdC1hbmltYXRpb24tZGVsYXk6IC0wLjE2cztcbiAgYW5pbWF0aW9uLWRlbGF5OiAtMC4xNnM7XG59XG5cbi8vIEhlYWRlciBpY29uIGJhY2tncm91bmQgY29sb3JzXG4uc2JQYWdlVGl0bGUge1xuXHQuc2YtaWNvbi1jdXN0b205MCB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzVBOUNERDtcblx0fVxuXHQuc2YtaWNvbi1jdXN0b205MyB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzkwNEQ0Qztcblx0fVxuXHQuc2YtaWNvbi1wcm9kdWN0IHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjQjc4MUQzO1xuXHR9XHRcblx0LnNmLWljb24tc2V0dGluZ3Mge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICNFREI1NjY7XG5cdH1cblx0LnNmLWljb24tZG93bmxvYWQge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICM1NDY5OEQ7XG5cdH1cblx0LnNmLWljb24tY29udHJhY3QtMSB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzZFQzA2RTtcblx0fVxuXHQuc2YtaWNvbi1hcHByb3ZhbCB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzAwQzZCNztcblx0fVxuICAgIC5zZi1pY29uLXBvc3Qge1xuICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjNjVDQUU0O1xuICAgIH1cblx0LnNmLWljb24tZ2RvYyB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzU0Njk4RDtcblx0fVxuXHQuc2YtaWNvbi1kb2N1bWVudCB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogI2JhYWM5Mztcblx0fVxuXHQuc2YtaWNvbi1yZWNlbnQge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICM2Q0ExRTk7XG5cdH1cblx0LnNmLWljb24tY29weSB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzZDQTBFOTtcblx0fVxuXHQuc2YtaWNvbi1mYXZvcml0ZSB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogI0ZGN0I4NDtcblx0fVxuXHQuc2YtaWNvbi1yZWZyZXNoIHtcblx0XHQmLnJlc2l6ZSB7XG5cdFx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNkNBMEU5O1xuXHRcdH1cblx0fVxuXG5cdC5zZi1pY29uLXJlcGxhY2Uge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICM1NDY5OEQ7XG5cdH1cbn1cblxuQC13ZWJraXQta2V5ZnJhbWVzIGJvdW5jZWRlbGF5IHtcbiAgMCUsIDgwJSwgMTAwJSB7IC13ZWJraXQtdHJhbnNmb3JtOiBzY2FsZSgwLjApIH1cbiAgNDAlIHsgLXdlYmtpdC10cmFuc2Zvcm06IHNjYWxlKDEuMCkgfVxufVxuXG5Aa2V5ZnJhbWVzIGJvdW5jZWRlbGF5IHtcbiAgMCUsIDgwJSwgMTAwJSB7XG4gICAgdHJhbnNmb3JtOiBzY2FsZSgwLjApO1xuICAgIC13ZWJraXQtdHJhbnNmb3JtOiBzY2FsZSgwLjApO1xuICB9IDQwJSB7XG4gICAgICB0cmFuc2Zvcm06IHNjYWxlKDEuMCk7XG4gICAgICAtd2Via2l0LXRyYW5zZm9ybTogc2NhbGUoMS4wKTtcbiAgICB9XG59XG4iLCIvLyBHbG9iYWwgVmFyaWFibGVzXG4vL1xuLy8gQWxsIGdsb2JhbCBMRVNTIHZhcmlhYmxlc1xuLy9cbi8vIFN0eWxlZ3VpZGUgdmFyaWFibGVzXG5AaW1wb3J0IFwidmFyaWFibGVzLmxlc3NcIjtcblxuLy9TRkRDIEZvbnRzXG5AaW1wb3J0IFwiZm9udHMubGVzc1wiO1xuLy8gTWl4aW5zXG4vL1xuLy8gQWxsIGdsb2JhbCBMRVNTIG1peGlucyAoZnVuY3Rpb25zKVxuLy9cbi8vIFN0eWxlZ3VpZGUgTWl4aW5zXG5AaW1wb3J0IFwibWl4aW5zLmxlc3NcIjtcblxuLy8gVHlwb2dyYXBoeVxuLy9cbi8vIEFsbCB0ZXh0IHJlbGF0ZWQgY29udGVudCBpbmNsdWRpbmcgaGVhZGluZ3MsIGxpbmtzLCBhbmQgcGxhaW4gdGV4dFxuLy9cbi8vIFN0eWxlZ3VpZGUgVHlwb2dyYXBoeVxuQGltcG9ydCBcInR5cG9ncmFwaHkubGVzc1wiO1xuXG4vLyBCdXR0b25zIGFuZCBUb29sYmFyc1xuLy9cbi8vIEJ1dHRvbnMsIGJ1dHRvbiBiYXJzLCB0b29sYmFyc1xuLy9cbi8vIFN0eWxlZ3VpZGUgQnV0dG9uc1xuQGltcG9ydCBcImJ1dHRvbnMubGVzc1wiO1xuXG4vLyBEaWFsb2dzXG4vL1xuLy8gRGlhbG9nIHdpbmRvd3MsIHBvcHVwcywgYW5kIHRoZWlyIG1vZGFsIG1hc2tzXG4vL1xuLy8gU3R5bGVndWlkZSBEaWFsb2dzXG5AaW1wb3J0IFwiZGlhbG9ncy5sZXNzXCI7XG5cbi8vIExheW91dFxuLy9cbi8vIExheW91dCBhbmQgcGFnZSBwYXR0ZXJuc1xuLy9cbi8vIFN0eWxlZ3VpZGUgTGF5b3V0XG5AaW1wb3J0IFwibGF5b3V0Lmxlc3NcIjtcblxuLy8gRm9ybXNcbi8vXG4vLyBGb3JtcyBhbmQgaW5wdXQgcmVsYXRlZCBjb250cm9sc1xuLy9cbi8vIFN0eWxlZ3VpZGUgRm9ybXNcbkBpbXBvcnQgXCJmb3Jtcy5sZXNzXCI7XG5AaW1wb3J0IFwiZGF0ZVBpY2tlci5sZXNzXCI7XG5cbi8vIFRhYmxlc1xuLy9cbi8vIFRhYnVsYXIgZGlzcGxheSBvZiBkYXRhXG4vL1xuLy8gU3R5bGVndWlkZSBUYWJsZXNcbkBpbXBvcnQgXCJ0YWJsZXMubGVzc1wiO1xuXG4vLyBEcm9wIERvd25zXG4vL1xuLy8gRHJvcCBkb3ducyAvIG1lbnVzXG4vL1xuLy8gU3R5bGVndWlkZSBEcm9wZG93bnNcbkBpbXBvcnQgXCJkcm9wZG93bnMubGVzc1wiO1xuXG4vLyBJY29uc1xuLy9cbi8vIFRoZSBpY29ucyBhbmQgaWNvbiBmb250c1xuLy9cbi8vIFN0eWxlZ3VpZGUgSWNvbnNcbkBpbXBvcnQgXCJpY29ucy5sZXNzXCI7XG5cbkBpbXBvcnQgXCJzZmRjLmxlc3NcIjtcblxuXG4vLyBPdXIgdG9wLW1vc3Qgc2VsZWN0b3IsIHJlc2V0IGJyb3dzZXIgaW5jb25zaXN0ZW5jaWVzXG4uc2Ige1xuICBmb250LXNpemU6IDEwcHg7ICAvLyBpZGVhbGx5IHRoaXMgd291bGQgYmUgNjIuNSUgb24gaHRtbCBzbyB3ZSBjb3VsZCB1c2UgcmVtIGJ1dCBTRkRDIGxpbWl0cyB1cyBoZXJlXG4gIGZvbnQtZmFtaWx5OiBAc2JGb250ICFpbXBvcnRhbnQ7ICAvLyBtdXN0IGJlIGltcG9ydGFudCBhcyBTRkRDIGFsc28gc2V0c1xufVxuXG4vLyBSZXNldCBicm93c2VyIGluY29uc2lzdGVuY2llc1xuLnNiICoge1xuICBib3gtc2l6aW5nOiBib3JkZXItYm94O1xufVxuXG4vLyBIaWRpbmcgLSBhIGNvbW1vbiBzdGF0ZSBtb2RpZmllciBjbGFzcyB0aGF0IGNhbiBiZSBhcHBsaWVkIGFueXdoZXJlXG4uc2IgKi5oaWRkZW4ge1xuICBkaXNwbGF5OiBub25lO1xufVxuXG4vLyBDbGVhciBmbG9hdGluZyBjaGlsZHJlbiwgdHlwaWNhbGx5IGJ5IHB1dHRpbmcgdGhpcyBvbiBwYXJlbnRTZWxlY3RvcjphZnRlci5cbi5zYkNsZWFyIHtcbiAgY29udGVudDogXCJcIjtcbiAgZGlzcGxheTogdGFibGU7XG4gIGNsZWFyOiBib3RoO1xufVxuXG4uc2JMaW5rIHtcbiAgY29sb3I6IEBzYkxpbmtDb2xvcjtcbn0iLCIvLyBUaGUgcGFnZSBiYWNrZ3JvdW5kIGNvbG9yXG5Ac2JQYWdlQmdDb2xvcjogI2ZmZjtcblxuLy8gVGhlIGRlZmF1bHQvc3RhbmRhcmQgZm9udCBjb2xvclxuQHNiRm9udENvbG9yOiAjMTYzMjVDO1xuXG4vLyBUaGUgY29sb3Igb2YgY29udGVudCBzZWN0aW9ucyBzdWNoIGFzIHBhZ2UgdGl0bGUsIGRldGFpbHMsIGV0Y1xuQHNiQ29udGVudEJnQ29sb3I6ICNGNEY2Rjk7XG5cbi8vIFRoZSBmb250IGNvbG9yIG9mIGNvbnRlbnQgc2VjdGlvbnMgc3VjaCBhcyBwYWdlIHRpdGxlLCBkZXRhaWxzLCBldGNcbkBzYkNvbnRlbnRGb250Q29sb3I6ICM1NDY5OEQ7XG5cbi8vIFRoZSBzdGFuZGFyZCBmb250IGZhbWlseVxuQHNiRm9udDogJ1NhbGVzZm9yY2UgU2FucycsICdPcGVuIFNhbnMnLCBBcmlhbCwgc2Fucy1zZXJpZjtcblxuLy8gQmFzZSBmb250IHNpemUgdG8gYmUgdXNlZCBmb3IgYWxsIG90aGVyIGZvbnQgc2l6ZSBjYWxjdWxhdGlvbnNcbkBzYkZvbnRTaXplOiAxMHB4O1xuXG4vLyBCYXNlIGZvbnQgc2l6ZSBmb3IgcmVndWxhciBjb250ZW50XG5Ac2JDb250ZW50Rm9udFNpemU6IEBzYkZvbnRTaXplICogMS40O1xuXG4vLyBEZWZhdWx0IGJvcmRlciBjb2xvciBmb3IgYSB2YXJpZXR5IG9mIGVsZW1lbnRzXG5Ac2JCb3JkZXJDb2xvcjogI0Q4RERFNjtcblxuLy8gLy8gRGVmYXVsdCBib3JkZXIgY29sb3IgZm9yIHRhYmxlIHJvd3Ncbi8vIEBzYlRhYmxlQm9yZGVyQ29sb3I6ICNGNEY2Rjk7XG5cbi8vIEJvcmRlciBvZiBjb250ZW50IHNlY3Rpb25zXG5Ac2JDb250ZW50Qm9yZGVyOiAxcHggc29saWQgI2QwZDBkMDtcblxuLy8gSWNvbiBjb2xvciBmb3Igc2Vjb25kYXJ5IGljb25zIChwcmltYXJ5IHNob3VsZCBiZSBzYW1lIGFzIEBzYkZvbnRDb2xvcilcbkBzYkljb25Db2xvcjogIzg4ODtcblxuLy8gQ29sb3IgZm9yIGhpZ2hsaWdodHMgKHNwbGFzaCBvZiBjb2xvcilcbkBzYkhpZ2hsaWdodENvbG9yOiAjMDA3MGQyO1xuXG4vLyBGb250IGNvbG9ycyBvZiBoeXBlcmxpbmtzXG5Ac2JMaW5rQ29sb3I6ICMwMDcwRDI7XG5Ac2JMaW5rQ29sb3JBY3RpdmU6IHJnYigwLCA1NywgMTA3KTtcbkBzYkxpbmtDb2xvckRpc2FibGVkOiByZ2IoMjIsIDUwLCA5Mik7XG5Ac2JMaW5rQ29sb3JIb3ZlcjogcmdiKDAsIDk1LCAxNzgpO1xuXG4vLyBQYWdlIEhlYWRlciBsZWZ0IChhbmQgdXN1YWxseSByaWdodCkgbWFyZ2luXG5Ac2JQYWdlSGVhZGVyTGVmdDogMTVweDtcblxuLy8gUGFnZSBIZWFkZXIgdG9wIChhbmQgdXN1YWxseSBib3R0b20pIG1hcmdpblxuQHNiUGFnZUhlYWRlclRvcDogMTVweDtcblxuLy8gTWFzayBjb2xvclxuQHNiTWFza0NvbG9yOiAjQThCN0M3O1xuXG4vLyBQYWdlIEhlYWRlclxuQHNiSGVhZGVyQmdDb2xvcjogI2Y0ZjZmOTtcbkBzYkhlYWRlclNlY29uZGFyeUJnQ29sb3I6ICNmNGY2Zjk7XG5Ac2JIZWFkZXJCb3JkZXJDb2xvcjogI2QwZDBkMDtcbkBzYkhlYWRlckZvbnRDb2xvcjogIzE2MzI1YztcbkBzYkhlYWRlclN1cHBvcnRGb250Q29sb3I6ICM1NDY5OGQ7XG5cbkBzYkJnQ29sb3I6ICNmZmZmZmY7XG5Ac2JEZXRhaWxCZ0NvbG9yOiNmNGY2Zjk7XG5Ac2JTZWNvbmRhcnlGb250Q29sb3I6ICM2OTY5Njk7XG5cbi8vIFRhYmxlc1xuQHNiVGFibGVIZWFkZXJGb250Q29sb3I6ICM1NDY5OGQ7XG5Ac2JUYWJsZVJvd0hvdmVyQ29sb3I6ICNmNGY2Zjk7XG5cbi8vIEJ1dHRvbnNcbkBzYkdyb3VwQnRuQmdDb2xvcjogI2ZmZmZmZjtcbkBzYkdyb3VwQnRuQm9yZGVyQ29sb3I6ICNkOGRkZTY7XG5Ac2JHcm91cEJ0bkZvbnRDb2xvcjogIzAwNzBkMjtcbkBzYkdyb3VwQnRuSG92ZXJCZ0NvbG9yOiAjZjRmNmY5O1xuQHNiR3JvdXBCdG5Ib3ZlckZvbnRDb2xvcjogIzAwNzBkMjtcbkBzYkdyb3VwQnRuRGlzYWJsZWRGb250Q29sb3I6ICNiZWJlYmU7XG5Ac2JQcmltYXJ5QnRuQmdDb2xvcjogIzAwNzBkMjtcbkBzYlByaW1hcnlCdG5Gb250Q29sb3I6ICNmZmZmZmY7XG5Ac2JQcmltYXJ5QnRuSG92ZXJCZ0NvbG9yOiAjMDA1ZmIyO1xuXG4vLyBJY29uc1xuQHNiQWNjZW50SWNvbkNvbG9yOiAjMDA3MGQyO1xuQHNiQWNjZW50SWNvbkhvdmVyQ29sb3I6ICMxNjMyNWM7XG5Ac2JBY2NlbnRJY29uRGlzYWJsZWRDb2xvcjogIzg4ODg4ODtcbkBzYkhpZGVJY29uczogYmxvY2s7XG5cbi8vIFRhYnNcbkBzYlRhYlNlbGVjdGVkQ29sb3I6ICMxNjZiYmY7XG5cbi8vIEJyZWFrcG9pbnRzIGZvciBNZWRpYSBRdWVyaWVzXG5Ac2JCcFNtYWxsOiAwO1xuQHNiQnBNZWRpdW06IDc2N3B4O1xuQHNiQnBMYXJnZTogMTAyNHB4O1xuQHNiQnBYTGFyZ2U6IDEyMDBweDtcbiIsIi8vIEFwcGxpY2F0aW9uIFNldHRpbmdzIHBhZ2Vcbi8vXG4vLyBtYW55IG9mIHRoZSBzdHlsZXMgaGVyZSBqdXN0IG92ZXJyaWRlIHRoZSBTRiBzdHlsZXMgYXMgdGhpcyBwYWdlIGlzIGhlYXZ5IFZGIG1hcmt1cFxuI3NiQ3BxU2V0dGluZ3Mge1xuXG4gIHBhZGRpbmc6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuXG4gIC5iUGFnZUJsb2NrIHtcbiAgICBib3JkZXI6IDAgIWltcG9ydGFudDtcbiAgICBiYWNrZ3JvdW5kOiBub25lICFpbXBvcnRhbnQ7XG4gIH1cblxuICAuc2JUYWJzIHtcbiAgICBmb250LWZhbWlseTogaW5oZXJpdDtcblxuICAgID4gdGJvZHkgPiB0cjpudGgtY2hpbGQoMSkgPiAucmljaC10YWItYm90dG9tLWxpbmUge1xuICAgICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuXG4gICAgICAucmljaC10YWJoZHItY2VsbC1hY3RpdmUge1xuICAgICAgICBib3JkZXItYm90dG9tOiA0cHggc29saWQgQHNiVGFiU2VsZWN0ZWRDb2xvcjtcbiAgICAgIH1cblxuICAgICAgLnJpY2gtdGFiaGRyLXNpZGUtYm9yZGVyIHtcbiAgICAgICAgZGlzcGxheTogbm9uZTtcbiAgICAgIH1cblxuICAgICAgLnJpY2gtdGFiaGRyLXNpZGUtY2VsbCB7XG4gICAgICAgIGJvcmRlcjogMDtcbiAgICAgIH1cblxuICAgICAgLnJpY2gtdGFiLWFjdGl2ZSwgLnJpY2gtdGFiLWluYWN0aXZlIHtcbiAgICAgICAgYmFja2dyb3VuZDogbm9uZSAhaW1wb3J0YW50O1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZSAhaW1wb3J0YW50O1xuICAgICAgICBwYWRkaW5nOiAwIDE2cHggNnB4IDE2cHg7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLnJpY2gtdGFiLWhlYWRlciwgLnJpY2gtdGFicGFuZWwtY29udGVudCB7XG4gICAgICBmb250LWZhbWlseTogaW5oZXJpdCAhaW1wb3J0YW50O1xuICAgICAgZm9udC1zaXplOiBpbmhlcml0ICFpbXBvcnRhbnQ7XG4gICAgfVxuXG4gICAgLnJpY2gtdGFicGFuZWwtY29udGVudCB7XG4gICAgICBiYWNrZ3JvdW5kOiBub25lICFpbXBvcnRhbnQ7XG4gICAgICBib3JkZXI6IDAgIWltcG9ydGFudDtcbiAgICB9XG5cbiAgICAubGFiZWxDb2wsIC5kYXRhQ29sIHtcbiAgICAgIHBhZGRpbmctdG9wOiA4cHg7XG4gICAgICBwYWRkaW5nLWJvdHRvbTogOHB4O1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICB9XG5cbiAgICAubGFiZWxDb2wsIC5kYXRhMkNvbCB7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gICAgfVxuXG4gICAgaW5wdXQ6bm90KFt0eXBlPXN1Ym1pdF0pOm5vdChbdHlwZT1jaGVja2JveF0pLCBzZWxlY3Qge1xuICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICB3aWR0aDogMjIwcHggIWltcG9ydGFudDtcbiAgICB9XG5cbiAgICAuc2JCdG4ge1xuICAgICAgZm9udC1zaXplOiBpbmhlcml0O1xuICAgIH1cbiAgfVxufVxuIiwiQHNiRmllbGRTZXRIZWFkZXJBbmRGb290ZXJCZ0NvbG9yOiByZ2IoMTU5LCAxNzAsIDE4MSk7XG5cbi8vc2V0VmFyaWFibGUgc2FtcGxlIHN3YXRjaGVzIGl0IHdpbGwgcmVhZCBkZWZhdWx0cyBmcm9tIG9uIFRoZW1lLnBhZ2Vcbi50aGVtZVBhZ2V7XG4gIC5zYkhlYWRlckJnQ29sb3J7Y29sb3I6QHNiSGVhZGVyQmdDb2xvcjt9XG4gIC5zYkhlYWRlclNlY29uZGFyeUJnQ29sb3J7Y29sb3I6QHNiSGVhZGVyU2Vjb25kYXJ5QmdDb2xvcjt9XG4gIC5zYkhlYWRlckJvcmRlckNvbG9ye2NvbG9yOkBzYkhlYWRlckJvcmRlckNvbG9yO31cbiAgLnNiSGVhZGVyRm9udENvbG9ye2NvbG9yOkBzYkhlYWRlckZvbnRDb2xvcjt9XG4gIC5zYkhlYWRlclN1cHBvcnRGb250Q29sb3J7Y29sb3I6QHNiSGVhZGVyU3VwcG9ydEZvbnRDb2xvcjt9XG4gIC5zYkJnQ29sb3J7Y29sb3I6QHNiQmdDb2xvcjt9XG4gIC5zYkRldGFpbEJnQ29sb3J7Y29sb3I6QHNiRGV0YWlsQmdDb2xvcn07XG4gIC5zYkZvbnRDb2xvcntjb2xvcjpAc2JGb250Q29sb3I7fVxuICAuc2JTZWNvbmRhcnlGb250Q29sb3J7Y29sb3I6QHNiU2Vjb25kYXJ5Rm9udENvbG9yO31cbiAgLnNiQm9yZGVyQ29sb3J7Y29sb3I6QHNiQm9yZGVyQ29sb3I7fVxuICAuc2JUYWJsZUhlYWRlckZvbnRDb2xvcntjb2xvcjpAc2JUYWJsZUhlYWRlckZvbnRDb2xvcjt9XG4gIC5zYlRhYmxlUm93SG92ZXJDb2xvcntjb2xvcjpAc2JUYWJsZVJvd0hvdmVyQ29sb3I7fVxuICAuc2JHcm91cEJ0bkJnQ29sb3J7Y29sb3I6QHNiR3JvdXBCdG5CZ0NvbG9yO31cbiAgLnNiR3JvdXBCdG5Cb3JkZXJDb2xvcntjb2xvcjpAc2JHcm91cEJ0bkJvcmRlckNvbG9yO31cbiAgLnNiR3JvdXBCdG5Gb250Q29sb3J7Y29sb3I6QHNiR3JvdXBCdG5Gb250Q29sb3I7fVxuICAuc2JHcm91cEJ0bkhvdmVyQmdDb2xvcntjb2xvcjpAc2JHcm91cEJ0bkhvdmVyQmdDb2xvcjt9XG4gIC5zYkdyb3VwQnRuSG92ZXJGb250Q29sb3J7Y29sb3I6QHNiR3JvdXBCdG5Ib3ZlckZvbnRDb2xvcjt9XG4gIC5zYkdyb3VwQnRuRGlzYWJsZWRGb250Q29sb3J7Y29sb3I6QHNiR3JvdXBCdG5EaXNhYmxlZEZvbnRDb2xvcjt9XG4gIC5zYlByaW1hcnlCdG5CZ0NvbG9ye2NvbG9yOkBzYlByaW1hcnlCdG5CZ0NvbG9yO31cbiAgLnNiUHJpbWFyeUJ0bkZvbnRDb2xvcntjb2xvcjpAc2JQcmltYXJ5QnRuRm9udENvbG9yO31cbiAgLnNiUHJpbWFyeUJ0bkhvdmVyQmdDb2xvcntjb2xvcjpAc2JQcmltYXJ5QnRuSG92ZXJCZ0NvbG9yO31cbiAgLnNiQWNjZW50SWNvbkNvbG9ye2NvbG9yOkBzYkFjY2VudEljb25Db2xvcjt9XG4gIC5zYkFjY2VudEljb25Ib3ZlckNvbG9ye2NvbG9yOkBzYkFjY2VudEljb25Ib3ZlckNvbG9yO31cbiAgLnNiQWNjZW50SWNvbkRpc2FibGVkQ29sb3J7Y29sb3I6QHNiQWNjZW50SWNvbkRpc2FibGVkQ29sb3I7fVxuICAuc2JJY29uQ29sb3J7Y29sb3I6QHNiSWNvbkNvbG9yO31cbiAgLnNiVGFiU2VsZWN0ZWRDb2xvcntjb2xvcjpAc2JUYWJTZWxlY3RlZENvbG9yO31cbn1cbi8vc3RhcnQgVGhlbWUucGFnZSBzdHlsaW5nIGhlcmVcbi50aGVtZVBhZ2V7XG4gIGNvbG9yOiBAc2JGb250Q29sb3I7XG4gIGJhY2tncm91bmQtY29sb3I6IEBzYkJnQ29sb3I7XG4gIC5zYlRpdGxlcyBoMntcbiAgICBjb2xvcjogQHNiSGVhZGVyU3VwcG9ydEZvbnRDb2xvcjtcbiAgfVxuICAuc2JCdG4ge1xuICAgIGJhY2tncm91bmQ6IEBzYkdyb3VwQnRuQmdDb2xvcjtcbiAgICBjb2xvcjogQHNiR3JvdXBCdG5Gb250Q29sb3I7XG4gICAgYm9yZGVyLWNvbG9yOiBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgICY6aG92ZXI6bm90KFtkaXNhYmxlZF0pIHtcbiAgICAgIGJhY2tncm91bmQ6IEBzYkdyb3VwQnRuSG92ZXJCZ0NvbG9yO1xuICAgICAgY29sb3I6IEBzYkdyb3VwQnRuSG92ZXJGb250Q29sb3JcbiAgICB9XG4gICAgJi5zYlByaW1hcnlBY3Rpb24ge1xuICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiUHJpbWFyeUJ0bkJnQ29sb3I7XG4gICAgICBib3JkZXItY29sb3I6IEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICAgICAgY29sb3I6IEBzYlByaW1hcnlCdG5Gb250Q29sb3I7XG4gICAgICAmOmhvdmVyIHtcbiAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiUHJpbWFyeUJ0bkhvdmVyQmdDb2xvcjtcbiAgICAgIH1cbiAgICB9XG4gIH1cbiAgLm5vcm1hbC5zZi1pY29uLWNvcHk6YmVmb3Jle1xuICAgIGNvbG9yOiBAc2JJY29uQ29sb3JcbiAgfVxuICAuYWNjZW50LnNmLWljb24tY29weTpiZWZvcmV7XG4gICAgY29sb3I6IEBzYkFjY2VudEljb25Db2xvcjtcbiAgfVxuICAuYWNjZW50LnNmLWljb24tY29weTpob3Zlcjo6YmVmb3JlIHtcbiAgICBjb2xvcjogQHNiQWNjZW50SWNvbkhvdmVyQ29sb3I7XG4gIH1cbiAgLmRpc2FibGVkLnNmLWljb24tY29weTpiZWZvcmV7XG4gICBjb2xvcjogQHNiQWNjZW50SWNvbkRpc2FibGVkQ29sb3I7XG4gIH1cblx0LnNmLWljb24tY29weXtcblx0XHRmb250LXNpemU6IDI0cHg7XG5cdFx0cGFkZGluZy1yaWdodDo0MHB4O1xuXHR9XG5cdC5zYlRhYmxlPnRib2R5PnRyPnRkIHtcblx0ICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xuXHR9XG5cdC5ib3R0b21QYWRkaW5ne1xuXHRcdHBhZGRpbmctYm90dG9tOjQwcHg7XG5cdH1cblx0LnRoZW1lSGVhZGVye1xuXHRcdHBhZGRpbmctdG9wOjQwcHg7XG5cdFx0cGFkZGluZy1sZWZ0OjYwcHg7XG5cdFx0cGFkZGluZy1ib3R0b206MTBweDtcblx0XHRib3JkZXItYm90dG9tLXN0eWxlOiBzb2xpZCAhaW1wb3J0YW50O1xuXHRcdGJvcmRlci1ib3R0b20td2lkdGg6IDFweCAhaW1wb3J0YW50O1xuXHRcdGJvcmRlci1ib3R0b20tY29sb3I6IEBzYkJvcmRlckNvbG9yICFpbXBvcnRhbnQ7XG5cblx0XHRoMntcblx0XHQgIGNvbG9yOiBAc2JGb250Q29sb3IgIWltcG9ydGFudDtcblx0XHR9XG5cdH1cblx0LnRoZW1lU3ViSGVhZGVyIHtcblx0XHRwYWRkaW5nLXRvcDogMTBweDtcblx0XHRwYWRkaW5nLWxlZnQ6NjBweDtcblxuXHRcdGgzIHtcblx0XHRcdGNvbG9yOiBAc2JGb250Q29sb3IgIWltcG9ydGFudDtcblx0XHR9XG5cdH1cblx0c2VsZWN0IHtcblx0XHR3aWR0aDogMTQwcHg7XG5cdH1cblx0LnRoZW1lU2VsZWN0b3JXcmFwcGVye1xuXHRcdHdpZHRoOjMwMHB4O1xuXHRcdGRpc3BsYXk6aW5saW5lLWJsb2NrO1xuXHRcdG1hcmdpbi1sZWZ0OjU1cHg7XG5cdFx0bWFyZ2luLXJpZ2h0OjU1cHg7XG5cdFx0bWFyZ2luLXRvcDo0MHB4O1xuXHR9XG5cdC50aGVtZVNlbGVjdG9yV3JhcHBlciAudGhlbWVDb250YWluZXIge1xuXHRcdGRpc3BsYXk6IGZsZXg7XG5cdFx0ZmxleC1kaXJlY3Rpb246IGNvbHVtbjtcblx0fVxuXHQudGhlbWVTZWxlY3RvcldyYXBwZXIgPiAucmVxdWlyZWRJbnB1dCB7XG5cdFx0bWFyZ2luLXRvcDogOHB4O1xuXHRcdGZsb2F0OiByaWdodDtcblx0fVxuXHQudG9vbHRpcCB7XG5cdFx0Y29sb3I6ICM1NDY5OGQgIWltcG9ydGFudDtcblx0fVxuXHQudG9vbHRpcDpob3ZlciB7XG5cdFx0Y29sb3I6ICMwMDVmYjIgIWltcG9ydGFudDtcblx0fVxuXHQudG9vbHRpcFRleHQge1xuXHRcdGRpc3BsYXk6IG5vbmU7XG5cdFx0cG9zaXRpb246IGFic29sdXRlO1xuXHRcdHotaW5kZXg6IDEwO1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICNmZmY7XG5cdFx0d2lkdGg6IDE0MHB4O1xuXHRcdHBhZGRpbmc6IDZweDtcblx0XHRjb2xvcjogIzE2MzI1Qztcblx0XHRmb250LWZhbWlseTogaW5oZXJpdDtcblx0XHRmb250LXNpemU6IDE0cHg7XG5cdFx0Ym9yZGVyLXJhZGl1czogNHB4O1xuXHRcdGJveC1zaGFkb3c6IDAgMnB4IDNweCAwIHJnYmEoMCwgMCwgMCwgMC4xNik7XG5cdFx0Ym9yZGVyOiAxcHggc29saWQgI2Q4ZGRlNjtcblx0fVxuXHQudGhlbWVDb250YWluZXIgPiAuaW5wdXQge1xuXHRcdG1hcmdpbi10b3A6IDEwcHg7XG5cdFx0d2lkdGg6IDE0MHB4O1xuXHR9XG5cdC50aGVtZUNvbnRhaW5lciA+IC5yZXF1aXJlZElucHV0IHtcblx0XHRtYXJnaW4tdG9wOiAxMHB4O1xuXHR9XG5cdC50aGVtZUNvbnRhaW5lciA+IC5mdWxsLXNwZWN0cnVtIHtcblx0XHRtYXJnaW4tdG9wOiAxMHB4O1xuXHRcdHdpZHRoOiA1MnB4O1xuXHR9XG5cdC50aGVtZVNlbGVjdG9yV3JhcHBlciA+IHNwYW57XG5cdFx0cG9zaXRpb246cmVsYXRpdmU7XG5cdFx0dG9wOjExcHg7XG5cdH1cblx0LnRoZW1lU2VsZWN0b3JXcmFwcGVyID4gLmlucHV0IHtcblx0XHRmbG9hdDogcmlnaHQ7XG5cdFx0bWFyZ2luLXRvcDogOHB4O1xuXHRcdHdpZHRoOiAxNDBweDtcblx0fVxuXHQuZmllbGRXcmFwcGVye1xuXHRcdHdpZHRoOjMwMHB4O1xuXHRcdGRpc3BsYXk6aW5saW5lLWJsb2NrO1xuXHRcdG1hcmdpbi1sZWZ0OjU1cHg7XG5cdFx0bWFyZ2luLXJpZ2h0OjU1cHg7XG5cdFx0bWFyZ2luLXRvcDo0MHB4O1xuXG5cdFx0JiA+IGlucHV0IHtcblx0XHRcdGZsb2F0OiByaWdodDtcblx0XHRcdG1hcmdpbi1yaWdodDogMjVweDtcblx0XHRcdG1hcmdpbi10b3A6IDlweDtcblx0XHR9XG5cdH1cblx0LmZpZWxkV3JhcHBlciBzcGFue1xuXHRcdHBvc2l0aW9uOnJlbGF0aXZlO1xuXHRcdHRvcDoxMXB4O1xuXHR9XG5cdC5iYWNrZ3JvdW5kSGlkZXtcblx0XHRkaXNwbGF5Om5vbmU7XG5cdH1cblx0LnNwLXJlcGxhY2VyLnNwLWxpZ2h0LmZ1bGwtc3BlY3RydW0ge1xuXHQgICAgZmxvYXQ6IHJpZ2h0O1xuXHQgICAgbWFyZ2luLXJpZ2h0OjEwcHg7XG5cdH1cblx0LmNvbnRlbnR7XG5cdFx0ICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS40O1xuXHR9XG5cdC5zYkJ1dHRvbnN7XG5cdFx0bWFyZ2luLWxlZnQ6MTBweDtcblx0fVxuXHQuc3AtcmVwbGFjZXIge1xuXHQgIGJvcmRlci1jb2xvcjogI2Q4ZGRlNiAhaW1wb3J0YW50O1xuXHQgIHBhZGRpbmc6IDAgIWltcG9ydGFudDtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiBpbmhlcml0ICFpbXBvcnRhbnQ7XG5cdFx0Ym9yZGVyLXJhZGl1czo1cHg7XG5cdH1cblx0LnNwLWRkIHtcblx0ICBsaW5lLWhlaWdodDo0MHB4ICFpbXBvcnRhbnQ7XG5cdCAgaGVpZ2h0OjQwcHghaW1wb3J0YW50O1xuXHR9XG5cdC5zcC1wcmV2aWV3e1xuXHQgIG1hcmdpbi1yaWdodDowcHggIWltcG9ydGFudDtcblx0ICB3aWR0aDo0MHB4ICFpbXBvcnRhbnQ7XG5cdCAgaGVpZ2h0OjQwcHggIWltcG9ydGFudDtcblx0ICBib3JkZXItd2lkdGg6MHB4ICFpbXBvcnRhbnQ7XG5cdH1cblx0LnNwLWNvbnRhaW5lcntcblx0ICBiYWNrZ3JvdW5kLWNvbG9yOiNmZmZmZmYgIWltcG9ydGFudDtcblx0ICBib3JkZXI6IDFweCBzb2xpZCAjZDhkZGU2ICFpbXBvcnRhbnQ7XG5cdCAgYm9yZGVyLXJhZGl1czo1cHghaW1wb3J0YW50O1xuXHR9XG5cblx0I3RvYXN0IHtcblx0XHR0cmFuc2l0aW9uOiBvcGFjaXR5IC4yNXMgZWFzZS1pbi1vdXQ7XG5cdFx0b3BhY2l0eTogMDtcblx0XHRkaXNwbGF5OiBub25lO1xuXHRcdHBvc2l0aW9uOiBhYnNvbHV0ZTtcblx0XHR0b3A6IDA7XG5cdFx0bGVmdDogMDtcblx0XHR3aWR0aDogMTAwJTtcblx0fVxuXG5cdCN0b2FzdC52aXNpYmxlIHtcblx0XHRvcGFjaXR5OiAxO1xuXHRcdGRpc3BsYXk6IGZsZXg7XG5cdFx0anVzdGlmeS1jb250ZW50OiBjZW50ZXI7XG5cdH1cblxuXHQjYWxlcnQge1xuXHRcdGRpc3BsYXk6IGZsZXg7XG5cdFx0Ym9yZGVyLXJhZGl1czogLjI1cmVtO1xuXHRcdG1hcmdpbjogMC41cmVtIDAuNXJlbSAwIDAuNXJlbTtcblx0XHRwYWRkaW5nOiAwLjc1cmVtIDEuNXJlbTtcblx0XHRtaW4td2lkdGg6IDMwcmVtO1xuXHRcdHRleHQtYWxpZ246IGxlZnQ7XG5cdH1cblxuXG5cdCNhbGVydC5zdWNjZXNzIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiByZ2JhKDQsMTMyLDc1LC45NSk7XG5cdFx0Y29sb3I6ICNGRkY7XG5cdH1cblxuXHQjYWxlcnQuZXJyb3Ige1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICNjMjM5MzQ7XG5cdFx0Y29sb3I6ICNGRkY7XG5cdH1cblxuXHQjYWxlcnQgLm5vdGlmeSB7XG5cdFx0ZGlzcGxheTogZmxleDtcblx0XHRwYWRkaW5nLXRvcDogMC4yNXJlbTtcblxuXHRcdC5jb250ZW50IHtcblx0XHRcdGRpc3BsYXk6IGZsZXg7XG5cblx0XHRcdGkge1xuXHRcdFx0XHRtYXJnaW4tdG9wOiAtMC4yNXJlbTtcblx0XHRcdFx0bWFyZ2luLXJpZ2h0OiAuNTByZW07XG5cdFx0XHRcdG92ZXJmbG93OiBoaWRkZW47XG5cdFx0XHRcdGZvbnQtc2l6ZTogMS4yNXJlbTtcblx0XHRcdH1cblxuXHRcdFx0aDIge1xuXHRcdFx0XHRsaW5lLWhlaWdodDogMS4yNTtcblx0XHRcdFx0cGFkZGluZy1ib3R0b206IDA7XG5cdFx0XHRcdGNvbG9yOiAjRkZGO1xuXHRcdFx0XHRmb250LXdlaWdodDogMzAwO1xuXG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0I2FsZXJ0IC5idG4ge1xuXHRcdGJvcmRlcjogbm9uZTtcblx0XHRjdXJzb3I6IHBvaW50ZXI7XG5cdFx0cGFkZGluZzogMDtcblx0XHRtYXJnaW46IDA7XG5cdFx0bWFyZ2luLWxlZnQ6IDAuMjVyZW07XG5cdFx0dHJhbnNmb3JtOiB0cmFuc2xhdGUzZCgwLjI1cmVtLCAwLCAwKTtcblxuXHRcdGJhY2tncm91bmQtY29sb3I6IHRyYW5zcGFyZW50O1xuXHRcdGJhY2tncm91bmQtaW1hZ2U6IG5vbmU7XG5cdFx0Y29sb3I6ICNGRkY7XG5cdFx0Zm9udC1zaXplOiAxNHB4O1xuXG5cdFx0aSB7XG5cdFx0XHRmb250LXNpemU6IDEuMjVyZW07XG5cdFx0XHRtYXJnaW4tcmlnaHQ6IDA7XG5cdFx0fVxuXG5cdFx0Jjpmb2N1cyB7IG91dGxpbmU6IDA7fVxuXHR9XG59XG5cblxuZGl2LmNvbnRlbnQge1xuXHRkaXNwbGF5OiBmbGV4O1xufVxuXG50YWJsZSBkaXYuY29udGVudCB7XG5cdG1hcmdpbjogMCAxcmVtO1xufVxuXG4jcm93MSB7XG5cdGJhY2tncm91bmQtY29sb3I6IHRyYW5zcGFyZW50O1xuXHRmbGV4LWdyb3c6IDE7XG5cblx0aDEge1xuXHRcdG1hcmdpbjogMzBweCAwO1xuXHR9XG5cblx0PiBkaXYge1xuXHRcdGZpZWxkc2V0IHtcblx0XHRcdHBvc2l0aW9uOiByZWxhdGl2ZTtcblx0XHRcdG1hcmdpbjogMCAwIDIuNXJlbSAwO1xuXHRcdFx0Ym9yZGVyOiBub25lO1xuXHRcdFx0cGFkZGluZzogMDtcblx0XHRcdGNvbG9yOiAjZmZmO1xuXG5cdFx0XHRsZWdlbmQge1xuXHRcdFx0XHRjdXJzb3I6IHBvaW50ZXI7XG5cdFx0XHRcdGJhY2tncm91bmQtY29sb3I6IEBzYkZpZWxkU2V0SGVhZGVyQW5kRm9vdGVyQmdDb2xvcjtcblx0XHRcdFx0Y29sb3I6IGluaGVyaXQ7XG5cdFx0XHRcdHdpZHRoOiAxMDAlO1xuXHRcdFx0XHRib3JkZXItdG9wLWxlZnQtcmFkaXVzOiAwLjVyZW07XG5cdFx0XHRcdGJvcmRlci10b3AtcmlnaHQtcmFkaXVzOiAwLjVyZW07XG5cdFx0XHRcdHBhZGRpbmc6IDAuNzVyZW0gMC43NXJlbSAwLjUwcmVtIDAuNzVyZW07XG5cblx0XHRcdFx0LmNhdGVnb3J5LWhlYWRlciB7XG5cdFx0XHRcdFx0ZGlzcGxheTogZmxleDtcblx0XHRcdFx0XHRqdXN0aWZ5LWNvbnRlbnQ6IHNwYWNlLWJldHdlZW47XG5cblx0XHRcdFx0XHRoMiB7XG5cdFx0XHRcdFx0XHRmb250LXdlaWdodDogYm9sZDtcblx0XHRcdFx0XHRcdGNvbG9yOiBpbmhlcml0O1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdHAge1xuXHRcdFx0XHRcdFx0bWFyZ2luOiAwO1xuXHRcdFx0XHRcdH1cblx0XHRcdFx0fVxuXG5cdFx0XHRcdHAge1xuXHRcdFx0XHRcdGZvbnQtd2VpZ2h0OiBub3JtYWw7XG5cdFx0XHRcdFx0Y29sb3I6IGluaGVyaXQ7XG5cdFx0XHRcdH1cblx0XHRcdH1cblxuXHRcdFx0LmZpZWxkc2V0LWJvZHkge1xuXHRcdFx0XHRiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjQ0LCAyNDYsIDI0OSk7XG5cdFx0XHRcdGNvbG9yOiBpbmhlcml0O1xuXHRcdFx0XHRvdmVyZmxvdzogaGlkZGVuO1xuXHRcdFx0XHRtYXgtaGVpZ2h0OiAwO1xuXHRcdFx0XHR0cmFuc2l0aW9uOiBtYXgtaGVpZ2h0IDAuM3MgZWFzZS1pbi1vdXQ7XG5cblx0XHRcdFx0PiBkaXYge1xuXHRcdFx0XHRcdHBhZGRpbmc6IDEuMjVyZW07XG5cblx0XHRcdFx0XHRwIHtcblx0XHRcdFx0XHRcdHdpZHRoOiAyOTBweDtcblx0XHRcdFx0XHRcdGhlaWdodDogNjhweDtcblx0XHRcdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdFx0XHRcdG1hcmdpbi1yaWdodDogMXJlbTtcblxuXHRcdFx0XHRcdFx0bGFiZWwge1xuXHRcdFx0XHRcdFx0XHRkaXNwbGF5OiBibG9jaztcblx0XHRcdFx0XHRcdFx0Y29sb3I6ICM1NDY5OGQ7XG5cblx0XHRcdFx0XHRcdFx0YS50b29sdGlwIHtcblx0XHRcdFx0XHRcdFx0XHRwb3NpdGlvbjogc3RhdGljO1xuXHRcdFx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHRcdFx0aSB7XG5cdFx0XHRcdFx0XHRcdFx0cG9zaXRpb246IHN0YXRpYztcblx0XHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0XHQ+IGlucHV0IHtcblx0XHRcdFx0XHRcdFx0bWFyZ2luLXRvcDogMC41cmVtO1xuXHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdH1cblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdC5zcC1saWdodCB7XG5cdFx0ZmxvYXQ6IG5vbmU7XG5cdFx0bWFyZ2luLXJpZ2h0OiAwO1xuXHRcdG1hcmdpbi10b3A6IDAuNXJlbTtcblx0fVxuXG5cdGZvb3RlciB7XG5cdFx0Y3Vyc29yOiBwb2ludGVyO1xuXHRcdGJhY2tncm91bmQtY29sb3I6IEBzYkZpZWxkU2V0SGVhZGVyQW5kRm9vdGVyQmdDb2xvcjtcblx0XHRjb2xvcjogaW5oZXJpdDtcblx0XHRwYWRkaW5nOiAwLjUwcmVtIDAuNzVyZW0gMC43NXJlbSAwLjc1cmVtO1xuXHRcdGJvcmRlci10b3A6IDJweCBzb2xpZCAjZWFlYWVhO1xuXHRcdGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IDAuNXJlbTtcblx0XHRib3JkZXItYm90dG9tLXJpZ2h0LXJhZGl1czogMC41cmVtO1xuXG5cdFx0aSB7XG5cdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0XHR0cmFuc2l0aW9uOiB0cmFuc2Zvcm0gMC4zcyBlYXNlLWluLW91dDtcblx0XHR9XG5cdH1cblxuXHRzZWxlY3Qge1xuXHRcdG1hcmdpbi10b3A6IDEwcHg7XG5cdH1cbn1cblxuXG4vLyBTaWRlIG5hdmJhclxuI3JvdzIge1xuXHRmbGV4OiAwIDAgMjAlO1xuXG5cdHVsIHtcblx0XHRwb3NpdGlvbjogZml4ZWQ7XG5cdFx0d2lkdGg6IDIwJTtcblx0fVxufVxuXG4uc2JCdG5bZGlzYWJsZWRdIHtcblx0YmFja2dyb3VuZDogI2UwZTVlZTtcblx0Ym9yZGVyLWNvbG9yOiB0cmFuc3BhcmVudDtcblx0Y29sb3I6ICNmZmY7XG5cdGN1cnNvcjogZGVmYXVsdDtcbn1cblxuaW5wdXQuYnRuRGlzYWJsZWQuc2JCdG4ge1xuXHRtYXJnaW46IDA7XG5cdGZvbnQtd2VpZ2h0OiBub3JtYWw7XG5cdGZvbnQtc2l6ZTogMTRweDtcblx0cGFkZGluZzogOHB4IDEycHg7XG59XG5cbmlucHV0LmJ0bkRpc2FibGVkLnNiQnRuOmhvdmVyIHtcblx0Y29sb3I6ICNmZmY7XG5cdGJvcmRlci1jb2xvcjogI2Q4ZGRlNjtcbn0iLCIjc2JUcmFuc2xhdGUge1xuXG4gIC5zYkRlc2NyaXB0aW9uIHtcbiAgICB3aWR0aDogOTAlO1xuICB9XG5cbiAgLnNiTG9uZ1RleHRBcmVhIHtcbiAgICB3aWR0aDogOTAlO1xuICAgIGJvcmRlcjogQHNiVGV4dGJveEJvcmRlcjtcbiAgfVxuICBcbiAgLnNiUGFnZUJsb2NrU2VjdGlvbiB7XG4gICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICBib3JkZXI6IG5vbmU7XG5cbiAgICBzZWxlY3Qge1xuICAgICAgbWluLXdpZHRoOiAyMDBweDtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIH1cblxuICAgID4gc3BhbiB7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIHBhZGRpbmc6IDAgMjBweCAwIDQwcHg7XG4gICAgfVxuICB9XG5cblxuICAuc2JGaWVsZHNUYWJsZSB7XG4gICAgbWFyZ2luLXRvcDogMDtcbiAgICBwYWRkaW5nLXRvcDogMDtcblxuICAgID4gLnNiVGFibGUge1xuICAgICAgPiB0Ym9keSA+IHRyID4gdGQge1xuXG4gICAgICAgIGhlaWdodDogQHNiVGFibGVDZWxsSGVpZ2h0O1xuICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXG5cbiAgICAgICAgJjpudGgtY2hpbGQoMSksICY6bnRoLWNoaWxkKDIpIHtcbiAgICAgICAgICB3aWR0aDogMjAlO1xuICAgICAgICB9XG5cbiAgICAgICAgJjpudGgtY2hpbGQoMykge1xuICAgICAgICAgIHdpZHRoOiA2MCU7XG4gICAgICAgIH1cblxuICAgICAgICA+IGlucHV0LCB0ZXh0YXJlYSB7XG4gICAgICAgICAgd2lkdGg6IDEwMCU7XG4gICAgICAgIH1cblxuICAgICAgICA+IHRleHRhcmVhIHtcbiAgICAgICAgICBib3JkZXI6IEBzYlRleHRib3hCb3JkZXI7XG4gICAgICAgICAgYm9yZGVyLXJhZGl1czogQHNiVGV4dGJveFJhZGl1cztcbiAgICAgICAgICBwYWRkaW5nOiAwIDVweDtcbiAgICAgICAgICBtaW4taGVpZ2h0OiAzNXB4O1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnNiVXNlckRlZmluZWRGaWVsZHNUYWJsZSB7XG4gICAgPiAuc2JUYWJsZSB7XG4gICAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICAgICY6bnRoLWNoaWxkKDEpIHtcbiAgICAgICAgICB3aWR0aDogMTUlO1xuICAgICAgICB9XG5cbiAgICAgICAgJjpudGgtY2hpbGQoMikge1xuICAgICAgICAgIHdpZHRoOiAzMCU7XG4gICAgICAgIH1cblxuICAgICAgICAmOm50aC1jaGlsZCgzKSB7XG4gICAgICAgICAgd2lkdGg6IDU1JTtcbiAgICAgICAgfVxuXG4gICAgICAgID4gaW5wdXQsIHRleHRhcmVhIHtcbiAgICAgICAgICB3aWR0aDogMTAwJTtcbiAgICAgICAgfVxuXG4gICAgICAgID4gdGV4dGFyZWEge1xuICAgICAgICAgIGJvcmRlcjogQHNiVGV4dGJveEJvcmRlcjtcbiAgICAgICAgICBib3JkZXItcmFkaXVzOiBAc2JUZXh0Ym94UmFkaXVzO1xuICAgICAgICAgIHBhZGRpbmc6IDAgNXB4O1xuICAgICAgICAgIG1pbi1oZWlnaHQ6IDM1cHg7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cbiAgLnNiVGFibGUge1xuICAgIC5zYkJ1dHRvbnMge1xuICAgICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICAgIC5zYkJ0biB7XG4gICAgICAgIHdpZHRoOiAzNXB4O1xuICAgICAgICBoZWlnaHQ6IDQwcHg7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLmNrZV90ZXh0YXJlYV9pbmxpbmUge1xuICAgIGJvcmRlcjogQHNiVGV4dGJveEJvcmRlcjtcbiAgICBib3JkZXItcmFkaXVzOiBAc2JUZXh0Ym94UmFkaXVzO1xuICAgIHBhZGRpbmc6IDAgNXB4O1xuICAgIG1pbi1oZWlnaHQ6IDcwcHg7XG4gIH1cbn1cbiIsIi8vIFNlYXJjaCByZXN1bHRzIGRpc3BsYXllZFxuI3NiQXNzZXRTZWFyY2gge1xuICAuc2JTZWFyY2hSZXN1bHRzO1xuXG4gIC5zYlBhZ2VUaXRsZSB7XG5cbiAgICAmLnNxdWVlemVkIHtcbiAgICAgIC5zYlRvb2xzIHtcbiAgICAgICAgcGFkZGluZzogMDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JUb29scyB7XG4gICAgICBtYXJnaW4tcmlnaHQ6IDEwcHg7XG4gICAgICBwYWRkaW5nOiA3cHggMDtcbiAgICAgIC8vIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjQ7XG5cbiAgICAgID4gLnNiVG9vbCB7XG4gICAgICAgIC8vIGJhY2tncm91bmQ6IEBzYkJ0bkJnQ29sb3I7XG4gICAgICAgIHBhZGRpbmc6IDhweDtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAuc2JQYWdlQmxvY2tTZWN0aW9uIHtcbiAgICAgIGJhY2tncm91bmQ6IG5vbmU7XG4gICAgICBib3JkZXI6IG5vbmU7XG5cbiAgICBoZWFkZXIge1xuICAgICAgbWFyZ2luLWJvdHRvbTogMTBweDtcbiAgICB9XG4gIH1cblxuICB0YWJsZS5zYlRhYmxle1xuICAgIG1hcmdpbi1ib3R0b206NTBweDtcbiAgfVxuXG4gIC5wYWdpbmF0aW9uQ29udHJvbHNXcmFwcGVye1xuICAgIHBvc2l0aW9uOiBmaXhlZDtcbiAgICBsZWZ0OiAwO1xuICAgIHJpZ2h0OiAwO1xuICAgIGJvdHRvbTowO1xuICAgIHBvaW50ZXItZXZlbnRzOiBub25lO1xuICB9XG4gIC5wYWdpbmF0aW9uQ29udHJvbHMge1xuICAgIHBhZGRpbmc6IDRweDtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICBtYXJnaW4tbGVmdDphdXRvO1xuICAgIG1hcmdpbi1yaWdodDphdXRvO1xuICAgIHdpZHRoOjI1MHB4O1xuICAgIHBvaW50ZXItZXZlbnRzOiBhdXRvO1xuICAgIGJhY2tncm91bmQtY29sb3I6QHNiQmdDb2xvcjtcbiAgICAtd2Via2l0LWJvcmRlci10b3AtbGVmdC1yYWRpdXM6IDRweDtcbiAgICAtd2Via2l0LWJvcmRlci10b3AtcmlnaHQtcmFkaXVzOiA0cHg7XG4gICAgLW1vei1ib3JkZXItcmFkaXVzLXRvcGxlZnQ6IDRweDtcbiAgICAtbW96LWJvcmRlci1yYWRpdXMtdG9wcmlnaHQ6IDRweDtcbiAgICBib3JkZXItdG9wLWxlZnQtcmFkaXVzOiA0cHg7XG4gICAgYm9yZGVyLXRvcC1yaWdodC1yYWRpdXM6IDRweDtcbiAgICAtd2Via2l0LWJveC1zaGFkb3c6IDNweCAwcHggNXB4IDBweCByZ2JhKDE3MCwxNzAsMTcwLDEpO1xuICAgIC1tb3otYm94LXNoYWRvdzogM3B4IDBweCA1cHggMHB4IHJnYmEoMTcwLDE3MCwxNzAsMSk7XG4gICAgYm94LXNoYWRvdzogM3B4IDBweCA1cHggMHB4IHJnYmEoMTcwLDE3MCwxNzAsMSk7XG5cbiAgICBzcGFuIHtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgfVxuXG4gICAgaW5wdXQge1xuICAgICAgaGVpZ2h0OiBhdXRvO1xuICAgICAgd2lkdGg6IDMwcHg7XG4gICAgICBtYXJnaW46IDAgNXB4O1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgICAgIHBhZGRpbmc6IDJweDtcbiAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICB9XG5cbiAgICBbY2xhc3NePXNiLWljb25dIHtcbiAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAyO1xuICAgICAgbWFyZ2luLXJpZ2h0OiAtNXB4O1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcblxuICAgICAgJi5kaXNhYmxlZCB7XG4gICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uRGlzYWJsZWRDb2xvcjtcbiAgICAgIH1cblxuICAgICAgJjpub3QoLmRpc2FibGVkKSB7XG4gICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2ItaWNvbi1sZWZ0LWRpcixcbiAgICAuc2ItaWNvbi1yaWdodC1kaXIge1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDI7XG4gICAgfVxuICB9XG59XG5cbi8vIFNpZGUgUGFuZWxcbi5zYkFzc2V0RmlsdGVyIHtcbiAgLnNiUGFuZWw7XG4gIHRvcDogMTEzcHg7XG5cbiAgaW5wdXQge1xuICAgIGRpc3BsYXk6IGlubGluZTtcbiAgfVxuXG4gIGRpdiB7XG4gICAgPiBhIHtcbiAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgICAgZGlzcGxheTogZmxleDtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIH1cbiAgfVxufVxuIiwiLypcbkRvY3VtZW50IEdlbmVyYXRpb24gUHJldmlldyBwYWdlXG5cblByZXZpZXdzIGEgZG9jdW1lbnQgaW4gdGhlIGJyb3dzZXIgd2l0aCBjaG9zZW4gdGVtcGxhdGUsIGFkZGl0aW9uYWwgZG9jcywgZXRjLlxuKi9cbiNzYkRvY0dlblByZXZpZXcge1xuXHQuc2JQYWdlQmxvY2tTZWN0aW9uIHtcblx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0cGFkZGluZzogMDtcblx0XHRiYWNrZ3JvdW5kOiBub25lO1xuXHRcdGJvcmRlcjogbm9uZTtcblx0XHRtYXJnaW4tcmlnaHQ6IDQ0cHg7XG5cblx0XHQmOmxhc3Qtb2YtdHlwZSB7XG5cdFx0XHRtYXJnaW4tcmlnaHQ6IGluaGVyaXQ7XG5cdFx0fVxuXHR9XG5cblx0LnNiRHVhbExpc3RCb3ggc2VsZWN0IHtcblx0XHR3aWR0aDogMzIwcHg7XG5cdH1cbn1cblxuLypcbkRvY3VtZW50IEdlbmVyYXRpb24gb3B0aW9uc1xuXG5DaG9pY2VzIGZvciBkb2N1bWVudCBnZW5lcmF0aW9uIHN1Y2ggYXMgdGVtcGxhdGUsIG91dHB1dCBmb3JtYXQsIGV0Yy5cbiovXG4jc2JEb2NHZW5PcHRpb25zIHtcblx0bWFyZ2luOiAwIDAgMCA0MHB4O1xuXHRsYWJlbCB7XG5cdFx0Zm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cdH1cblxuXHQ+IHRib2R5ID4gdHIgPiB0ZCB7XG5cdFx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0XHRwYWRkaW5nLWJvdHRvbTogOHB4O1xuXHR9XG5cblx0PiB0Ym9keSA+IHRyID4gdGQ6Zmlyc3Qtb2YtdHlwZSB7XG5cdFx0dGV4dC1hbGlnbjogcmlnaHQ7XG5cblx0XHQ+IFtjbGFzc149c2ItaWNvbl0ge1xuXHRcdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNTtcblx0XHRcdGNvbG9yOiBAc2JJY29uQ29sb3I7XG5cdFx0fVxuXHR9XG5cblx0aW5wdXQsIHNlbGVjdCB7XG5cdFx0d2lkdGg6IDMyNXB4O1xuXHR9XG5cblx0LnNiRHVhbExpc3RCb3ggc2VsZWN0IHtcblx0XHR3aWR0aDogMzIwcHg7XG5cdH1cbn1cbiIsIiNzYkltcG9ydExpbmVze1xuXG5cdCNzYkltcG9ydE9wdGlvbnN7XG5cdFx0bWFyZ2luOiAwIDAgMCA0MHB4O1xuXG5cdFx0ZmllbGRzZXQge1xuXHRcdFx0Ym9yZGVyOiAwO1xuXHRcdFx0cGFkZGluZzogNXB4O1xuXG5cdFx0XHQ+IGxhYmVsIHtcblx0XHRcdFx0bWFyZ2luLXJpZ2h0OiAxMHB4O1xuXHRcdFx0XHRmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblx0XHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdFx0XHR3aWR0aDogMTc1cHg7XG5cdFx0XHRcdHRleHQtYWxpZ246IHJpZ2h0O1xuXHRcdFx0fVxuXG5cdFx0XHQ+IGlucHV0LCBzZWxlY3Qge1xuXHRcdCAgICBcdHdpZHRoOiAyMDBweDtcblx0XHQgIFx0fVxuXHRcdH1cblx0fVxuXG5cdC5zYlBhZ2VCbG9ja1NlY3Rpb24ge1xuXHQgICAgYmFja2dyb3VuZDogbm9uZTtcblx0ICAgIGJvcmRlcjogbm9uZTtcblxuXHRcdGhlYWRlciB7XG5cdFx0XHRtYXJnaW4tYm90dG9tOiAxMHB4O1xuXHRcdH1cbiAgXHR9XG59XG4iLCIvLyBMaW5lIEVkaXRvclxuI3NiTGluZUVkaXRvciB7XG5cbiAgLy8gdG9vbCBiYXJzIGluIHRoZSBwYWdlIHRpdGxlXG4gIC5zYlBhZ2VUaXRsZSB7XG5cbiAgICAuc2JQYWdlVGl0bGVSaWdodCB7XG4gICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICB9XG5cbiAgICAmLnNxdWVlemVkIHtcbiAgICAgIC5zYlRvb2xzIHtcbiAgICAgICAgcGFkZGluZzogMDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JUb29scyB7XG4gICAgICBtYXJnaW4tbGVmdDogMTZweDtcbiAgICAgIHBhZGRpbmc6IDdweCAwO1xuICAgICAgdHJhbnNpdGlvbjogYWxsIC4yNXMgZWFzZS1pbjtcblxuICAgICAgPiAuc2JUb29sIHtcbiAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cbiAgICAgICAgJi5pY29uIHtcbiAgICAgICAgICBwYWRkaW5nOiA4cHggN3B4O1xuICAgICAgICB9XG5cbiAgICAgICAgJi5zZi1pY29uLWRvd24ge1xuICAgICAgICAgIHBhZGRpbmctdG9wOiA4cHg7XG4gICAgICAgIH1cblxuICAgICAgICAuc2YtaWNvbi1yZWZyZXNoOmJlZm9yZSB7XG4gICAgICAgICAgZm9udC1zaXplOiAxLjFlbTtcbiAgICAgICAgICBtYXJnaW4tdG9wOiAwLjNlbTtcbiAgICAgICAgICBtYXJnaW4tYm90dG9tOiAwLjNlbTtcbiAgICAgICAgfVxuXG4gICAgICAgID4gbWVudSAuc2VwYXJhdG9yIHtcbiAgICAgICAgICBib3JkZXItYm90dG9tOiAxcHggc29saWQgQHNiQm9yZGVyQ29sb3I7XG4gICAgICAgICAgbWFyZ2luLWJvdHRvbTogNnB4O1xuICAgICAgICB9XG5cbiAgICAgICAgPiBbY2xhc3NePXNiLWljb25dIHtcbiAgICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgICAgfVxuXG4gICAgICB9XG5cblxuICAgICAgPiAuc2JUb29sU2VwYXJhdG9yIHtcbiAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICBoZWlnaHQ6IDFweDtcbiAgICAgICAgd2lkdGg6IDEwcHg7XG4gICAgICAgIGZsb2F0OiBsZWZ0O1xuICAgICAgfVxuICAgIH1cblxuICAgICNzYlJvbGx1cE1lbnVRdW90ZSA+IHVsLnNiVG9vbHMgPiBsaS5zYlRvb2xTZXBhcmF0b3Ige1xuXHQgIGRpc3BsYXk6IG5vbmU7XG5cdH1cblxuXHQjc2JSb2xsdXBNZW51UXVvdGUgPiBzcGFuLnNmLWljb24tZG93biB7XG5cdCAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHQgIHBhZGRpbmc6IDhweCAxMnB4O1xuXHR9XG4gIH1cblxuICAuc2JRdW90ZUFjdGlvbnMsXG4gIC5zYkdyb3VwQWN0aW9ucyB7XG4gICAgLnJlbmV3U3Vic2NyaXB0aW9uc0J0bixcbiAgICAudXBncmFkZUFzc2V0c0J0bixcbiAgICAucmVzZXREaXNjQnRuLFxuICAgIC5vcHRpb25hbEFsbEJ0bixcbiAgICAub3B0aW9uYWxOb25lQnRuLFxuICAgIC5kZWxldGVMaW5lc0J0bixcbiAgICAuYWRkR3JvdXBCdG4sXG4gICAgLnVuZ3JvdXBCdG4ge1xuICAgICAgZGlzcGxheTogbm9uZTtcbiAgICB9XG5cbiAgICAuc2JUb29sIHtcblxuXG4gICAgICAmLmZpcnN0IHtcbiAgICAgICAgYm9yZGVyOiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgICAgICAgYm9yZGVyLWJvdHRvbS1sZWZ0LXJhZGl1czogM3B4O1xuICAgICAgICBib3JkZXItdG9wLWxlZnQtcmFkaXVzOiAzcHg7XG4gICAgICB9XG5cbiAgICAgICYuZW5kLFxuICAgICAgJi5sYXN0IHtcbiAgICAgICAgYm9yZGVyLWJvdHRvbS1yaWdodC1yYWRpdXM6IDNweDtcbiAgICAgICAgYm9yZGVyLXRvcC1yaWdodC1yYWRpdXM6IDNweDtcbiAgICAgIH1cblxuICAgICAgJi5zYlRvb2xTZXBhcmF0b3Ige1xuICAgICAgICBwYWRkaW5nOiAwO1xuICAgICAgICBib3JkZXI6IG5vbmU7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6IGluaGVyaXQ7XG5cbiAgICAgICAgKyAuc2JUb29sIHtcbiAgICAgICAgICBib3JkZXItbGVmdDogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gICAgICAgICAgYm9yZGVyLWJvdHRvbS1sZWZ0LXJhZGl1czogM3B4O1xuICAgICAgICAgIGJvcmRlci10b3AtbGVmdC1yYWRpdXM6IDNweDtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cblxuICAgID4gLnNiVG9vbHMgPiAuc2JUb29sOm5vdCgjc2JSb2xsdXBNZW51UXVvdGUpOm5vdCguc2JQcmltYXJ5QWN0aW9uKSB7XG4gICAgICBwYWRkaW5nOiAwO1xuXG4gICAgICAmOmhvdmVyIHtcbiAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogI2ZmZjtcbiAgICAgIH1cblxuICAgICAgPiBzcGFuLCBpIHtcbiAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXG4gICAgICAgICY6aG92ZXIge1xuICAgICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkNvbnRlbnRCZ0NvbG9yO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgID4gc3Bhbi5zZi1pY29uLWRvd24ge1xuICAgICAgICBib3JkZXItbGVmdDogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gICAgICB9XG4gICAgfVxuXG4gICAgPiAuc2JUb29scyA+IC5zYlByaW1hcnlBY3Rpb24ge1xuICAgICAgcGFkZGluZzogMDtcblxuICAgICAgPiBzcGFuLCBpIHtcbiAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgfVxuXG4gICAgICA+IHNwYW4uc2YtaWNvbi1kb3duIHtcbiAgICAgICAgYm9yZGVyLWxlZnQ6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgICAgfVxuICAgIH1cblxuICB9XG4gIC5zYlF1b3RlQWN0aW9ucyB7XG4gICAgPiAuc2JUb29scyA+IC5zYlRvb2w6bm90KCNzYlJvbGx1cE1lbnVRdW90ZSkge1xuXG4gICAgICA+IHNwYW4ubGFiZWwsXG4gICAgICA+IGkge1xuICAgICAgICBwYWRkaW5nOiA4cHggMTJweDtcbiAgICAgIH1cblxuICAgICAgPiBzcGFuLnNmLWljb24tZG93biB7XG4gICAgICAgIHBhZGRpbmc6IDhweCA0cHg7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgJi51cGdyYWRhYmxlIGxpLnVwZ3JhZGVBc3NldHNCdG4ge1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICB9XG4gICYucmVuZXdhYmxlIGxpLnJlbmV3U3Vic2NyaXB0aW9uc0J0biB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gIH1cbiAgJi5kaXNjb3VudGFibGUgbGkucmVzZXREaXNjQnRuIHtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgfVxuICAmLm9wdGlvbmFsOm5vdCguYWxsU2VsZWN0ZWQpIC5zYlF1b3RlQWN0aW9ucyBsaS5vcHRpb25hbEFsbEJ0bixcbiAgJi5vcHRpb25hbC5hbGxTZWxlY3RlZCAuc2JRdW90ZUFjdGlvbnMgbGkub3B0aW9uYWxOb25lQnRuIHtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgfVxuICAmLm9wdGlvbmFsIC5zYkdyb3VwQWN0aW9ucyBsaS5vcHRpb25hbEFsbEJ0bixcbiAgJi5vcHRpb25hbCAuc2JHcm91cEFjdGlvbnMgbGkub3B0aW9uYWxOb25lQnRuIHtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgfVxuICAmLm11bHRpRGVsZXRlIC5zYlF1b3RlQWN0aW9ucyAuZGVsZXRlTGluZXNCdG4ge1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICB9XG4gICYuZ3JvdXBhYmxlIGxpLmFkZEdyb3VwQnRuIHtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgfVxuICAmLnVuZ3JvdXBhYmxlIGxpIHtcblxuICAgICYuYWRkR3JvdXBCdG4ge1xuICAgICAgZGlzcGxheTogbm9uZTtcbiAgICB9XG5cbiAgICAmLmFkZEdyb3VwQnRuLFxuICAgICYudW5ncm91cEJ0biB7XG4gICAgICBkaXNwbGF5OiBibG9jaztcbiAgICB9XG4gIH1cblxuICAvLyBjdXN0b20gYWN0aW9ucyBvbiB0aGUgbGluZSBlZGl0b3JcbiAgLnNiUXVvdGVBY3Rpb25zLFxuICAuc2JHcm91cEFjdGlvbnMge1xuICAgIHVsIHtcbiAgICAgIGxpc3Qtc3R5bGUtdHlwZTogbm9uZTtcblxuICAgICAgJi5zYlRvb2xzIHtcbiAgICAgICAgcGFkZGluZzogMDtcbiAgICAgICAgbWFyZ2luOiAwO1xuICAgICAgfVxuXG4gICAgICBsaTpub3QoLnNiUHJpbWFyeUFjdGlvbikge1xuICAgICAgICBkaXNwbGF5OiBibG9jaztcbiAgICAgICAgcG9zaXRpb246IHJlbGF0aXZlO1xuICAgICAgICBjb2xvcjogQHNiTGlua0NvbG9yO1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblxuICAgICAgICAmLmFjdGlvbiA+IC5sYWJlbDpob3ZlciB7XG4gICAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgICAgIGNvbG9yOiBAc2JHcm91cEJ0bkhvdmVyRm9udENvbG9yO1xuICAgICAgICB9XG5cbiAgICAgICAgc3Bhbi5zZi1pY29uLXJpZ2h0LFxuICAgICAgICBzcGFuLnNmLWljb24tZG93biB7XG4gICAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuXG4gICAgICAgICAgJi5vcGVuICsgdWwge1xuICAgICAgICAgICAgZGlzcGxheTogYmxvY2s7XG5cbiAgICAgICAgICAgICYuc2JTb2x1dGlvbkdyb3VwcyB7XG4gICAgICAgICAgICAgIG1heC1oZWlnaHQ6IDQ1MHB4O1xuICAgICAgICAgICAgICBvdmVyZmxvdy15OiBhdXRvO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICB1bCB7XG4gICAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICAgICAgdG9wOiAxMDAlO1xuICAgICAgICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gICAgICAgIGJvcmRlci1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICAgICAgYm9yZGVyOiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgICAgICAgei1pbmRleDogNDtcbiAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcblxuICAgICAgICBsaSB7XG4gICAgICAgICAgcGFkZGluZzogNXB4IDEwcHg7XG4gICAgICAgIH1cblxuICAgICAgICB1bCB7XG4gICAgICAgICAgdG9wOiAtMXB4O1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgPiB1bCB7XG4gICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICBjdXJzb3I6IGF1dG87XG5cbiAgICAgID4gbGkge1xuICAgICAgICA+IHVsIHtcbiAgICAgICAgICByaWdodDogLTFweDtcbiAgICAgICAgfVxuXG4gICAgICAgICYuYWN0aW9uID4gLmxhYmVsOmhvdmVyIHtcbiAgICAgICAgICBjb2xvcjogQHNiUHJpbWFyeUJ0bkJnQ29sb3I7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAuc2JRdW90ZUFjdGlvbnMge1xuICAgIHVsIGxpIHtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIH1cblxuICAgID4gdWwgPiBsaSB7XG4gICAgICBtYXJnaW4tYm90dG9tOiAxMHB4O1xuXG4gICAgICAmLmxhc3QgdWwgdWwge1xuICAgICAgICByaWdodDogMTAwJTtcbiAgICAgIH1cblxuICAgICAgJjpub3QoLmxhc3QpIHVsIHVsIHtcbiAgICAgICAgbGVmdDogMTAwJTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAvLyBUaGUgUXVvdGUgRmllbGRzIHNlY3Rpb24sIGlmIHNob3duXG4gIC5zYlF1b3RlRmllbGRzIHtcblxuICAgIG1hcmdpbjogQHNiUGFnZUhlYWRlclRvcCBAc2JQYWdlSGVhZGVyTGVmdDtcblxuICAgIGhlYWRlciB7XG4gICAgICBtYXJnaW4tYm90dG9tOiAxMHB4O1xuICAgIH1cblxuICAgIHRhYmxlID4gdGJvZHkgPiB0ciA+IHRkIHtcbiAgICAgIHBhZGRpbmc6IDVweCAwO1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcblxuICAgICAgaW5wdXQsIHNlbGVjdCB7XG4gICAgICAgIGZvbnQtc2l6ZTogaW5oZXJpdDtcbiAgICAgICAgd2lkdGg6IDE0MHB4O1xuICAgICAgfVxuXG4gICAgICBbY2xhc3NePXNiLWljb25dIHtcbiAgICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuMjtcbiAgICAgICAgY29sb3I6IEBzYkljb25Db2xvcjtcbiAgICAgIH1cblxuICAgICAgW2NsYXNzPXNiLWljb24tc2VhcmNoXSB7XG4gICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uQ29sb3I7XG4gICAgICAgIG1hcmdpbi1sZWZ0OiAzcHg7XG4gICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cbiAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Ib3ZlckNvbG9yO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgICYuc2JMYWJlbCB7XG4gICAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgICAgICBwYWRkaW5nLXJpZ2h0OiAxMnB4O1xuICAgICAgICB3aWR0aDogMTUlO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC8vIEEgdGFibGUgb2YgcXVvdGUgbGluZXMgaW4gdGhlIGVkaXRvciAoY2FuIGhhdmUgbXVsdGlwbGUsIGUuZy4gZ3JvdXBlZCBxdW90ZSlcbiAgLnNiVGFibGUge1xuICAgIEByb3dIZWlnaHQ6IEBzYlRhYmxlQ2VsbEhlaWdodDtcbiAgICBAaW5kZW50OiAxMHB4ICsgQHNiUGFnZUhlYWRlckxlZnQ7XG5cbiAgICAvLyBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblxuICAgIGlucHV0LCBzZWxlY3Qge1xuICAgICAgZm9udC1zaXplOiBpbmhlcml0O1xuXG4gICAgICAmLnNiU21hbGwge1xuICAgICAgICBtYXgtd2lkdGg6IDgwcHg7XG4gICAgICB9XG5cbiAgICAgICY6ZGlzYWJsZWQge1xuICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JIZWFkZXJCZ0NvbG9yO1xuICAgICAgfVxuXG4gICAgICAmLmhhc0RhdGVwaWNrZXIge1xuICAgICAgICBtaW4td2lkdGg6IDk1cHg7XG4gICAgICAgIHdpZHRoOiA4NSU7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gcGFkZGluZyBmb3IgZmlyc3QgYW5kIGxhc3QgY29sdW1uc1xuICAgID4gdGhlYWQgPiB0ciA+IHRoOmZpcnN0LW9mLXR5cGUsXG4gICAgPiB0Ym9keSA+IHRyID4gdGQ6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgIH1cbiAgICA+IHRoZWFkID4gdHIgPiB0aDpsYXN0LW9mLXR5cGUsXG4gICAgPiB0Ym9keSA+IHRyID4gdGQ6bGFzdC1vZi10eXBlIHtcbiAgICAgIHBhZGRpbmctcmlnaHQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgIH1cblxuICAgIHNlbGVjdCB7ICAvLyBkb2VzIHRoaXMgbmVlZCB0byBiZSBtb3JlIHNwZWNpZmljPyAgaXQgaXMganVzdCBmb3IgQWRkaXRpb25hbCBEaXNjIGNvbHVtblxuICAgICAgbWluLXdpZHRoOiAyMHB4O1xuICAgICAgbWFyZ2luLWxlZnQ6IDRweDtcbiAgICB9XG5cbiAgICAvLyB0YWJsZSBjZWxsc1xuICAgID4gdGJvZHkgPiB0ciA+IHRkIHtcbiAgICAgIC8vIGhlaWdodDogQHJvd0hlaWdodDtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cbiAgICAgICYucmlnaHQgaW5wdXQge1xuICAgICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgIH1cblxuICAgICAgYSA+IHNwYW5bY2xhc3NePXNiLWljb25dIHtcbiAgICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgICAgICAgY29sb3I6IEBzYkljb25Db2xvcjtcblxuICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkhvdmVyQ29sb3I7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgLnNmLWljb24tZWRpdCB7XG4gICAgICAgIHZpc2liaWxpdHk6IGhpZGRlbjtcbiAgICAgICAgJi5zYk1EUWljb24ge1xuICAgICAgICAgIG1hcmdpbi1yaWdodDogLTExZW07XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgLy8gQWN0aW9ucyBjb2x1bW5cbiAgICAgICYuc2JBY3Rpb25zIHtcbiAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbiAgICAgICAgd2lkdGg6IDElO1xuICAgICAgICBwYWRkaW5nLWxlZnQ6IDE1cHg7XG5cbiAgICAgICAgLmFjdGlvbixcbiAgICAgICAgLnVybCB7XG4gICAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgPiB1bCB7XG4gICAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICAgIGN1cnNvcjogYXV0bztcblxuICAgICAgICAgID4gbGkubWVudSB7XG4gICAgICAgICAgICBwYWRkaW5nOiA1cHg7XG4gICAgICAgICAgICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuICAgICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICAgICAgICAgICAgYm9yZGVyLXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgICAgICAgICAgYm9yZGVyOiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcblxuICAgICAgICAgICAgLnNiQWN0aW9uIHtcbiAgICAgICAgICAgICAgcGFkZGluZzogNXB4O1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIHVsIHtcbiAgICAgICAgICBwYWRkaW5nOiAwO1xuICAgICAgICAgIG1hcmdpbjogMDtcbiAgICAgICAgICBsaXN0LXN0eWxlLXR5cGU6IG5vbmU7XG5cbiAgICAgICAgICBsaSB7XG4gICAgICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICAgICAgICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gICAgICAgICAgICBjb2xvcjogQHNiTGlua0NvbG9yO1xuXG4gICAgICAgICAgICAmLmFjdGlvbiA+IC5sYWJlbDpob3ZlciB7XG4gICAgICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgICAgICAgY29sb3I6IEBzYkZvbnRDb2xvcjtcbiAgICAgICAgICAgIH1cblxuICAgICAgICAgICAgc3Bhbi5zZi1pY29uLXJpZ2h0IHtcbiAgICAgICAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuXG4gICAgICAgICAgICAgICYub3BlbiArIHVsIHtcbiAgICAgICAgICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH1cblxuICAgICAgICAgICAgdWwgbGkge1xuICAgICAgICAgICAgICBkaXNwbGF5OiBibG9jaztcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG5cbiAgICAgICAgICB1bCB7XG4gICAgICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgICAgICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgICAgICAgICAgdG9wOiAtMXB4O1xuICAgICAgICAgICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbiAgICAgICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkdyb3VwQnRuQmdDb2xvcjtcbiAgICAgICAgICAgIGJvcmRlci1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICAgICAgICAgIGJvcmRlcjogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gICAgICAgICAgICB6LWluZGV4OiA0O1xuICAgICAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcblxuICAgICAgICAgICAgbGkge1xuICAgICAgICAgICAgICBwYWRkaW5nOiA1cHggMTBweDtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICAvLyBpbml0aWFsbHkgaGlkZSBhbGwgY3VzdG9tIGFjdGlvbnMgdGhhdCBkb2VzIGhhdmUgYW4gYWN0aW9uIHNlbGVjdGVkIChtZW51IHR5cGUgb3IgdXJsIGN1c3RvbSBhY3Rpb25zIHNob3VsZCBiZSBkaXNwbGF5ZWQgYXQgYWxsIHRpbWVzKVxuICAgICAgICAuc2JBY3Rpb24ge1xuICAgICAgICAgIHBhZGRpbmc6IDJweDtcblxuICAgICAgICAgICYuYWN0aW9uIHtcbiAgICAgICAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgJjpub3QoLnJlbW92YWJsZSkge1xuICAgICAgICAgIC5zYi1pY29uLWluZm8tY2lyY2xlZCB7XG4gICAgICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cbiAgICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgICBjdXJzb3I6IGF1dG87XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgLy8gSWYgbGluZSBpcyBkZWxldGFibGUgZnJvbSB0aGUgcXVvdGUsIGRpc3BsYXkgQWRkIFRvIEZhdm9yaXRlcywgUmVtb3ZlIEZyb20gRmF2b3JpdGVzLCBhbmQgRGVsZXRlIGFjdGlvbnNcbiAgICAgICAgJi5yZW1vdmFibGUge1xuICAgICAgICAgIC5hZGRUb0ZhdkJ0bixcbiAgICAgICAgICAucmVtb3ZlRnJvbUZhdkJ0bixcbiAgICAgICAgICAuZGVsZXRlQnRuIHtcbiAgICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgICB9XG5cbiAgICAgICAgICAvLyBhcyBhIGxpc3QgaXRlbSB3aXRoaW4gYSBtZW51XG4gICAgICAgICAgdWwgdWwge1xuICAgICAgICAgICAgLmFkZFRvRmF2QnRuLFxuICAgICAgICAgICAgLnJlbW92ZUZyb21GYXZCdG4sXG4gICAgICAgICAgICAuZGVsZXRlQnRuIHtcbiAgICAgICAgICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuXG5cbiAgICAgICAgICAmLmZhdm9yaXRlIC5hZGRUb0ZhdkJ0bixcbiAgICAgICAgICAmOm5vdCguZmF2b3JpdGUpIC5yZW1vdmVGcm9tRmF2QnRuIHtcbiAgICAgICAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgLy8gYXMgYSBsaXN0IGl0ZW0gd2l0aGluIGEgbWVudVxuICAgICAgICAgICYuZmF2b3JpdGUgdWwgdWwgLmFkZFRvRmF2QnRuLFxuICAgICAgICAgICY6bm90KC5mYXZvcml0ZSkgdWwgdWwgLnJlbW92ZUZyb21GYXZCdG4ge1xuICAgICAgICAgICAgZGlzcGxheTogbm9uZTtcbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICAvLyBJZiB0aGUgbGluZSBpcyBhIHN0YW5kYWxvbmUgbGluZSwgZGlzcGxheSBDTG9uZSBpY29uIChib3RoIGZvciBleGlzdGluZyBhbmQgbmV3IGxpbmVzKVxuICAgICAgICAmOm5vdCguY29tcG9uZW50KSB7XG4gICAgICAgICAgLmNsb25lQnRuIHtcbiAgICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgICB9XG5cbiAgICAgICAgICAvLyBhcyBhIGxpc3QgaXRlbSB3aXRoaW4gYSBtZW51XG4gICAgICAgICAgdWwgdWwge1xuICAgICAgICAgICAgLmNsb25lQnRuIHtcbiAgICAgICAgICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgLy8gSWYgbGluZSBpcyBidW5kbGUgcGFyZW50LCBkaXNwbGF5IHRoZSBSZWNvbmZpZ3VyZSBMaW5lIGFjdGlvblxuICAgICAgICAmLmNvbmZpZ3VyYWJsZSB7XG4gICAgICAgICAgLnJlY29uZmlndXJlQnRuIHtcbiAgICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgICB9XG5cbiAgICAgICAgICAvLyBhcyBhIGxpc3QgaXRlbSB3aXRoaW4gYSBtZW51XG4gICAgICAgICAgdWwgdWwge1xuICAgICAgICAgICAgLnJlY29uZmlndXJlQnRuIHtcbiAgICAgICAgICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgLy8gSWYgbGluZSBjYW4gYmUgZGlzcGxheWVkIGluIGVpdGhlciB0YWJsZSwgZGlzcGxheSBEZXNlZ21lbnQgb3IgUmVzZWdtZW50IExpbmUgYWN0aW9uc1xuICAgICAgICAmLmNvbnZlcnRhYmxlIHtcbiAgICAgICAgICAuZGVzZWdtZW50QnRuLFxuICAgICAgICAgIC5yZXNlZ21lbnRCdG4ge1xuICAgICAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICAgIH1cblxuICAgICAgICAgIC8vIGFzIGEgbGlzdCBpdGVtIHdpdGhpbiBhIG1lbnVcbiAgICAgICAgICB1bCB1bCB7XG4gICAgICAgICAgICAuZGVzZWdtZW50QnRuLFxuICAgICAgICAgICAgLnJlc2VnbWVudEJ0biB7XG4gICAgICAgICAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cblxuICAgICAgICAgIC8vIERpc3BsYXkgZWl0aGVyIERlc2VnbWVudCBvciBSZXNlZ21lbnQgZGVwZW5kaW5nIG9uIHdoZXRoZXIgdGhlIGxpbmUgaXMgYSBzdGFuZGFyZCBvciBzZWdtZW50ZWQgbGluZSBpdGVtXG4gICAgICAgICAgJi5zZWdtZW50ZWQgLnJlc2VnbWVudEJ0bixcbiAgICAgICAgICAmOm5vdCguc2VnbWVudGVkKSAuZGVzZWdtZW50QnRuIHtcbiAgICAgICAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgLy8gSWYgbGluZSBoYXMgYSBkaXNjb3VudCBzY2hlZHVsZSwgZGlzcGxheSBFZGl0IERpc2NvdW50IFNjaGVkdWxlIGJ1dHRvblxuICAgICAgICAmLmRzRWRpdGFibGUge1xuICAgICAgICAgIC52aWV3RFNCdG4ge1xuICAgICAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICAgIH1cblxuICAgICAgICAgIC8vIGFzIGEgbGlzdCBpdGVtIHdpdGhpbiBhIG1lbnVcbiAgICAgICAgICB1bCB1bCB7XG4gICAgICAgICAgICAudmlld0RTQnRuIHtcbiAgICAgICAgICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIC8vIE11bHRpIERlbGV0ZSBjb2x1bW5cbiAgICAgICYuc2JEZWxldGVDaGVja2JveCB7XG4gICAgICAgIHdpZHRoOiAxJTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAvLyBleHBhbmQgbGluZSBhY3Rpb24gbWVudXMgdG8gdGhlIHJpZ2h0XG4gICAgdGJvZHkgPiB0ciA+IHRkOmZpcnN0LW9mLXR5cGUge1xuICAgICAgJi5zYkFjdGlvbnMgdWwgdWx7XG4gICAgICAgIGxlZnQ6IDEwMCU7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gZXhwYW5kIGxpbmUgYWN0aW9uIG1lbnVzIHRvIHRoZSBsZWZ0XG4gICAgdGJvZHkgPiB0ciA+IHRkOmxhc3Qtb2YtdHlwZSB7XG4gICAgICAmLnNiQWN0aW9ucyB1bCB1bHtcbiAgICAgICAgcmlnaHQ6IDEwMCU7XG4gICAgICB9XG4gICAgfVxuXG4gICAgPiB0Ym9keSA+IHRyID4gdGQ6aG92ZXIge1xuICAgICAgLnNmLWljb24tZWRpdCB7XG4gICAgICAgIHZpc2liaWxpdHk6IHZpc2libGU7XG4gICAgICB9XG4gICAgfVxuXG4gICAgPiB0Zm9vdCA+IHRyIHtcblxuICAgICAgJi5zYlRvdGFsUm93IHRkIHtcbiAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICAgICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbiAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cbiAgICAgICAgJjpsYXN0LW9mLXR5cGUge1xuICAgICAgICAgIHBhZGRpbmctcmlnaHQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgID4gdGQge1xuICAgICAgICAvLyBoZWlnaHQ6IEByb3dIZWlnaHQ7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gQ2xhc3NlcyBmb3IgcHJvZHVjdCBoaWVyYXJjaHkgdmlzdWFsaXphdGlvblxuICAgIC5zYkJ1bmRsZU9wdGlvbiB7XG4gICAgICBjb2xvcjogQHNiU2Vjb25kYXJ5Rm9udENvbG9yO1xuICAgIH1cbiAgICAuc2JJbmRlbnQyIHtcbiAgICAgIHBhZGRpbmctbGVmdDogQGluZGVudCAqIDE7XG4gICAgfVxuICAgIC5zYkluZGVudDMge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAaW5kZW50ICogMjtcbiAgICB9XG4gICAgLnNiSW5kZW50NCB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBpbmRlbnQgKiAzO1xuICAgIH1cbiAgICAuc2JJbmRlbnQ1IHtcbiAgICAgIHBhZGRpbmctbGVmdDogQGluZGVudCAqIDQ7XG4gICAgfVxuICAgIC5zYkluZGVudDYge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAaW5kZW50ICogNTtcbiAgICB9XG4gICAgLnNiSW5kZW50NyB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBpbmRlbnQgKiA2O1xuICAgIH1cbiAgICAuc2JJbmRlbnQ4IHtcbiAgICAgIHBhZGRpbmctbGVmdDogQGluZGVudCAqIDc7XG4gICAgfVxuICAgIC5zYkluZGVudDkge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAaW5kZW50ICogODtcbiAgICB9XG4gICAgLnNiSW5kZW50MTAge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAaW5kZW50ICogOTtcbiAgICB9XG5cblxuICAgIC8vIERlc2NyaXB0aW9uIGZpZWxkXG4gICAgLnNiRGVzY3JpcHRpb25GaWVsZCB7XG4gICAgICBzcGFuIHtcbiAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICAgIH1cblxuICAgICAgLnNiLWljb24tcGVuY2lsIHtcbiAgICAgICAgdmlzaWJpbGl0eTogaGlkZGVuO1xuICAgICAgfVxuXG4gICAgICAmOmhvdmVyIHtcbiAgICAgICAgLnNiLWljb24tcGVuY2lsIHtcbiAgICAgICAgICB2aXNpYmlsaXR5OiB2aXNpYmxlO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLy8gUXVvdGUgVG90YWwgYW1vdW50IGluIGxvd2VyIHJpZ2h0IGNvcm5lclxuICAuc2JRdW90ZVRvdGFsIHtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgICBmbG9hdDogcmlnaHQ7XG4gICAgbWFyZ2luOiAxMnB4IDIycHggMjZweCAwO1xuXG4gICAgPiBzcGFuIHtcbiAgICAgIG1hcmdpbi1sZWZ0OiAxMHB4O1xuICAgIH1cbiAgfVxuXG4gIC8vIEdyb3VwIHRhYnMvbGlua3NcbiAgLnNiR3JvdXBzLCAuc2JEaW1lbnNpb25UYWJzIHtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICBtYXJnaW46IDE4cHggQHNiUGFnZUhlYWRlckxlZnQ7XG4gICAgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtcbiAgICBib3JkZXItYm90dG9tOiAxcHggc29saWQgQHNiSGVhZGVyQm9yZGVyQ29sb3I7XG5cbiAgICA+IGEge1xuICAgICAgY3Vyc29yOiBtb3ZlO1xuICAgICAgY29sb3I6IGluaGVyaXQ7XG4gICAgICBwYWRkaW5nOiA2cHggMTZweCA2cHg7XG4gICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cbiAgICAgID4gLnNmLWljb24tZWRpdCB7XG4gICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uQ29sb3I7XG4gICAgICAgIHZpc2liaWxpdHk6IGhpZGRlbjtcbiAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgICAgIHJpZ2h0OiAtNnB4O1xuICAgICAgICB0b3A6IDZweDtcbiAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Ib3ZlckNvbG9yO1xuICAgICAgICB9XG5cbiAgICAgICAgJi52aXNpYmxlIHtcbiAgICAgICAgICB2aXNpYmlsaXR5OiB2aXNpYmxlO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICAgID4gYS5zZWxlY3RlZCB7XG4gICAgICBib3JkZXItYm90dG9tOiAycHggc29saWQgQHNiVGFiU2VsZWN0ZWRDb2xvcjtcbiAgICB9XG4gICAgPiBhOmhvdmVyIHtcbiAgICAgIGJvcmRlci1ib3R0b206IDJweCBzb2xpZCBAc2JUYWJTZWxlY3RlZENvbG9yO1xuICAgICAgPiAuc2YtaWNvbi1lZGl0IHtcbiAgICAgICAgdmlzaWJpbGl0eTogdmlzaWJsZTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAvLyBBIEdyb3VwIG9uIHRoZSBxdW90ZS4gIFRoZXNlIHN0eWxlcyBhcmUgZm9yIG11bHRpcGxlIGdyb3VwcyB3aXRoIG92ZXJyaWRlcyBsYXRlciBvbiBmb3IgYSBzaW5nbGUgZ3JvdXAuXG4gIC5zYkdyb3VwIHtcbiAgICAvLyBHcm91cCBuYW1lIC0gZGlzcGxheWVkIG9ubHkgd2hlbiB0aGUgcXVvdGUgaXMgZ3JvdXBlZFxuICAgID4gaGVhZGVyIHtcbiAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgfVxuXG4gICAgLy8gR3JvdXBzXG4gICAgJi5zYkdyb3VwZWQge1xuICAgICAgYmFja2dyb3VuZDogQHNiQmdDb2xvcjtcbiAgICAgIG1hcmdpbjogQHNiUGFnZUhlYWRlclRvcCBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICAgIGJvcmRlcjogQHNiQ29udGVudEJvcmRlcjtcbiAgICAgIGJvcmRlci1yYWRpdXM6IDRweDtcblxuICAgICAgPiBoZWFkZXIge1xuICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOkBzYkhlYWRlclNlY29uZGFyeUJnQ29sb3I7XG4gICAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgICAgICBtYXJnaW46IDA7XG4gICAgICAgIGJvcmRlcjogMDtcbiAgICAgICAgcGFkZGluZzogQHNiUGFnZUhlYWRlclRvcCAtIDVweCBAc2JQYWdlSGVhZGVyTGVmdCBAc2JQYWdlSGVhZGVyVG9wIC0gMTBweDtcbiAgICAgICAgYm9yZGVyLWJvdHRvbTogQHNiQ29udGVudEJvcmRlcjtcblxuICAgICAgICAmLnNiSGlkZGVuSGVhZGVye1xuICAgICAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgICAgIH1cblxuICAgICAgICA+IC5zYkdyb3VwRWRpdG9yID4gdGJvZHkgPiB0ciA+IHRkIHtcbiAgICAgICAgICB3aWR0aDogNTAlO1xuICAgICAgICAgIG1hcmdpbjogMTBweDtcbiAgICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXG4gICAgICAgICAgJjpmaXJzdC1vZi10eXBlIHtcbiAgICAgICAgICAgIGJvcmRlci1yaWdodDogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuXG4gICAgICAgICAgICA+IHRhYmxlID4gdGJvZHkgPiB0ciA+IHRkIHtcbiAgICAgICAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICAgICAgICAgIH1cblxuICAgICAgICAgICAgPiB0YWJsZSA+IHRib2R5ID4gdHI6Zmlyc3Qtb2YtdHlwZSA+IHRkOmxhc3Qtb2YtdHlwZSB7XG4gICAgICAgICAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgICAgICAgICAgICBwYWRkaW5nLXJpZ2h0OiAxMHB4O1xuICAgICAgICAgICAgICBtaW4td2lkdGg6IDIwNXB4O1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cblxuICAgICAgICAgIC5zYkZhdm9yaXRlIHtcbiAgICAgICAgICAgIHdpZHRoOiA1JTtcblxuICAgICAgICAgICAgPiBpIHtcbiAgICAgICAgICAgICAgZm9udC1zaXplOiAyZW07XG4gICAgICAgICAgICAgIGRpc3BsYXk6aW5saW5lLWJsb2NrO1xuICAgICAgICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogc3VwZXI7XG5cbiAgICAgICAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgLnNmLWljb24tZWRpdCB7XG4gICAgICAgICAgdmlzaWJpbGl0eTpoaWRkZW47XG4gICAgICAgIH1cblxuICAgICAgICAuc2JHcm91cEhlYWRlciB7XG4gICAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXG4gICAgICAgICAgPiBpbnB1dCB7XG4gICAgICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICAuc2JHcm91cEhlYWRlcjpob3ZlciB7XG4gICAgICAgICAgLnNmLWljb24tZWRpdCB7XG4gICAgICAgICAgICB2aXNpYmlsaXR5OnZpc2libGU7XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgaDIge1xuICAgICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cbiAgICAgICAgICAmOm5vdCguc2JHcm91cERyYWdIYW5kbGUpIHtcbiAgICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgICB9XG5cbiAgICAgICAgICA+IFtjbGFzcz1zYi1pY29uLXBlbmNpbF0ge1xuICAgICAgICAgICAgdmlzaWJpbGl0eTogaGlkZGVuO1xuICAgICAgICAgIH1cblxuICAgICAgICAgICY6aG92ZXIgPiBbY2xhc3M9c2ItaWNvbi1wZW5jaWxdIHtcbiAgICAgICAgICAgIHZpc2liaWxpdHk6IHZpc2libGU7XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgLnNiR3JvdXBOYW1lIHtcbiAgICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgICAgIG1hcmdpbi1yaWdodDogMTVweDtcbiAgICAgICAgICBoZWlnaHQ6QHNiVGV4dGJveEhlaWdodDtcbiAgICAgICAgfVxuXG4gICAgICAgIC8vIEdyb3VwIEFjdGlvbnMgKGkuZS4gQWRkIFByb2R1Y3RzLCBBZGQgRmF2b3JpdGVzLCBSZXNldCBEaXNjb3VudHMsIE9wdGlvbmFsLCBDbG9uZSwgRGVsZXRlKVxuICAgICAgICAuc2JHcm91cEFjdGlvbnMge1xuICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcblxuICAgICAgICAgIG1lbnUge1xuICAgICAgICAgICAgbWF4LWhlaWdodDogMTI1cHg7XG4gICAgICAgICAgICBvdmVyZmxvdy15OiBhdXRvO1xuICAgICAgICAgIH1cblxuICAgICAgICAgIHVsIHVsIHVsIHtcbiAgICAgICAgICAgIGxlZnQ6IDEwMCU7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgPiB1bC5zYlRvb2xzID4gbGkuc2JUb29sIHtcbiAgICAgICAgICAgIG1hcmdpbi1ib3R0b206IDVweDtcblxuICAgICAgICAgICAgPiBzcGFuLFxuICAgICAgICAgICAgPiBpIHtcbiAgICAgICAgICAgICAgcGFkZGluZzogNnB4IDhweDtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICAvLyBHcm91cCBsZXZlbCBjdXN0b20gYWN0aW9uc1xuICAgICAgICAuc2JUb29scyB7XG4gICAgICAgICAgPiAuc2JUb29sIHtcbiAgICAgICAgICAgIGhlaWdodDogMzJweDtcblxuICAgICAgICAgICAgPiBzcGFuLmxhYmVsLFxuICAgICAgICAgICAgPiBpIHtcbiAgICAgICAgICAgICAgcGFkZGluZzogNnB4IDhweDtcbiAgICAgICAgICAgIH1cblxuICAgICAgICAgICAgPiBzcGFuLnNmLWljb24tZG93biB7XG4gICAgICAgICAgICAgIHBhZGRpbmc6IDZweCA0cHg7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgLy8gR3JvdXAgZGVzY3JpcHRpb24sIGlmIGluY2x1ZGVkIGluIHRoZSBRdW90ZSBMaW5lIEdyb3VwIGZpZWxkIHNldFxuICAgICAgICAuc2JEZXNjcmlwdGlvbiB7XG4gICAgICAgICAgbWFyZ2luLXRvcDogMTBweDtcbiAgICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgICAgICBjb2xvcjogQHNiSWNvbkNvbG9yO1xuICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgICBkaXNwbGF5OiB0YWJsZTtcblxuICAgICAgICAgID4gZGl2LFxuICAgICAgICAgID4gZGl2ID4gcCB7XG4gICAgICAgICAgICBkaXNwbGF5OiBpbmxpbmU7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgICBjb2xvcjogaW5oZXJpdDtcbiAgICAgICAgICAgIFtjbGFzcz1zZi1pY29uLWVkaXRdIHtcbiAgICAgICAgICAgICAgdmlzaWJpbGl0eTogdmlzaWJsZTtcbiAgICAgICAgICAgICAgcGFkZGluZy1sZWZ0OiA1cHg7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIC5zYlRhYmxlIHtcbiAgICAgICAgbWFyZ2luLXRvcDogMTBweDtcbiAgICAgIH1cbiAgICB9XG5cblxuICAgIC8vIEdyb3VwLWxldmVsIGZpZWxkcyAoZS5nLiBPcHRpb25hbCwgU3Vic2NyaXB0aW9uIFRlcm0sIEFkZCBEaXNjKVxuICAgIC5zYkdyb3VwRmllbGRzIHtcbiAgICAgIHBhZGRpbmc6IDAgMTBweDtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuXG4gICAgICA+IHRhYmxlID4gdGJvZHkgPiB0ciB7XG5cbiAgICAgICAgLnNiTGFiZWwge1xuICAgICAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgICAgICAgIHBhZGRpbmctcmlnaHQ6IDVweDtcbiAgICAgICAgfVxuXG4gICAgICAgID4gdGQge1xuXG4gICAgICAgICAgcGFkZGluZy1ib3R0b206IDEwcHg7XG4gICAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICAgICAgICBjb2xvcjogQHNiRm9udENvbG9yO1xuXG4gICAgICAgICAgLnNiRmllbGRSb3cge1xuICAgICAgICAgICAgcGFkZGluZy1ib3R0b206IDEwcHg7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgbGFiZWwge1xuICAgICAgICAgICAgbWFyZ2luLXJpZ2h0OiA0cHg7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgaW5wdXQ6bm90KFt0eXBlPWNoZWNrYm94XSkge1xuICAgICAgICAgICAgaGVpZ2h0OiAyZW07XG4gICAgICAgICAgICB3aWR0aDogMTAwcHg7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgaW5wdXRbdHlwZT1jaGVja2JveF0ge1xuICAgICAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG5cbiAgICAvLyBHcm91cCB0b3RhbCAtIGRpc3BsYXlzIG9ubHkgd2hlbiB0aGVyZSBhcmUgYm90aCBNRFEgYW5kIHN0YW5kYXJkIHByb2R1Y3RzIG9uIGEgZ3JvdXBcbiAgICAuc2JHcm91cFRvdGFsIHtcbiAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgICAgbWFyZ2luOiAxNXB4IDIycHggMjBweCAwO1xuICAgIH1cbiAgfVxuXG4gIC8vIEVtcHR5IGdyb3VwIG9yIHF1b3RlIG1lc2FnZXNcbiAgLnNiRW1wdHlHcm91cE1zZyxcbiAgLnNiRW1wdHlRdW90ZU1zZyxcbiAgLmVtcHR5TVNUYWJsZU1lc3NhZ2UsXG4gIC5lbXB0eVN0YW5kYXJkVGFibGVNZXNzYWdlIHtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICBwYWRkaW5nOiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgfVxuXG4gIC5lbXB0eU1TVGFibGVNZXNzYWdlIHtcbiAgICBjbGVhcjogYm90aDtcbiAgfVxuXG4gIC5lbXB0eU1TVGFibGVNZXNzYWdlLFxuICAuZW1wdHlTdGFuZGFyZFRhYmxlTWVzc2FnZSB7XG4gICAgcGFkZGluZzogQHNiUGFnZUhlYWRlckxlZnQgMCAwIEBzYlBhZ2VIZWFkZXJMZWZ0ICogMjtcbiAgfVxuXG4gICNzYlByaWNlYm9va01hc2ssICNzYlNlZ21lbnRzTWFzaywgI3NiRmF2b3JpdGVzTWFzaywgI3NiQWxlcnRNYXNrIHtcbiAgICAuc2JNb2RhbE1hc2s7XG5cbiAgICAmLmNsb3NlIHtcbiAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgfVxuICB9XG5cbiAgI3NiU2VnbWVudHNNb2RhbCwgI3NiUHJvZHVjdFJ1bGVBbGVydCB7XG4gICAgLnNiTW9kYWxEaWFsb2c7XG4gICAgbWF4LXdpZHRoOiA2MDBweDtcblxuICAgICYuYW1lbmRtZW50IHtcbiAgICAgIGN1cnNvcjogZGVmYXVsdDtcbiAgICAgIC5zYk1vZGFsQ29udGVudENvbnRhaW5lciB7XG4gICAgICAgIG92ZXJmbG93OiBhdXRvO1xuICAgICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICAgICBpW2NsYXNzXj1zZi1pY29uXSB7XG4gICAgICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgICAgICAgICBjb2xvcjogQHNiSWNvbkNvbG9yO1xuICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgY3Vyc29yOiBkZWZhdWx0O1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuXG5cbiAgICAgICNzYkN1c3RvbVNlZ21lbnRzIHtcbiAgICAgICAgPiB0Ym9keSA+IHRyIHtcbiAgICAgICAgICAmOmZpcnN0LW9mLXR5cGUgPiB0ZCB7XG4gICAgICAgICAgICBwYWRkaW5nLXRvcDogMTRweDtcbiAgICAgICAgICB9XG4gICAgICAgICAgPiB0ZCB7XG4gICAgICAgICAgICBjdXJzb3I6IGRlZmF1bHQ7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIC5zYk1vZGFsRm9vdGVyIHtcbiAgICAgICAgPiAuc2JCdXR0b25zIHtcbiAgICAgICAgICA+IC5zYkJ0biB7XG4gICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gICAgICAgICAgICBjb2xvcjogQHNiR3JvdXBCdG5Gb250Q29sb3I7XG4gICAgICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICAgICAgY3Vyc29yOiBkZWZhdWx0O1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgJjpmb2N1cyB7XG4gICAgICAgICAgICAgIG91dGxpbmU6IG5vbmU7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgICAmLnNiUHJpbWFyeUFjdGlvbiB7XG4gICAgICAgICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICAgICAgICAgICAgICBjb2xvcjogQHNiUHJpbWFyeUJ0bkZvbnRDb2xvcjtcbiAgICAgICAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgICAgICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYlByaW1hcnlCdG5Ib3ZlckJnQ29sb3I7XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG5cbiAgICAmLmNsb3NlIHtcbiAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgfVxuXG4gICAgLnNiVmFsaWRhdGlvbkVycm9ycyB7XG4gICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICAgcGFkZGluZzogNXB4IDE1cHggMDtcblxuICAgICAgPiBkaXYge1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgICAgY29sb3I6ICNjMDA7XG4gICAgICAgIHBhZGRpbmctYm90dG9tOiA1cHg7XG5cbiAgICAgICAgPiBzcGFuLCA+IGRpdiB7XG4gICAgICAgICAgZGlzcGxheTogaW5saW5lO1xuICAgICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICAgIH1cblxuICAgICAgICA+IFtjbGFzc149c2ItaWNvbl0ge1xuICAgICAgICAgIGNvbG9yOiAjYzAwO1xuICAgICAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAyO1xuICAgICAgICAgIHBhZGRpbmc6IDAgMTBweCAwIDA7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG5cbiAgICAubWVzc2FnZSB7XG4gICAgICBkaXNwbGF5OiBibG9jaztcbiAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgICBib3JkZXI6IG5vbmU7XG4gICAgICBtYXJnaW46IDAgMCAwIDdweDtcbiAgICB9XG5cbiAgICAuc2JDdXN0b21TZWdtZW50c0NvbnRhaW5lciB7XG4gICAgICBoZWlnaHQ6IDQ0MXB4O1xuICAgICAgb3ZlcmZsb3c6IGF1dG87XG4gICAgfVxuXG4gICAgI3NiQ3VzdG9tU2VnbWVudHMge1xuICAgICAgbWFyZ2luLXRvcDogMDtcblxuICAgICAgPiB0aGVhZCA+IHRyID4gdGgge1xuICAgICAgICBwYWRkaW5nLWJvdHRvbTogMDtcbiAgICAgICAgLy8gYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkICNjMDA7XG4gICAgICB9XG5cbiAgICAgID4gdGJvZHkgPiB0ciA+IHRkIHtcbiAgICAgICAgdGV4dC1hbGlnbjogaW5pdGlhbDtcbiAgICAgICAgaGVpZ2h0OiAzMHB4O1xuICAgICAgICBjdXJzb3I6IG1vdmU7XG5cbiAgICAgICAgPiBbY2xhc3NePXNiLWljb25dIHtcbiAgICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgICBwYWRkaW5nOiAwIDVweCAwIDA7XG4gICAgICAgIH1cblxuICAgICAgICAuc2YtaWNvbi1jbG9zZSB7XG4gICAgICAgICAgY29sb3I6ICM0ZDRkNGQ7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAjc2JGYXZvcml0ZXNNb2RhbCB7XG4gICAgI3NiU2VnbWVudHNNb2RhbDtcblxuICAgIC5zYk1vZGFsQ29udGVudENvbnRhaW5lciAuc2JUYWJsZSB7XG4gICAgICA+IHRib2R5ID4gdHIge1xuICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICBiYWNrZ3JvdW5kOiBAc2JCZ0NvbG9yO1xuICAgICAgICB9XG5cbiAgICAgICAgPiB0ZCB7XG4gICAgICAgICAgcGFkZGluZy10b3A6IDIwcHg7XG5cbiAgICAgICAgICAjc2JGYXZvcml0ZU5hbWUge1xuICAgICAgICAgICAgd2lkdGg6IDMwMHB4O1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC8vIFByb2R1Y3QgUnVsZSBBbGVydCBzdHlsZVxuICAjc2JQcm9kdWN0UnVsZUFsZXJ0IHtcbiAgICBtaW4taGVpZ2h0OiBhdXRvO1xuICAgIGxpIHtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIH1cbiAgfVxuXG4gIC8vIE1EUSBwYWdlIHN0eWxlXG4gICYuc2JNRFEgLnNiUGFnZUJsb2NrIHtcblxuICAgIC5zYlRhYmxlIHtcbiAgICAgID4gdGhlYWQgPiB0ciA+IHRoOmZpcnN0LW9mLXR5cGUsXG4gICAgICA+IHRib2R5ID4gdHIgPiB0ZDpmaXJzdC1vZi10eXBlIHtcbiAgICAgICAgcGFkZGluZy1sZWZ0OiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICAgIH1cblxuICAgICAgPiB0aGVhZCA+IHRyID4gdGg6bGFzdC1vZi10eXBlLFxuICAgICAgPiB0Ym9keSA+IHRyID4gdGQ6bGFzdC1vZi10eXBlIHtcbiAgICAgICAgcGFkZGluZy1yaWdodDogQHNiUGFnZUhlYWRlckxlZnQ7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLy8gTURRIFNlZ21lbnRlZCBQcm9kdWN0cyB0YWJsZVxuICAuc2JNdWx0aVNlZ21lbnQgLnNiVGFibGUge1xuICAgIG1hcmdpbi10b3A6IDEwcHg7XG5cbiAgICAuc2JMaW5lTnVtYmVyIHtcbiAgICAgID4gc3BhbiB7XG4gICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JFeHBhbmRDb2xsYXBzZSB7XG4gICAgICA+IFtjbGFzc149XCJzYi1pY29uLVwiXSB7XG4gICAgICAgIGZvbnQtc2l6ZTogMS41ZW07XG4gICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uQ29sb3I7XG4gICAgICB9XG5cbiAgICAgID4gOm50aC1vZi10eXBlKDIpIHtcbiAgICAgICAgZm9udC1zaXplOiAxLjNlbTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAvLyB0aGUgY2VsbCB3aXRoIHRoZSBleHBhbmQvY29sbGFwc2UgaWNvblxuICAgIC5zYkV4cGFuZCB7XG4gICAgICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuXG4gICAgICBpIHtcbiAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgICBmb250LXNpemU6IDE0cHg7XG4gICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uQ29sb3I7XG4gICAgICAgIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgICAgICAgdG9wOiAycHg7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gYSBcImRldGFpbFwiIHJvdyBvZiBhIHNlZ21lbnRcbiAgICA+IHRib2R5IHtcbiAgICAgID4gdHIuZXhwYW5kZWQgPiB0ZCB7XG4gICAgICAgIGJvcmRlci1ib3R0b206IDA7XG4gICAgICB9XG5cbiAgICAgID4gLnNiRGV0YWlsIHtcbiAgICAgICAgPiB0ZCB7XG4gICAgICAgICAgaGVpZ2h0OiAzMHB4O1xuICAgICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkRldGFpbEJnQ29sb3I7XG4gICAgICAgIH1cblxuICAgICAgICAmOm5vdCgubGFzdERldGFpbFJvdyl7XG4gICAgICAgICAgPiB0ZCB7XG4gICAgICAgICAgICBib3JkZXItYm90dG9tOiAwO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC8vIGxhYmVsIGNvbHVtbiBmb3IgZGV0YWlsIHJvd3NcbiAgICAgICAgPiB0ZDpudGgtY2hpbGQoMikge1xuICAgICAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgICAgICAgIHBhZGRpbmctcmlnaHQ6IDQwcHg7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG5cbiAgICA+IHRmb290ID4gdHI+IHRkOmZpcnN0LW9mLXR5cGUge1xuICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgfVxuXG4gICAgPiB0Zm9vdCA+IHRyPiB0ZDpsYXN0LW9mLXR5cGUge1xuICAgICAgcGFkZGluZy1yaWdodDogQHNiUGFnZUhlYWRlckxlZnQ7XG4gICAgfVxuICB9XG5cbiAgLy8gTURRIFN0YW5kYXJkIFByb2R1Y3RzIGFuZCBTZWdtZW50ZWQgUHJvZHVjdHMgY29udGFpbmVyIGVsZW1lbnRzXG4gIC5zYlN0YW5kYXJkIHtcbiAgICBwYWRkaW5nLXRvcDogNDBweDtcblxuICAgICYuc2JFbXB0eVRhYmxlIHtcbiAgICAgIHBhZGRpbmctdG9wOjA7XG4gICAgfVxuXG4gICAgPiBoMiB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgIH1cbiAgfVxuXG4gIC5zYk11bHRpU2VnbWVudCB7XG4gICAgcGFkZGluZy10b3A6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuXG4gICAgJi5zYkVtcHR5VGFibGUge1xuICAgICAgcGFkZGluZy10b3A6MDtcbiAgICB9XG5cbiAgICAuc2JTZWdtZW50ZWRUYWJsZUhlYWRlciB7XG4gICAgICBvdmVyZmxvdzogYXV0bztcblxuICAgICAgPiBoMiB7XG4gICAgICAgIHBhZGRpbmctbGVmdDogQHNiUGFnZUhlYWRlckxlZnQ7XG4gICAgICB9XG5cbiAgICB9XG5cbiAgICAuc2JEaW1lbnNpb25IZWFkZXIge1xuICAgICAgbWFyZ2luOiAwIEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgICAgY2xlYXI6IGJvdGg7XG5cbiAgICAgID4gaDIsIGkge1xuICAgICAgICBmbG9hdDogbGVmdDtcbiAgICAgIH1cblxuICAgICAgaSB7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjI7XG4gICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uQ29sb3I7XG4gICAgICAgIHBhZGRpbmc6IDVweCAwIDAgNXB4O1xuICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnNiVG9vbHRpcCA+IC5zYlRvb2x0aXBDb250ZW50IHtcbiAgICBkaXNwbGF5OiBub25lO1xuICB9XG5cbiAgLnNiTURRUmlnaHQge1xuICAgIGZsb2F0OiByaWdodDtcbiAgICA+IC5zYlRvb2x0aXAge1xuICAgICAgd2lkdGg6IDElO1xuICAgIH1cbiAgfVxuXG4gIC8vIERyYWcgJiBEcm9wIEhvdmVyIHN0eWxlc1xuICAuc2JHcm91cERyYWdIYW5kbGUge1xuICAgIGN1cnNvcjogbW92ZTtcbiAgfVxuXG4gIC5zYkRyYWdnZWRMaW5lLFxuICAuc2JEcmFnZ2VkRGltZW5zaW9uLFxuICAuc2JEcmFnZ2VkU2VnbWVudCxcbiAgLnNiRHJhZ2dlZEdyb3VwIHtcbiAgICBjb2xvcjogQHNiTGlua0NvbG9yO1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICB9XG5cbiAgLnNiRHJvcFJvd0hvdmVyIHtcbiAgICBiYWNrZ3JvdW5kOiBAc2JUYWJsZVJvd0hvdmVyQ29sb3I7XG4gIH1cblxuICAuc2JFbXB0eVRhYmxlSG92ZXIge1xuICAgIHBhZGRpbmctYm90dG9tOiAyMnB4O1xuICB9XG5cbiAgLnNiRW1wdHlUYWJsZUhvdmVyLFxuICAuc2JFbXB0eUdyb3VwSG92ZXIge1xuICAgIGJvcmRlcjogMnB4IHNvbGlkIEBzYkFjY2VudEljb25Db2xvcjtcbiAgICBib3JkZXItcmFkaXVzOiA0cHg7XG4gIH1cblxuICAuc2JHcm91cC5zYkdyb3VwZWQuc2JEcm9wR3JvdXBIb3ZlciB7XG4gICAgYm9yZGVyOiAzcHggc29saWQgQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgIGJvcmRlci1yYWRpdXM6IDRweDtcbiAgfVxuXG4gIGEuc2JEcm9wRGltZW5zaW9uSG92ZXIge1xuICAgIGNvbG9yOiAjZmZmO1xuICAgIGN1cnNvcjogbW92ZTtcbiAgICBib3JkZXItcmFkaXVzOiA0cHg7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogQHNiQmdDb2xvcjtcbiAgfVxuXG4gIC5zYlBhZ2VzIHtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgcGFkZGluZzogMDtcbiAgICBiYWNrZ3JvdW5kOiAjZmZmO1xuXG4gICAgLnNiQnRuIHtcbiAgICAgIGZsb2F0OiBub25lO1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgIH1cblxuICAgIC5zYkRpc3BsYXllZFBhZ2Uge1xuICAgICAgY29sb3I6IEBzYkxpbmtDb2xvcjtcbiAgICB9XG4gIH1cblxuICAuc2JEcm9wUGFnZUhvdmVyIHtcbiAgICBjb2xvcjogI2ZmZjtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JBY2NlbnRJY29uQ29sb3I7XG4gIH1cblxuICB0aCA+IC5tdWx0aVNlZ21lbnRBcnJvdyB7XG4gICAgZm9udC1zaXplOiAxLjJlbSAhaW1wb3J0YW50O1xuICAgICY6aG92ZXIge1xuICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgIH1cbiAgfVxuXG4gICNzYlRpZXJzTW9kYWwge1xuICAgICAuc2JNb2RhbERpYWxvZztcbiAgICAgbWF4LXdpZHRoOiA4MCU7XG5cbiAgICAgLnNiTW9kYWxDb250ZW50Q29udGFpbmVyIHtcbiAgICAgICBwYWRkaW5nOiAxNXB4O1xuICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICAgICBtaW4taGVpZ2h0OiAxMDBweDtcbiAgICAgICBtYXgtaGVpZ2h0OiA0MDBweDtcbiAgICAgICBvdmVyZmxvdzogYXV0bztcblxuICAgICAgIGlucHV0IHtcbiAgICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgICAgfVxuICAgICB9XG5cbiAgICAuZGF0YUNlbGwge1xuICAgICAgdGV4dC1hbGlnbjpsZWZ0XG4gICAgfVxuXG4gICAgI3JldmVydFRpZXJJY29uIHtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIH1cblxuICAgICNyZXZlcnRJY29uQ29udGFpbmVyIHtcbiAgICAgIHBhZGRpbmc6IDhweDtcbiAgICAgIG1hcmdpbi1sZWZ0OiAxNnB4O1xuICAgICAgYmFja2dyb3VuZC1jb2xvcjogI2ZmZjtcbiAgICB9XG5cblx0ICNkaXNjb3VudFVuaXRTZWxlY3Qge1xuXHQgXHRtYXJnaW4tbGVmdDogMTBweDtcblx0IFx0cGFkZGluZy1sZWZ0OiAxNXB4O1xuXHQgfVxuXG4gICAgICNkaXNjb3VudFNjaGVkdWxlTmFtZSB7XG4gICAgICAgcGFkZGluZy1sZWZ0OiAzMHB4O1xuXG4gICAgICAgaW5wdXQge1xuICAgICAgICAgbWluLXdpZHRoOiAzMDBweDtcbiAgICAgICAgIG1hcmdpbi1sZWZ0OiAxMHB4O1xuICAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgICAgIHBhZGRpbmctbGVmdDogMTBweDtcbiAgICAgICB9XG4gICAgIH1cblxuICAgICAuc2YtaWNvbi1lcnJvciB7XG4gICAgICAgY29sb3I6ICNjMDAgIWltcG9ydGFudDtcbiAgICAgfVxuXG4gICAgI2RlbGV0ZUFsbENoZWNrYm94IHtcbiAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICB9XG5cbiAgICAgI2Rpc2NvdW50VW5pdFNlbGVjdCB7XG4gICAgICBwYWRkaW5nLXJpZ2h0OiAyMHB4O1xuICAgICB9XG5cbiAgICAgI2Vycm9yTWVzc2FnZSB7XG4gICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICB9XG5cbiAgICAgLmhpZGVJbnB1dEJvcmRlcnMge1xuICAgICAgICBpbnB1dCB7XG4gICAgICAgICAgYm9yZGVyOiBub25lO1xuICAgICAgICAgIGJhY2tncm91bmQ6ICNmZmY7XG4gICAgICAgIH1cbiAgICAgfVxuXG4gICAgIC5kaXNjb3VudFNjaGVkdWxlUm93IHtcbiAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgfVxuXG4gICAgLnJldmVydEJ1dHRvbiB7XG4gICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICBib3JkZXI6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgICAgYm9yZGVyLXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgICAgY29sb3I6IEBzYkdyb3VwQnRuRm9udENvbG9yO1xuICAgICAgcG9zaXRpb246IHJlbGF0aXZlO1xuICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgIH1cblxuICAgICAuZGlzY291bnRTY2hlZHVsZUhlYWRlciB7XG4gICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgIH1cblxuICAgIC5hZGRCb3R0b21Cb3JkZXIge1xuICAgICAgICBib3JkZXItYm90dG9tOiAxcHggc29saWQgI2Q4ZGRlNjtcbiAgICAgICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgICB9XG5cbiAgICAgLmRpc2NvdW50U2NoZWR1bGVMb2FkZXIge1xuICAgIG1hcmdpbi1sZWZ0OiBhdXRvO1xuICAgIG1hcmdpbi1yaWdodDogYXV0bztcbiAgICBtYXJnaW4tdG9wOiAyMHB4O1xuICAgICB9XG4gICB9XG59XG5cbiNlZGl0RGVzY3JpcHRpb25Db250YWluZXIgLnNiTGluZUVkaXRvckRlc2NyaXB0aW9uRWRpdEZvb3RlciB7XG5cdG1hcmdpbi10b3A6IDE2cHg7XG59XG5cbi5yZW1vdmVCb3hTaGFkb3cge1xuICBib3gtc2hhZG93OiBub25lO1xufVxuXG4uYWRkQm94U2hhZG93IHtcbiAgYm94LXNoYWRvdzogMCAwIDAgMTVweCAjRDFENEQ4O1xufVxuXG4uaGlkZGVuIHtcbiAgZGlzcGxheTogbm9uZTtcbn1cblxuLy8gTGluZSBFZGl0b3IgdG9vbHRpcHMgZm9yIE1EUS4gIEhhdmUgdG8gbWFrZSB0aGlzIGdsb2JhbCBhcyBqUVVJIHB1dHMgYXQgZW5kIG9mIGRvY3VtZW50LCBub3Qgd2l0aGluIG9yaWdpbmFsIHBhcmVudCBlbGVtZW50XG4uc2JMaW5lRWRpdG9yVG9vbHRpcCB7XG4gIHBhZGRpbmc6IDEycHg7XG4gIHRhYmxlIHRkIHtcbiAgICBwYWRkaW5nOiAzcHggMnB4O1xuICAgICY6bnRoLWNoaWxkKDIpIHtcbiAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgIH1cbiAgfVxufVxuXG4uc2JCdG5Ub29sdGlwIHtcbiAgcGFkZGluZzogM3B4O1xuICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JCZ0NvbG9yO1xuICBjb2xvcjogQHNiRm9udENvbG9yO1xuICAtd2Via2l0LWJveC1zaGFkb3c6IDFweCAxcHggMTFweCAjRDFENEQ4O1xuICAtbW96LWJveC1zaGFkb3c6IDFweCAxcHggMTFweCAjRDFENEQ4O1xuICBib3gtc2hhZG93OiAxcHggMXB4IDExcHggI0QxRDREODtcbn1cbiIsIiNzYk5ld1JlbGF0ZWRDb250ZW50e1xuXG4gICNzYk5ld1JlbGF0ZWRDb250ZW50T3B0aW9uc3tcbiAgICBtYXJnaW46IDA7XG5cbiAgICBmaWVsZHNldCB7XG4gICAgICBib3JkZXI6IDA7XG4gICAgICBwYWRkaW5nOiA1cHg7XG5cbiAgICAgID4gbGFiZWwge1xuICAgICAgICBtYXJnaW4tcmlnaHQ6IDEwcHg7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICAgIHdpZHRoOiAxNzVweDtcbiAgICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgICB9XG5cbiAgICAgID4gaW5wdXQsIHNlbGVjdCB7XG4gICAgICAgIHdpZHRoOiAyMDBweDtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAuc2JQYWdlQmxvY2tTZWN0aW9uIHtcbiAgICBiYWNrZ3JvdW5kOiBub25lO1xuICAgIGJvcmRlcjogbm9uZTtcbiAgfVxufVxuIiwiI3NiUHJvZHVjdENvbmZpZ3VyYXRvciB7XG5cbiAgLnNiQ29uZmlnUHJvZHVjdE5hbWUge1xuICAgIG1hcmdpbjogQHNiUGFnZUhlYWRlclRvcCAwIDAgQHNiUGFnZUhlYWRlckxlZnQ7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gIH1cblxuICAvLyB0b29sIGJhcnMgaW4gdGhlIHBhZ2UgdGl0bGVcbiAgLnNiUGFnZVRpdGxlIHtcblxuICAgICYuc3F1ZWV6ZWQge1xuICAgICAgLnNiVG9vbHMge1xuICAgICAgICBwYWRkaW5nOiAwO1xuICAgICAgfVxuICAgIH1cblxuICAgIC5zYlBhZ2VUaXRsZUxlZnQge1xuICAgICAgLnNmLWljb24tY3VzdG9tX2FwcHMge1xuICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjODE5OWFmO1xuICAgICAgfVxuICAgIH1cblxuICAgIC5zYkJ1dHRvbnMge1xuICAgICAgZmxvYXQ6IHJpZ2h0O1xuICAgIH1cblxuICAgIC5zYlRvb2xzIHtcbiAgICAgIG1hcmdpbi1yaWdodDogMTBweDtcbiAgICAgIHBhZGRpbmc6IDdweCAwO1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgICAgIGZsb2F0OiByaWdodDtcbiAgICAgIHRyYW5zaXRpb246IGFsbCAuMjVzIGVhc2UtaW47XG5cbiAgICAgID4gLnNiVG9vbCB7XG4gICAgICAgIHBhZGRpbmc6IDhweDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JUb29sU2VwYXJhdG9yIHtcbiAgICAgIGJvcmRlci1yaWdodDogQHNiSGVhZGVyQm9yZGVyQ29sb3I7XG4gICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICBoZWlnaHQ6IDFweDtcbiAgICAgIHdpZHRoOiAxMHB4O1xuICAgICAgZmxvYXQ6IGxlZnQ7XG4gICAgfVxuXG4gICAgLnNiQnRuIHtcbiAgICAgICY6ZGlzYWJsZWQge1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkRpc2FibGVkQ29sb3I7XG4gICAgICAgIGN1cnNvcjogZGVmYXVsdDtcbiAgICAgIH1cblxuICAgICAgJi5zYkFkZE9wdGlvbiB7XG4gICAgICAgIG1hcmdpbjogMTZweDtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAuc2JGZWF0dXJlSWNvbiB7XG4gICAgY29sb3I6IEBzYkhpZ2hsaWdodENvbG9yO1xuICAgIGZvbnQtc2l6ZTogMzBweDtcbiAgfVxuXG4gIC5zYkFkZE9wdGlvbkNvbnRhaW5lciB7XG4gICAgLnNiQWRkT3B0aW9uIHtcbiAgICAgIGJvcmRlcjogMDtcbiAgICAgIG1hcmdpbjogNHB4IDAgNHB4IDA7XG5cbiAgICAgICY6aG92ZXIge1xuICAgICAgICBiYWNrZ3JvdW5kOiBub25lO1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkhvdmVyQ29sb3I7XG4gICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICBoZWFkZXIge1xuICAgIHBhZGRpbmc6IEBzYlBhZ2VIZWFkZXJUb3AgQHNiUGFnZUhlYWRlckxlZnQ7XG5cbiAgICAmLnNiU2VjdGlvbiB7XG4gICAgICBib3JkZXItYm90dG9tOiAxcHggc29saWQgQHNiSGVhZGVyQm9yZGVyQ29sb3I7XG4gICAgICBiYWNrZ3JvdW5kOiBAc2JIZWFkZXJTZWNvbmRhcnlCZ0NvbG9yO1xuICAgIH1cblxuICAgICYuc2JGb290ZXIge1xuICAgICAgbWFyZ2luOiAwO1xuICAgICAgYm9yZGVyLXRvcDogQHNiSGVhZGVyQm9yZGVyQ29sb3I7XG4gICAgICBiYWNrZ3JvdW5kOiBAc2JIZWFkZXJTZWNvbmRhcnlCZ0NvbG9yO1xuICAgIH1cblxuICAgICYub3B0aW9uTG9va3VwTW9kZSB7XG4gICAgICBib3JkZXI6IG5vbmU7XG4gICAgICBiYWNrZ3JvdW5kOiBub25lO1xuICAgIH1cblxuXG4gICAgLnNiVGl0bGVDb250YWluZXIge1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgcGFkZGluZy1yaWdodDogNTBweDtcbiAgICAgIHBhZGRpbmctdG9wOiA1cHg7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogdG9wO1xuXG4gICAgICA+IC5zYkZlYXR1cmVJbnN0cnVjdGlvbnMge1xuICAgICAgICBwYWRkaW5nOiAxMHB4IDAgMCAwO1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JGZWF0dXJlQWRkaXRpb25hbEluc3RydWN0aW9ucyB7XG4gICAgICBkaXNwbGF5OiBpbmxpbmU7XG4gICAgICBmbG9hdDogcmlnaHQ7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIHBhZGRpbmctdG9wOiAzcHg7XG4gICAgfVxuXG4gIH1cblxuICAuZmVhdHVyZUNvbnRlbnQge1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG4gIH1cblxuICAuc2JUb3BDb25maWd1cmF0aW9uQXR0cmlidXRlcywgLnNiQm90dG9tQ29uZmlndXJhdGlvbkF0dHJpYnV0ZXMge1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIHBhZGRpbmctdG9wOiAxMHB4O1xuXG4gICAgJi5zYlBhZ2VCbG9ja1NlY3Rpb24ge1xuICAgICAgYm9yZGVyOjAgO1xuXG4gICAgICAmLnNiQm90dG9tIHtcbiAgICAgICAgYm9yZGVyLXRvcDogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICAgICAgICBwYWRkaW5nLXRvcDogMzBweDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JDb25maWdBdHRyaWJ1dGVDb2x1bW4ge1xuICAgICAgdmVydGljYWwtYWxpZ246IHRvcDtcbiAgICB9XG5cbiAgICBsYWJlbCB7XG4gICAgICBwYWRkaW5nOjVweDtcbiAgICB9XG5cbiAgICB0ZCB7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgIH1cblxuICAgIGlucHV0IHtcbiAgICAgIG1hcmdpbi1yaWdodDogMzBweDtcblxuICAgICAgJi5oYXNEYXRlcGlja2VyIHtcbiAgICAgICAgd2lkdGg6IDQ1JTtcbiAgICAgIH1cblxuICAgIH1cblxuICAgIC5zYkxhYmVsQ29sIHtcbiAgICAgIHBhZGRpbmctcmlnaHQ6IDEwcHg7XG4gICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICB9XG5cbiAgICAuc2JEYXRhQ29sIHtcbiAgICAgIHBhZGRpbmc6IDZweCAwO1xuICAgICAgdGV4dC1hbGlnbjogbGVmdDtcblxuICAgICAgPiBkaXYge1xuXG4gICAgICAgID4gZGl2IHtcbiAgICAgICAgICBwYWRkaW5nLWxlZnQ6IDVweDtcbiAgICAgICAgfVxuXG4gICAgICAgID4gLnJlcXVpcmVkQ29uZmlndXJhdGlvbkF0dHJpYnV0ZSB7XG4gICAgICAgICAgYm9yZGVyLWxlZnQ6ICNjMDAgc29saWQ7XG4gICAgICAgICAgcGFkZGluZy1sZWZ0OiAycHg7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAucmVxdWlyZXNDb25maWd1cmF0aW9uIHtcbiAgICBib3JkZXItbGVmdDogI2MwMCBzb2xpZDtcbiAgfVxuXG4gIC5jZW50ZXIge1xuICAgIHdpZHRoOiAxMDAlO1xuICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIH1cblxuICAuc2JTZWxlY3Rpb25Db2x1bW4ge1xuICAgIHdpZHRoOiAxJTtcbiAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbiAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICB9XG5cbiAgLy8gU2lkZSBQYW5lbFxuICAuc2JPcHRpb25zRmlsdGVyIHtcbiAgICAuc2JQYW5lbDtcbiAgICB0b3A6IDkxcHg7XG5cbiAgICBpbnB1dCB7XG4gICAgICBkaXNwbGF5OiBpbmxpbmU7XG4gICAgfVxuXG4gICAgZGl2IHtcbiAgICAgID4gYSB7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC8vIE9wdGlvbiBNZXRob2QgQWRkIFNpZGUgUGFuZWxcbiAgLnNiQWRkT3B0aW9uc0ZpbHRlciB7XG4gICAgLnNiUGFuZWw7XG4gICAgdG9wOiA5MXB4O1xuXG4gICAgaW5wdXQge1xuICAgICAgZGlzcGxheTogaW5saW5lO1xuICAgIH1cblxuICAgIGRpdiB7XG4gICAgICA+IGEge1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAvLyB0aGUgXCJYIFByb2R1Y3RzIEZvdW5kXCIgbGFiZWxcbiAgLnNiUmVzdWx0cyB7XG4gICAgbWFyZ2luOiAxNHB4IDAgLThweCAwO1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICB9XG5cbiAgXHQvLyBQYWdlIEJsb2NrIFNlY3Rpb24gb3ZlcnJpZGVzXG4gIC5zYlBhZ2VCbG9ja1NlY3Rpb24ge1xuICAgIGJhY2tncm91bmQ6IEBzYkJnQ29sb3I7XG4gICAgcGFkZGluZzogMDtcbiAgfVxuXG4gIC5zYkdyb3VwcyB7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNDtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgbWFyZ2luOiAxOHB4IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7XG4gICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuXG4gICAgPiBhLCBzcGFuIHtcbiAgICAgIGNvbG9yOiBpbmhlcml0O1xuICAgICAgcGFkZGluZzogNnB4IDE2cHg7XG4gICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgfVxuICAgID4gYS5zZWxlY3RlZCwgc3Bhbi5zZWxlY3RlZCB7XG4gICAgICBib3JkZXItYm90dG9tOiAycHggc29saWQgQHNiVGFiU2VsZWN0ZWRDb2xvcjtcbiAgICB9XG4gICAgPiBhOmhvdmVyLCBzcGFuOmhvdmVyIHtcbiAgICAgIGJvcmRlci1ib3R0b206IDJweCBzb2xpZCBAc2JUYWJTZWxlY3RlZENvbG9yO1xuICAgIH1cbiAgfVxuXG4gIC8vIEEgdGFibGUgb2Ygb3B0aW9ucyAocm93cylcbiAgLnNiVGFibGUge1xuICAgIEByb3dIZWlnaHQ6IEBzYlRhYmxlQ2VsbEhlaWdodDtcbiAgICBtYXJnaW4tdG9wOiA1cHg7XG5cbiAgICAvLyBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblxuICAgID4gdGhlYWQgPiB0ciA+IHRoOm50aC1jaGlsZCgyKSxcbiAgICA+IHRib2R5ID4gdHIgPiB0ZDpudGgtY2hpbGQoMikge1xuICAgICAgd2lkdGg6IDYwcHg7XG4gICAgfVxuXG4gICAgLy8gQWRkIE9wdGlvbiBidXR0b24gb24gdGhlIGxvd2VyIGxlZnQgcm93IG9mIHRoZSB0YWJsZVxuXG4gICAgLy8gdGFibGUgY2VsbHNcbiAgICA+IHRoZWFkID4gdHIgPiB0aCB7XG4gICAgICBwYWRkaW5nLXJpZ2h0OiAxMnB4O1xuICAgICAgcGFkZGluZy1sZWZ0OiAxMnB4O1xuICAgIH1cbiAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICBoZWlnaHQ6IEByb3dIZWlnaHQ7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgICAgcGFkZGluZzogMCAxMnB4O1xuXG5cbiAgICAgIFtjbGFzc149c2ItaWNvbl0ge1xuICAgICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS4yO1xuICAgICAgICBjb2xvcjogQHNiSWNvbkNvbG9yO1xuICAgICAgfVxuXG4gICAgICAmLnJpZ2h0IHtcbiAgICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgICB9XG5cblxuICAgICAgJi5zYlF1YW50aXR5Q2VsbCB7XG4gICAgICAgIHdpZHRoOiA3NXB4O1xuICAgICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG5cbiAgICAgICAgaW5wdXQge1xuICAgICAgICAgIHdpZHRoOiAxMDBweDtcbiAgICAgICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgIH1cblxuICAgIC5zYkN1cnJlbmN5Q2VsbCB7XG4gICAgICB0ZXh0LWFsaWduOiByaWdodDtcblxuICAgICAgaW5wdXQge1xuICAgICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICA+IHRib2R5IHRyOmxhc3QtY2hpbGQge1xuICAgICAgPiB0ZCB7XG4gICAgICAgIGJvcmRlci1ib3R0b206IG5vbmU7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLndpemFyZENvbmZpZ3VyYXRvciA+IHRhYmxlID4gdGJvZHkgPiB0cjpob3ZlciB7XG4gICAgYmFja2dyb3VuZDogI2ZmZjtcbiAgfVxuXG4gIC5zYkxvYWRNb3JlIHtcbiAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgaGVpZ2h0OiA2NXB4O1xuICAgIHRvcDogOTQlO1xuICAgIHdpZHRoOiAxMDAlO1xuICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS41O1xuICAgIHBhZGRpbmctdG9wOiAxNXB4O1xuICAgIGJhY2tncm91bmQ6IEBzYkJnQ29sb3I7XG4gICAgZGlzcGxheTogbm9uZTtcblxuICAgICYuc2JTaG93TG9hZGluZyB7XG4gICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgfVxuICB9XG4gIC5zZi1pY29uLXdhcm5pbmcge1xuICAgIGNvbG9yOiAjNTg3NmEzO1xuICAgIGZvbnQtc2l6ZTogMjBweDtcbiAgfVxufVxuIiwiLy8gUHJvZHVjdCBTZWFyY2hcbiNzYlByb2R1Y3RTZWFyY2gge1xuICAuc2JTZWFyY2hSZXN1bHRzO1xuXG4gIC5zYlBhZ2VCbG9ja1NlY3Rpb24ge1xuICAgIGJhY2tncm91bmQ6IG5vbmU7XG4gICAgbWFyZ2luOiAwO1xuICAgIHBhZGRpbmc6IDA7XG4gIH1cblxuICAuc2JQYWdlVGl0bGUge1xuICAgIC5zYlRvb2xzIHtcbiAgICAgIG1hcmdpbi1yaWdodDogMTBweDtcbiAgICAgIC8vIHBhZGRpbmc6IDdweCAwO1xuICAgICAgLy8gZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNDtcblxuICAgICAgPiAuc2JUb29sIHtcbiAgICAgICAgYmFja2dyb3VuZDogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICAgICAgICBwYWRkaW5nOiA3cHg7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnNiVGFibGUge1xuICAgID4gdGhlYWQgPiB0ciA+IHRoOmZpcnN0LW9mLXR5cGUsXG4gICAgPiB0Ym9keSA+IHRyID4gdGQ6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICB9XG5cbiAgICAuc2JTZWxlY3Rpb25IZWFkZXIge1xuICAgICAgd2lkdGg6IDElXG4gICAgfVxuXG4gICAgdGJvZHkge1xuICAgICAgJi5jbG9zZSA+IC5zYkdyb3VwUm93e1xuICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgfVxuICAgICAgXG4gICAgICAuc2JHcm91cE5hbWUge1xuICAgICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgICAgZm9udC13ZWlnaHQ6IGJvbGQ7XG4gICAgICB9XG5cbiAgICAgIC5zYkdyb3VwTmFtZVJvdyB7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkhlYWRlckJnQ29sb3I7XG4gICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgXG4gICAgICAgIGkge1xuICAgICAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplICogMS4yNTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cblxuICAgIHRmb290ID4gdHIuc2JQcm9kdWN0UGFnZXMge1xuXG4gICAgICA+IHRkIHtcbiAgICAgICAgYm9yZGVyLWJvdHRvbTogbm9uZTtcblxuICAgICAgICAuc2JQYWdlcyB7XG4gICAgICAgICAgZm9udC1zaXplOiAwLjllbTtcbiAgICAgICAgICBtYXJnaW4tdG9wOiAxMHB4O1xuICAgICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcblxuICAgICAgICAgID4gLnNiQnV0dG9ucyB7XG4gICAgICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiQmdDb2xvcjtcblxuICAgICAgICAgICAgPiAuc2JCdG4ge1xuICAgICAgICAgICAgICBwYWRkaW5nLXRvcDogNnB4O1xuICAgICAgICAgICAgICBjb2xvcjogQHNiR3JvdXBCdG5Gb250Q29sb3I7XG5cbiAgICAgICAgICAgICAgJi5zYi1pY29uLWxlZnQtZGlyLFxuICAgICAgICAgICAgICAmLnNiLWljb24tcmlnaHQtZGlyIHtcbiAgICAgICAgICAgICAgICBmb250LXNpemU6IDEuN2VtO1xuICAgICAgICAgICAgICAgIHBhZGRpbmctdG9wOiAzcHg7XG4gICAgICAgICAgICAgIH1cblxuICAgICAgICAgICAgICAmLmRpc2FibGVkIHtcbiAgICAgICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gICAgICAgICAgICAgICAgY29sb3I6IEBzYkdyb3VwQnRuRGlzYWJsZWRGb250Q29sb3I7XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG5cbiAgICAgICAgICAuc2JQYWdlU2VsZWN0b3Ige1xuICAgICAgICAgICAgcGFkZGluZzogMCAxMHB4O1xuICAgICAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXG4gICAgICAgICAgICA+IGlucHV0IHtcbiAgICAgICAgICAgICAgd2lkdGg6IDQ1cHg7XG4gICAgICAgICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICAgIFxuICAgICAgJjpob3ZlciB7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYlRhYmxlUm93SG92ZXJDb2xvcjtcblxuICAgICAgICA+IHRkIC5zYlBhZ2VzID4gLnNiQnV0dG9uc3tcbiAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JUYWJsZVJvd0hvdmVyQ29sb3I7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cbn1cblxuLy8gRmlsdGVkIGFuZCBHdWlkZWQgU2VsbGluZyBwYW5lbHMgb24gcmlnaHQgc2lkZSBvZiBwYWdlXG4uc2JQcm9kdWN0RmlsdGVyLCAjc2JHdWlkZWRNb2RhbC5zYkd1aWRlZCB7XG4gIC5zYlBhbmVsO1xuXG4gIGRpdiB7XG4gICAgPiBhIHtcbiAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgICAgZGlzcGxheTogZmxleDtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIH1cbiAgfVxuXG4gIGZpZWxkc2V0PnNwYW4ge1xuICAgID4gaW5wdXRbdHlwZT1jaGVja2JveF0ge1xuICAgICAgZGlzcGxheTogbm9uZTtcbiAgICB9XG4gIH1cblxuICBsYWJlbD5zcGFuIHtcbiAgICA+IGlucHV0W3R5cGU9Y2hlY2tib3hdIHtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgfVxuICB9XG59XG5cbi5zYlByb2R1Y3RzIHtcbiAgdHJhbnNpdGlvbjogLjAycztcbn1cblxuLy8gR3VpZGVkIFNlbGxpbmdcbiNzYkd1aWRlZE1hc2sge1xuICAuc2JNb2RhbE1hc2s7XG5cbiAgJi5jbG9zZSB7XG4gICAgZGlzcGxheTogbm9uZTtcbiAgfVxufVxuXG4jc2JHdWlkZWRNb2RhbC5zYkd1aWRlZE1vZGFsIHtcbiAgLnNiTW9kYWxEaWFsb2c7XG4gIG1heC13aWR0aDogNDgwcHg7XG5cbiAgJi5jbG9zZSB7XG4gICAgZGlzcGxheTogbm9uZTtcbiAgfVxuXG4gID4gLnNiRmllbGRDb257XG4gICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICBvdmVyZmxvdzogYXV0bztcbiAgfVxuXG4gIGZpZWxkc2V0IHtcbiAgICBwYWRkaW5nOiAxMHB4O1xuICAgIGJvcmRlcjogMDtcbiAgICBmb250LXNpemU6IDEuNGVtO1xuXG4gICAgPiBsYWJlbCB7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgcGFkZGluZzogMCAwIDVweCA3cHg7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgIH1cblxuICAgID4gc3BhbiB7XG4gICAgICBkaXNwbGF5OiBibG9jaztcbiAgICAgID4gaW5wdXRbdHlwZT1jaGVja2JveF0ge1xuICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgfVxuICAgIH1cblxuICAgIGlucHV0LCBzZWxlY3Qge1xuICAgICAgZm9udC1zaXplOiBpbmhlcml0ICFpbXBvcnRhbnQ7XG4gICAgICBtYXJnaW4tbGVmdDogNnB4O1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICAgIG1pbi13aWR0aDogMTAwcHg7XG4gICAgfVxuXG4gICAgPiAqW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICBjb2xvcjogQHNiSWNvbkNvbG9yO1xuICAgIH1cbiAgfVxuXG59XG5cbmRpdi5jaGF0dGVyRm9sbG93IHtcbiAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbn1cblxuLmNoYXR0ZXJGb2xsb3cgYSB7XG4gIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcbiAgY29sb3I6ICMwMDAwMDA7XG4gIGN1cnNvcjogcG9pbnRlcjtcbn1cblxuLmNoYXR0ZXJGb2xsb3cgLmZvbGxvd0ljb24ge1xuICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoL2ltZy9mZWVkcy9mb2xsb3dfc3ByaXRlLnBuZyk7XG4gIGJhY2tncm91bmQtcmVwZWF0OiBuby1yZXBlYXQ7XG4gIGJhY2tncm91bmQtcG9zaXRpb246IDAgMDtcbiAgd2lkdGg6IGF1dG87XG4gIGhlaWdodDogMjBweDtcbiAgbWFyZ2luLXRvcDogN3B4O1xuICBtYXJnaW4tbGVmdDogM3B4OyAgXG59XG5cbi5jaGF0dGVyRm9sbG93IC5jaGVja0ljb24ge1xuICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoL2ltZy9mZWVkcy9mb2xsb3dfc3ByaXRlLnBuZyk7XG4gIGJhY2tncm91bmQtcmVwZWF0OiBuby1yZXBlYXQ7XG4gIGJhY2tncm91bmQtcG9zaXRpb246IDAgLTI3cHg7XG4gIHdpZHRoOiBhdXRvO1xuICBoZWlnaHQ6IDIwcHg7XG4gIG1hcmdpbi10b3A6IDdweDtcbiAgbWFyZ2luLWxlZnQ6IDNweDtcbn1cblxuLmNoYXR0ZXJGb2xsb3cgLnVuZm9sbG93SWNvbiB7XG4gIGJhY2tncm91bmQtaW1hZ2U6IHVybCgvaW1nL2ZlZWRzL2ZvbGxvd19zcHJpdGUucG5nKTtcbiAgYmFja2dyb3VuZC1yZXBlYXQ6IG5vLXJlcGVhdDtcbiAgYmFja2dyb3VuZC1wb3NpdGlvbjogMCAtNTRweDtcbiAgd2lkdGg6IGF1dG87XG4gIGhlaWdodDogMjBweDtcbiAgbWFyZ2luLXRvcDogN3B4O1xuICBtYXJnaW4tbGVmdDogM3B4O1xufVxuXG4uY2hhdHRlckZvbGxvdyAuaGlvbiB7XG4gIGJhY2tncm91bmQtcG9zaXRpb246IDAgLTc1cHg7XG59IiwiLy8gU2VhcmNoIHJlc3VsdHMgZGlzcGxheWVkXG4jc2JTdWJzY3JpcHRpb25TZWFyY2gge1xuICAuc2JTZWFyY2hSZXN1bHRzO1xuXG4gIC5zYlBhZ2VUaXRsZSB7XG5cbiAgICAmLnNxdWVlemVkIHtcbiAgICAgIC5zYlRvb2xzIHtcbiAgICAgICAgcGFkZGluZzogMDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JUb29scyB7XG4gICAgICBtYXJnaW4tcmlnaHQ6IDEwcHg7XG4gICAgICBwYWRkaW5nOiA3cHggMDtcblxuICAgICAgPiAuc2JUb29sIHtcbiAgICAgICAgcGFkZGluZzogOHB4O1xuICAgICAgfVxuICAgIH1cbiAgfVxufVxuXG4vLyBTaWRlIHBhbmVsXG4uc2JTdWJzY3JpcHRpb25GaWx0ZXIge1xuICAuc2JQYW5lbDtcblxuICBpbnB1dCB7XG4gICAgZGlzcGxheTogaW5saW5lO1xuICB9XG5cbiAgZGl2IHtcbiAgICA+IGEge1xuICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgICBkaXNwbGF5OiBmbGV4O1xuICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgfVxuICB9XG59XG4iLCIvLyBVc2VkIGZvciB0aGUgQ2xvbmVQcm9kdWN0Q2hpbGRyZW4sIENsb25lTGluZUl0ZW1zLCBhbmQgQ2xvbmVRdW90ZVRlbXBsYXRlUmVsYXRlZCBwYWdlc1xuLy8gQWxzbyBhZGRlZCBSZWZyZXNoUHJpY2luZyBQYWdlc1xuLy8gQWxzbyBhZGRlZCBQcmV2aWV3T3Bwb3J0dW5pdHkgcGFnZVxuI3NiQ2xvbmVSZWxhdGVkLCAjc2JSZWZyZXNoUHJpY2VzLCAjc2JQcmV2aWV3QXBwcm92YWxzLCAjc2JMaXN0QXBwcm92YWxzIHtcblxuXHRiYWNrZ3JvdW5kOiBAc2JQYWdlQmdDb2xvcjtcblx0Y29sb3I6IEBzYkZvbnRDb2xvcjtcblx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHRmb250LWZhbWlseTogQHNiRm9udDtcblxuXHQuc2JQYWdlVGl0bGUge1xuXHRcdHRleHQtYWxpZ246IGxlZnQ7XG5cblx0XHRoMSB7XG5cdFx0XHRmb250LXNpemU6IEBzYkZvbnRTaXplICogMjtcblx0XHQgIFx0Zm9udC13ZWlnaHQ6IDMwMDtcblx0XHQgICAgZm9udC1mYW1pbHk6IEBzYkZvbnQ7XG5cdFx0ICAgIGNvbG9yOiBAc2JGb250Q29sb3I7XG5cdFx0fVxuXHRcdGgyIHtcblx0XHQgIFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuMjtcbiAgICAgICAgICAgIGNvbG9yOiBAc2JGb250Q29sb3I7XG5cdFx0fVxuXG5cdFx0LnNmLWljb24tY29weTpiZWZvcmUsIC5zZi1pY29uLXJlZnJlc2g6YmVmb3JlLCAuc2YtaWNvbi1hcHByb3ZhbDpiZWZvcmUge1xuXHRcdFx0bWFyZ2luLXRvcDogMTBweDtcblx0XHRcdHBvc2l0aW9uOiBpbmhlcml0O1xuXHRcdH1cblxuXHRcdC5zZi1pY29uLXBvc3Q6YmVmb3JlIHtcblx0XHRcdHBvc2l0aW9uOiBpbmhlcml0O1xuXHRcdH1cblxuXHRcdC5zZi1pY29uLWFwcHJvdmFsOmJlZm9yZSB7XG5cdFx0XHRtYXJnaW4tdG9wOiAwcHg7XG5cdFx0fVxuXG5cdFx0LnJlc2l6ZSB7XG5cdFx0XHRwYWRkaW5nOiAycHggMTBweDtcblx0XHR9XG5cdH1cblxuXHQubWVzc2FnZSB7XG5cdFx0cGFkZGluZzogMTBweDtcblx0XHRtYXJnaW46IDE4cHggMjRweDtcblx0XHQubWVzc2FnZVRleHQge1xuXHRcdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNDtcblx0XHRcdGg0IHtcblx0XHRcdFx0cGFkZGluZzogMCA0cHg7XG5cdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZTtcblx0XHRcdFx0Zm9udC13ZWlnaHQ6IDMwMDtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHQuc2JCdG5zIHtcblx0XHRmb250LXNpemU6IEBzYkZvbnRTaXplICogMC45O1xuXHRcdGJvcmRlci1yYWRpdXM6IDA7XG5cdFx0dmVydGljYWwtYWxpZ246IHRvcDtcblx0XHRmbG9hdDogcmlnaHQ7XG5cblx0XHQuc2JCdG4ge1xuXHRcdFx0Ym9yZGVyLXJhZGl1czogMDtcblxuXHRcdFx0JjpmaXJzdC1vZi10eXBlIHtcblx0XHRcdFx0Ym9yZGVyLXRvcC1sZWZ0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuXHRcdFx0XHRib3JkZXItYm90dG9tLWxlZnQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG5cdFx0XHR9XG5cblx0XHRcdCY6bGFzdC1vZi10eXBlIHtcblx0XHRcdFx0Ym9yZGVyLWxlZnQ6IDA7XG5cdFx0XHRcdGJvcmRlci10b3AtcmlnaHQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG5cdFx0XHRcdGJvcmRlci1ib3R0b20tcmlnaHQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0Ly8gQ29udGFpbmVyIGZvciBlYWNoIHJlbGF0ZWQgbGlzdFxuXHQuc2JHcm91cCB7XG5cdCAgICA+IGhlYWRlciB7XG5cdCAgICAgICAgbWFyZ2luOiAwO1xuXHQgICAgICAgIGJvcmRlcjogMDtcblx0ICAgICAgICBwYWRkaW5nOiBAc2JQYWdlSGVhZGVyVG9wIC0gNXB4IEBzYlBhZ2VIZWFkZXJMZWZ0IEBzYlBhZ2VIZWFkZXJUb3AgLSAxMHB4O1xuXHQgICAgICAgIGJvcmRlci1ib3R0b206IEBzYkNvbnRlbnRCb3JkZXI7XG4gICAgICBcdH1cblxuICAgICAgXHQuc2JQYWdlQmxvY2tTZWN0aW9uIHtcbiAgICAgIFx0XHRwYWRkaW5nLWJvdHRvbTogNnB4O1xuXHRcdCAgXHR0ZXh0LWFsaWduOiBsZWZ0O1xuXG4gICAgICBcdFx0PiBoMyB7XG5cdFx0ICAgIFx0Zm9udC1mYW1pbHk6IEBzYkZvbnQ7XG5cdFx0XHQgIFx0Zm9udC13ZWlnaHQ6IDMwMDtcblx0XHRcdH1cbiAgICAgIFx0fVxuXG5cdCAgICBtYXJnaW46IEBzYlBhZ2VIZWFkZXJUb3AgQHNiUGFnZUhlYWRlckxlZnQ7XG5cdCAgICBib3JkZXI6IEBzYkNvbnRlbnRCb3JkZXI7XG5cdCAgICBib3JkZXItcmFkaXVzOiAzcHg7XG4gIFx0fVxuXG5cdC8vIEJ1dHRvbnMgdG8gZXhwYW5kIGFuZCBjb250cmFjdCByZWxhdGVkIGxpc3Rcblx0LnRvZ2dsZUJ1dHRvbiB7XG5cdFx0ZmxvYXQ6IHJpZ2h0O1xuXHR9XG5cblx0Ly8gVGFibGUgZm9yIGVhY2ggcmVsYXRlZCBsaXN0XG5cdC50YWJsZUNvbnRhaW5lciB7XG5cdFx0ZGlzcGxheTogbm9uZTtcblx0fVxuXG5cdC5zYlRhYmxlIHtcblx0ICAgIEByb3dIZWlnaHQ6IEBzYlRhYmxlQ2VsbEhlaWdodDtcblx0ICAgIEBpbmRlbnQ6IDEwcHggKyBAc2JQYWdlSGVhZGVyTGVmdDtcblxuXHQgICAgLnJmSGVhZCB7XG5cdCAgICBcdGJhY2tncm91bmQ6IEBzYkNvbnRlbnRCZ0NvbG9yO1xuXHQgICAgfVxuXG5cdCAgICAvLyBwYWRkaW5nIGZvciBmaXJzdCBhbmQgbGFzdCBjb2x1bW5zXG5cdCAgICA+IHRoZWFkID4gdHIgPiB0aDpmaXJzdC1vZi10eXBlLFxuXHQgICAgPiB0Ym9keSA+IHRyID4gdGQ6Zmlyc3Qtb2YtdHlwZSB7XG5cdCAgICAgIFx0cGFkZGluZy1sZWZ0OiBAc2JQYWdlSGVhZGVyTGVmdDtcblx0ICAgIH1cblx0ICAgID4gdGhlYWQgPiB0ciA+IHRoOmxhc3Qtb2YtdHlwZSxcblx0ICAgID4gdGJvZHkgPiB0ciA+IHRkOmxhc3Qtb2YtdHlwZSB7XG5cdCAgICAgIFx0cGFkZGluZy1yaWdodDogQHNiUGFnZUhlYWRlckxlZnQ7XG5cdCAgICB9XG5cdCAgICA+IHRib2R5ID4gdHI6bGFzdC1vZi10eXBlID4gdGQge1xuXHQgICAgICBcdGJvcmRlci1ib3R0b206IG5vbmU7XG5cdCAgICB9XG5cblx0ICAgID4gdGhlYWQgPiB0ciA+IHRoIHtcblx0ICAgICAgXHRoZWlnaHQ6IEByb3dIZWlnaHQgKiAwLjU7XG5cdCAgICB9XG5cblx0ICAgIC8vIHRhYmxlIGNlbGxzXG5cdCAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG5cdCAgICBcdHBhZGRpbmc6IEByb3dIZWlnaHQgKiAwLjEgQHJvd0hlaWdodCAqIDAuMjtcblx0ICAgICAgXHRoZWlnaHQ6IEByb3dIZWlnaHQgKiAwLjU7XG5cdCAgICAgIFx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0ICAgICAgXHR0ZXh0LWFsaWduOiBsZWZ0O1xuXHRcdH1cblxuXHRcdD4gdGZvb3QgPiB0ciB7XG5cdFx0XHQ+IHRkIHtcblx0XHRcdFx0dGV4dC1hbGlnbjogbGVmdDtcblx0XHQgICAgXHRwYWRkaW5nLXRvcDogQHJvd0hlaWdodCAqIDAuMTtcblx0XHQgICAgXHRwYWRkaW5nLWJvdHRvbTogQHJvd0hlaWdodCAqIDAuMTtcblx0XHQgICAgXHRwYWRkaW5nLWxlZnQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuXHRcdFx0XHRoZWlnaHQ6IEByb3dIZWlnaHQgKiAwLjQ7XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0dGJvZHkgPiB0cjpob3ZlciB7XG5cdFx0ICBcdGJhY2tncm91bmQ6IG5vbmU7XG5cdFx0fVxuXHR9XG5cbn1cbiIsIi8vIEZhdm9yaXRlIE1hbmFnZXJcbiNzYkZhdm9yaXRlc01hbmFnZXIge1xuXG4gIC5zYlBhZ2VUaXRsZSB7XG4gICAgLnNiVG9vbHMge1xuICAgICAgbWFyZ2luLXJpZ2h0OiAxMHB4O1xuXG4gICAgICA+IC5zYlRvb2wge1xuICAgICAgICBiYWNrZ3JvdW5kOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gICAgICAgIHBhZGRpbmc6IDdweDtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAudG9wTXNnIHtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gICAgcGFkZGluZzogMzJweFxuICB9XG5cbiAgLmJvdE1zZyB7XG4gICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICB9XG5cbiAgLnNiVGFibGUge1xuICAgID4gdGhlYWQgPiB0ciA+IHRoOmZpcnN0LW9mLXR5cGUsXG4gICAgPiB0Ym9keSA+IHRyID4gdGQ6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICB9XG5cbiAgICAuc2JTZWxlY3Rpb25IZWFkZXIge1xuICAgICAgd2lkdGg6IDElXG4gICAgfVxuXG4gICAgLnNiRmF2b3JpdGVIZWFkZXIge1xuICAgICAgd2lkdGg6IDE2MHB4O1xuICAgIH1cblxuICAgICAgLnNiRGVzY3JpcHRpb24ge1xuICAgICAgICB3aWR0aDogNTAlO1xuICAgICAgfVxuXG4gICAgdGJvZHkge1xuICAgICAgdHIge1xuICAgICAgICB0ZCB7XG4gICAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcblxuICAgICAgICAgIGkge1xuICAgICAgICAgICAgY29sb3I6IEBzYkxpbmtDb2xvcjtcbiAgICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgICBjb2xvcjogQHNiRm9udENvbG9yO1xuICAgICAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgI3NiRmF2b3JpdGVzTWFuYWdlck1hc2sge1xuICAgIC5zYk1vZGFsTWFzaztcblxuICAgICYuY2xvc2Uge1xuICAgICAgZGlzcGxheTogbm9uZTtcbiAgICB9XG4gIH1cblxuICAjc2JGYXZvcml0ZXNNYW5hZ2VyTW9kYWwge1xuICAgIC5zYk1vZGFsRGlhbG9nO1xuXG4gICAgbWluLWhlaWdodDogMTYwcHg7XG4gICAgbWF4LXdpZHRoOiA0MDBweDtcblxuICAgIC5zYk1vZGFsQ29udGVudENvbnRhaW5lciB7XG4gICAgICB1bCB7XG4gICAgICAgIC13ZWJraXQtcGFkZGluZy1lbmQ6IDBweDtcbiAgICAgIH1cblxuICAgICAgLnNiVGFibGUge1xuICAgICAgICAuc2JBY3Rpb25zIHtcbiAgICAgICAgICB3aWR0aDogMSU7XG4gICAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgICAgICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLmZvcm0tY29udHJvbCB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gICAgd2lkdGg6IDEwMCU7XG4gICAgaGVpZ2h0OiAzNHB4O1xuICAgIHBhZGRpbmc6IDZweCAxMnB4O1xuICAgIGZvbnQtc2l6ZTogMTRweDtcbiAgICBsaW5lLWhlaWdodDogMS40Mjg1NzE0MztcbiAgICBjb2xvcjogIzU1NTtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjZmZmO1xuICAgIGJhY2tncm91bmQtaW1hZ2U6IG5vbmU7XG4gICAgYm9yZGVyOiAxcHggc29saWQgI2NjYztcbiAgICBib3JkZXItcmFkaXVzOiA0cHg7XG4gIH1cblxuICAuc2JWYWxpZGF0aW9uRXJyb3JzIHtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICBwYWRkaW5nOiA1cHggMTVweDtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgIGNvbG9yOiAjYzAwO1xuICB9XG5cbiAgLmludmFsaWQge1xuICAgIGJvcmRlci1jb2xvcjogI2MwMDtcbiAgfVxuXG4gIC5kcm9wZG93bi1tZW51IHtcbiAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgdG9wOiAxMDAlO1xuICAgIGxlZnQ6IDA7XG4gICAgei1pbmRleDogMTAwMDtcbiAgICBkaXNwbGF5OiBub25lO1xuICAgIGZsb2F0OiBsZWZ0O1xuICAgIG1pbi13aWR0aDogMTYwcHg7XG4gICAgcGFkZGluZzogNXB4IDA7XG4gICAgbWFyZ2luOiAycHggMCAwO1xuICAgIGZvbnQtc2l6ZTogMTRweDtcbiAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgIGxpc3Qtc3R5bGU6IG5vbmU7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogI2ZmZjtcbiAgICBib3JkZXI6IDFweCBzb2xpZCByZ2JhKDAsMCwwLC4xNSk7XG4gICAgYm9yZGVyLXJhZGl1czogNHB4O1xuICAgIGJveC1zaGFkb3c6IDAgNnB4IDEycHggcmdiYSgwLDAsMCwuMTc1KTtcbiAgICBiYWNrZ3JvdW5kLWNsaXA6IHBhZGRpbmctYm94O1xuICB9XG5cbiAgLmRyb3Bkb3duLW1lbnUgPiBsaSA+IGEge1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgIHBhZGRpbmc6IDNweCAyMHB4O1xuICAgIGNsZWFyOiBib3RoO1xuICAgIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gICAgbGluZS1oZWlnaHQ6IDEuNDI4NTcxNDM7XG4gICAgY29sb3I6ICMzMzM7XG4gICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbiAgfVxuICAuZHJvcGRvd24tbWVudSA+IGxpID4gYTpob3ZlcixcbiAgLmRyb3Bkb3duLW1lbnUgPiBsaSA+IGE6Zm9jdXMge1xuICAgIGNvbG9yOiAjMjYyNjI2O1xuICAgIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjZjVmNWY1O1xuICB9XG5cbiAgLmRyb3Bkb3duLW1lbnUgPiAuYWN0aXZlID4gYSxcbiAgLmRyb3Bkb3duLW1lbnUgPiAuYWN0aXZlID4gYTpob3ZlcixcbiAgLmRyb3Bkb3duLW1lbnUgPiAuYWN0aXZlID4gYTpmb2N1cyB7XG4gICAgY29sb3I6ICNmZmY7XG4gICAgdGV4dC1kZWNvcmF0aW9uOiBub25lO1xuICAgIGJhY2tncm91bmQtY29sb3I6ICMzMzdhYjc7XG4gICAgb3V0bGluZTogMDtcbiAgfVxuXG59XG5cblxuIiwiLy8gVXNlZCBmb3IgdGhlIGJsb2NrIHByaWNlIGFuZCBjb3N0IHNjaGVkdWxlIHBhZ2VzXG4jc2JCbG9ja1ByaWNlIHtcblxuXHRiYWNrZ3JvdW5kOiBAc2JQYWdlQmdDb2xvcjtcblx0Y29sb3I6IEBzYkZvbnRDb2xvcjtcblx0Zm9udC1mYW1pbHk6IEBzYkZvbnQ7XG5cdHBhZGRpbmctdG9wOiAxMHB4O1xuICAgIHBhZGRpbmctYm90dG9tOiAxMHB4O1xuXG5cdCNzYlByaWNlQm9va0dyb3VwIHtcbiAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHR9XG5cbiAgICAjc2JDbG9uZVByaWNlQm9va0dyb3VwIHtcbiAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICBwYWRkaW5nLWxlZnQ6IDEwMHB4O1xuXHR9XG5cbiAgICAuc2JQcmljZUJvb2tUZXh0IHtcbiAgICAgICAgcGFkZGluZzogMTBweDtcblx0fVxuXG5cdC5zYkNsb25lRnJvbVByaWNlQm9vayB7XG5cdCAgICBtYXJnaW4tbGVmdDogMTVweDtcblx0ICAgIHBhZGRpbmctYm90dG9tOiA0cHg7XG5cdH1cblxuXHQuc2JQcmljZUJvb2tTZWxlY3Qge1xuXHQgICAgcGFkZGluZy1ib3R0b206IDJweDtcblx0fVxufSJdLCJmaWxlIjoic2IuY3NzIn0= */
