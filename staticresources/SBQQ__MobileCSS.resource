/*** Common ***/
@-webkit-keyframes loading-rotate {
  0% {
    -webkit-transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
  }
}
@-moz-keyframes loading-rotate {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
@keyframes loading-rotate {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
* {
  font-family: ProximaNova, Arial, sans-serif;
  color: #3c3d3e;
  -webkit-font-smoothing: antialiased;
}
*,
*:before,
*:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}
body {
  padding: 0px;
  margin: 0px;
}
.pbSubsection header {
  *zoom: 1;
  margin-left: -7px;
  margin-right: -7px;
  margin-bottom: 5px;
  padding: 14px;
  vertical-align: middle;
  border-bottom-width: 1px;
  border-bottom-style: solid;
  border-color: #eceef0;
}
.pbSubsection header h1 {
  margin: 0px;
  /*font-weight: 300;*/
  font-size: 14px;
  color: #3c3d3e;
}
.pbSubsection label {
  text-align: left;
}
header.pageHeader {
  margin: 0px;
  background-color: white;
  border-bottom-width: 1px;
  border-bottom-style: solid;
  border-color: #cfd4d9;
  padding-top: 3px;
  padding-bottom: 3px;
  width: 100%;
}
header.pageHeader h1 {
  display: inline-block;
  font-weight: 100;
  vertical-align: middle;
}
header.pageHeader h1 .title {
  display: block;
  font-size: 12px;
}
header.pageHeader h1 .subtitle {
  display: block;
  font-size: 14px;
}
.icon {
  display: inline-block;
  background-position: 50%;
  background-repeat: no-repeat;
  border-radius: 5px;
  width: 30px;
  height: 30px;
  background-size: 100%;
  vertical-align: middle;
  margin-left: 14px;
  margin-right: 14px;
}
.iconCustom18 {
  background-color: #4dca76;
  background-image: url('/img/icon/t4/custom/custom18_60.png');
}
input,
textarea,
keygen,
select,
button,
isindex {
  margin: 0;
  font: -webkit-small-control;
  font-size: 15px;
  font-family: inherit;
  color: initial;
  letter-spacing: normal;
  word-spacing: normal;
  text-transform: none;
  text-indent: 0px;
  text-shadow: none;
  display: inline-block;
  vertical-align: middle;
  text-align: start;
  box-sizing: border-box;
  color: #3c3d3e;
  padding: 7px 14px;
  line-height: 25px;
  border-radius: 5px;
  border: 1px solid #cfd0d2;
  -webkit-writing-mode: horizontal-tb;
  -moz-appearance: none;
  -webkit-appearance: none;
  -ms-appearance: none;
}
input {
  border: 1px solid #cfd0d2;
  border-radius: 3px;
  background-color: #fff;
  box-shadow: inset 0 2px 2px rgba(0, 0, 0, 0.07);
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
label {
  font-size: 13px;
  color: #696e71;
  margin: 0;
  padding-bottom: 5px;
  display: block;
}
textarea {
  -webkit-rtl-ordering: logical;
  -webkit-user-select: text;
  flex-direction: column;
  cursor: auto;
  white-space: pre-wrap;
  word-wrap: break-word;
  background-color: #fff;
  box-shadow: inset 0 2px 2px rgba(0, 0, 0, 0.07);
}
input[type="checkbox"],
input[type="radio"] {
  padding: 0px;
  border-style: solid;
  border-width: 1px;
  height: 22px;
  width: 22px;
  border-color: #bbc0c4;
  box-shadow: 0 1px 0 rgba(0, 0, 0, 0.02), inset 0 0 0 2px rgba(255, 255, 255, 0.5);
}
input[type="checkbox"]:disabled,
input[type="radio"]:disabled {
  opacity: 0.4;
}
input[type="checkbox"]:focus,
input[type="checkbox"]:active,
input[type="radio"]:focus,
input[type="radio"]:active {
  background: #e8eaeb;
}
input[type="checkbox"]:checked,
input[type="radio"]:checked {
  border-color: #1c78b1;
  background: #2a94d6 !important;
  box-shadow: 0 1px 0 rgba(0, 0, 0, 0.02);
}
input[type="checkbox"]:checked::after {
  display: block;
  position: relative;
  content: '';
  left: 3px;
  top: 4px;
  height: 8px;
  width: 14px;
  border-bottom: 4px solid white;
  border-left: 4px solid white;
  -webkit-transform: rotate(-45deg);
}
input[type="radio"]:checked::after {
  display: block;
  position: relative;
  content: '';
  left: 5px;
  top: 5px;
  height: 10px;
  width: 10px;
  border-radius: 100%;
  background: white;
}
input.invalidDate {
  border-color: #c00;
}
select {
  min-width: 50px;
  padding: 7px 14px;
  margin-left: 3px;
  background-image: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2ZXJzaW9uPSIxLjEiIGlkPSJMYXllcl8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDI3LjYgMjEiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDI3LjYgMjEiIHhtbDpzcGFjZT0icHJlc2VydmUiPg0KICA8Zz4NCiAgICA8ZGVmcz4NCiAgICAgIDxwYXRoIGlkPSJTVkdJRF8xXyIgZD0iTTUuNiA1aDE2LjRjMC40IDAgMC44IDAuNiAwLjQgMWwtOCA5LjhjLTAuMyAwLjMtMC45IDAuMy0xLjIgMGwtOC05LjhDNC44IDUuNiA1LjEgNSA1LjYgNXoiLz4NCiAgICA8L2RlZnM+DQogICAgPGNsaXBQYXRoIGlkPSJTVkdJRF8yXyI+DQogICAgICA8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF8xXyIgb3ZlcmZsb3c9InZpc2libGUiLz4NCiAgICA8L2NsaXBQYXRoPg0KICAgIDxyZWN0IHg9IjAiIHk9IjAiIGNsaXAtcGF0aD0idXJsKCNTVkdJRF8yXykiIGZpbGw9IiM1NTY5OEQiIHdpZHRoPSIyNy42IiBoZWlnaHQ9IjIxIi8+DQogIDwvZz4NCjwvc3ZnPg0K');
  background-color: #fff;
  background-position: 95% 50%;
  background-repeat: no-repeat;
  background-size: 14px 14px;
  border: 1px solid #cfd0d2;
  border-radius: 3px;
}
select[multiple] {
  min-height: 74px;
}
select[size="1"] {
  align-items: center;
  white-space: pre;
}
button.btn {
  background-color: white;
  border-color: #bbc0c4;
  padding-top: 6px;
  padding-bottom: 7px;
  padding-left: 6px;
  padding-right: 7px;
  margin-bottom: 14px;
  text-align: center;
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#f1f1f1));
  background-image: -webkit-linear-gradient(top, #ffffff, #f1f1f1);
  background-image: -moz-linear-gradient(top, #ffffff, #f1f1f1);
  background-image: -ms-linear-gradient(top, #ffffff, #f1f1f1);
  background-image: -o-linear-gradient(top, #ffffff, #f1f1f1);
}
button.btn span {
  font-size: 16px;
  font-weight: 700;
  color: #44596c;
}
button.primary {
  width: 200px;
}
button.single {
  max-width: 250px;
  width: 100%;
}
button {
  color: buttontext;
}
button.btn span.icon-utility-down {
  margin-left: 10px;
  margin-right: 10px;
}
.pbHeader {
  width: 100%;
  padding-top: 15px;
  text-align: center;
}
.pbTitle {
  display: none;
}
.pbButton {
  width: 100%;
}
table.list {
  width: 100%;
}
table.list td,
table.list th {
  padding: 5px 3px;
}
table.list th {
  color: #696e71;
  font-size: 12px;
  text-align: left;
  padding-right: 10px;
}
table.list td {
  font-size: 14px;
  color: #3c3d3e;
  padding-right: 10px;
}
td.dataCell {
  border-top: 1px solid #cfd4d9;
}
.labelCol {
  text-align: right;
  padding-right: 10px;
}
.instructionsCol {
  padding-left: 10px;
  padding-top: 5px;
}
.buttonContainer {
  width: 100%;
  margin-top: 7px;
  margin-bottom: 7px;
  text-align: center;
}
.recordEditorForm {
  margin-left: 10px;
  margin-right: 10px;
  padding-top: 85px;
}
.recordEditorForm td {
  padding-bottom: 3px;
}
.recordEditorForm select,
.recordEditorForm input[type="text"] {
  width: 100%;
}
.statusContainer {
  position: fixed;
  right: 0;
  left: 0;
  top: 0;
  bottom: 0;
  z-index: 1001;
  text-align: center;
  padding: 0px;
  opacity: 0.6;
  background-color: #354452;
}
.statusIcon {
  width: 30px;
  height: 30px;
  color: #afb5b9;
  position: absolute;
  top: 50%;
  margin: -15px auto auto;
  -webkit-animation: loading-rotate linear 0.8s infinite;
  -moz-animation: loading-rotate linear 0.8s infinite;
  animation: loading-rotate linear 0.8s infinite;
  -webkit-animation-fill-mode: forwards;
  -moz-animation-fill-mode: forwards;
  animation-fill-mode: forwards;
  background: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2M3B4IiBoZWlnaHQ9IjYzcHgiIHZpZXdCb3g9IjAgMCA2MyA2MyI+PHBhdGggZmlsbD0iI2FmYjViOSIgZD0iTTMxLjUwMSwxNi43ODF2LTQuODg2Yy0xMC43ODksMC0xOS41MzYsOC43NDUtMTkuNTM2LDE5LjUzNWMwLDEwLjc4OSw4Ljc0NywxOS41MzUsMTkuNTM2LDE5LjUzNWMxMC43ODgsMCwxOS41MzQtOC43NDYsMTkuNTM0LTE5LjUzNWMwLTUuMjE0LTIuMDQ5LTkuOTQ4LTUuMzc3LTEzLjQ1Mmw0LjcxOS00LjQ4M2M0LjQ0LDQuNjcxLDcuMTY4LDEwLjk4Myw3LjE2OCwxNy45MzdjMCwxNC4zODUtMTEuNjYyLDI2LjA0My0yNi4wNDIsMjYuMDQzYy0xNC4zODYsMC0yNi4wNDctMTEuNjU4LTI2LjA0Ny0yNi4wNDNjMC0xNC4zODgsMTEuNjYxLTI2LjA0NywyNi4wNDctMjYuMDQ3VjAuNWw5Ljc2Nyw4LjEzOUwzMS41MDEsMTYuNzgxeiIvPjwvc3ZnPg==') no-repeat center center;
  background-size: 100%;
}
.modalDialogWrapper {
  z-index: 22;
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
}
.modalDialogBackground {
  z-index: 21;
  opacity: 0.6;
  background-color: #354452;
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  -webkit-transition: opacity 300ms;
}
.modalDialog {
  z-index: 22;
  position: fixed;
  top: 100px;
  left: 0;
  right: 0;
  margin: auto;
  height: auto;
  max-height: 70%;
  width: 100%;
  max-width: 292px;
  border-radius: 5px;
  background-color: #ffffff;
  -webkit-transition: -webkit-transform 0.3s ease-in;
  overflow: scroll;
}
.closeBtn {
  position: fixed;
  z-index: 22;
  right: 0px;
  left: 0px;
  top: 70px;
  color: #ffffff;
  width: 100%;
  max-width: 292px;
  font-family: Arial;
  font-weight: 600;
  font-size: 25px;
  display: block;
  margin: auto;
  text-align: right;
}
.modalDialog .body {
  max-height: 70%;
  overflow: scroll;
  padding: 1px 14px;
  -webkit-flex: 1;
  border-radius: 5px;
}
.modalDialog .scrollWrapper {
  overflow: scroll;
  position: inherit;
  height: 70%;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
  -webkit-user-drag: none;
}
.modalDialog .scrollContent {
  -webkit-transition: -webkit-transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1);
  transition: -webkit-transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1);
  -webkit-transform-origin: 0px 0px;
}
.modalDialog button,
.modalDialog input {
  display: block;
  margin-top: 14px;
  width: 100%;
}
.documentPreviewContainer {
  position: absolute;
  width: 100%;
  top: 135px;
  bottom: 0px;
  overflow: scroll;
  text-align: center;
  -webkit-overflow-scrolling: touch;
}
iframe.documentPreviewFrame {
  width: 100%;
  height: 100%;
  text-align: center;
}
img.pagination {
  background-image: url('/img/paginationArrows.gif');
  background-repeat: no-repeat;
  margin: 0 2px;
  zoom: 1.4;
  -moz-transform: scale(1.4);
  -moz-transform-origin: 0 0;
}
img.warning {
  background-image: url('/img/msg_icons/warning16.gif');
  background-repeat: no-repeat;
  background-position: 0 0;
  width: 16px;
  height: 16px;
}
.message {
  border-radius: 4px;
  background-color: #ffc;
  border-style: solid;
  border-width: 1px;
  color: #000;
  padding: 6px 8px 6px 6px;
  margin: 4px 20px;
  font-size: 10px;
}
.message .messageTable .messageCell {
  vertical-align: middle;
}
.message .messageText {
  margin-left: 8px;
}
.msgIcon,
.errorLarge {
  background-image: url(/img/msg_icons/error32.png);
  background-position: 0 0;
  width: 32px;
  height: 32px;
}
.messageText h1,
.messageText h2,
.messageText h3,
.messageText h4,
.messageText h5,
.messageText h6 {
  font-weight: 400;
  font-family: inherit;
  display: inline-block;
  margin: 0;
  padding: 0;
}
.requiredConfigurationAttribute {
  border-left: #c00 solid;
  padding-left: 2px;
  margin-left: 1px;
}
.mobile {
  display: initial;
}
.desktop {
  display: none;
}
/* Mobile Reskinning*/
body {
  background-color: white;
}
/*** Phone styles ***/
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  .phone {
    display: initial;
  }
  .tablet {
    display: none;
  }
  .instructionsCol {
    padding-left: 3px;
    padding-top: 10px;
  }
  .searchPanel td {
    padding: 0px;
  }
  .searchPanel label {
    margin: 0px;
    padding: 0px;
    padding-bottom: 2px;
  }
  .searchPanel div.searchField {
    margin-bottom: 5px;
  }
  .groupContainer {
    margin-bottom: 10px;
  }
  .groupName {
    font-weight: bold;
    text-decoration: none;
  }
  .list {
    margin: 10px 0;
  }
  .unpaginatedHeader,
  .invisibleText {
    display: none;
  }
  .pageSelector {
    width: 50px;
    margin-right: 5px;
    text-align: center;
  }
  .groupList {
    text-align: center;
    padding: 10px 5px;
  }
  .groupList a {
    text-decoration: none;
  }
  .groupList .groupLinkName {
    white-space: nowrap;
    font-weight: bold;
    padding: 0 15px 3px;
  }
  .groupList .displayedGroup {
    border-bottom: 2px solid black;
    font-weight: bold;
  }
  .tableHeader {
    display: inline;
  }
  .quoteTotal,
  .groupTotal {
    text-align: right;
  }
  .quoteTotal {
    font-size: 20px;
    margin-right: 15px;
  }
  header .groupTotal {
    font-size: 14px;
    margin-right: 5px;
  }
  /*Custom actions on the group*/
  customActions input {
    margin-right: 5px;
  }
  /*Quote & Group Editor - fields and buttons*/
  .customActions input {
    display: block;
    margin-bottom: 5px;
  }
  /*Tables*/
  .tableHeader {
    font-size: 1.2em;
  }
  .tableContainer.standard {
    margin-top: 20px;
  }
  /*Multi-segment table*/
  .detailRow td.dataCell {
    border-top: none;
  }
  .footerRow {
    font-weight: bold;
  }
  /*Pagination Controls*/
  .paginationControls {
    text-align: center;
  }
}
/* Tablet styles */
@media only screen and (min-device-width: 641px) and (max-device-width: 1025px) {
  .tablet {
    display: initial;
  }
  .phone {
    display: none;
  }
  .searchPanel td {
    padding-left: 5px;
    padding-right: 5px;
    vertical-align: top;
  }
  .groupContainer {
    margin-bottom: 10px;
  }
  .groupName {
    font-weight: bold;
    text-decoration: none;
  }
  .list {
    margin: 10px 0;
  }
  .unpaginatedHeader,
  .invisibleText {
    display: none;
  }
  .pageSelector {
    width: 60px;
    margin-right: 5px;
    text-align: center;
  }
  .groupList {
    text-align: center;
    padding: 10px 5px;
  }
  .groupList a {
    text-decoration: none;
  }
  .groupList .groupLinkName {
    white-space: nowrap;
    font-weight: bold;
    padding: 0 15px 3px;
  }
  .groupList .displayedGroup {
    border-bottom: 2px solid #3c3d3e;
    font-weight: bold;
  }
  .tableHeader {
    display: inline;
  }
  .quoteTotal,
  .groupTotal {
    text-align: right;
  }
  .quoteTotal {
    font-size: 20px;
    margin-right: 15px;
  }
  header .groupTotal {
    font-size: 16px;
    margin-right: 5px;
  }
  /*Custom actions on the group*/
  .customActions {
    margin-left: 5px;
  }
  .customActions {
    margin-bottom: 5px;
  }
  .customActions input {
    margin-right: 5px;
  }
  /*Tables*/
  .tableHeader {
    font-size: 1.2em;
  }
  .tableContainer {
    padding-left: 5px;
  }
  .tableContainer.standard {
    margin-top: 20px;
  }
  /*Multi-segment table*/
  .detailRow td.dataCell {
    border-top: none;
  }
  .footerRow {
    font-weight: bold;
  }
  /*Pagination Controls*/
  .paginationControls {
    text-align: center;
  }
  /* Mobile Reskinning*/
  .sbBtn {
    font-size: 16px;
    margin: 0 0 0 10px;
  }
}
/*** Icons ***/
@font-face {
  font-family: 'icomoon';
  src: url('fonts/icomoon.eot');
}
@font-face {
  font-family: 'icomoon';
  src: url(data:application/x-font-ttf;charset=utf-8;base64,AAEAAAALAIAAAwAwT1MvMg6v8ywAAAC8AAAAYGNtYXDgfOaMAAABHAAAAERnYXNwAAAAEAAAAWAAAAAIZ2x5ZlRMFxoAAAFoAAA6WGhlYWQASAk3AAA7wAAAADZoaGVhB8ID+wAAO/gAAAAkaG10eOIADMUAADwcAAAA6GxvY2GdD5AIAAA9BAAAAHZtYXhwAEMBLQAAPXwAAAAgbmFtZUQXtNYAAD2cAAABOXBvc3QAAwAAAAA+2AAAACAAAwQAAZAABQAAApkCzAAAAI8CmQLMAAAB6wAzAQkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAACDmAgPA/8D/wAPAAEAAAAAAAAAAAAAAAAAAAAAgAAAAAAACAAAAAwAAABQAAwABAAAAFAAEADAAAAAIAAgAAgAAACDgNOYC//8AAAAg4ADmAP///+EgAho3AAEAAAAAAAAAAAABAAH//wAPAAEAAAAAAAAAAAACAAA3OQEAAAAAAQBRABEDrgNuAFMAAAEuASIGBwEOARQWFx4BMjY3AT4BNCYnLgEiBg8BDgEUFhceATI2PwE+ATIWFx4BFAYHAQ4BIiYnLgE0NjcBPgEyFhceARQGDwEeAxc3PgE0JicDrihmamYp/isoKCgoKWZqZigBIBkZGRkZP0I/GbQKCgoKCRcYFwm1BhAQEAYGBgYG/uAWNzk3FhYWFhYB1RY3OTcWFhYWFgQLEQwHAS4pKSkpA24pKSkp/isoZmpmKSgoKCgBIBk/Qj8ZGRkZGbUJFxgXCQoKCgq0BgYGBgYQEBAG/uEWFhYWFjc5NxYB1RYWFhYWNzk3FgQPICIjEi4pZmpmKAABARD/wAMQA8AAKAAAASEiDgIVERQeAhcWMj4BPwEXHgMzOgMzPgM1ETQuAiMC0P6ADRcRCgIDBQMDBwYGAtvbAgQEBAIBAgICAQMFAwIKERcNA8AKERcN/FUDBgUEAQEBAwLb2wECAgEBBAUGAwOrDRcRCgAAAAABAF7/4gPeA54ATwAAJScwLgIjIg4CDwEOAiYnLgMnLgMnLgE+AT8BPgM1NC4CLwEuAyMOAwcOAR4BFx4DMzI+Ajc+Azc0LgInA8vtBAYGAgQIBwYCZQQLCwsFEiMiIRAQHRsYCwMCAQUEZQMFAwIBAQIBggIGCAkFFi0qJQ4yFTBxVTl7e3g2GjEtJxAOFxELAgMFBwTedwICAgIEBQNcBAUBAgMLGBseEBAhIiMSBQsLCwRkAwYHCAQDBQUEAu0EBwUDAgkPFQ4ymrO+VTlYPB8IEBgQDiMoKxYFCggHAgAAAAABACL/8gPeA4wATQAAAS4DJy4DIyIOAgcOAwcOAxUUHgIXHgMXHgMXFRQeAhcyHgEyMzI+Aj8BMj4CNz4DNz4DNTQuAicD0AQiMTsdJEhISCQkSEhIJB07MiMFAwUDAgIDBQMFIzI7HQoVFRUKAwUIBQIDAwQCAwYGBgLMHTo6Oh0dOzEiBAQFAwICAwUEAtwdNywdAwQGBAICBAYEAx0sNx0XLi8vGBcuLi0WHTcsHQMBAgEBAa8FCggHAgEBAQIEAsUCAwQDAxwrNh0WLi4uFxcvLy4XAAACAIn/3wN3A8AAGQAuAAABIg4CFRQeAjEeAjY3MD4CNTQuAiMRIi4CNTQ+AjMyHgIVFA4CIwIATolmO2N3YxAbGhwRZHhkO2aJTiVBMBwcMEElJUEwHBwwQSUDwD5rj1Fu16ppDxABDxBpqtduUY9rPv3XHDBBJSVBMBwcMEElJUEwHAABAJEANgMzA2oALgAACQE+AzU8AS4BJy4DIyEiDgIHAQ4BFBYXAR4DMyEyPgI3PgEuAScBAdwBTgIEAgEBAQECBwgKBf73BAcHBgL+owQEBAQBXQIGBwcEAQkFCggHAgIBAgQE/rIB0AFgAgYGBgMCBAQEAgQHBQMCAwQD/okFDAwMBf6JAgQDAgMFCAUFCgkJBAFhAAAAAAEAzQA2A24DagAuAAAJAS4DIyEiDgIHDgEeARcJAQ4DFRwBHgEXHgMzITI+AjcBPgE0JicDbv6kAgYHBwT+9wUKCAcCAgECBAMBTv6yAgMCAQEBAQIHCAoFAQkEBwcGAgFcBQUFBQHmAXcDBAMCAwUHBAUKCgkE/qD+nwIFBgYDAgQEBAIFCAUDAgMEAgF3BQwMDAUAAAAAAQCRAGEDbwM/AEQAAAE3PgImJy4DJy4BDgEPAScuAgYHDgMHDgEeAR8BBw4CFhceAxceAT4BPwEXHgI2Nz4DNz4BLgEvAQKeygcIAgQFDBgaHA8GDxAQB8rLBhAQEAYOGxoYDAUEAggHyssGCAIEBQwYGhsOBhAQEAbLygcQEA8GDxwaGAwFBAIIB8oB0MoHEBAPBg8cGhgMBQQCCAfBwQcIAgQFDBgaHA8GDxAQB8rLBhAQEAYOGxoYDAUEAgcGy8sGCAIEBQwYGhwPBg8QEAbLAAABAI8AzwNxAs8ALQAAAS4DIyIuAiMiDgIjIg4CBw4BFBYXHgMXHgEyNjc+Azc+ATQmJwNxAwkKDAYBOFx2Pj52XDgBBgwLCQMDAwMDMHJkRgMHEhISBwNGZHIwAwMDAwKrBgkHBAMEAwMEAwQHCQYGDAwMBlSZdUcDBgYGBgNHdZlUBgwMDAYAAgAA/9AEAAOuAD4AYQAAAR4DMzI+Ajc+Azc+AiYnLgMrAS4DJy4DIyIOAgcOAwcjIg4CBw4BHgEXHgMXJRQOAgchLgM1IxQeAhUeAzMhMj4CNzQ+AjUjAecDBgYGAwMGBgYDAzpTXygDAwECAgMICQoGiwYODw0EBQ8UGQ8PGRQPBQUODg4FiwYKCQcDAgIBAwMoX1M6AwFyBAYHA/11AwcGBKYMDgwEEBYaDgMODhsWEAQMDgymAVACAwIBAQIDAgIzVG07BAoLCwUFCAYDIEI4KQgIDQkFBQkNCAkqOEEgAwYIBQULCwoEO21UMwJeNl1NPRYWPE1dN2eaZzUCDhcQCQkRFw4CNWeaZgAAAAACAAf/wAP8A7kAOQBiAAAFLgMnLgMnAS4CBgcOAwcOAwcOAR4BFwEeAxceAxceAjIzMj4CNz4CJicnLgMnAT4DNwEeAzMyPgI3PgImJwE+AzcBHgMXBwP8Dx0dHQ8BAgMEAv3MBhAREQgUJiQiEBAdGxoMBQQCCAYCNAIFBQUDLltbWiwCBAQEAgUICAcEBQYCAgPwEiUlJRH98QULDA0HAgAECQkKBQUICAcECAgBBwf+AgcODg4HAg8GDAwMBkwCLFlaWi4DBgUFAgI3BgcCBAQMGhweEA8gIiQTCBERDwb9yQIEAwMBDx4eHxABAQECBAYEBQsLDQdsBgwMDAYCEQgQDw8H/f8EBQMBAgQGBAgSEhIIAf4GDAwMBf3rEiMjIxJMAAAAAAIAMgAmA+4DWgAiAE8AAAEiLgInAREUHgIXHgMzMj4CNz4DNREBDgMjAS4DIyIOAgcOAx0BHgMXAR4DMzI+AjcBPgM3NTQuAicCEBMlJCEP/q4ECAoGOHBxcTg4cXBwNwYLCAX+rg8hJCUTAcA3b3BxODhxcHA4BgoIBAEFCQ0KAWwIEhQVCwsVFBIIAWwKDQkFAQUICwYBFQUKEAsBA/4kBgsJBgEIDAgEBAgMCAEGCQsGAdz+/QsQCgUCJAgMCAQECAwIAQYJCwYxBAwOEQn+7QYJBgMDBgkGARMJEQ4MBDEGCwkGAQAHACL/wAPeA8AABAAJAA4AEwB2AIQAiQAAASMVMzUXIxUzNTUjFTM1ByMVMzUBIi4CJzU0LgIjIg4CHQEUHgIXIi4CPQEqAyMqAQ4BBzU0LgIjIg4CHQEUHgIXIi4CPQEOAyMOAxURFB4CFzIeAjMyPgIzPgM1ETQuAicDDgMjIi4CJxEhESUjFTM1AkSJic2JiYmJzYmJAXECGCo7JQsTGQ4OGRMLAwYIBRIhGQ8IERERCRIjIiEQCxMZDg4ZEwsDBggFEiEZDxYiGQ4BCQ8LBgYLDwkDQXKfYGCfckEDCQ8LBgYLDwk+GEpgdEJCdGBKGALv/gCJiQHiiYnNiYnNiYnNiYkCHwQHCAQwDhkTCwsTGQ6JCA4NCwUMFh8TQwEBASUOGRMLCxMZDokIDg0LBQwWHxMuAwUEAwIJDRAJ/RYJEA0JAgwODAwODAIJDRAJAuoJEA0JAv0LBAoJBgYJCgQB5/4Z1omJAAAAAQAD/8AD/QPAAHMAAAEuAycuAycuAycuAyMiDgIHDgMHDgMHDgMHDgEeARceAxcOAwcUHgIXHgI2Nz4DNz4DNx4DFx4DFx4DMzI+Ajc+AzUuAyc+Azc+AiYnA/0CBQcJBRNCUlssDiMmJxIECAkJBQUKCQkEEicmIw4sW1JCEwUJBwUCAgIBAwMMKzpGKAsSDgkCAwYJBgYNDQ0GBw4PDwgVLjM3Hh43My4VCA8PDgcDBgYGAwQHBwcDBgkGAwIJDhILKEY6KwwDAwECAgI7BQkIBgIIDAgFAihdV0cSBAYEAgIEBgQSR1ddKAIFCAwIAgYICQUFCwsLBRc4PkMiLFNLQhwHDQwKBAQEAQMDBAgHBwQKFhofExMfGhYKBAcHCAQBAgEBAQIDAgQKDA0HHEJLUywiQz44FwULCwsFAAADAAEABAP/A3wAUACYAN8AACUuAycuAjY3PgImJy4DIyIOAgcOAR4BFx4BDgEHDgMHDgMHBhQeARceAzMyHgIzMj4CMzI+Ajc+AjQnLgMnJTM+AzcuAjY3PgM3NC4CJy4DIyIOAgcOAR4BFx4BDgEHDgMHDgMHBhQeARceAzMyHgIXPgM3JS4DJy4DJy4CNjc+AiYnLgMjIg4CBw4DFR4DFx4BDgEHHgMXHgMXPgMzMj4CNz4CNCcC7hMpJR4IBgsEBgscHwsIDAsiKCsUFCsoIgsMCAsfHAsGBAsGCB4mKRMWFwwGBQEBAgICBAUGAwEbQGxTUmxAGwEDBgUEAgICAQEFBwwXFf5DAQQICAgEIx8FDwsOKTA0GgIEBgQLIigrFBQrKCILDAgLHxwLBgQLBggeJikTFhcMBgUBAQICAgQFBgMBFTFSPggRERAIAs4FBwwXFRMpJR4IBgsEBgscHwsIDAsiKCsUFCsoIgsEBgQCGjQvKA4MDwUfIwQICQkECBAREQg+UTEVAQMGBQQCAgIBAa0OGBYTCAcQExYNIDw5NhoYIRUJCRUhGBo2OTwgDRYTEAcIExYYDg8ZGyAXAwYGBQICBAMCBAQEBAQEAgMEAgIGBgYDFyAbGQ9wAgUFBQIuVUtAGR8tHxIEChQTEwkYIRUJCRUhGBo2OTwgDRYTEAcIExYYDg8ZGyAXAwYGBQICBAMCAwQEAQYLCgoFBRcgGxkPDhgWEwgHEBMWDSA8OTYaGCEVCQkVIRgJExMUCgQSHy0fGUBLVS4CBQUFAgUKCgsGAQQEAwIDBAICBQYGAwADAAAAUAQAA1AAGAAtADMAAAEhIg4CFREUHgIzITI+AjURNC4CIwUyHgIVFA4CIyIuAjU0PgIzAzcXEwEhA8D8gA0XEQoKERcNA4ANFxEKChEXDf0gFCMaDw8aIxQUIxoPDxojFGCAlesBAP0AA1AKERcN/YANFxEKChEXDQKADRcRCoAPGiMUFCMaDw8aIxQUIxoP/gDAawEr/oAAAAAAAQDvAG8C7wNRAC0AAAE0LgInLgEiBgcOAwcOARQWFx4DFx4BMjY3PgM1ND4CNTQuAjUC5QQHCQYGDAwMBlWZdUcDBgYGBgNHdZlVBgwMDAYGCQcEAwQDAwQDAykGDAoJAwMDAwMwcmRGAwcSEhIHA0ZkcjADAwMDAwkLDAYBOFx2Pj52XDgBAAIAAP/iA/8DngAxADYAAAEuAyMhPgEuAScuAyMiDgIHDgMHETMyHgIXHgMzMj4CPwE2LgInATMRIxED5AoYGRcJ/vUFBgQQEQUMDQ8IFhwRCgQGEzBZTSYgLCEaDhEnNks2eIVDFgoFAQIHCwj8HKurAioLDAYCOGJQPRMGCgcEEx4mEiBHRDoS/gsGCw8JChYSDCNcn3xKDxwZFgn9uQJm/ZoAAgBRABEDrgNuADEAYwAAAQ4BFBYXHgEUBg8BDgEiJicuATQ2PwEuAzcHDgEUFhceATI2PwE+ATQmJy4BIgYHAS4BIgYPAQ4BFBYXHgEyNjc+ATQmJy4BNDY/AT4BMhYXHgEUBg8BHgMHNz4BNCYnAh4JCQkJFhYWFp8WNzk3FhYWFhZMBwoFAQKSKCgoKClmamYooCgoKCgJGBkYCQGRKGZqZimfKCgoKAkXGBcJCgoKChYWFhagFjc5NxYWFhYWTAcKBQECkSkpKSkCOQkYGRgJFjc5NxafFhYWFhY3OTcWTBMnKCkUkihmamYpKCgoKKAoZmpmKQkJCQkBNSkpKSmfKGZqZikJCQkJCRcYFwkWNzk3Fp8WFhYWFjc5NxZNEycoKBSRKWZqZigABgAQAEkD6wNaABwAMQBGAGMAgACVAAABITI+Ajc+ATQmJy4DIyEiDgIdARQeAjMHIg4CFRQeAjMyPgI1NC4CIxEiDgIVFB4CMzI+AjU0LgIjASEiDgIdARQeAjMhMj4CNz4BNCYnLgMjESEiDgIdARQeAjMhMj4CNz4BNCYnLgMjASIOAhUUHgIzMj4CNTQuAiMBZAJbCA8MCAECAgICAQgMDwj9pQcMCQUGCQwG/xIfFw0NFx8SEh8XDQ0XHxISHxcNDRcfEhIfFw0NFx8SA1r9pQcMCQUGCQwGAlsIDwwIAQICAgIBCAwPCP2lBwwJBQYJDAYCWwgPDAgBAgICAgEIDA8I/KYSHxcNDRcfEhIfFw0NFx8SAq8FCQ0IERcVFxEIDQkFBgoNB2QIDQkFiQ0XHxISHxcNDRcfEhIfFw3+zQ0XHxISHxcNDRcfEhIfFw0BMwYKDQdkCA0JBQUJDQgRFxUXEQgNCQX+zQYKDQdkCA0JBQUJDQgRFxUXEQgNCQUCZg0XHxISHxcNDRcfEhIfFw0AAAAAAwAA/+IEAAOeADsArADSAAABJS4CIiMHIg4CDwElLgEOAQcOAxURFB4CFwUeAjIzMj4CPwEFHgE+ATc+AzURNC4CJwEOAwcOAwcOAS4BJy4DMTAuAicuAjYxLgMjIi4CJxEXHgMXFg4CJy4CBgcOAhYXHgE+ATc+AhYXHgMXHgMzMj4BMhcWPgIzMh4CMR4DFx4DFRQOAgclDgMjIi4CJy4DNzYuAicuAycuATQ2Nz4DNxcRA+H+tgMGBwcDAQIEBAQC8v7OBg0MDAUGCQYDBAgLBwFJAwUFBQMDBgYGA/IBMgYNDAwFBgkGAwUICwf+XgYJCAkGBQgLEQ0MDwoGAgIFBAIDCA8MHhUBCQgZISgXDh0dGwzeBw8OCwMHBw8RAwYbICALERcJBw0NCwUCBAQICAgEBAwMCgEBAgYLCgwLBwcICBAPDgYGERALExoSDQYGDAoGAwgOCwFbBw4NCgMIDgsHAQMHBgMBAgUSHxcKFxYUBxkYGBYIGBscDKkDDY0CAgEBAQECAYKEAgIBBAQECQsMBv05CA4MCgOOAQIBAQICAoKDAgIBBAMECQsMBgLHCA4MCgP+BwULDhELChARFA4NBAcOBgYWFhAKDQwCBSswJgYSEQwDBQcEAVBgDhMQEQsYIhICCA4MAgUEBg8QDwYGBAEFBAQFAQMEAwYIDAkJDQgEAwICAgEDAwYIBgIDBAUEBBAUFwoJERARCSMIDQkECAoJAgceIh8IHSMUCgQCBQcLCB0vKSUTBg4NDAVJ/nwAAAACABD/wQPlA74ANABzAAATND4CNz4DNzUOAwcOAwcUDgIVFB4CFR4DFx4DFzUuAycuAzUlLgMnLgEiBgcOAx0BDgMHDgMVFB4CFx4DFxUUHgIXHgMzMj4CNz4DNz4BNCYntgUHCQQZQ1JfNFCTckYDDBQQDAMLDQoKDAoDDBEVDANGcpNQNF9SQxkECQcFAy8CNVVuOwQKCwsFBQcEAitiVj8IChAMBgYMEAoIPlZiKwIEBwUCBAUFAgMGBgUCO25VNQIEBAQEAcQ0XE09FQUMDAkCowMSEw8BAwsQFAsCNmOOW1uRZjgCDBQQCwMBDxMSBKQCCQwMBRY/T141EwM6U18oAwMCAgMICQoGhgQPEQ8EBQ8UGA8PGBMPBgQPERAFhgUKCQgDAQIBAQECAgIoX1M6AwYNDQwFAAAAAgABABkD/wOHAFoApgAAJS4DJy4DJyY+Ajc+AiYnLgMjIg4CBw4BHgEXHgMHDgMHDgMHDgMHBhQeARceAzMyHgIzMj4CMzI+Ajc+AjQnLgMnBS4DJy4DJy4DJyY+Ajc+AiYnLgMjIg4CBx4DFx4BDgEHHgMXHgMXHgMXPgMzMj4CNz4CNCcCcgYODg8IDhwYEQMCAwcKBRofCQwRDSQrMRoaMSskDREMCR8aBQoHAwIDERgcDggPDg4GGCkgFgYBAQICAgUGBgQBJlODXl6EUycBBAYGBQICAwEBBhcgKRgBjQYWICkYBg0ODwgOHBgRAwIDCAsGGh4JDRENJCsxGhglHxsOEyAbGAsQFAUkKAIFBAQCCRIREQgYKiQdCzBFLBYBAwYGBQICAgEB9gQHBgYDBgwNDwkIEhMSCChLRT8cFiIYDQ0YIhYcP0VLKAgSExIICQ8NDAYDBgYHBA8lKzAaBAcGBgMDBQQCBAUEBAUEAgQFAwMGBgcEGjArJQ8gGjArJQ8EBwYGAwYMDQ8JCBITEggoS0U/HBYiGA0KExwSCRUaHxMbSVxtPwECAgIBAwcICAUPIygsGAEEBAMCBAUDAwYGBwQAAwBDADYDwgNqABQAZQB6AAABIg4CFRQeAjMyPgI1NC4CIyUuAycuAycuAycuAyMuAyMiDgIHIg4CBw4DBw4DBw4DBw4BFBYXHgMXHgMzMj4CNz4DNz4BNCYnASIuAjU0PgIzMh4CFRQOAiMCACM+LhsbLj4jIz4uGxsuPiMBwgIICw0HFCgoKBQDBgYHBAIKDQ8HFiwsLBYWKysrFQcPDQoCBAcGBgMUKCgoFAcOCwgBERAREAEICw4HMmVlZTIzZmZmMwcNCwgCDg4ODv4+OWVLLCxLZTk5ZUssLEtlOQJZGy4+IyM+LhsbLj4jIz4uG14HDQoHAQIEAwMCCRUVFQoHDgsHAgICAQECAgIHCw4HChUVFQkCAwMEAgEHCg0HVoyFiVQHDQoHAQYIBgMDBggGAQcKDQdJkZGRSP3jLEtlOTllSywsS2U5OWVLLAAAAQAt/+QD3gNvAEMAAAE1NC4CJy4BDgEHDgMHDgEUFhceAxceAzMyPgI3PgM9AR4DFxYUDgEHDgEeATMyPgI1NC4CJwHeAgUIBgYNDQ0GSoFhOgIFBQUFAjphgUoDBwcHBAMGBgYDBggFAi9eUDoMDRcuISMdBygiJGVdQVmRuF8CjLkHDQsJAwQDAQQEMnZoSAMHEBAPBgRIaHYxAgMCAQEBAgEDCQsNB7cBCxYgFhgvKiMMDispHS5WfE5cf1EoBQAAAAEBEQBvAxADUQAtAAABLgMnLgEiBgcOAxUUDgIVFB4CFRQeAhceATI2Nz4DNz4BNCYnAxADR3WZVQYMDAwGBgkHBAMEAwMEAwQHCQYGDAwMBlWZdUcDBwcHBwICA0ZkcjADAwMDAwkKDAYBOFx2Pj52XDgBBgwLCQMDAwMDMHJkRgMHEhISBwADAA0AUAPwAzAAFgAtAEQAABMhMj4CNTQuAiMhIg4CFRQeAjMFISIOAhUUHgIzITI+AjU0LgIjESEiDgIVFB4CMyEyPgI1NC4CI1cDUA8aFAsLFBoP/LAPGhQLCxQaDwNQ/LAPGhQLCxQaDwNQDxoUCwsUGg/8rg8aFAsLFBoPA1IPGhQLCxQaDwKZDRUcDw8bFAwMFBsPDxwVDYoMFBsPDxsUCwsUGw8PGxQM/tQMFRsPDxoTCwsTGg8PGxUMAAACAAD/wAPnA8AAKgA/AAATFB4CMzI+AjcBHgMzMj4CNz4BNCYnAT4DNTQuAiMiDgIVMzQ+AjMyHgIVFA4CIyIuAjUAPGiMUBw3NDAWASEGDhAQCAgQDw4GDAwMDP7eDhYPCDxojFBQjGg8gChGXTU1XUYoKEZdNTVdRigCQFCMaDwIDxYO/t4GCQYDAwYJBgwgISAMASEWMDQ3HFCMaDw8aIxQNV1GKChGXTU1XUYoKEZdNQACAAL/wAP+A74BAwEYAAABLgMnLgMxLgM1ND4CNzA+AjE+ATQmJy4DJy4BIgYHDgMxDgMjIi4CLwEuAycuASIGBw4DDwEOAyMiLgIvAS4BIgYHDgMHDgEUFhceAzEeAxUUDgIPAQ4DBw4BFBYXHgMfAR4DFRQOAg8BDgEUFhceAxceAzMyPgI/AT4DMzIeAhcwHgIxHgMXMh4BMjM6AT4BMz4DPwE+AzMyHgIfAR4DMzI+Ajc+Azc+ATQmJy4DMS4DNTQ+AjcwPgI3PgM3PgE0JicFIi4CNTQ+AjMyHgIVFA4CIwP+AQgMDwkLHhsTChAMBwECBAIRFBEGBQYGCBAREgoHEBEQBwkYFg8ECAgIBAoSDwoCCwEIDBAJDBkZGAwJEAwIAQsCCg8TCgUJCQgEQwcQERAHChIREAgGBgYGBhIQCwMEAwIIDRIKUwkQDAgBAQEBAQEIDA8JUwoSDQgCAwQDMwYFBgYIEBESCgQICAgEBAgIBwNDBAgJCQUKEw8KAgMEAwEIDBAJBgwMDAYGDAwMBgkQDAgBCwIKDxIKBAkICANFAwcICAQECAgIBAoSERAIBgYFBgcSEQwCBAIBBwwQChMbHgsJDwwIAQEBAQH+AiQ/LxsbLz8kJD8vGxsvPyQB8QkQDAgBAQQDAgIKDxIKBAgIBwMWGhYHEBEQBwoSERAIBgYFBgcSEQwCBAMCBw0RClUJDwwIAQEBAQEBCAwPCVUKEQ0HAgMEAjQGBQYGCBAREgoHEBEQBwgXFQ8ECAgJBAsTDwoCCwEIDBAJDBkZGAwJEAwIAQsBCg8TCwUJCQgEQwcQERAHChIREAgDBAMCAQMEAzQCBAMCBw0RChsgGgkPDAgBAQEBAQEIDA8JVQoRDQcBAgQCNQMEAwEBAwQDCBAREgoHEBEQBwkYFg8DBwgIBAoSDwoCAgMEAQEIDBAJDBkZGAzfGy8/JCQ/LxsbLz8kJD8vGwACAAD/9AQAA2wAPgBuAAABLgMnLgIGBw4DHQEiDgIHBh4CFxYyPgE3PgMzFRQeAhceAT4BNz4DNz4DNTQuAicBIREhNSIuASIjIg4CBw4DFREUHgIXHgMzMj4CNz4DPQEOAwcVA/cCMlNsPAUKCwsFBQgGA1ePaD4GBAEKEw4QIB0YCBouOEk0AwYIBQULCwoEPGxTMgICAwIBAQIDAv73/ZoBvA8jJCMPKVNTUykYKR4RER4pGClTU1MpKVNTUykYKR4RDiIkJBECQAM/WWMoAwMBAgIDCAkKBqU1SU4ZEh4YEwYICA0FDhoUDKkGCgkHAwICAQMDKGRZPwIDBgYGAwMGBgYD/j0CZoYBAQIEBgQCFSErGP2gGCshFQIEBgQCAgQGBAIVISsYiQ4cGxsMIAAAAAEAnwDhA4EC4QAtAAABLgMnLgEiBgcOAwcOARQWFx4DMzIeAjMyPgIzMj4CNz4BNCYnA4EwcmRGAwcSEhIHA0ZkcjADAwMDAwkLDAYBOFx2Pj52XDgBBgwKCQMDAwMDATVUmXVHAwYGBgYDR3WZVAYMDAwGBgkHBAMEAwMEAwQHCQYGDAwMBgACAAD/0AQAA64APgBhAAATMx4DFx4DMzI+Ajc+AzczMj4CNz4BLgEnLgMnLgMjIg4CBw4DBw4CFhceAzMFFA4CByEuAzUjFB4CFR4DMyEyPgI3ND4CNSPyiwUODg4FBQ8UGQ8PGRQPBQQNDw4GiwYKCQgDAgIBAwMoX1M6AwMGBgYDAwYGBgMDOlNfKAMDAQICAwgJCgYCZwQGBwP9dQMHBgSmDA4MBBAWGg4DDg4bFhAEDA4MpgI2IEE4KgkIDQkFBQkNCAgpOEIgAwYIBQULCwsFO2xUMwICAwIBAQIDAgIzVGw7BQsLCwUFCAYDiTZdTT0WFjxNXTdnmmc1Ag4XEAkJERcOAjVnmmYAAQAj/9AD3QOuAFUAACUuAycuAycuAycmPgI3PgImJy4DIyIOAgcOAR4BFx4DBw4DBw4DBw4DBwYeAhcyHgIzMj4CNz4DMz4DJwPdCBwnMRwIEhMUChQoIhkFAwEIDwshJwwQFhEtNTsgHzs1LREWEAwoIgsPCAEDBRkiKBMLFRMRCBwxJxwIAgIGCgYCMWusfD5oVkUbGycZDQEGCgYCAhwmOzAnEgUJCQgECBEUGA8KFxoeETZkXFMlHS4gEREgLh0lU1xkNhEeGhcKDxgUEQgECAkJBRInMDsmBw0LCAILDQsDBQYDAwYFAwIICw0HAAAAAAIAAP/BBAADwQAYAFwAAAEUDgIHESMRIi4CNTQ+AjsBMh4CFQEOAyMqAS4BJy4DJyYOAjERMD4CMzIeAhceAxceAzM6AT4BNzI+Ajc+AzMyHgIVEQ4DBwERDBMZDYkOGRMLCxMZDokOGRMLAtQLHyUqFggREREIKTo0OSgnXFA2IDRCIgoVFRQJKDk0OikGDQ0NBgsWFRUKBAkJCQQECAgIBAcMCQYBBQcJBQN9DhgSCwH8iQN3CxIZDg4ZEwsLExkO/OsECAcFAQICCCoxLgsKAwwNAjkICggBAgQCCycpJAgBAgIBAgMCAQICAQECAgEFCQwH/fUGCgcFAQAAAAAEAAz/+wQAA3AAFgAtAEQAdAAAEyEyPgI1NC4CIyEiDgIVFB4CMwUhIg4CFRQeAjMhMj4CNTQuAiMRIyIOAhUUHgI7ATI+AjU0LgIjJSM1NC4CKwEiDgIdASMiDgIHHAEeAR8BHgIyMzoBPgE/AT4CNDUuAyPyArgSIBgODhggEv1IEiAYDg4YIBICuP65EiAYDg4YIBIBRxIgGA4OGCAS+RIgGA4OGCAS+RIgGA4OGCAS/mCTAgMEArUCBAMCkwIDAwIBAQEB+QECAgIBAQICAgH5AQEBAQIDAwICvA8aIRISIBgODhggEhIhGg+lDhggEhIgFw0NFyASEiAYDv6aDxkhEhIfFw0NFx8SEiEZD1X/AgQDAgIDBAL/AQIDAgIDAwMB9AEBAQEBAfQBAwMDAgIDAgEAAAADAAD/wAQAA8AAFAApAIEAAAEiDgIVFB4CMzI+AjU0LgIjESIuAjU0PgIzMh4CFRQOAiMTDgMHDgMHFA4CKwEiLgI1PgM3PgM1NC4CJy4DIyIOAgcOAysBIi4CNTwDNTA+AjE+AzMyHgIXHgMVFA4CBwIAaruLUFCLu2pqu4tQUYu6ahAcFQ0NFRwQEBwVDQ0VHBDZBREYHhIIEA4LAgUJDAdFBw0KBgEmNDgTBAUDAQMGCQYGDhETChEeGBADAQYJCwZHBwwJBQEBAQklN0kuGS0oIw8PFxAIAwYJBgPAUIu6amq7i1BQi7tqarqLUPx/DRUcEBAcFQ0NFRwQEBwVDQHJChYZHBAHEBIUCwcNCgYFCQwHKDsxKxgFCgsMBggNDAsGBgkGAwwUGAwGCQcDBQgMBwECAgIBAgICHDkuHQcOFQ4OICMlEwsVFBMJAAACAAD/wAQAA8AAFAA1AAABIg4CFRQeAjMyPgI1NC4CIwEUDgIjISIuAicuATQ2Nz4DMyEyHgIVHgEUBgcCAGq7i1BQi7tqaruLUFGLumoBWQYKDQf9lwcNCgYBAQEBAQEGCg0HAmkHDQoGAgICAgPAUIu6amq7i1BQi7tqarqLUP29CA0JBQUJDQgRIiIiEQgNCQUFCQ0IESIiIhEAAAAAAwAJ/+IEAAOeACEANgBbAAAlAS4DIyIOAgcBDgEUFhceAzMhMj4CNTQuAicFIi4CNTQ+AjMyHgIVFA4CIxMOAysBIi4CJy4DJzQ+Ajc+ATIWFx4DFQ4DBwPz/kkEDRASCQoSDw0E/kQEBAUFBQ0PEQkDdw4ZEwsCAwUD/g0QHBUMDBUcEBAcFQwMFRwQLAEIDA4IAwcOCwgBBgoIBwMFCQwHDRYVFg0IDAgEAwcICgZOAy0IDQkFBQkNCPzMCBEREQgIDAkFCxIZDgYLCgkEDwwVHBAQHBUMDBUcEBAcFQwBGwgPCwcHCw8IIkVEQR4HDgwJAgICAgICCQwOBx5BREUiAAADAAH/wAQAA8AAUQBmAJsAAAE+Azc+AiYnLgMnLgMjIg4CBw4BHgEXHgMHDgMHDgMHDgMHBhQeARceAzMyHgI7AS4DNTQ+Ajc+AzcXIg4CFRQeAjMyPgI1NC4CIxMUDgIrARUUDgIrASIuAj0BIyIuAj0BND4COwE1ND4COwEyHgIdATMyHgIdAQJFDBgWFAgNEwgDCAIFBgcEEC43PiEhPjcuERUPDCchCw8JAgMEFyAmEgoTEhEIHi8iFwcBAQMCAgUGBwQCK2OieSUOFg8ICBEaEggTFBUKuzVdRSgoRV01NV1GKChGXTWaAwUGBFUDBQYERAQGBQNVBAYFAwMFBgRVAwUGBEQEBgUDVQQGBQMB1wsVFhkPGDc5ORsHDg4OBhwsHxAQHywcJFFZYTQQHRkWCQ0WExAIBAgICQUTLDQ7IgMHBwcDAwUEAwYHBhQsLzIaHDYzLxUKFRQTCBcoRV01NV1FKChFXTU1XUUo/t4EBgUDVQQGBQMDBQYEVQMFBgREBAYFA1UEBgUDAwUGBFUDBQYERAABAFkAGQOlA2UARAAAAS4DIyERNC4CJy4BIgYHDgMVESEiDgIHDgEUFhceAzMhERQeAhceATI2Nz4DNREhMj4CNz4BNCYnA6UBCAwQCf7+BgsPCBQoKCgUCA8LBv7/CRAMCAECAgICAQgMEAkBAQYLDwgUKCgoFAgPCwYBAgkQDAgBAgICAgINCQ8LBgEBCRAMCAECAgICAQgMEAn+/wYLDwkUJycnFAkPCwb+/gkQDAgBAgICAgEIDBAJAQIGCw8JFCcnJxQAAAEAAgA1BAADTwBWAAATAT4DMzIeAhceAxceAxUUDgIHDgMPASEyHgIXHgMVFA4CBw4DIyEXHgMXHgMXHgMVFA4CBw4DIyIuAicBAgF9CBESFAsLFBIRCAQHBgUCAgMCAQQICwgECQoKBVwCCgsUEhEICAsIBAQICwgIERIUC/32XAUKCgkEBAcGBQICAwIBBAgLCAgREhQLCxQSEQj+gwHDAXIHCgcDAwcKBwQICQkFBQkJCQULExEQBwUKCgoFWAQHCwcHEBITCwoTEhAHBwsHBFgFCgoKBQQICAkFBQkJCQQLExIQBwgLCAQECAsIAXAAAAACAIn/0gN4A7AALgA8AAABNC4CKwE1NC4CIyIOAh0BIyIOAhURFB4CFx4DMzI+Ajc+AzURJTU0PgIzMh4CHQEjA3gLExkOISdIZT09ZUgnJA4YEgoIDhQMKFBRUSgoUFBPKAwVDwn+IgYVKSIiKRUGzQGrDhsUDKs+ZUgnJ0hlPqsNFhwO/pIMFhIMAgkOCQQECQ4JAgwSFgwBcUqrECQeFBQeJBCrAAABAAYAKwP5A08AJAAAAT4BNCYvAS4BIgYHAScuASIGDwEOARQWFwEeAzMyPgI3AQP5AwMDA5UDCAgIA/47xgMICAgDlQMDAwMBagIEBAQCAgQEBAICagKbAwgICAOVAwMDA/45xwMDAwOVAwgICAP+lgECAgEBAgIBAmoAAQBfACIDoAOxAC0AAAE1Ig4CFRQeAjMyPgI1NC4CJzceAxUUDgIjIi4CNTQ+AjM1FwcCAEFyVTExVXJBQXJVMQwWIBRMGyoeEEJxmFZWmHFBQXGYVpycAq1OMVVyQUFyVTExVXJBHzs3MRVIHEFJTypWmHFBQXGYVlaYcUFOgoIAAAAAAQAk/8YD3gPAADwAACUuAzU0LgIjIg4CFRQOAgcOAxceAxceAxceAzMyPgI3PgM3PgM3Ni4CJwPGAi82LThYbDQ0bFg4LTYvAgcKBwMBAQcLDggCKUtqQgccJi8aGi8mHAdCaksqAggNCgcBAQIGCgfqAi1YhFl0kVAcHFCRdFiEWS0CBg4QEQkJEQ4LBAEQFRYHGCgdEREdKBgHFhUQAQQLDhAJCRIQDgYAAAMAAP/ABAADwAAUACkAUQAAASIOAhUUHgIzMj4CNTQuAiMVMh4CFRQOAiMiLgI1ND4CMxMjIi4CNTQ+Ajc1LgM1ND4COwEyHgIVBx4DFRQOAiMCAGq7i1BQi7tqaruLUFCLu2oRHRYNDRYdEREdFg0NFh0RO3gLEw4IBQkMBwcMCQUIDhMLWAsTDggBBwwIBQgOEwsDwFCLu2pqu4tQUIu7amq7i1C3DRYdEREdFg0NFh0RER0WDf2QCA4TCwgPDQoDuAMKDQ8ICxMOCAgOEwvpAwoMDwgLEw4IAAABABX/0QPzA68ApwAAARQOAisBFx4BFAYHDgMjIi4CLwEjFRceARQGBw4DIyIuAi8BFRQOAiMiLgI9AQcOASImJy4BNDY/ATUjBw4DIyIuAicuATQ2PwEjIi4CNTQ+AjsBJy4BNDY3PgEyFh8BMzUnLgE0Njc+ATIWHwE1ND4CMzIeAh0BNz4BMhYXHgEUBg8BFTM3PgEyFhceARQGDwEzMh4CFQPzCA4TCpBxCAgICAQJCgoFBQsKCQS7YL8ICAgIBAkKCwUFCgoJBHIIDhMKCxMOCHIIFBUUCAgICAi/YLwECQoKBQUKCgkECAgICHCPCxMOCAgOEwuPcAgICAgIFBUUCLphvwgICAgIFBUUCHIIDhMLChMOCHIIFBUUCAgICAi/YLsIFBUUCAgICAhwjwoTDggBwAsTDghyCBQVFAgEBgQCAgQGBL9huwgUFRQIBAYEAgIEBgRwjwsTDggIDhMLj3AICAgICBQVFAi8YL8EBgQCAgQGBAgUFRQIcggOEwsKEw4IcggUFRQICAgICL9guwgUFRQICAgICHGQChMOCAgOEwqPcAgICAgIFBUUCLtgvwgICAgIFBUUCHIIDhMKAAgAAAAXBAADaQA6AD8ARABJAE4AUwBYAF0AAAEHJwcnBycHJwcnBycHJwcnBycHERQOAiMiLgI1PAEQNDEiDgIVERQeAjMhMj4CNREwLgInASE1IRU1ITUhFTUhNSEVBSE1IRU1ITUhFTchNSEVNSE1IRUD0CsvMTInLSkpKywyLywqJCwnLSYGCQsFCA8MBwoZFg8IDRIKA5wKEg0IDREQAv5K/tkBJ/7ZASf+2QEnAYb+wwE9/sMBPQH+wgE+/VICrgNmKCoqKioqKiwsKiopKScnKioqKv1DCxAKBAgMDgcH3QED1gUKDwr9MwoSDQgIDRIKAvcLDg0C/ShISHtJSXlLS/RISHtJSXtJSZKTkwAAAAEAAgFaA/0CJgAgAAABNC4CIyEiDgIHDgEUFhceAzMhMj4CNT4BNCYnA/0GCg0H/E8HDQoGAQEBAQEBBgoNBwOxBw0KBgICAgICAwgNCQUFCQ0IESIiIhEIDQkFBQkNCBEiIiIRAAAAAgDH/8ADOQPAABQAbAAAJSIOAhUUHgIzMj4CNTQuAiMTLgMjIg4CBxQOAjEcAQYUFRQeAjsBMj4CNz4DMzIeAhceAxUUDgIHDgMHFB4COwEyPgI1PgM3PgM3PgM1NC4CJwHnFigeEhIeKBYWKB4SEh4oFvoVMTg/I0BnTTMMAQEBAQcNEQpkCA8MCQIEFyEqGA8aFxQICAwIBAIEBwYaTko2AggNEgphChINBwMPFBcLGSohGAcIDQkFDBYhFZsSHigWFigeEhIeKBYWKB4SAtgUHRMKKUFQJwEDAwICAwMDAgoRDAYFCQ0IESIcEQUJDQgIEBESCwgQDw8HIT1EUzgKEQ0HCA4SCg8cGRYKFigjHw0NGxwdDxo0MS4UAAAAAwBtAV0DkwIlABQAKQA+AAATFB4CMzI+AjU0LgIjIg4CFSEUHgIzMj4CNTQuAiMiDgIVJTIeAhUUDgIjIi4CNTQ+AjNtEBslFRUlGxAQGyUVFSUbEAEvEBslFRUlGxAQGyUVFSUbEAGTFSUbEBAbJRUVJRsQEBslFQHBFSUbEBAbJRUVJRsQEBslFRUlGxAQGyUVFSUbEBAbJRVkEBslFRUlGxAQGyUVFSUbEAAAAAABABv/+QPjA4kAigAAAQ4DIzAqAiMiLgInLgMnJj4CPwEuAycuAwcOAwcOAwcGHgIXHgMXFj4CNz4BHgEXHgEOAQ8BDgMHBi4CJy4DJy4CNDc+Azc+Azc+Azc+AjIzMh4CFx4DFzc+AjIXHgMVFg4CBwPNAQYJCwYDBQgFGltxfz4FCQcFAQEBBAcEhgYMDQ0HDRwdHQ8PHRwbDQ4XEg4ECQMXKx4PIyYoFRUqKSkUDBkXEwYFAgUMCQEYODw/HyBAPz0dHjcxKRAQFgwGAwgLDggJFBUXDBg+RUolCREREQkdOTc1GBEgHhwMZQQJCgoFBQkHBAoEDQ8BAYkGCggEAgoUEgEFCAkFBQoJCANZBgwLCgQIDAcCAgEIDRILDBkbHRAeR0ZAFwwTDgoCAgEGDQoGAQgRDAoWFRMHARIfFw4BAQgRGhERKjE3Hh5BRUgkEiMiIRAQHhwaDBkqIBYFAQIBCA8WDwoXGRwPdgQGAwICBggJBU6egFMEAAEAAP/BBAADwQBCAAAFIi4CJyUOAyMiLgI1ND4CMzIeAhclNTQ+AjMyHgIVFA4CIyIuAicFFQU+AzMyHgIVFA4CIwNEIz4xIQb+nAsZGx0PJ0QzHh4zRCcPHRsZCwFhHjNEJydEMx4eM0QnDx0bGQv+nwFHDR4iJRQnRDMeHjNEJz8XKTkhuwgNCQUeM0QnJ0QzHgUJDQi6AidEMx4eM0QnJ0QzHgUJDQi6BK0NFQ4IHjNEJydEMx4AAAAAAgAA/8AEAAPAABQAOQAAASIOAhUUHgIzMj4CNTQuAiMJAQ4DIyIuAi8BLgE0Nj8BPgEyFh8BAT4BMhYfAR4BFAYHAgBqu4tQUIu7amq7i1BQi7tqAT7+ewECAgMBAQMCAgHkAgICAl4CBQUFAnwBHgIFBQUCXgICAgIDwFCLu2pqu4tQUIu7amq7i1D+iv57AQEBAQEBAQHkAgUFBQJeAgICAn0BHgICAgJeAgUFBQIAAAAABAAi//MD3gONAE0AngDZASoAAAEuAycuAyMiDgIHDgMHDgMVFB4CFx4DFx4DFxUUHgIXMh4BMjMyPgI/ATI+Ajc+Azc+AzU0LgInASIuAicuAjQ1ND4CMzoBHgEXHgMzMj4CNTQuAjU0PgIzMh4CFx4CFBUUDgIjKgEuAScuAyMiDgIVFB4CFRQOAiMlFA4CIyIuAj0BBw4DIyIuAi8BFRQOAiMiLgI9ATQ+AjM2HgIfATc+AzM2HgIdARciLgInLgI0NTQ+AjM6AR4BFx4DMzI+AjU0LgI1ND4CMzIeAhceAhQVFA4CIyoBLgEnLgMjIg4CFRQeAhUUDgIjA9AEIjE7HSRISEgkJEhISCQdOzIjBQMFAwICAwUDBSMyOx0KFRUVCgMFCAUCAwMEAgMGBgYCzB06OjodHTsxIgQEBQMCAgMFBP1KDBkWEgQBAQEEBggEAgMDAwEFDA0PCAkOCQUmLiYLFR4TCRYVEQQBAQEEBggEAQMDAwEGDAwMBgcLCAQmLiYKFSAWAVwEBggFBQgGBDoBAgMEAgIEAwIBOgQGCAUFCAYEBAcJBQgODAkDLCwCBggKBQgPDAd2DBkWEgQBAQEEBggEAgMDAwEFDA0PCAkOCQUmLiYLFR4TCRYVEQQBAQEEBggEAQMDAwEGDAwMBgcLCAQmLiYKFSAWAt0dNywdAwQGBAICBAYEAx0sNx0XLi8vGBcuLi0WHTcsHQMBAgEBAa8FCggHAgEBAQIEAsUCAwQDAxwrNh0WLi4uFxcvLy4X/t8EBwoHAQMDAwEFCAYDAQEBBAYEAgQHCQUOCgwaHg0YEgoDBgkGAQMDAwEFCAUDAQEBAwUDAQMGCAUNCQ0aHg8ZEgoZBQgGBAQGCAWBjwIDAgEBAgMCj4EFCAYEBAYIBacFCQcEAQEFCQdsbAUIBQMBAgYLCKcZBAcKBwEDAwMBBQgGAwEBAQQGBAIEBwkFDgoMGh4NGBIKAwYJBgEDAwMBBQgFAwEBAQMFAwEDBggFDQkNGh4PGRIKAAAAAAMAwP+/A0ADvwAYAB0AMgAAAREUDgIjISIuAjURND4CMyEyHgIVByERIREDNC4CIyIOAhUUHgIzMj4CNQNAChEXDf4ADRcRCgoRFw0CAA0XEQpr/lUBq5UKERcNDRcRCgoRFw0NFxEKA3/8gA0XEQoKERcNA4ANFxEKChEXDWv9qwJV/SsNFxEKChEXDQ0XEQoKERcNAAAAAQAAAAEAACBTqkZfDzz1AAsEAAAAAADOlGJdAAAAAM6UYl0AAP+/BAADwQAAAAgAAgAAAAAAAAABAAADwP/AAAAEAAAAAAAEAAABAAAAAAAAAAAAAAAAAAAAOgAAAAACAAAABAAAUQQAARAEAABeBAAAIgQAAIkEAACRBAAAzQQAAJEEAACPBAAAAAQAAAcEAAAyBAAAIgQAAAMEAAABBAAAAAQAAO8EAAAABAAAUQQAABAEAAAABAAAEAQAAAEEAABDBAAALQQAAREEAAANBAAAAAQAAAIEAAAABAAAnwQAAAAEAAAjBAAAAAQAAAwEAAAABAAAAAQAAAkEAAABBAAAWQQAAAIEAACJBAAABgQAAF8EAAAkBAAAAAQAABUEAAAABAAAAgQAAMcEAABtBAAAGwQAAAAEAAAABAAAIgQAAMAAAAAAAAoAjADIAToBpgHoAjQCgALqAy4DtgRKBL4FdAYUB0YHlgfaCCwIwgmOCrILUAw0DNwNPg2CDeIOPA+qEEQQiBEOEYgSCBKkE0wTnBQeFOoVThXIFhwWWhacFvIXYBhCGMwZABmQGegaphsEG14c4B0sAAAAAQAAADoBKwAIAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAA4ArgABAAAAAAABAA4AAAABAAAAAAACAA4ARwABAAAAAAADAA4AJAABAAAAAAAEAA4AVQABAAAAAAAFABYADgABAAAAAAAGAAcAMgABAAAAAAAKACgAYwADAAEECQABAA4AAAADAAEECQACAA4ARwADAAEECQADAA4AJAADAAEECQAEAA4AVQADAAEECQAFABYADgADAAEECQAGAA4AOQADAAEECQAKACgAYwBpAGMAbwBtAG8AbwBuAFYAZQByAHMAaQBvAG4AIAAwAC4AMABpAGMAbwBtAG8AbwBuaWNvbW9vbgBpAGMAbwBtAG8AbwBuAFIAZQBnAHUAbABhAHIAaQBjAG8AbQBvAG8AbgBHAGUAbgBlAHIAYQB0AGUAZAAgAGIAeQAgAEkAYwBvAE0AbwBvAG4AAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==) format('truetype'), url(data:application/font-woff;charset=utf-8;base64,d09GRgABAAAAAD9EAAsAAAAAPvgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABPUy8yAAABCAAAAGAAAABgDq/zLGNtYXAAAAFoAAAARAAAAETgfOaMZ2FzcAAAAawAAAAIAAAACAAAABBnbHlmAAABtAAAOlgAADpYVEwXGmhlYWQAADwMAAAANgAAADYASAk3aGhlYQAAPEQAAAAkAAAAJAfCA/tobXR4AAA8aAAAAOgAAADo4gAMxWxvY2EAAD1QAAAAdgAAAHadD5AIbWF4cAAAPcgAAAAgAAAAIABDAS1uYW1lAAA96AAAATkAAAE5RBe01nBvc3QAAD8kAAAAIAAAACAAAwAAAAMEAAGQAAUAAAKZAswAAACPApkCzAAAAesAMwEJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAg5gIDwP/A/8ADwABAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAgAAAAMAAAAUAAMAAQAAABQABAAwAAAACAAIAAIAAAAg4DTmAv//AAAAIOAA5gD////hIAIaNwABAAAAAAAAAAAAAQAB//8ADwABAAAAAAAAAAAAAgAANzkBAAAAAAEAUQARA64DbgBTAAABLgEiBgcBDgEUFhceATI2NwE+ATQmJy4BIgYPAQ4BFBYXHgEyNj8BPgEyFhceARQGBwEOASImJy4BNDY3AT4BMhYXHgEUBg8BHgMXNz4BNCYnA64oZmpmKf4rKCgoKClmamYoASAZGRkZGT9CPxm0CgoKCgkXGBcJtQYQEBAGBgYGBv7gFjc5NxYWFhYWAdUWNzk3FhYWFhYECxEMBwEuKSkpKQNuKSkpKf4rKGZqZikoKCgoASAZP0I/GRkZGRm1CRcYFwkKCgoKtAYGBgYGEBAQBv7hFhYWFhY3OTcWAdUWFhYWFjc5NxYEDyAiIxIuKWZqZigAAQEQ/8ADEAPAACgAAAEhIg4CFREUHgIXFjI+AT8BFx4DMzoDMz4DNRE0LgIjAtD+gA0XEQoCAwUDAwcGBgLb2wIEBAQCAQICAgEDBQMCChEXDQPAChEXDfxVAwYFBAEBAQMC29sBAgIBAQQFBgMDqw0XEQoAAAAAAQBe/+ID3gOeAE8AACUnMC4CIyIOAg8BDgImJy4DJy4DJy4BPgE/AT4DNTQuAi8BLgMjDgMHDgEeARceAzMyPgI3PgM3NC4CJwPL7QQGBgIECAcGAmUECwsLBRIjIiEQEB0bGAsDAgEFBGUDBQMCAQECAYICBggJBRYtKiUOMhUwcVU5e3t4NhoxLScQDhcRCwIDBQcE3ncCAgICBAUDXAQFAQIDCxgbHhAQISIjEgULCwsEZAMGBwgEAwUFBALtBAcFAwIJDxUOMpqzvlU5WDwfCBAYEA4jKCsWBQoIBwIAAAAAAQAi//ID3gOMAE0AAAEuAycuAyMiDgIHDgMHDgMVFB4CFx4DFx4DFxUUHgIXMh4BMjMyPgI/ATI+Ajc+Azc+AzU0LgInA9AEIjE7HSRISEgkJEhISCQdOzIjBQMFAwICAwUDBSMyOx0KFRUVCgMFCAUCAwMEAgMGBgYCzB06OjodHTsxIgQEBQMCAgMFBALcHTcsHQMEBgQCAgQGBAMdLDcdFy4vLxgXLi4tFh03LB0DAQIBAQGvBQoIBwIBAQECBALFAgMEAwMcKzYdFi4uLhcXLy8uFwAAAgCJ/98DdwPAABkALgAAASIOAhUUHgIxHgI2NzA+AjU0LgIjESIuAjU0PgIzMh4CFRQOAiMCAE6JZjtjd2MQGxocEWR4ZDtmiU4lQTAcHDBBJSVBMBwcMEElA8A+a49RbteqaQ8QAQ8QaarXblGPaz791xwwQSUlQTAcHDBBJSVBMBwAAQCRADYDMwNqAC4AAAkBPgM1PAEuAScuAyMhIg4CBwEOARQWFwEeAzMhMj4CNz4BLgEnAQHcAU4CBAIBAQEBAgcICgX+9wQHBwYC/qMEBAQEAV0CBgcHBAEJBQoIBwICAQIEBP6yAdABYAIGBgYDAgQEBAIEBwUDAgMEA/6JBQwMDAX+iQIEAwIDBQgFBQoJCQQBYQAAAAABAM0ANgNuA2oALgAACQEuAyMhIg4CBw4BHgEXCQEOAxUcAR4BFx4DMyEyPgI3AT4BNCYnA27+pAIGBwcE/vcFCggHAgIBAgQDAU7+sgIDAgEBAQECBwgKBQEJBAcHBgIBXAUFBQUB5gF3AwQDAgMFBwQFCgoJBP6g/p8CBQYGAwIEBAQCBQgFAwIDBAIBdwUMDAwFAAAAAAEAkQBhA28DPwBEAAABNz4CJicuAycuAQ4BDwEnLgIGBw4DBw4BHgEfAQcOAhYXHgMXHgE+AT8BFx4CNjc+Azc+AS4BLwECnsoHCAIEBQwYGhwPBg8QEAfKywYQEBAGDhsaGAwFBAIIB8rLBggCBAUMGBobDgYQEBAGy8oHEBAPBg8cGhgMBQQCCAfKAdDKBxAQDwYPHBoYDAUEAggHwcEHCAIEBQwYGhwPBg8QEAfKywYQEBAGDhsaGAwFBAIHBsvLBggCBAUMGBocDwYPEBAGywAAAQCPAM8DcQLPAC0AAAEuAyMiLgIjIg4CIyIOAgcOARQWFx4DFx4BMjY3PgM3PgE0JicDcQMJCgwGAThcdj4+dlw4AQYMCwkDAwMDAzByZEYDBxISEgcDRmRyMAMDAwMCqwYJBwQDBAMDBAMEBwkGBgwMDAZUmXVHAwYGBgYDR3WZVAYMDAwGAAIAAP/QBAADrgA+AGEAAAEeAzMyPgI3PgM3PgImJy4DKwEuAycuAyMiDgIHDgMHIyIOAgcOAR4BFx4DFyUUDgIHIS4DNSMUHgIVHgMzITI+Ajc0PgI1IwHnAwYGBgMDBgYGAwM6U18oAwMBAgIDCAkKBosGDg8NBAUPFBkPDxkUDwUFDg4OBYsGCgkHAwICAQMDKF9TOgMBcgQGBwP9dQMHBgSmDA4MBBAWGg4DDg4bFhAEDA4MpgFQAgMCAQECAwICM1RtOwQKCwsFBQgGAyBCOCkICA0JBQUJDQgJKjhBIAMGCAUFCwsKBDttVDMCXjZdTT0WFjxNXTdnmmc1Ag4XEAkJERcOAjVnmmYAAAAAAgAH/8AD/AO5ADkAYgAABS4DJy4DJwEuAgYHDgMHDgMHDgEeARcBHgMXHgMXHgIyMzI+Ajc+AiYnJy4DJwE+AzcBHgMzMj4CNz4CJicBPgM3AR4DFwcD/A8dHR0PAQIDBAL9zAYQEREIFCYkIhAQHRsaDAUEAggGAjQCBQUFAy5bW1osAgQEBAIFCAgHBAUGAgID8BIlJSUR/fEFCwwNBwIABAkJCgUFCAgHBAgIAQcH/gIHDg4OBwIPBgwMDAZMAixZWlouAwYFBQICNwYHAgQEDBocHhAPICIkEwgREQ8G/ckCBAMDAQ8eHh8QAQEBAgQGBAULCw0HbAYMDAwGAhEIEA8PB/3/BAUDAQIEBgQIEhISCAH+BgwMDAX96xIjIyMSTAAAAAACADIAJgPuA1oAIgBPAAABIi4CJwERFB4CFx4DMzI+Ajc+AzURAQ4DIwEuAyMiDgIHDgMdAR4DFwEeAzMyPgI3AT4DNzU0LgInAhATJSQhD/6uBAgKBjhwcXE4OHFwcDcGCwgF/q4PISQlEwHAN29wcTg4cXBwOAYKCAQBBQkNCgFsCBIUFQsLFRQSCAFsCg0JBQEFCAsGARUFChALAQP+JAYLCQYBCAwIBAQIDAgBBgkLBgHc/v0LEAoFAiQIDAgEBAgMCAEGCQsGMQQMDhEJ/u0GCQYDAwYJBgETCREODAQxBgsJBgEABwAi/8AD3gPAAAQACQAOABMAdgCEAIkAAAEjFTM1FyMVMzU1IxUzNQcjFTM1ASIuAic1NC4CIyIOAh0BFB4CFyIuAj0BKgMjKgEOAQc1NC4CIyIOAh0BFB4CFyIuAj0BDgMjDgMVERQeAhcyHgIzMj4CMz4DNRE0LgInAw4DIyIuAicRIRElIxUzNQJEiYnNiYmJic2JiQFxAhgqOyULExkODhkTCwMGCAUSIRkPCBEREQkSIyIhEAsTGQ4OGRMLAwYIBRIhGQ8WIhkOAQkPCwYGCw8JA0Fyn2Bgn3JBAwkPCwYGCw8JPhhKYHRCQnRgShgC7/4AiYkB4omJzYmJzYmJzYmJAh8EBwgEMA4ZEwsLExkOiQgODQsFDBYfE0MBAQElDhkTCwsTGQ6JCA4NCwUMFh8TLgMFBAMCCQ0QCf0WCRANCQIMDgwMDgwCCQ0QCQLqCRANCQL9CwQKCQYGCQoEAef+GdaJiQAAAAEAA//AA/0DwABzAAABLgMnLgMnLgMnLgMjIg4CBw4DBw4DBw4DBw4BHgEXHgMXDgMHFB4CFx4CNjc+Azc+AzceAxceAxceAzMyPgI3PgM1LgMnPgM3PgImJwP9AgUHCQUTQlJbLA4jJicSBAgJCQUFCgkJBBInJiMOLFtSQhMFCQcFAgICAQMDDCs6RigLEg4JAgMGCQYGDQ0NBgcODw8IFS4zNx4eNzMuFQgPDw4HAwYGBgMEBwcHAwYJBgMCCQ4SCyhGOisMAwMBAgICOwUJCAYCCAwIBQIoXVdHEgQGBAICBAYEEkdXXSgCBQgMCAIGCAkFBQsLCwUXOD5DIixTS0IcBw0MCgQEBAEDAwQIBwcEChYaHxMTHxoWCgQHBwgEAQIBAQECAwIECgwNBxxCS1MsIkM+OBcFCwsLBQAAAwABAAQD/wN8AFAAmADfAAAlLgMnLgI2Nz4CJicuAyMiDgIHDgEeARceAQ4BBw4DBw4DBwYUHgEXHgMzMh4CMzI+AjMyPgI3PgI0Jy4DJyUzPgM3LgI2Nz4DNzQuAicuAyMiDgIHDgEeARceAQ4BBw4DBw4DBwYUHgEXHgMzMh4CFz4DNyUuAycuAycuAjY3PgImJy4DIyIOAgcOAxUeAxceAQ4BBx4DFx4DFz4DMzI+Ajc+AjQnAu4TKSUeCAYLBAYLHB8LCAwLIigrFBQrKCILDAgLHxwLBgQLBggeJikTFhcMBgUBAQICAgQFBgMBG0BsU1JsQBsBAwYFBAICAgEBBQcMFxX+QwEECAgIBCMfBQ8LDikwNBoCBAYECyIoKxQUKygiCwwICx8cCwYECwYIHiYpExYXDAYFAQECAgIEBQYDARUxUj4IEREQCALOBQcMFxUTKSUeCAYLBAYLHB8LCAwLIigrFBQrKCILBAYEAho0LygODA8FHyMECAkJBAgQEREIPlExFQEDBgUEAgICAQGtDhgWEwgHEBMWDSA8OTYaGCEVCQkVIRgaNjk8IA0WExAHCBMWGA4PGRsgFwMGBgUCAgQDAgQEBAQEBAIDBAICBgYGAxcgGxkPcAIFBQUCLlVLQBkfLR8SBAoUExMJGCEVCQkVIRgaNjk8IA0WExAHCBMWGA4PGRsgFwMGBgUCAgQDAgMEBAEGCwoKBQUXIBsZDw4YFhMIBxATFg0gPDk2GhghFQkJFSEYCRMTFAoEEh8tHxlAS1UuAgUFBQIFCgoLBgEEBAMCAwQCAgUGBgMAAwAAAFAEAANQABgALQAzAAABISIOAhURFB4CMyEyPgI1ETQuAiMFMh4CFRQOAiMiLgI1ND4CMwM3FxMBIQPA/IANFxEKChEXDQOADRcRCgoRFw39IBQjGg8PGiMUFCMaDw8aIxRggJXrAQD9AANQChEXDf2ADRcRCgoRFw0CgA0XEQqADxojFBQjGg8PGiMUFCMaD/4AwGsBK/6AAAAAAAEA7wBvAu8DUQAtAAABNC4CJy4BIgYHDgMHDgEUFhceAxceATI2Nz4DNTQ+AjU0LgI1AuUEBwkGBgwMDAZVmXVHAwYGBgYDR3WZVQYMDAwGBgkHBAMEAwMEAwMpBgwKCQMDAwMDMHJkRgMHEhISBwNGZHIwAwMDAwMJCwwGAThcdj4+dlw4AQACAAD/4gP/A54AMQA2AAABLgMjIT4BLgEnLgMjIg4CBw4DBxEzMh4CFx4DMzI+Aj8BNi4CJwEzESMRA+QKGBkXCf71BQYEEBEFDA0PCBYcEQoEBhMwWU0mICwhGg4RJzZLNniFQxYKBQECBwsI/ByrqwIqCwwGAjhiUD0TBgoHBBMeJhIgR0Q6Ev4LBgsPCQoWEgwjXJ98Sg8cGRYJ/bkCZv2aAAIAUQARA64DbgAxAGMAAAEOARQWFx4BFAYPAQ4BIiYnLgE0Nj8BLgM3Bw4BFBYXHgEyNj8BPgE0JicuASIGBwEuASIGDwEOARQWFx4BMjY3PgE0JicuATQ2PwE+ATIWFx4BFAYPAR4DBzc+ATQmJwIeCQkJCRYWFhafFjc5NxYWFhYWTAcKBQECkigoKCgpZmpmKKAoKCgoCRgZGAkBkShmamYpnygoKCgJFxgXCQoKCgoWFhYWoBY3OTcWFhYWFkwHCgUBApEpKSkpAjkJGBkYCRY3OTcWnxYWFhYWNzk3FkwTJygpFJIoZmpmKSgoKCigKGZqZikJCQkJATUpKSkpnyhmamYpCQkJCQkXGBcJFjc5NxafFhYWFhY3OTcWTRMnKCgUkSlmamYoAAYAEABJA+sDWgAcADEARgBjAIAAlQAAASEyPgI3PgE0JicuAyMhIg4CHQEUHgIzByIOAhUUHgIzMj4CNTQuAiMRIg4CFRQeAjMyPgI1NC4CIwEhIg4CHQEUHgIzITI+Ajc+ATQmJy4DIxEhIg4CHQEUHgIzITI+Ajc+ATQmJy4DIwEiDgIVFB4CMzI+AjU0LgIjAWQCWwgPDAgBAgICAgEIDA8I/aUHDAkFBgkMBv8SHxcNDRcfEhIfFw0NFx8SEh8XDQ0XHxISHxcNDRcfEgNa/aUHDAkFBgkMBgJbCA8MCAECAgICAQgMDwj9pQcMCQUGCQwGAlsIDwwIAQICAgIBCAwPCPymEh8XDQ0XHxISHxcNDRcfEgKvBQkNCBEXFRcRCA0JBQYKDQdkCA0JBYkNFx8SEh8XDQ0XHxISHxcN/s0NFx8SEh8XDQ0XHxISHxcNATMGCg0HZAgNCQUFCQ0IERcVFxEIDQkF/s0GCg0HZAgNCQUFCQ0IERcVFxEIDQkFAmYNFx8SEh8XDQ0XHxISHxcNAAAAAAMAAP/iBAADngA7AKwA0gAAASUuAiIjByIOAg8BJS4BDgEHDgMVERQeAhcFHgIyMzI+Aj8BBR4BPgE3PgM1ETQuAicBDgMHDgMHDgEuAScuAzEwLgInLgI2MS4DIyIuAicRFx4DFxYOAicuAgYHDgIWFx4BPgE3PgIWFx4DFx4DMzI+ATIXFj4CMzIeAjEeAxceAxUUDgIHJQ4DIyIuAicuAzc2LgInLgMnLgE0Njc+AzcXEQPh/rYDBgcHAwECBAQEAvL+zgYNDAwFBgkGAwQICwcBSQMFBQUDAwYGBgPyATIGDQwMBQYJBgMFCAsH/l4GCQgJBgUICxENDA8KBgICBQQCAwgPDB4VAQkIGSEoFw4dHRsM3gcPDgsDBwcPEQMGGyAgCxEXCQcNDQsFAgQECAgIBAQMDAoBAQIGCwoMCwcHCAgQDw4GBhEQCxMaEg0GBgwKBgMIDgsBWwcODQoDCA4LBwEDBwYDAQIFEh8XChcWFAcZGBgWCBgbHAypAw2NAgIBAQEBAgGChAICAQQEBAkLDAb9OQgODAoDjgECAQECAgKCgwICAQQDBAkLDAYCxwgODAoD/gcFCw4RCwoQERQODQQHDgYGFhYQCg0MAgUrMCYGEhEMAwUHBAFQYA4TEBELGCISAggODAIFBAYPEA8GBgQBBQQEBQEDBAMGCAwJCQ0IBAMCAgIBAwMGCAYCAwQFBAQQFBcKCREQEQkjCA0JBAgKCQIHHiIfCB0jFAoEAgUHCwgdLyklEwYODQwFSf58AAAAAgAQ/8ED5QO+ADQAcwAAEzQ+Ajc+Azc1DgMHDgMHFA4CFRQeAhUeAxceAxc1LgMnLgM1JS4DJy4BIgYHDgMdAQ4DBw4DFRQeAhceAxcVFB4CFx4DMzI+Ajc+Azc+ATQmJ7YFBwkEGUNSXzRQk3JGAwwUEAwDCw0KCgwKAwwRFQwDRnKTUDRfUkMZBAkHBQMvAjVVbjsECgsLBQUHBAIrYlY/CAoQDAYGDBAKCD5WYisCBAcFAgQFBQIDBgYFAjtuVTUCBAQEBAHENFxNPRUFDAwJAqMDEhMPAQMLEBQLAjZjjltbkWY4AgwUEAsDAQ8TEgSkAgkMDAUWP09eNRMDOlNfKAMDAgIDCAkKBoYEDxEPBAUPFBgPDxgTDwYEDxEQBYYFCgkIAwECAQEBAgICKF9TOgMGDQ0MBQAAAAIAAQAZA/8DhwBaAKYAACUuAycuAycmPgI3PgImJy4DIyIOAgcOAR4BFx4DBw4DBw4DBw4DBwYUHgEXHgMzMh4CMzI+AjMyPgI3PgI0Jy4DJwUuAycuAycuAycmPgI3PgImJy4DIyIOAgceAxceAQ4BBx4DFx4DFx4DFz4DMzI+Ajc+AjQnAnIGDg4PCA4cGBEDAgMHCgUaHwkMEQ0kKzEaGjErJA0RDAkfGgUKBwMCAxEYHA4IDw4OBhgpIBYGAQECAgIFBgYEASZTg15ehFMnAQQGBgUCAgMBAQYXICkYAY0GFiApGAYNDg8IDhwYEQMCAwgLBhoeCQ0RDSQrMRoYJR8bDhMgGxgLEBQFJCgCBQQEAgkSEREIGCokHQswRSwWAQMGBgUCAgIBAfYEBwYGAwYMDQ8JCBITEggoS0U/HBYiGA0NGCIWHD9FSygIEhMSCAkPDQwGAwYGBwQPJSswGgQHBgYDAwUEAgQFBAQFBAIEBQMDBgYHBBowKyUPIBowKyUPBAcGBgMGDA0PCQgSExIIKEtFPxwWIhgNChMcEgkVGh8TG0lcbT8BAgICAQMHCAgFDyMoLBgBBAQDAgQFAwMGBgcEAAMAQwA2A8IDagAUAGUAegAAASIOAhUUHgIzMj4CNTQuAiMlLgMnLgMnLgMnLgMjLgMjIg4CByIOAgcOAwcOAwcOAwcOARQWFx4DFx4DMzI+Ajc+Azc+ATQmJwEiLgI1ND4CMzIeAhUUDgIjAgAjPi4bGy4+IyM+LhsbLj4jAcICCAsNBxQoKCgUAwYGBwQCCg0PBxYsLCwWFisrKxUHDw0KAgQHBgYDFCgoKBQHDgsIAREQERABCAsOBzJlZWUyM2ZmZjMHDQsIAg4ODg7+PjllSywsS2U5OWVLLCxLZTkCWRsuPiMjPi4bGy4+IyM+LhteBw0KBwECBAMDAgkVFRUKBw4LBwICAgEBAgICBwsOBwoVFRUJAgMDBAIBBwoNB1aMhYlUBw0KBwEGCAYDAwYIBgEHCg0HSZGRkUj94yxLZTk5ZUssLEtlOTllSywAAAEALf/kA94DbwBDAAABNTQuAicuAQ4BBw4DBw4BFBYXHgMXHgMzMj4CNz4DPQEeAxcWFA4BBw4BHgEzMj4CNTQuAicB3gIFCAYGDQ0NBkqBYToCBQUFBQI6YYFKAwcHBwQDBgYGAwYIBQIvXlA6DA0XLiEjHQcoIiRlXUFZkbhfAoy5Bw0LCQMEAwEEBDJ2aEgDBxAQDwYESGh2MQIDAgEBAQIBAwkLDQe3AQsWIBYYLyojDA4rKR0uVnxOXH9RKAUAAAABAREAbwMQA1EALQAAAS4DJy4BIgYHDgMVFA4CFRQeAhUUHgIXHgEyNjc+Azc+ATQmJwMQA0d1mVUGDAwMBgYJBwQDBAMDBAMEBwkGBgwMDAZVmXVHAwcHBwcCAgNGZHIwAwMDAwMJCgwGAThcdj4+dlw4AQYMCwkDAwMDAzByZEYDBxISEgcAAwANAFAD8AMwABYALQBEAAATITI+AjU0LgIjISIOAhUUHgIzBSEiDgIVFB4CMyEyPgI1NC4CIxEhIg4CFRQeAjMhMj4CNTQuAiNXA1APGhQLCxQaD/ywDxoUCwsUGg8DUPywDxoUCwsUGg8DUA8aFAsLFBoP/K4PGhQLCxQaDwNSDxoUCwsUGg8CmQ0VHA8PGxQMDBQbDw8cFQ2KDBQbDw8bFAsLFBsPDxsUDP7UDBUbDw8aEwsLExoPDxsVDAAAAgAA/8AD5wPAACoAPwAAExQeAjMyPgI3AR4DMzI+Ajc+ATQmJwE+AzU0LgIjIg4CFTM0PgIzMh4CFRQOAiMiLgI1ADxojFAcNzQwFgEhBg4QEAgIEA8OBgwMDAz+3g4WDwg8aIxQUIxoPIAoRl01NV1GKChGXTU1XUYoAkBQjGg8CA8WDv7eBgkGAwMGCQYMICEgDAEhFjA0NxxQjGg8PGiMUDVdRigoRl01NV1GKChGXTUAAgAC/8AD/gO+AQMBGAAAAS4DJy4DMS4DNTQ+AjcwPgIxPgE0JicuAycuASIGBw4DMQ4DIyIuAi8BLgMnLgEiBgcOAw8BDgMjIi4CLwEuASIGBw4DBw4BFBYXHgMxHgMVFA4CDwEOAwcOARQWFx4DHwEeAxUUDgIPAQ4BFBYXHgMXHgMzMj4CPwE+AzMyHgIXMB4CMR4DFzIeATIzOgE+ATM+Az8BPgMzMh4CHwEeAzMyPgI3PgM3PgE0JicuAzEuAzU0PgI3MD4CNz4DNz4BNCYnBSIuAjU0PgIzMh4CFRQOAiMD/gEIDA8JCx4bEwoQDAcBAgQCERQRBgUGBggQERIKBxAREAcJGBYPBAgICAQKEg8KAgsBCAwQCQwZGRgMCRAMCAELAgoPEwoFCQkIBEMHEBEQBwoSERAIBgYGBgYSEAsDBAMCCA0SClMJEAwIAQEBAQEBCAwPCVMKEg0IAgMEAzMGBQYGCBAREgoECAgIBAQICAcDQwQICQkFChMPCgIDBAMBCAwQCQYMDAwGBgwMDAYJEAwIAQsCCg8SCgQJCAgDRQMHCAgEBAgICAQKEhEQCAYGBQYHEhEMAgQCAQcMEAoTGx4LCQ8MCAEBAQEB/gIkPy8bGy8/JCQ/LxsbLz8kAfEJEAwIAQEEAwICCg8SCgQICAcDFhoWBxAREAcKEhEQCAYGBQYHEhEMAgQDAgcNEQpVCQ8MCAEBAQEBAQgMDwlVChENBwIDBAI0BgUGBggQERIKBxAREAcIFxUPBAgICQQLEw8KAgsBCAwQCQwZGRgMCRAMCAELAQoPEwsFCQkIBEMHEBEQBwoSERAIAwQDAgEDBAM0AgQDAgcNEQobIBoJDwwIAQEBAQEBCAwPCVUKEQ0HAQIEAjUDBAMBAQMEAwgQERIKBxAREAcJGBYPAwcICAQKEg8KAgIDBAEBCAwQCQwZGRgM3xsvPyQkPy8bGy8/JCQ/LxsAAgAA//QEAANsAD4AbgAAAS4DJy4CBgcOAx0BIg4CBwYeAhcWMj4BNz4DMxUUHgIXHgE+ATc+Azc+AzU0LgInASERITUiLgEiIyIOAgcOAxURFB4CFx4DMzI+Ajc+Az0BDgMHFQP3AjJTbDwFCgsLBQUIBgNXj2g+BgQBChMOECAdGAgaLjhJNAMGCAUFCwsKBDxsUzICAgMCAQECAwL+9/2aAbwPIyQjDylTU1MpGCkeEREeKRgpU1NTKSlTU1MpGCkeEQ4iJCQRAkADP1ljKAMDAQICAwgJCgalNUlOGRIeGBMGCAgNBQ4aFAypBgoJBwMCAgEDAyhkWT8CAwYGBgMDBgYGA/49AmaGAQECBAYEAhUhKxj9oBgrIRUCBAYEAgIEBgQCFSErGIkOHBsbDCAAAAABAJ8A4QOBAuEALQAAAS4DJy4BIgYHDgMHDgEUFhceAzMyHgIzMj4CMzI+Ajc+ATQmJwOBMHJkRgMHEhISBwNGZHIwAwMDAwMJCwwGAThcdj4+dlw4AQYMCgkDAwMDAwE1VJl1RwMGBgYGA0d1mVQGDAwMBgYJBwQDBAMDBAMEBwkGBgwMDAYAAgAA/9AEAAOuAD4AYQAAEzMeAxceAzMyPgI3PgM3MzI+Ajc+AS4BJy4DJy4DIyIOAgcOAwcOAhYXHgMzBRQOAgchLgM1IxQeAhUeAzMhMj4CNzQ+AjUj8osFDg4OBQUPFBkPDxkUDwUEDQ8OBosGCgkIAwICAQMDKF9TOgMDBgYGAwMGBgYDAzpTXygDAwECAgMICQoGAmcEBgcD/XUDBwYEpgwODAQQFhoOAw4OGxYQBAwODKYCNiBBOCoJCA0JBQUJDQgIKThCIAMGCAUFCwsLBTtsVDMCAgMCAQECAwICM1RsOwULCwsFBQgGA4k2XU09FhY8TV03Z5pnNQIOFxAJCREXDgI1Z5pmAAEAI//QA90DrgBVAAAlLgMnLgMnLgMnJj4CNz4CJicuAyMiDgIHDgEeARceAwcOAwcOAwcOAwcGHgIXMh4CMzI+Ajc+AzM+AycD3QgcJzEcCBITFAoUKCIZBQMBCA8LIScMEBYRLTU7IB87NS0RFhAMKCILDwgBAwUZIigTCxUTEQgcMSccCAICBgoGAjFrrHw+aFZFGxsnGQ0BBgoGAgIcJjswJxIFCQkIBAgRFBgPChcaHhE2ZFxTJR0uIBERIC4dJVNcZDYRHhoXCg8YFBEIBAgJCQUSJzA7JgcNCwgCCw0LAwUGAwMGBQMCCAsNBwAAAAACAAD/wQQAA8EAGABcAAABFA4CBxEjESIuAjU0PgI7ATIeAhUBDgMjKgEuAScuAycmDgIxETA+AjMyHgIXHgMXHgMzOgE+ATcyPgI3PgMzMh4CFREOAwcBEQwTGQ2JDhkTCwsTGQ6JDhkTCwLUCx8lKhYIERERCCk6NDkoJ1xQNiA0QiIKFRUUCSg5NDopBg0NDQYLFhUVCgQJCQkEBAgICAQHDAkGAQUHCQUDfQ4YEgsB/IkDdwsSGQ4OGRMLCxMZDvzrBAgHBQECAggqMS4LCgMMDQI5CAoIAQIEAgsnKSQIAQICAQIDAgECAgEBAgIBBQkMB/31BgoHBQEAAAAABAAM//sEAANwABYALQBEAHQAABMhMj4CNTQuAiMhIg4CFRQeAjMFISIOAhUUHgIzITI+AjU0LgIjESMiDgIVFB4COwEyPgI1NC4CIyUjNTQuAisBIg4CHQEjIg4CBxwBHgEfAR4CMjM6AT4BPwE+AjQ1LgMj8gK4EiAYDg4YIBL9SBIgGA4OGCASArj+uRIgGA4OGCASAUcSIBgODhggEvkSIBgODhggEvkSIBgODhggEv5gkwIDBAK1AgQDApMCAwMCAQEBAfkBAgICAQECAgIB+QEBAQECAwMCArwPGiESEiAYDg4YIBISIRoPpQ4YIBISIBcNDRcgEhIgGA7+mg8ZIRISHxcNDRcfEhIhGQ9V/wIEAwICAwQC/wECAwICAwMDAfQBAQEBAQH0AQMDAwICAwIBAAAAAwAA/8AEAAPAABQAKQCBAAABIg4CFRQeAjMyPgI1NC4CIxEiLgI1ND4CMzIeAhUUDgIjEw4DBw4DBxQOAisBIi4CNT4DNz4DNTQuAicuAyMiDgIHDgMrASIuAjU8AzUwPgIxPgMzMh4CFx4DFRQOAgcCAGq7i1BQi7tqaruLUFGLumoQHBUNDRUcEBAcFQ0NFRwQ2QURGB4SCBAOCwIFCQwHRQcNCgYBJjQ4EwQFAwEDBgkGBg4REwoRHhgQAwEGCQsGRwcMCQUBAQEJJTdJLhktKCMPDxcQCAMGCQYDwFCLumpqu4tQUIu7amq6i1D8fw0VHBAQHBUNDRUcEBAcFQ0ByQoWGRwQBxASFAsHDQoGBQkMByg7MSsYBQoLDAYIDQwLBgYJBgMMFBgMBgkHAwUIDAcBAgICAQICAhw5Lh0HDhUODiAjJRMLFRQTCQAAAgAA/8AEAAPAABQANQAAASIOAhUUHgIzMj4CNTQuAiMBFA4CIyEiLgInLgE0Njc+AzMhMh4CFR4BFAYHAgBqu4tQUIu7amq7i1BRi7pqAVkGCg0H/ZcHDQoGAQEBAQEBBgoNBwJpBw0KBgICAgIDwFCLumpqu4tQUIu7amq6i1D9vQgNCQUFCQ0IESIiIhEIDQkFBQkNCBEiIiIRAAAAAAMACf/iBAADngAhADYAWwAAJQEuAyMiDgIHAQ4BFBYXHgMzITI+AjU0LgInBSIuAjU0PgIzMh4CFRQOAiMTDgMrASIuAicuAyc0PgI3PgEyFhceAxUOAwcD8/5JBA0QEgkKEg8NBP5EBAQFBQUNDxEJA3cOGRMLAgMFA/4NEBwVDAwVHBAQHBUMDBUcECwBCAwOCAMHDgsIAQYKCAcDBQkMBw0WFRYNCAwIBAMHCAoGTgMtCA0JBQUJDQj8zAgREREICAwJBQsSGQ4GCwoJBA8MFRwQEBwVDAwVHBAQHBUMARsIDwsHBwsPCCJFREEeBw4MCQICAgICAgkMDgceQURFIgAAAwAB/8AEAAPAAFEAZgCbAAABPgM3PgImJy4DJy4DIyIOAgcOAR4BFx4DBw4DBw4DBw4DBwYUHgEXHgMzMh4COwEuAzU0PgI3PgM3FyIOAhUUHgIzMj4CNTQuAiMTFA4CKwEVFA4CKwEiLgI9ASMiLgI9ATQ+AjsBNTQ+AjsBMh4CHQEzMh4CHQECRQwYFhQIDRMIAwgCBQYHBBAuNz4hIT43LhEVDwwnIQsPCQIDBBcgJhIKExIRCB4vIhcHAQEDAgIFBgcEAitjonklDhYPCAgRGhIIExQVCrs1XUUoKEVdNTVdRigoRl01mgMFBgRVAwUGBEQEBgUDVQQGBQMDBQYEVQMFBgREBAYFA1UEBgUDAdcLFRYZDxg3OTkbBw4ODgYcLB8QEB8sHCRRWWE0EB0ZFgkNFhMQCAQICAkFEyw0OyIDBwcHAwMFBAMGBwYULC8yGhw2My8VChUUEwgXKEVdNTVdRSgoRV01NV1FKP7eBAYFA1UEBgUDAwUGBFUDBQYERAQGBQNVBAYFAwMFBgRVAwUGBEQAAQBZABkDpQNlAEQAAAEuAyMhETQuAicuASIGBw4DFREhIg4CBw4BFBYXHgMzIREUHgIXHgEyNjc+AzURITI+Ajc+ATQmJwOlAQgMEAn+/gYLDwgUKCgoFAgPCwb+/wkQDAgBAgICAgEIDBAJAQEGCw8IFCgoKBQIDwsGAQIJEAwIAQICAgICDQkPCwYBAQkQDAgBAgICAgEIDBAJ/v8GCw8JFCcnJxQJDwsG/v4JEAwIAQICAgIBCAwQCQECBgsPCRQnJycUAAABAAIANQQAA08AVgAAEwE+AzMyHgIXHgMXHgMVFA4CBw4DDwEhMh4CFx4DFRQOAgcOAyMhFx4DFx4DFx4DFRQOAgcOAyMiLgInAQIBfQgREhQLCxQSEQgEBwYFAgIDAgEECAsIBAkKCgVcAgoLFBIRCAgLCAQECAsICBESFAv99lwFCgoJBAQHBgUCAgMCAQQICwgIERIUCwsUEhEI/oMBwwFyBwoHAwMHCgcECAkJBQUJCQkFCxMREAcFCgoKBVgEBwsHBxASEwsKExIQBwcLBwRYBQoKCgUECAgJBQUJCQkECxMSEAcICwgEBAgLCAFwAAAAAgCJ/9IDeAOwAC4APAAAATQuAisBNTQuAiMiDgIdASMiDgIVERQeAhceAzMyPgI3PgM1ESU1ND4CMzIeAh0BIwN4CxMZDiEnSGU9PWVIJyQOGBIKCA4UDChQUVEoKFBQTygMFQ8J/iIGFSkiIikVBs0Bqw4bFAyrPmVIJydIZT6rDRYcDv6SDBYSDAIJDgkEBAkOCQIMEhYMAXFKqxAkHhQUHiQQqwAAAQAGACsD+QNPACQAAAE+ATQmLwEuASIGBwEnLgEiBg8BDgEUFhcBHgMzMj4CNwED+QMDAwOVAwgICAP+O8YDCAgIA5UDAwMDAWoCBAQEAgIEBAQCAmoCmwMICAgDlQMDAwP+OccDAwMDlQMICAgD/pYBAgIBAQICAQJqAAEAXwAiA6ADsQAtAAABNSIOAhUUHgIzMj4CNTQuAic3HgMVFA4CIyIuAjU0PgIzNRcHAgBBclUxMVVyQUFyVTEMFiAUTBsqHhBCcZhWVphxQUFxmFacnAKtTjFVckFBclUxMVVyQR87NzEVSBxBSU8qVphxQUFxmFZWmHFBToKCAAAAAAEAJP/GA94DwAA8AAAlLgM1NC4CIyIOAhUUDgIHDgMXHgMXHgMXHgMzMj4CNz4DNz4DNzYuAicDxgIvNi04WGw0NGxYOC02LwIHCgcDAQEHCw4IAilLakIHHCYvGhovJhwHQmpLKgIIDQoHAQECBgoH6gItWIRZdJFQHBxQkXRYhFktAgYOEBEJCREOCwQBEBUWBxgoHRERHSgYBxYVEAEECw4QCQkSEA4GAAADAAD/wAQAA8AAFAApAFEAAAEiDgIVFB4CMzI+AjU0LgIjFTIeAhUUDgIjIi4CNTQ+AjMTIyIuAjU0PgI3NS4DNTQ+AjsBMh4CFQceAxUUDgIjAgBqu4tQUIu7amq7i1BQi7tqER0WDQ0WHRERHRYNDRYdETt4CxMOCAUJDAcHDAkFCA4TC1gLEw4IAQcMCAUIDhMLA8BQi7tqaruLUFCLu2pqu4tQtw0WHRERHRYNDRYdEREdFg39kAgOEwsIDw0KA7gDCg0PCAsTDggIDhML6QMKDA8ICxMOCAAAAQAV/9ED8wOvAKcAAAEUDgIrARceARQGBw4DIyIuAi8BIxUXHgEUBgcOAyMiLgIvARUUDgIjIi4CPQEHDgEiJicuATQ2PwE1IwcOAyMiLgInLgE0Nj8BIyIuAjU0PgI7AScuATQ2Nz4BMhYfATM1Jy4BNDY3PgEyFh8BNTQ+AjMyHgIdATc+ATIWFx4BFAYPARUzNz4BMhYXHgEUBg8BMzIeAhUD8wgOEwqQcQgICAgECQoKBQULCgkEu2C/CAgICAQJCgsFBQoKCQRyCA4TCgsTDghyCBQVFAgICAgIv2C8BAkKCgUFCgoJBAgICAhwjwsTDggIDhMLj3AICAgICBQVFAi6Yb8ICAgICBQVFAhyCA4TCwoTDghyCBQVFAgICAgIv2C7CBQVFAgICAgIcI8KEw4IAcALEw4IcggUFRQIBAYEAgIEBgS/YbsIFBUUCAQGBAICBAYEcI8LEw4ICA4TC49wCAgICAgUFRQIvGC/BAYEAgIEBgQIFBUUCHIIDhMLChMOCHIIFBUUCAgICAi/YLsIFBUUCAgICAhxkAoTDggIDhMKj3AICAgICBQVFAi7YL8ICAgICBQVFAhyCA4TCgAIAAAAFwQAA2kAOgA/AEQASQBOAFMAWABdAAABBycHJwcnBycHJwcnBycHJwcnBxEUDgIjIi4CNTwBEDQxIg4CFREUHgIzITI+AjURMC4CJwEhNSEVNSE1IRU1ITUhFQUhNSEVNSE1IRU3ITUhFTUhNSEVA9ArLzEyJy0pKSssMi8sKiQsJy0mBgkLBQgPDAcKGRYPCA0SCgOcChINCA0REAL+Sv7ZASf+2QEn/tkBJwGG/sMBPf7DAT0B/sIBPv1SAq4DZigqKioqKiosLCoqKSknJyoqKir9QwsQCgQIDA4HB90BA9YFCg8K/TMKEg0ICA0SCgL3Cw4NAv0oSEh7SUl5S0v0SEh7SUl7SUmSk5MAAAABAAIBWgP9AiYAIAAAATQuAiMhIg4CBw4BFBYXHgMzITI+AjU+ATQmJwP9BgoNB/xPBw0KBgEBAQEBAQYKDQcDsQcNCgYCAgICAgMIDQkFBQkNCBEiIiIRCA0JBQUJDQgRIiIiEQAAAAIAx//AAzkDwAAUAGwAACUiDgIVFB4CMzI+AjU0LgIjEy4DIyIOAgcUDgIxHAEGFBUUHgI7ATI+Ajc+AzMyHgIXHgMVFA4CBw4DBxQeAjsBMj4CNT4DNz4DNz4DNTQuAicB5xYoHhISHigWFigeEhIeKBb6FTE4PyNAZ00zDAEBAQEHDREKZAgPDAkCBBchKhgPGhcUCAgMCAQCBAcGGk5KNgIIDRIKYQoSDQcDDxQXCxkqIRgHCA0JBQwWIRWbEh4oFhYoHhISHigWFigeEgLYFB0TCilBUCcBAwMCAgMDAwIKEQwGBQkNCBEiHBEFCQ0ICBAREgsIEA8PByE9RFM4ChENBwgOEgoPHBkWChYoIx8NDRscHQ8aNDEuFAAAAAMAbQFdA5MCJQAUACkAPgAAExQeAjMyPgI1NC4CIyIOAhUhFB4CMzI+AjU0LgIjIg4CFSUyHgIVFA4CIyIuAjU0PgIzbRAbJRUVJRsQEBslFRUlGxABLxAbJRUVJRsQEBslFRUlGxABkxUlGxAQGyUVFSUbEBAbJRUBwRUlGxAQGyUVFSUbEBAbJRUVJRsQEBslFRUlGxAQGyUVZBAbJRUVJRsQEBslFRUlGxAAAAAAAQAb//kD4wOJAIoAAAEOAyMwKgIjIi4CJy4DJyY+Aj8BLgMnLgMHDgMHDgMHBh4CFx4DFxY+Ajc+AR4BFx4BDgEPAQ4DBwYuAicuAycuAjQ3PgM3PgM3PgM3PgIyMzIeAhceAxc3PgIyFx4DFRYOAgcDzQEGCQsGAwUIBRpbcX8+BQkHBQEBAQQHBIYGDA0NBw0cHR0PDx0cGw0OFxIOBAkDFyseDyMmKBUVKikpFAwZFxMGBQIFDAkBGDg8Px8gQD89HR43MSkQEBYMBgMICw4ICRQVFwwYPkVKJQkREREJHTk3NRgRIB4cDGUECQoKBQUJBwQKBA0PAQGJBgoIBAIKFBIBBQgJBQUKCQgDWQYMCwoECAwHAgIBCA0SCwwZGx0QHkdGQBcMEw4KAgIBBg0KBgEIEQwKFhUTBwESHxcOAQEIERoRESoxNx4eQUVIJBIjIiEQEB4cGgwZKiAWBQECAQgPFg8KFxkcD3YEBgMCAgYICQVOnoBTBAABAAD/wQQAA8EAQgAABSIuAiclDgMjIi4CNTQ+AjMyHgIXJTU0PgIzMh4CFRQOAiMiLgInBRUFPgMzMh4CFRQOAiMDRCM+MSEG/pwLGRsdDydEMx4eM0QnDx0bGQsBYR4zRCcnRDMeHjNEJw8dGxkL/p8BRw0eIiUUJ0QzHh4zRCc/Fyk5IbsIDQkFHjNEJydEMx4FCQ0IugInRDMeHjNEJydEMx4FCQ0IugStDRUOCB4zRCcnRDMeAAAAAAIAAP/ABAADwAAUADkAAAEiDgIVFB4CMzI+AjU0LgIjCQEOAyMiLgIvAS4BNDY/AT4BMhYfAQE+ATIWHwEeARQGBwIAaruLUFCLu2pqu4tQUIu7agE+/nsBAgIDAQEDAgIB5AICAgJeAgUFBQJ8AR4CBQUFAl4CAgICA8BQi7tqaruLUFCLu2pqu4tQ/or+ewEBAQEBAQEB5AIFBQUCXgICAgJ9AR4CAgICXgIFBQUCAAAAAAQAIv/zA94DjQBNAJ4A2QEqAAABLgMnLgMjIg4CBw4DBw4DFRQeAhceAxceAxcVFB4CFzIeATIzMj4CPwEyPgI3PgM3PgM1NC4CJwEiLgInLgI0NTQ+AjM6AR4BFx4DMzI+AjU0LgI1ND4CMzIeAhceAhQVFA4CIyoBLgEnLgMjIg4CFRQeAhUUDgIjJRQOAiMiLgI9AQcOAyMiLgIvARUUDgIjIi4CPQE0PgIzNh4CHwE3PgMzNh4CHQEXIi4CJy4CNDU0PgIzOgEeARceAzMyPgI1NC4CNTQ+AjMyHgIXHgIUFRQOAiMqAS4BJy4DIyIOAhUUHgIVFA4CIwPQBCIxOx0kSEhIJCRISEgkHTsyIwUDBQMCAgMFAwUjMjsdChUVFQoDBQgFAgMDBAIDBgYGAswdOjo6HR07MSIEBAUDAgIDBQT9SgwZFhIEAQEBBAYIBAIDAwMBBQwNDwgJDgkFJi4mCxUeEwkWFREEAQEBBAYIBAEDAwMBBgwMDAYHCwgEJi4mChUgFgFcBAYIBQUIBgQ6AQIDBAICBAMCAToEBggFBQgGBAQHCQUIDgwJAywsAgYICgUIDwwHdgwZFhIEAQEBBAYIBAIDAwMBBQwNDwgJDgkFJi4mCxUeEwkWFREEAQEBBAYIBAEDAwMBBgwMDAYHCwgEJi4mChUgFgLdHTcsHQMEBgQCAgQGBAMdLDcdFy4vLxgXLi4tFh03LB0DAQIBAQGvBQoIBwIBAQECBALFAgMEAwMcKzYdFi4uLhcXLy8uF/7fBAcKBwEDAwMBBQgGAwEBAQQGBAIEBwkFDgoMGh4NGBIKAwYJBgEDAwMBBQgFAwEBAQMFAwEDBggFDQkNGh4PGRIKGQUIBgQEBggFgY8CAwIBAQIDAo+BBQgGBAQGCAWnBQkHBAEBBQkHbGwFCAUDAQIGCwinGQQHCgcBAwMDAQUIBgMBAQEEBgQCBAcJBQ4KDBoeDRgSCgMGCQYBAwMDAQUIBQMBAQEDBQMBAwYIBQ0JDRoeDxkSCgAAAAADAMD/vwNAA78AGAAdADIAAAERFA4CIyEiLgI1ETQ+AjMhMh4CFQchESERAzQuAiMiDgIVFB4CMzI+AjUDQAoRFw3+AA0XEQoKERcNAgANFxEKa/5VAauVChEXDQ0XEQoKERcNDRcRCgN//IANFxEKChEXDQOADRcRCgoRFw1r/asCVf0rDRcRCgoRFw0NFxEKChEXDQAAAAEAAAABAAAgU6pGXw889QALBAAAAAAAzpRiXQAAAADOlGJdAAD/vwQAA8EAAAAIAAIAAAAAAAAAAQAAA8D/wAAABAAAAAAABAAAAQAAAAAAAAAAAAAAAAAAADoAAAAAAgAAAAQAAFEEAAEQBAAAXgQAACIEAACJBAAAkQQAAM0EAACRBAAAjwQAAAAEAAAHBAAAMgQAACIEAAADBAAAAQQAAAAEAADvBAAAAAQAAFEEAAAQBAAAAAQAABAEAAABBAAAQwQAAC0EAAERBAAADQQAAAAEAAACBAAAAAQAAJ8EAAAABAAAIwQAAAAEAAAMBAAAAAQAAAAEAAAJBAAAAQQAAFkEAAACBAAAiQQAAAYEAABfBAAAJAQAAAAEAAAVBAAAAAQAAAIEAADHBAAAbQQAABsEAAAABAAAAAQAACIEAADAAAAAAAAKAIwAyAE6AaYB6AI0AoAC6gMuA7YESgS+BXQGFAdGB5YH2ggsCMIJjgqyC1AMNAzcDT4Ngg3iDjwPqhBEEIgRDhGIEggSpBNME5wUHhTqFU4VyBYcFloWnBbyF2AYQhjMGQAZkBnoGqYbBBteHOAdLAAAAAEAAAA6ASsACAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAOAK4AAQAAAAAAAQAOAAAAAQAAAAAAAgAOAEcAAQAAAAAAAwAOACQAAQAAAAAABAAOAFUAAQAAAAAABQAWAA4AAQAAAAAABgAHADIAAQAAAAAACgAoAGMAAwABBAkAAQAOAAAAAwABBAkAAgAOAEcAAwABBAkAAwAOACQAAwABBAkABAAOAFUAAwABBAkABQAWAA4AAwABBAkABgAOADkAAwABBAkACgAoAGMAaQBjAG8AbQBvAG8AbgBWAGUAcgBzAGkAbwBuACAAMAAuADAAaQBjAG8AbQBvAG8Abmljb21vb24AaQBjAG8AbQBvAG8AbgBSAGUAZwB1AGwAYQByAGkAYwBvAG0AbwBvAG4ARwBlAG4AZQByAGEAdABlAGQAIABiAHkAIABJAGMAbwBNAG8AbwBuAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=) format('woff');
  font-weight: normal;
  font-style: normal;
}
[class*="icon-utility-"] {
  font-family: 'icomoon';
  speak: none;
  font-style: normal;
  font-weight: normal;
  font-variant: normal;
  text-transform: none;
  line-height: 1;
  /* Better Font Rendering =========== */
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.icon-utility-success:before {
  content: "\e600";
}
.icon-utility-attach:before {
  content: "\e000";
}
.icon-utility-bookmark:before {
  content: "\e001";
}
.icon-utility-call:before {
  content: "\e002";
}
.icon-utility-chat:before {
  content: "\e003";
}
.icon-utility-checkin:before {
  content: "\e004";
}
.icon-utility-chevronleft:before {
  content: "\e005";
}
.icon-utility-chevronright:before {
  content: "\e006";
}
.icon-utility-close:before {
  content: "\e007";
}
.icon-utility-down:before {
  content: "\e008";
}
.icon-utility-download:before {
  content: "\e009";
}
.icon-utility-email:before {
  content: "\e00b";
}
.icon-utility-groups:before {
  content: "\e00e";
}
.icon-utility-image:before {
  content: "\e00f";
}
.icon-utility-left:before {
  content: "\e010";
}
.icon-utility-like:before {
  content: "\e011";
}
.icon-utility-link:before {
  content: "\e012";
}
.icon-utility-list:before {
  content: "\e013";
}
.icon-utility-location:before {
  content: "\e014";
}
.icon-utility-logout:before {
  content: "\e015";
}
.icon-utility-people:before {
  content: "\e016";
}
.icon-utility-photo:before {
  content: "\e017";
}
.icon-utility-reply:before {
  content: "\e018";
}
.icon-utility-right:before {
  content: "\e019";
}
.icon-utility-up:before {
  content: "\e01e";
}
.icon-utility-upload:before {
  content: "\e01f";
}
.icon-utility-user:before {
  content: "\e020";
}
.icon-utility-filter:before {
  content: "\e022";
}
.icon-utility-help:before {
  content: "\e023";
}
.icon-utility-error:before {
  content: "\e024";
}
.icon-utility-warning:before {
  content: "\e025";
}
.icon-utility-adduser:before {
  content: "\e026";
}
.icon-utility-add:before {
  content: "\e027";
}
.icon-utility-edit:before {
  content: "\e00a";
}
.icon-utility-back:before {
  content: "\e028";
}
.icon-utility-lock:before {
  content: "\e029";
}
.icon-utility-info:before {
  content: "\e02d";
}
.icon-utility-frozen:before {
  content: "\e02e";
}
.icon-utility-spinner:before {
  content: "\e02b";
}
.icon-utility-news:before {
  content: "\e02f";
}
.icon-utility-dash:before {
  content: "\e030";
}
.icon-utility-question:before {
  content: "\e031";
}
.icon-utility-3dots:before {
  content: "\e032";
}
.icon-utility-refresh:before {
  content: "\e033";
}
.icon-utility-socialshare:before {
  content: "\e034";
}
.icon-utility-priority:before {
  content: "\e021";
}
.icon-utility-search:before {
  content: "\e01b";
}
.icon-utility-rows:before {
  content: "\e01a";
}
.icon-utility-event:before {
  content: "\e00c";
}
.icon-utility-settings:before {
  content: "\e01c";
}
.icon-utility-check:before {
  content: "\e02a";
}
.icon-utility-notification:before {
  content: "\e02c";
}
.icon-utility-share:before {
  content: "\e01d";
}
.icon-utility-favorite:before {
  content: "\e00d";
}
.icon-utility-sms:before {
  content: "\e601";
}
.icon-utility-push:before {
  content: "\e602";
}
@font-face {
  font-family: 'icomoon';
  src: url('fonts/icomoon.eot');
}
@font-face {
  font-family: 'icomoon';
  src: url(data:application/x-font-ttf;charset=utf-8;base64,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) format('truetype'), url(data:application/font-woff;charset=utf-8;base64,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) format('woff');
  font-weight: normal;
  font-style: normal;
}
[class^="sb-icon-"],
[class*=" sb-icon-"] {
  font-family: 'icomoon';
  speak: none;
  font-style: normal;
  font-weight: normal;
  font-variant: normal;
  text-transform: none;
  line-height: 1;
  font-size: 1.2em;
  color: #166bbf;
  /* Better Font Rendering =========== */
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.sb-icon-jump-left:before {
  content: "\f0a5";
}
.sb-icon-jump-right:before {
  content: "\f0a6";
}
.sb-icon-triangle-left:before {
  content: "\f044";
}
.sb-icon-triangle-right3:before {
  content: "\f05a";
}
.sb-icon-triangle-right:before {
  content: "\e601";
}
.sb-icon-triangle-down:before {
  content: "\e602";
}
.sb-icon-info:before {
  content: "\e604";
}
.sb-icon-cog:before {
  content: "\e603";
}
.sb-icon-copy:before {
  content: "\e92c";
}
.sb-icon-spinner11:before {
  content: "\e984";
}
.sb-icon-plus:before {
  content: "\ea0a";
}
.sb-icon-cross:before {
  content: "\ea0f";
}
.sb-icon-radio-checked2:before {
  content: "\ea55";
}
.sb-icon-radio-unchecked:before {
  content: "\ea56";
}
/*Multi-segment line expand/collapse link*/
.sb-icon-triangle-right,
.sb-icon-triangle-down {
  color: black;
  vertical-align: text-bottom;
  cursor: pointer;
}
/*Action links on the actions column*/
.sb-icon-cross.line,
.sb-icon-cog.line {
  font-size: 1em;
}
/*Pagination controls*/
.sb-icon-jump-left,
.sb-icon-triangle-left,
.sb-icon-triangle-right3,
.sb-icon-jump-right {
  vertical-align: middle;
  margin-right: 5px;
  cursor: pointer;
}
.sb-icon-jump-left.disabled,
.sb-icon-triangle-left.disabled,
.sb-icon-triangle-right3.disabled,
.sb-icon-jump-right.disabled {
  color: #d3d3d3;
  cursor: default;
}
/*** jQuery UI Calendar ***/
.ui-datepicker {
  background-image: url('/img/alohaSkin/cal_sprite.png');
  background-position: left -109px;
  background-repeat: repeat-x;
  background-color: #ededed;
  z-index: 100 !important;
  width: auto;
  padding: 7px 5px 6px;
  border-left: 1px solid #d6d6d6;
  border-right: 1px solid #d6d6d6;
  -moz-box-shadow: 0 2px 6px #111;
  -webkit-box-shadow: 0 2px 6px #111;
  box-shadow: 0 2px 6px #111;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  border-radius: 5px;
}
.ui-datepicker,
.ui-datepicker-header,
.ui-datepicker-calendar,
.ui-datepicker-week-end,
.ui-datepicker-buttonpane {
  text-align: center;
  overflow: hidden;
  white-space: nowrap;
}
.ui-datepicker-header {
  padding: 0 0 3px;
}
.ui-datepicker-title {
  display: inline-block;
}
.ui-datepicker-month {
  float: left;
}
.ui-datepicker-year {
  float: right;
}
.ui-datepicker-prev,
.ui-datepicker-next {
  margin-top: 4px;
  display: inline-block;
  width: 19px;
  height: 16px;
  margin: 2px 4px 0 0;
  background-repeat: no-repeat;
  line-height: 400%;
}
.ui-datepicker-prev {
  float: left;
  background-image: url('/img/func_icons/cal/leftArrow.gif');
}
.ui-datepicker-next {
  float: left;
  background-image: url('/img/func_icons/cal/rightArrow.gif');
}
.ui-datepicker-calendar {
  padding: 0 5px;
  margin-left: auto;
  margin-right: auto;
}
.ui-datepicker-calendar > thead > tr > th {
  text-align: center;
  font-weight: normal;
  font-size: 0.9em;
  width: 14%;
}
.ui-datepicker-calendar td {
  padding: 2px;
}
.ui-datepicker-calendar a {
  width: auto;
  border-bottom: none;
  text-decoration: none;
  font-size: 0.95em;
}
.ui-datepicker-other-month a {
  color: #999;
}
.ui-datepicker-today,
.ui-datepicker-today > a {
  background-color: #1797c0;
  color: #fff;
  font-weight: bold;
  text-decoration: none;
}
.ui-datepicker-current-day {
  background-color: #c6e1ff;
  border: 1px solid #9cf;
  font-weight: bold;
  text-decoration: none;
}
.ui-datepicker-current-day > a {
  background-color: #c6e1ff;
  color: #333;
}
.ui-datepicker-buttonpane {
  padding: 1px;
  clear: both;
}
.ui-datepicker-buttonpane > button {
  background: transparent;
  border: none !important;
  color: #015ba7;
  cursor: pointer;
  font-weight: normal;
  padding: 0;
  margin: 0;
}
.ui-datepicker-close {
  display: none;
}
#ui-datepicker-div {
  display: none;
}
/*
Rotates an element

$r - the rotate function paramter, e.g. 90deg
 */
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
.pbSubsection header {
  *zoom: 1;
  margin: 0;
  padding: 0;
  vertical-align: middle;
  border: none;
}
/*a table that displays a list of entities/rows/etc, a la a "list page"*/
.sbTable {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  /*center aligned cells*/
  /*right aligned cells*/
  /*a standard table header cell*/
  /*a standard table body cell*/
  /*table footer cells*/
}
.sbTable tbody .sbActions [class^="sf-icon-"]:before,
.sbTable tbody .sbActions [class*=" sf-icon-"]:before {
  color: #0070D2;
  font-size: 20px;
}
.sbTable tbody .sbActions [class^="sf-icon-"]:before:hover,
.sbTable tbody .sbActions [class*=" sf-icon-"]:before:hover {
  color: #16325C;
  cursor: pointer;
}
.sbTable > th,
.sbTable > tr > td {
  height: 46px;
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
.sbTable > a {
  color: inherit;
}
.sbTable > input,
.sbTable select {
  font-size: inherit;
}
.sbTable > thead > tr > th {
  border-bottom: 1px solid #c0c0c0;
  padding: 8px 6px 6px;
  font-weight: normal;
  text-transform: uppercase;
  color: #777;
  text-align: left;
  white-space: nowrap;
}
.sbTable > tbody > tr > td {
  border-bottom: 1px solid #d0d0d0;
  padding: 8px 6px 6px;
  color: #222;
}
.sbTable > tbody > tr > td.right input {
  text-align: right;
}
.sbTable > tbody > tr > td input:disabled {
  background-color: #F4F6F9;
}
.sbTable > tfoot > tr > td {
  padding: 8px 6px 6px;
  color: #222;
}
/*A container/row of buttons, a la a button "bar"*/
.sbButtons {
  text-align: center;
  display: inline-block;
}
.sbModalFooter > .sbButtons {
  padding: 10px 0;
}
/*A standard, standalone button*/
.sbBtn {
  background: #fff;
  color: #166bbf;
  border: 1px solid #c0c0c0;
  border-radius: 3px;
  vertical-align: middle;
  text-align: center;
  height: 40px;
  font-size: 16px;
  margin: 0 0 0 4px;
}
.sbBtn > span {
  color: #0070D2;
}
.sbMobileTabs {
  font-size: 14px;
  margin: 18px 0;
  text-transform: uppercase;
  border-bottom: 1px solid #d0d0d0;
  margin-bottom: 10px;
}
.sbMobileTabs > a {
  color: inherit;
  padding: 6px 16px 6px;
  display: inline-block;
}
.sbMobileTabs > a.custom {
  position: relative;
}
.sbMobileTabs > a > .sf-icon-edit {
  visibility: hidden;
  color: #0070d2;
  position: absolute;
  top: 6px;
  right: -6px;
}
.sbMobileTabs > a > .sf-icon-edit.visible {
  visibility: visible;
}
.sbMobileTabs > a.selected {
  border-bottom: 4px solid #166bbf;
}
.sbPageTitleMobile {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  height: 75px;
  z-index: 5;
  background-color: #F4F6F9;
  border-bottom: 1px solid #d0d0d0;
}
.sbPageTitleMobile > .sbPageTitleTable > div {
  display: inline-block;
  vertical-align: middle;
  margin-top: 21px;
}
.sbPageTitleMobile > .sbPageTitleTable > .icon {
  margin-right: 10px;
}
.sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleLeft h1,
.sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleLeft h2 {
  font-size: 12px;
  font-weight: normal;
  margin: 0;
}
.sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight {
  margin: 7px;
  float: right;
}
.sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight > .sbPageButtons {
  margin-top: 7px;
  margin-bottom: 7px;
}
div.message {
  border-radius: 3px;
  margin: 10px 0;
  padding: 12px;
  font-size: 14px;
  color: #16325C;
  display: inline-block;
  background: none;
}
div.message.top {
  margin: 75px 0 -60px 40px;
}
div.message .msgIcon {
  background: none;
  width: 0;
  height: 0;
}
div.message .messageText {
  margin: 0 0 0 30px;
}
div.message .messageText > h4,
div.message .messageText > div {
  color: #c00;
  display: inline-block;
  vertical-align: top;
  line-height: 20px;
}
div.message .messageText h4 {
  margin-left: 10px;
  margin-right: 6px;
}
div.message .messageText > div:not(:first-of-type) {
  display: block;
}
div.message .messageText:before {
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
div.message.errorM2,
div.message.errorM3,
div.message.errorM4,
div.message.errorM5,
div.message.errorM6 {
  border-color: #c00;
}
div.message.errorM2 .messageText,
div.message.errorM3 .messageText,
div.message.errorM4 .messageText,
div.message.errorM5 .messageText,
div.message.errorM6 .messageText {
  color: #c00;
}
div.message.errorM2 .messageText:before,
div.message.errorM3 .messageText:before,
div.message.errorM4 .messageText:before,
div.message.errorM5 .messageText:before,
div.message.errorM6 .messageText:before {
  content: '\e821';
}
div.message.warningM2 .messageText,
div.message.warningM3 .messageText,
div.message.warningM4 .messageText,
div.message.warningM5 .messageText,
div.message.warningM6 .messageText {
  color: #d98633;
}
div.message.warningM2 .messageText:before,
div.message.warningM3 .messageText:before,
div.message.warningM4 .messageText:before,
div.message.warningM5 .messageText:before,
div.message.warningM6 .messageText:before {
  content: '\e820';
}
div.message.infoM2 .messageText,
div.message.infoM3 .messageText,
div.message.infoM4 .messageText,
div.message.infoM5 .messageText,
div.message.infoM6 .messageText {
  color: #0000cc;
}
div.message.infoM2 .messageText:before,
div.message.infoM3 .messageText:before,
div.message.infoM4 .messageText:before,
div.message.infoM5 .messageText:before,
div.message.infoM6 .messageText:before {
  content: '\e80f';
}
/** Custom Lookup */
span.lookupInput {
  white-space: nowrap;
}
#customLookupComponent div.lookupResult {
  padding-top: 10px;
  cursor: pointer;
  color: blue;
  text-decoration: underline;
}
#customLookupComponent div.lookupResult:hover {
  text-decoration: none;
  text-shadow: 1px 1px 1px #555;
}
#customLookupComponent span.resultHeader {
  display: block;
  padding-top: 20px !important;
  padding-bottom: 4px !important;
  font-style: italic;
}
#customLookupComponent div.body {
  padding-bottom: 20px;
}
#customLookupComponent input {
  width: 85% !important;
}
#customLookupComponent .sb-icon-search {
  padding-left: 7px;
}
/** Modal for additional button options in line editor */
.modalDialogWrapper input.sbBtn,
.modalDialogWrapper button.sbBtn {
  margin-bottom: 15px;
  margin-left: 0px;
}
.modalDialogWrapper input.sbBtn:first-of-type,
.modalDialogWrapper button.sbBtn:first-of-type {
  margin-top: 15px;
}
.modalDialogWrapper input.sbBtn:last-of-type,
.modalDialogWrapper button.sbBtn:last-of-type {
  margin-bottom: 15px;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  .sbBtn {
    font-size: 14px;
    padding: 5px 10px;
  }
  .sbBtn > span[class^="sb-icon-"],
  .sbBtn > span[class^="icon-utility-"],
  .icon-utility-down {
    vertical-align: middle;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .icon {
    float: left;
    margin-left: 10px;
    margin-right: 5px;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleLeft {
    float: left;
  }
  .sbPageTitleMobile > .sbPageTitleTable > div {
    margin-top: 15px;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight {
    display: block;
    float: right;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight .sbBack {
    float: left;
    margin-left: 0;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight .sbClose {
    float: right;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight .sbClose > .sf-icon-close {
    font-size: 16.8px;
    display: inline-block;
    vertical-align: middle;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight .modalDialogWrapper {
    margin: 0 auto;
  }
  div.message.top {
    margin: 115px 0 -100px 0;
  }
  div.message .messageText > div {
    display: inline;
    margin-left: -15px;
  }
}
#easyXDM_SBQQ_provider {
  width: 100%;
  min-height: 200px;
}
.sf-icon-close {
  color: #fff;
  font-family: Arial;
  font-weight: 600;
  font-size: 25px;
  display: block;
  text-align: right;
  z-index: 22;
  right: 0;
  margin: auto;
  width: 100%;
  left: 0;
}
#sbLineEditor {
  padding: 15px;
  font-size: 14px;
}
#sbLineEditor .sbEmptyQuoteMsg,
#sbLineEditor .sbEmptyGroupMsg,
#sbLineEditor .emptyMSTableMessage,
#sbLineEditor .emptyStandardTableMessage {
  padding: 25px 0;
}
#sbLineEditor .sbQuoteFields {
  margin: 0 15px;
}
#sbLineEditor .sbQuoteFields header {
  border: none;
}
#sbLineEditor .sbQuoteFields header > h1 {
  font-size: 14px;
}
#sbLineEditor .sbQuoteFields .sbTable > tbody > tr .sbLabel label {
  text-align: right;
  font-size: 14px;
}
#sbLineEditor .sbQuoteFields .sbTable > tbody > tr > td {
  border: none;
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
#sbLineEditor .sbQuoteActions ul,
#sbLineEditor .sbGroupActions ul {
  margin: 0;
  padding: 0;
  list-style-type: none;
}
#sbLineEditor .sbQuoteActions ul ul,
#sbLineEditor .sbGroupActions ul ul {
  display: none;
}
#sbLineEditor .sbQuoteActions ul li span.sf-icon-down,
#sbLineEditor .sbGroupActions ul li span.sf-icon-down {
  padding: 10px;
  font-size: 18px;
}
#sbLineEditor .sbQuoteActions ul li span.sf-icon-down.open + ul,
#sbLineEditor .sbGroupActions ul li span.sf-icon-down.open + ul {
  display: block;
}
#sbLineEditor .sbQuoteActions li,
#sbLineEditor .sbGroupActions li {
  margin: 10px 0;
  padding: 10px;
  display: block;
}
#sbLineEditor .sbQuoteActions li.sbBtn,
#sbLineEditor .sbGroupActions li.sbBtn {
  height: auto;
}
#sbLineEditor .sbQuoteActions li.menu,
#sbLineEditor .sbGroupActions li.menu {
  border: 1px solid #c0c0c0;
}
#sbLineEditor .sbQuoteActions li.menu li,
#sbLineEditor .sbGroupActions li.menu li {
  border: none;
  margin: 0;
}
#sbLineEditor .sbQuoteActions li.menu li:first-of-type,
#sbLineEditor .sbGroupActions li.menu li:first-of-type {
  margin-top: 10px;
}
#sbLineEditor .sbQuoteActions .sbToolSeparator,
#sbLineEditor .sbGroupActions .sbToolSeparator {
  height: 0;
  padding: 0;
  border: none;
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
#sbLineEditor.optional li.optionalAllBtn,
#sbLineEditor.optional li.optionalNoneBtn {
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
#sbLineEditor .sbGroups,
#sbLineEditor .sbLineItems,
#sbLineEditor .sbCustomSegmentsEditor,
#sbLineEditor .sbDiscountScheduleModal,
#sbLineEditor #sbPricebookModal,
#sbLineEditor #sbFavoritesModal,
#sbLineEditor .sbProductRuleAlertPopup,
#sbLineEditor .recordEditorForm {
  padding-top: 75px;
}
#sbLineEditor .sbDiscountScheduleModal .message {
  margin-top: 5px;
  margin-bottom: 5px;
}
#sbLineEditor .sbQuoteFields,
#sbLineEditor .msStandardTableContainer,
#sbLineEditor .sbMultiSegmentTableContainer,
#sbLineEditor .sbGroupFieldsContainer,
#sbLineEditor .sbCustomSegmentsContainer {
  overflow-x: auto;
}
#sbLineEditor .sbModalContentContainer {
  overflow-x: auto;
}
#sbLineEditor .discountScheduleLoader {
  margin-left: auto;
  margin-right: auto;
  margin-top: 20px;
}
#sbLineEditor .discountScheduleProperty {
  white-space: nowrap;
}
#sbLineEditor .hideInputBorders {
  border: 0px;
}
#sbLineEditor .sbGroupNames {
  text-align: center;
  margin: 30px;
}
#sbLineEditor .sbGroupNames > div {
  text-transform: uppercase;
  padding: 15px;
  margin-bottom: 10px;
}
#sbLineEditor .sbGroupNames > div > span {
  display: inline-block;
  vertical-align: middle;
  font-weight: normal;
  font-size: 14px;
}
#sbLineEditor .sbGroupNames > div > span:last-of-type {
  padding-left: 30px;
}
#sbLineEditor .sbQuoteTotalContainer,
#sbLineEditor .sbGroupTotalContainer {
  margin-top: 25px;
  text-align: right;
}
#sbLineEditor .sbQuoteTotalContainer header,
#sbLineEditor .sbGroupTotalContainer header {
  border-bottom: none;
  border-top: 1px solid #d0d0d0;
}
#sbLineEditor .sbQuoteTotalContainer header > h1,
#sbLineEditor .sbGroupTotalContainer header > h1 {
  font-size: 14px;
  margin-top: 15px;
}
#sbLineEditor .sbGroupTotalContainer {
  margin-top: 50px;
}
#sbLineEditor .sbGroup {
  margin-top: 10px;
}
#sbLineEditor .sbGroup .sbGroupHeader {
  height: 50px;
  float: left;
}
#sbLineEditor .sbGroup .sbGroupHeader > h2,
#sbLineEditor .sbGroup .sbGroupHeader > input {
  display: inline-block;
  vertical-align: middle;
}
#sbLineEditor .sbGroup .sbGroupHeader > h2 {
  margin: 0;
  font-size: 21px;
}
#sbLineEditor .sbGroup .sbGroupHeader > input {
  display: none;
  height: 40px;
  width: 200px;
  padding: 5px;
}
#sbLineEditor .sbGroup .sbGroupHeader > span {
  font-size: 1.3em;
  display: inline-block;
  vertical-align: bottom;
}
#sbLineEditor .sbGroup .sbGroupButtons {
  float: right;
}
#sbLineEditor .sbGroup .sbDescriptionField {
  margin: 20px 0 40px;
  font-size: 14px;
}
#sbLineEditor .sbGroup .sbGroupFieldsContainer {
  padding: 5px;
}
#sbLineEditor .sbGroup .sbGroupFieldsContainer .sbGroupFields .sbGroupField {
  display: block;
  white-space: nowrap;
  margin-bottom: 15px;
}
#sbLineEditor .sbGroup .sbGroupFieldsContainer .sbGroupFields .sbGroupField label {
  display: inline;
  font-size: 14px;
  color: #16325C;
}
#sbLineEditor .sbGroup .sbGroupFieldsContainer .sbGroupFields .sbGroupField input[type='checkbox'] {
  vertical-align: middle;
}
#sbLineEditor .sbGroup .multiSegment.sbTable,
#sbLineEditor .sbGroup .standard.sbTable {
  margin-top: 30px;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > thead > th span,
#sbLineEditor .sbGroup .standard.sbTable > thead > th span {
  color: #16325C;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td {
  height: 55px;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions {
  white-space: nowrap;
  text-align: left;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions .icon-utility-chevronright,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions .icon-utility-chevronright,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions .icon-utility-down,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions .icon-utility-down {
  width: 30px;
  font-size: 17px;
  color: #0070D2;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions ul,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions ul {
  margin: 0;
  padding: 0;
  list-style-type: none;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions ul ul,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions ul ul {
  display: none;
  top: 100%;
  left: 0;
  width: 100%;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions ul li span.sf-icon-down.open + ul,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions ul li span.sf-icon-down.open + ul {
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions li,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions li {
  margin: 10px 0;
  padding: 10px;
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions li.sbBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions li.sbBtn {
  height: auto;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions li.menu,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions li.menu {
  border: 1px solid #c0c0c0;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions li.menu li,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions li.menu li {
  border: none;
  margin: 0;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions li.menu li:first-of-type,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions li.menu li:first-of-type {
  margin-top: 10px;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions .sbAction.action,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions .sbAction.action {
  display: none;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.removable .addToFavBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.removable .addToFavBtn,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.removable .removeFromFavBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.removable .removeFromFavBtn,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.removable .deleteBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.removable .deleteBtn,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.removable .cloneBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.removable .cloneBtn {
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.removable.favorite .addToFavBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.removable.favorite .addToFavBtn,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.removable:not(.favorite) .removeFromFavBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.removable:not(.favorite) .removeFromFavBtn {
  display: none;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions:not(.component) .cloneBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions:not(.component) .cloneBtn {
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.configurable .reconfigureBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.configurable .reconfigureBtn {
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.convertable .desegmentBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.convertable .desegmentBtn,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.convertable .resegmentBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.convertable .resegmentBtn {
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.convertable.segmented .resegmentBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.convertable.segmented .resegmentBtn,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.convertable:not(.segmented) .desegmentBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.convertable:not(.segmented) .desegmentBtn {
  display: none;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.dsEditable .viewDSBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.dsEditable .viewDSBtn {
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td .sb-icon-level-down,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td .sb-icon-level-down {
  color: #888;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tfoot > tr.sbTotalRow > td,
#sbLineEditor .sbGroup .standard.sbTable > tfoot > tr.sbTotalRow > td {
  font-weight: bold;
}
#sbLineEditor .sbBundleOption {
  color: #696969;
}
#sbLineEditor .sbIndent2 {
  padding-left: 15px;
}
#sbLineEditor .sbIndent3 {
  padding-left: 30px;
}
#sbLineEditor .sbIndent4 {
  padding-left: 45px;
}
#sbLineEditor .sbIndent5 {
  padding-left: 60px;
}
#sbLineEditor .sbIndent6 {
  padding-left: 75px;
}
#sbLineEditor .sbIndent7 {
  padding-left: 90px;
}
#sbLineEditor .sbIndent8 {
  padding-left: 105px;
}
#sbLineEditor .sbIndent9 {
  padding-left: 120px;
}
#sbLineEditor .sbIndent10 {
  padding-left: 135px;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal {
  overflow: auto;
  margin: 0;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal header,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal header {
  margin-bottom: 25px;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal header > h3,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal header > h3 {
  font-size: 21px;
  width: 100%;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal header .sbButtons,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal header .sbButtons {
  width: 100%;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal header .sbButtons > .sbBtn,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal header .sbButtons > .sbBtn {
  display: inline-block;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal header .sbButtons > .sbBtn:not(:first-of-type),
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal header .sbButtons > .sbBtn:not(:first-of-type) {
  margin-top: 0;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal .sbValidationErrors,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal .sbValidationErrors {
  margin-bottom: 25px;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal .sbValidationErrors > div,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal .sbValidationErrors > div {
  padding-top: 10px;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal .sbValidationErrors > div > span,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal .sbValidationErrors > div > span,
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal .sbValidationErrors > div > div,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal .sbValidationErrors > div > div {
  display: inline;
  color: #c00;
  font-size: 14px;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal .sbTable i,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal .sbTable i {
  padding-right: 10px;
  display: inline-block;
  vertical-align: middle;
}
#sbLineEditor #sbFavoritesModal header {
  margin-bottom: 25px;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors {
  margin-bottom: 25px;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div {
  padding-top: 10px;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div > span,
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div > div {
  display: inline;
  color: #c00;
  font-size: 14px;
}
#sbLineEditor #sbFavoritesModal .sbTable > tbody > tr > td {
  border-bottom: none;
}
#sbLineEditor #sbFavoritesModal .sbTable > tbody > tr > td:first-of-type {
  width: 15%;
  padding-left: 15px;
}
#sbLineEditor #sbFavoritesModal .sbTable > tbody > tr > td #sbFavoriteName {
  width: 300px;
}
#sbLineEditor .editedMSLine.sbTable {
  width: 75%;
  margin: 30px auto 0;
}
#sbLineEditor .editedMSLine.sbTable tbody > tr > td {
  height: 55px;
}
#sbLineEditor .editedMSLine.sbTable > thead > tr > th:first-of-type,
#sbLineEditor .editedMSLine.sbTable > tbody > tr > td:first-of-type {
  padding-left: 150px;
}
#sbLineEditor .editedMSLine.sbTable > tbody > tr.msSummaryRow i {
  padding-left: 25px;
  font-size: 21px;
  vertical-align: text-bottom;
}
#sbLineEditor .editedMSLine.sbTable > tbody > tr.msDetailRow > td {
  background-color: #f7f7f7;
  border: none;
}
#sbLineEditor .editedMSLine.sbTable > tbody > tr.msDetailRow > td select {
  width: inherit;
  margin-left: 5px;
}
#sbLineEditor .editedMSLine.sbTable > tbody > tr.msDetailRow > td.label {
  padding-left: 150px;
}
#sbLineEditor .editedMSLine.sbTable > tbody > tr.sbTotalRow > td {
  padding-top: 10px;
  text-transform: uppercase;
  font-weight: bold;
}
#sbLineEditor .recordEditorForm > header > h3 {
  font-size: 21px;
}
#sbLineEditor .recordEditorForm .sbLineActions {
  display: inline;
}
#sbLineEditor .recordEditorForm > .buttonContainer {
  margin: 0;
}
#sbLineEditor .sbLineNumber.dataCell {
  white-space: nowrap;
}
#sbLineEditor .sbLineNumber.dataCell span {
  display: inline-block;
  vertical-align: middle;
}
#sbLineEditor .sbLineNumber.dataCell .sbLineError span {
  white-space: initial;
  margin: 20px 5px;
}
#sbLineEditor #sbPricebookModal {
  text-align: center;
}
#sbLineEditor #sbPricebookModal select {
  width: 250px;
  margin: 25px 0;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbLineEditor {
    padding: 5px;
  }
  #sbLineEditor .sbMobileTabs {
    font-size: 10px;
    margin: 10px 0;
  }
  #sbLineEditor .sbPhoneTab.sbBtn {
    padding: 10px;
    margin: 0 0 15px 0;
  }
  #sbLineEditor .sbPhoneTab.sbBtn.selected {
    background-color: #F4F6F9;
  }
  #sbLineEditor .sbPhoneTab.sbBtn > span {
    text-transform: uppercase;
    display: inline-block;
    vertical-align: middle;
  }
  #sbLineEditor .sbPhoneTab.sbBtn > span.sf-icon-edit {
    position: absolute;
    right: 15px;
    visibility: hidden;
  }
  #sbLineEditor .sbPhoneTab.sbBtn > span.sf-icon-edit.visible {
    visibility: visible;
  }
  #sbLineEditor .sbGroupNames > div {
    padding: 10px;
  }
  #sbLineEditor .sbGroup .sbGroupHeader,
  #sbLineEditor .sbGroup .sbGroupButtons {
    display: inline-block;
  }
  #sbLineEditor .sbGroup .sbGroupHeader {
    float: left;
  }
  #sbLineEditor .sbGroup .sbGroupHeader > h2 {
    padding-top: 5px;
  }
  #sbLineEditor .recordEditorForm > header {
    text-align: center;
  }
  #sbLineEditor .multiSegment.sbTable,
  #sbLineEditor .standard.sbTable {
    margin-bottom: 15px;
  }
  #sbLineEditor .editedMSLine.sbTable {
    width: 90%;
  }
  #sbLineEditor .editedMSLine.sbTable > thead > tr > th:first-of-type,
  #sbLineEditor .editedMSLine.sbTable > tbody > tr > td:first-of-type {
    padding-left: 15px;
  }
  #sbLineEditor .editedMSLine.sbTable > tbody > tr.msDetailRow > td.label {
    padding-left: 15px;
  }
  #sbLineEditor .sbDiscountScheduleModal .sbButtons {
    width: 100%;
  }
  #sbLineEditor .sbDiscountScheduleModal .message {
    margin-top: 5px;
    margin-bottom: 5px;
  }
  #sbLineEditor #sbFavoritesModal .sbTable > tbody > tr > td:first-of-type {
    white-space: nowrap;
    padding-left: 0;
  }
  #sbLineEditor #sbFavoritesModal .sbTable > tbody > tr > td #sbFavoriteName {
    width: 200px;
  }
}
#sbProductSearch {
  padding: 15px;
  font-size: 14px;
}
#sbProductSearch .sbPageBlock {
  padding-top: 85px;
}
#sbProductSearch .sbProductFilters > button,
#sbProductSearch .sbProductFilters > .sbTable {
  display: inline-block;
}
#sbProductSearch .sbProductFilters > button {
  vertical-align: bottom;
  margin-bottom: 3px;
}
#sbProductSearch .sbProductFilters > .sbTable {
  width: inherit;
}
#sbProductSearch .sbProductFilters > .sbTable > thead > tr > td {
  padding: 0 5px;
}
#sbProductSearch .sbProductFilters > .sbTable > tbody > tr > td {
  border: none;
  padding: 0 5px;
}
#sbProductSearch .sbGuidedSelling > button,
#sbProductSearch .sbGuidedSelling > .sbTable {
  display: inline-block;
}
#sbProductSearch .sbGuidedSelling > button {
  vertical-align: bottom;
  margin-bottom: 3px;
}
#sbProductSearch .sbGuidedSelling > .sbTable {
  width: inherit;
}
#sbProductSearch .sbGuidedSelling > .sbTable > tbody > tr > td {
  border: none;
  padding: 0 5px;
}
#sbProductSearch .sbProductsTableContainer {
  overflow-x: auto;
}
#sbProductSearch .sbProductsTableContainer .sbProducts {
  margin-top: 20px;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td {
  border-bottom: none;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages {
  margin-top: 25px;
  text-align: center;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages > .sbBtn {
  font-size: 1.4em;
  padding: 9px 10px 11px;
  color: #0070D2;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages > .sbBtn.sb-icon-left-dir,
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages > .sbBtn.sb-icon-right-dir {
  font-size: 1.6em;
  padding: 8px 8px 9px;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages > .sbBtn.disabled {
  background-color: #fff;
  color: #888;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages .sbPageSelector {
  padding: 0 10px;
  display: inline-block;
  vertical-align: middle;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages .sbPageSelector > input {
  width: 45px;
  text-align: center;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbProductSearch .sbProductFilters {
    margin-top: 30px;
  }
  #sbProductSearch .sbProductFilters label {
    margin-top: 5px;
  }
  #sbProductSearch .sbProductFilters button {
    margin: 20px 0 0 0;
  }
  #sbProductSearch .sbGuidedSelling {
    margin-top: 30px;
  }
  #sbProductSearch .sbGuidedSelling label {
    margin-top: 5px;
  }
  #sbProductSearch .sbGuidedSelling button {
    margin: 20px 0 0 0;
  }
  #sbProductSearch .sbProductsTableContainer table.sbProducts > tfoot > tr.sbProductPages > td {
    padding-left: 0;
  }
  #sbProductSearch .sbProductsTableContainer table.sbProducts > tfoot > tr.sbProductPages > td .sbPages {
    text-align: left;
  }
  #sbProductSearch .sbProductsTableContainer table.sbProducts > tfoot > tr.sbProductPages > td .sbPages .sbBtn:first-of-type {
    margin-left: 0;
  }
}
#sbProductConfigurator {
  padding: 15px;
  font-size: 14px;
}
#sbProductConfigurator .sbPageTitleTable > .sbPageTitleRight {
  margin-top: 7px;
}
#sbProductConfigurator .sbPageTitleTable > .sbPageTitleLeft .sf-icon-custom_apps {
  background-color: #8199af;
}
#sbProductConfigurator .sbFeatures,
#sbProductConfigurator .sbAddOptionDialog {
  margin-top: 75px;
}
#sbProductConfigurator .sbFeatures .sbConfiguredProduct .sbConfigProductName {
  margin-bottom: 0;
}
#sbProductConfigurator .sbFeatures .sbConfiguredProduct:not(:first-of-type) .sbConfigProductName {
  margin-top: 45px;
}
#sbProductConfigurator .sbFeatures .sbConfiguredProduct .group h3 {
  margin-top: 25px;
  margin-bottom: 3px;
}
#sbProductConfigurator .sbFeatures .sbConfiguredProduct .group .featureInstructions {
  padding-bottom: 15px;
}
#sbProductConfigurator .sbFeatures .sbConfiguredProduct .group .sbFeatureOptions {
  overflow-x: auto;
}
#sbProductConfigurator .sbFeatures .sbConfiguredProduct .group .sbAddOptionContainer {
  margin-top: 15px;
}
#sbProductConfigurator .sbFeatures .requiresConfiguration {
  border-left: #c00 solid;
}
#sbProductConfigurator .sbAddOptionDialog > .sbTitleContainer > h2 {
  margin-bottom: 5px;
}
#sbProductConfigurator .sbDataCol {
  padding: 5px 0;
}
#sbProductConfigurator .configTable.sbTable {
  margin-top: 15px;
}
#sbProductConfigurator .configTable.sbTable td {
  padding: 15px;
  border-bottom: none;
}
#sbProductConfigurator .configTable.sbTable td.sbLabelCol {
  text-align: right;
}
#sbProductConfigurator .configTable.sbTable td.sbLabelCol > label {
  padding-bottom: 0;
}
#sbProductConfigurator .configTable.sbTable td.sbDataCol select {
  width: 150px;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbProductConfigurator .sbFeatures,
  #sbProductConfigurator .sbAddOptionDialog {
    margin-top: 115px;
  }
}
#sbAssetSearch .sbPageBlock {
  padding-top: 100px;
}
#sbAssetSearch .sbProductFilters > .sbTable {
  width: inherit;
}
#sbAssetSearch .sbAssets {
  margin-top: 20px;
}
#sbAssetSearch .sbProductFilters > .sbTable {
  display: inline-block;
}
#sbAssetSearch .sbProductFilters > .sbTable > tbody > tr > td {
  border: none;
  padding: 0 5px;
}
#sbAssetSearch .sbProductFilters > button {
  display: inline-block;
  margin-bottom: 5px;
  vertical-align: bottom;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbAssetSearch .sbAssetFilter {
    margin-top: 30px;
  }
  #sbAssetSearch .sbAssetFilter label {
    margin-top: 5px;
  }
  #sbAssetSearch .sbAssetFilter button {
    margin: 20px 0 0 0;
  }
}
#sbSubscriptionSearch .sbPageBlock {
  padding-top: 100px;
}
#sbSubscriptionSearch .sbProductFilters > .sbTable {
  width: inherit;
}
#sbSubscriptionSearch .sbSubscriptions {
  margin-top: 20px;
}
#sbSubscriptionSearch .sbProductFilters > .sbTable {
  display: inline-block;
}
#sbSubscriptionSearch .sbProductFilters > .sbTable > tbody > tr > td {
  border: none;
  padding: 0 5px;
}
#sbSubscriptionSearch .sbProductFilters > button {
  display: inline-block;
  margin-bottom: 5px;
  vertical-align: bottom;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbSubscriptionSearch .sbSubscriptionFilter {
    margin-top: 30px;
  }
  #sbSubscriptionSearch .sbSubscriptionFilter label {
    margin-top: 5px;
  }
  #sbSubscriptionSearch .sbSubscriptionFilter button {
    margin: 20px 0 0 0;
  }
}
/*
Document Generation Preview page

Previews a document in the browser with chosen template, additional docs, etc.
*/
#sbDocGenPreview,
#sbDocGenOptions {
  padding: 15px;
  font-size: 14px;
  /** Phone Styles */
}
#sbDocGenPreview .sbPreview,
#sbDocGenOptions .sbPreview {
  margin-top: 75px;
}
#sbDocGenPreview .sbPreview [class^=sf-icon],
#sbDocGenOptions .sbPreview [class^=sf-icon] {
  font-size: 17px;
  padding: 5px;
}
#sbDocGenPreview .sbPreview > .buttonContainer,
#sbDocGenOptions .sbPreview > .buttonContainer,
#sbDocGenPreview .sbPreview .sf-icon-zoomout,
#sbDocGenOptions .sbPreview .sf-icon-zoomout {
  padding-left: 15px;
}
#sbDocGenPreview .sbPreview > .documentPreviewContainer,
#sbDocGenOptions .sbPreview > .documentPreviewContainer {
  margin-left: -15px;
  top: 145px;
}
#sbDocGenPreview .sbDocOptionsContainer,
#sbDocGenOptions .sbDocOptionsContainer {
  margin-top: 75px;
}
#sbDocGenPreview .sbDocOptionsContainer .pbSubsection,
#sbDocGenOptions .sbDocOptionsContainer .pbSubsection {
  margin-top: 15px;
}
#sbDocGenPreview .sbDocOptionsContainer .pbSubsection > header > h1,
#sbDocGenOptions .sbDocOptionsContainer .pbSubsection > header > h1 {
  font-size: 28px;
  margin-bottom: 15px;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox {
  padding: 15px;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > thead > tr > th,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > thead > tr > th {
  text-align: center;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(1),
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(1),
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(3),
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(3) {
  border: 1px solid #D8DDE6;
  border-radius: 3px;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul {
  width: 250px;
  min-height: 300px;
  overflow: auto;
  padding-left: 8px;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul > li,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul > li {
  padding: 8px;
  white-space: nowrap;
  list-style-type: none;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul > li.required,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul > li.required {
  color: #af2626;
  font-weight: bold;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul > li.selected,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul > li.selected {
  color: #fff;
  background-color: #0070D2;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a {
  color: inherit;
  padding: 5px;
  margin: 0 8px;
  display: block;
  border: 1px solid #D8DDE6;
  border-bottom: 0px;
  text-align: center;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sf-icon],
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sf-icon] {
  font-size: 17px;
  padding: 5px;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sb-icon],
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sb-icon] {
  font-size: 22px;
  padding: 5px;
  color: #3d3e3f;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sb-icon-to-end]:before,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sb-icon-to-end]:before {
  -webkit-transform: rotate(-90deg);
  -moz-transform: rotate(-90deg);
  -ms-transform: rotate(-90deg);
  transform: rotate(-90deg);
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a:nth-child(4) [class^=sb-icon-to-end]:before,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a:nth-child(4) [class^=sb-icon-to-end]:before {
  -webkit-transform: rotate(90deg);
  -moz-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg);
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a:first-of-type,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a:first-of-type {
  border-top-right-radius: 3px;
  border-top-left-radius: 3px;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a:last-of-type,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a:last-of-type {
  border-bottom: 1px solid #D8DDE6;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbDocGenPreview .sbPreview,
  #sbDocGenOptions .sbPreview,
  #sbDocGenPreview .sbDocOptionsContainer,
  #sbDocGenOptions .sbDocOptionsContainer {
    margin-top: 115px;
  }
  #sbDocGenPreview .sbPreview > .documentPreviewContainer,
  #sbDocGenOptions .sbPreview > .documentPreviewContainer,
  #sbDocGenPreview .sbDocOptionsContainer > .documentPreviewContainer,
  #sbDocGenOptions .sbDocOptionsContainer > .documentPreviewContainer {
    top: 185px;
  }
  #sbDocGenPreview .sbDocOptionsContainer .pbSubsection > header > h1,
  #sbDocGenOptions .sbDocOptionsContainer .pbSubsection > header > h1 {
    font-size: 24px;
    margin-bottom: 0;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox,
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox {
    padding-top: 5px;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td,
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td {
    display: block;
    padding: 10px;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(1),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(1),
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(3),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(3) {
    border: none;
    text-align: center;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(1),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(1),
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(4),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(4) {
    text-align: center;
    font-weight: bold;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(2),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(2),
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(5),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(5) {
    border: 1px solid #D8DDE6;
    border-radius: 3px;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul,
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul {
    margin: 0;
    text-align: left;
    height: 120px;
    min-height: 120px;
    overflow: auto;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a,
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a {
    display: inline-block;
    margin: 0 2px;
    border: 1px solid #D8DDE6;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sb-icon],
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sb-icon] {
    font-size: 17px;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(2),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(2),
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(4),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(4) {
    text-align: center;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:last-child a:nth-child(1),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:last-child a:nth-child(1),
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:last-child a:nth-child(4),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:last-child a:nth-child(4) {
    padding-bottom: 7px;
  }
}
/*
Document Generation options

Choices for document generation such as template, output format, etc.
*/
#sbDocGenOptions td {
  padding-bottom: 5px;
}
#sbDocGenOptions td > label {
  padding-bottom: 0;
}
#sbNewRelatedContent .sbBody {
  margin-top: 85px;
}
#sbNewRelatedContent .sbBody fieldset {
  border: none;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbNewRelatedContent .sbBody {
    margin-top: 125px;
  }
}
#sbFavoritesManager {
  padding: 15px;
  font-size: 14px;
}
#sbFavoritesManager .sbPageBlock {
  padding-top: 85px;
}
#sbFavoritesManager .topMsg {
  text-align: center;
  display: block;
  font-weight: normal;
  padding: 32px;
}
#sbFavoritesManager .botMsg {
  text-align: center;
  display: block;
  font-weight: normal;
  padding: 0 32px;
}
#sbFavoritesManager .sbFavoritesTableContainer {
  overflow-x: auto;
}
#sbFavoritesManager .sbFavoritesTableContainer .sbFavorites {
  margin-top: 20px;
}
#sbFavoritesManager .modalDialog {
  top: 100px;
  max-width: 440px;
  overflow: visible;
}
#sbFavoritesManager .modalDialog header {
  text-align: center;
  border-bottom: 2px solid #D8DDE6;
}
#sbFavoritesManager .modalDialog header .sb-icon-star {
  display: inline-block;
  color: black;
  margin: 0 0;
}
#sbFavoritesManager .modalDialog header h2 {
  display: inline-block;
}
#sbFavoritesManager .modalDialog .sbModalContentContainer {
  padding: 1px 14px;
}
#sbFavoritesManager .modalDialog .sbModalContentContainer input {
  margin: 0 0;
}
#sbFavoritesManager .modalDialog .sbModalContentContainer .sbTable > tbody > tr > td {
  border: 0;
}
#sbFavoritesManager .modalDialog .sbModalContentContainer .sbTable .sbActions {
  width: 1%;
  text-align: left;
  white-space: nowrap;
}
#sbFavoritesManager .modalDialog .sbModalFooter {
  border-top: 2px solid #D8DDE6;
  background-color: #F4F6F9;
  padding: 12px 16px;
  text-align: right;
}
#sbFavoritesManager .modalDialog .sbModalFooter .sbButtons {
  padding: 0 2px;
}
#sbFavoritesManager .modalDialog .sbModalFooter input {
  margin: 0;
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
}
#sbFavoritesManager .sbValidationErrors span {
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
/** Phone Styles */

/*# sourceMappingURL=data:application/json;charset=utf8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIm1vYmlsZU9sZC5sZXNzIiwiaWNvbnMubGVzcyIsIm1peGlucy5sZXNzIiwiYmFzZU1vYmlsZS5sZXNzIiwiLi4vLi4vcXVvdGVzL2xpbmVFZGl0b3JNb2JpbGUubGVzcyIsIi4uLy4uL3Byb2R1Y3RzL3Byb2R1Y3RMb29rdXBNb2JpbGUubGVzcyIsIi4uLy4uL3Byb2R1Y3RzL3Byb2R1Y3RDb25maWd1cmF0b3JNb2JpbGUubGVzcyIsIi4uLy4uL2Fzc2V0cy9hc3NldExvb2t1cE1vYmlsZS5sZXNzIiwiLi4vLi4vc3Vic2NyaXB0aW9ucy9zdWJzY3JpcHRpb25Mb29rdXBNb2JpbGUubGVzcyIsIi4uLy4uL2RvY2dlbi9wcmV2aWV3TW9iaWxlLmxlc3MiLCIuLi8uLi9xdW90ZXMvbmV3UmVsYXRlZENvbnRlbnRNb2JpbGUubGVzcyIsIi4uLy4uL2Zhdm9yaXRlcy9mYXZvcml0ZXNNYW5hZ2VyTW9iaWxlLmxlc3MiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUVBO0VBQ0M7SUFBSSxtQkFBa0IsWUFBbEI7O0VBQ0o7SUFBTSxtQkFBa0IsY0FBbEI7OztBQUdQO0VBQ0M7SUFBSSxXQUFVLFlBQVY7O0VBQ0o7SUFBTSxXQUFVLGNBQVY7OztBQUdQO0VBQ0M7SUFBSSxXQUFVLFlBQVY7O0VBQ0o7SUFBTSxXQUFVLGNBQVY7OztBQUdQO0VBQ0MsMkNBQUE7RUFDQSxjQUFBO0VBQ0EsbUNBQUE7O0FBR0Q7QUFBRyxDQUFDO0FBQVMsQ0FBQztFQUNiLDJCQUFBO0VBQ0EsOEJBQUE7RUFDQSxzQkFBQTs7QUFHRDtFQUNDLFlBQUE7RUFDQSxXQUFBOztBQUdELGFBQWM7RUFDYixRQUFBO0VBQ0EsaUJBQUE7RUFDQSxrQkFBQTtFQUNBLGtCQUFBO0VBQ0EsYUFBQTtFQUNBLHNCQUFBO0VBQ0Esd0JBQUE7RUFDQywwQkFBQTtFQUNBLHFCQUFBOztBQUdGLGFBQWMsT0FBTztFQUNwQixXQUFBOztFQUVBLGVBQUE7RUFDQSxjQUFBOztBQUdELGFBQWM7RUFDYixnQkFB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SkUsZUFBZSxVQUFVO0FBdEozQixtQkF1SkUsZUFBZSxVQUFVLElBQUc7QUF2SjlCLG1CQXdKRSxlQUFlLFVBQVUsSUFBRztFQUMxQixXQUFBO0VBQ0EscUJBQUE7RUFDQSx5QkFBQTtFQUNBLFVBQUEiLCJzb3VyY2VzQ29udGVudCI6WyIvKioqIENvbW1vbiAqKiovXG5cbkAtd2Via2l0LWtleWZyYW1lcyBsb2FkaW5nLXJvdGF0ZSB7XG5cdDAlIHstd2Via2l0LXRyYW5zZm9ybTpyb3RhdGUoMGRlZyk7fVxuXHQxMDAlIHstd2Via2l0LXRyYW5zZm9ybTpyb3RhdGUoMzYwZGVnKTt9XG59XG5cbkAtbW96LWtleWZyYW1lcyBsb2FkaW5nLXJvdGF0ZSB7XG5cdDAlIHt0cmFuc2Zvcm06cm90YXRlKDBkZWcpO31cblx0MTAwJSB7dHJhbnNmb3JtOnJvdGF0ZSgzNjBkZWcpO31cbn1cblxuQGtleWZyYW1lcyBsb2FkaW5nLXJvdGF0ZSB7XG5cdDAlIHt0cmFuc2Zvcm06cm90YXRlKDBkZWcpO31cblx0MTAwJSB7dHJhbnNmb3JtOnJvdGF0ZSgzNjBkZWcpO31cbn1cblxuKiB7XG5cdGZvbnQtZmFtaWx5OiBQcm94aW1hTm92YSwgQXJpYWwsIHNhbnMtc2VyaWY7XG5cdGNvbG9yOiAjM2MzZDNlO1xuXHQtd2Via2l0LWZvbnQtc21vb3RoaW5nOiBhbnRpYWxpYXNlZDtcbn1cblxuKiwgKjpiZWZvcmUsICo6YWZ0ZXIge1xuXHQtbW96LWJveC1zaXppbmc6IGJvcmRlci1ib3g7XG5cdC13ZWJraXQtYm94LXNpemluZzogYm9yZGVyLWJveDtcblx0Ym94LXNpemluZzogYm9yZGVyLWJveDtcbn1cblxuYm9keSB7XG5cdHBhZGRpbmc6IDBweDtcblx0bWFyZ2luOiAwcHg7XG59XG5cbi5wYlN1YnNlY3Rpb24gaGVhZGVyIHtcblx0Knpvb206IDE7XG5cdG1hcmdpbi1sZWZ0OiAtN3B4O1xuXHRtYXJnaW4tcmlnaHQ6IC03cHg7XG5cdG1hcmdpbi1ib3R0b206IDVweDtcblx0cGFkZGluZzogMTRweDtcblx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0Ym9yZGVyLWJvdHRvbS13aWR0aDogMXB4O1xuXHRcdGJvcmRlci1ib3R0b20tc3R5bGU6IHNvbGlkO1xuXHRcdGJvcmRlci1jb2xvcjogI2VjZWVmMDtcbn1cblxuLnBiU3Vic2VjdGlvbiBoZWFkZXIgaDEge1xuXHRtYXJnaW46IDBweDtcblx0Lypmb250LXdlaWdodDogMzAwOyovXG5cdGZvbnQtc2l6ZTogMTRweDtcblx0Y29sb3I6ICMzYzNkM2U7XG59XG5cbi5wYlN1YnNlY3Rpb24gbGFiZWwge1xuXHR0ZXh0LWFsaWduOiBsZWZ0O1xufVxuXG5oZWFkZXIucGFnZUhlYWRlciB7XG5cdG1hcmdpbjogMHB4O1xuXHRiYWNrZ3JvdW5kLWNvbG9yOiB3aGl0ZTtcblx0Ym9yZGVyLWJvdHRvbS13aWR0aDogMXB4O1xuXHRib3JkZXItYm90dG9tLXN0eWxlOiBzb2xpZDtcblx0Ym9yZGVyLWNvbG9yOiAjY2ZkNGQ5O1xuXHRwYWRkaW5nLXRvcDogM3B4O1xuXHRwYWRkaW5nLWJvdHRvbTogM3B4O1xuXHR3aWR0aDogMTAwJTtcbn1cblxuaGVhZGVyLnBhZ2VIZWFkZXIgaDEge1xuXHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdGZvbnQtd2VpZ2h0OiAxMDA7XG5cdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG59XG5cbmhlYWRlci5wYWdlSGVhZGVyIGgxIC50aXRsZSB7XG5cdGRpc3BsYXk6IGJsb2NrO1xuXHRmb250LXNpemU6IDEycHg7XG59XG5cbmhlYWRlci5wYWdlSGVhZGVyIGgxIC5zdWJ0aXRsZSB7XG5cdGRpc3BsYXk6IGJsb2NrO1xuXHRmb250LXNpemU6IDE0cHg7XG59XG5cbi5pY29uIHtcblx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdGJhY2tncm91bmQtcG9zaXRpb246IDUwJTtcblx0YmFja2dyb3VuZC1yZXBlYXQ6IG5vLXJlcGVhdDtcblx0Ym9yZGVyLXJhZGl1czogNXB4O1xuXHR3aWR0aDogMzBweDtcblx0XHRoZWlnaHQ6IDMwcHg7XG5cdGJhY2tncm91bmQtc2l6ZTogMTAwJTtcblx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0bWFyZ2luLWxlZnQ6IDE0cHg7XG5cdFx0bWFyZ2luLXJpZ2h0OiAxNHB4O1xufVxuXG4uaWNvbkN1c3RvbTE4IHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNGRjYTc2O1xuXHRcdGJhY2tncm91bmQtaW1hZ2U6IHVybCgnL2ltZy9pY29uL3Q0L2N1c3RvbS9jdXN0b20xOF82MC5wbmcnKTtcblx0fVxuXG5pbnB1dCwgdGV4dGFyZWEsIGtleWdlbiwgc2VsZWN0LCBidXR0b24sIGlzaW5kZXgge1xuXHRtYXJnaW46IDA7XG5cdGZvbnQ6IC13ZWJraXQtc21hbGwtY29udHJvbDtcblx0Zm9udC1zaXplOiAxNXB4O1xuXHRmb250LWZhbWlseTogaW5oZXJpdDtcblx0Y29sb3I6IGluaXRpYWw7XG5cdGxldHRlci1zcGFjaW5nOiBub3JtYWw7XG5cdHdvcmQtc3BhY2luZzogbm9ybWFsO1xuXHR0ZXh0LXRyYW5zZm9ybTogbm9uZTtcblx0dGV4dC1pbmRlbnQ6IDBweDtcblx0dGV4dC1zaGFkb3c6IG5vbmU7XG5cdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0dGV4dC1hbGlnbjogc3RhcnQ7XG5cdGJveC1zaXppbmc6IGJvcmRlci1ib3g7XG5cdGNvbG9yOiAjM2MzZDNlO1xuXHRwYWRkaW5nOiA3cHggMTRweDtcblx0bGluZS1oZWlnaHQ6IDI1cHg7XG5cdGJvcmRlci1yYWRpdXM6IDVweDtcblx0Ym9yZGVyOiAxcHggc29saWQgI2NmZDBkMjtcblx0LXdlYmtpdC13cml0aW5nLW1vZGU6IGhvcml6b250YWwtdGI7XG5cdC1tb3otYXBwZWFyYW5jZTogbm9uZTtcblx0LXdlYmtpdC1hcHBlYXJhbmNlOiBub25lO1xuXHQtbXMtYXBwZWFyYW5jZTogbm9uZTtcblxufVxuXG5pbnB1dCB7XG5cdGJvcmRlcjogMXB4IHNvbGlkICNjZmQwZDI7XG5cdGJvcmRlci1yYWRpdXM6IDNweDtcblx0YmFja2dyb3VuZC1jb2xvcjogQHNiUGFnZUJnQ29sb3I7XG5cdGJveC1zaGFkb3c6IGluc2V0IDAgMnB4IDJweCByZ2JhKDAsMCwwLC4wNyk7XG5cdC13ZWJraXQtdGFwLWhpZ2hsaWdodC1jb2xvcjogcmdiYSgwLCAwLCAwLCAwKTtcbn1cblxubGFiZWwge1xuXHRmb250LXNpemU6IDEzcHg7XG5cdGNvbG9yOiAjNjk2ZTcxO1xuXHRtYXJnaW46IDA7XG5cdHBhZGRpbmctYm90dG9tOiA1cHg7XG5cdGRpc3BsYXk6IGJsb2NrO1xufVxuXG50ZXh0YXJlYSB7XG5cdC13ZWJraXQtcnRsLW9yZGVyaW5nOiBsb2dpY2FsO1xuXHQtd2Via2l0LXVzZXItc2VsZWN0OiB0ZXh0O1xuXHRmbGV4LWRpcmVjdGlvbjogY29sdW1uO1xuXHRjdXJzb3I6IGF1dG87XG5cdHdoaXRlLXNwYWNlOiBwcmUtd3JhcDtcblx0d29yZC13cmFwOiBicmVhay13b3JkO1xuXHRiYWNrZ3JvdW5kLWNvbG9yOiBAc2JQYWdlQmdDb2xvcjtcblx0Ym94LXNoYWRvdzogaW5zZXQgMCAycHggMnB4IHJnYmEoMCwwLDAsLjA3KTtcbn1cblxuaW5wdXRbdHlwZT1cImNoZWNrYm94XCJdLCBpbnB1dFt0eXBlPVwicmFkaW9cIl0ge1xuXHRwYWRkaW5nOiAwcHg7XG5cdFx0Ym9yZGVyLXN0eWxlOiBzb2xpZDtcblx0XHRib3JkZXItd2lkdGg6IDFweDtcblx0XHRoZWlnaHQ6IDIycHg7XG5cdFx0d2lkdGg6IDIycHg7XG5cdFx0Ym9yZGVyLWNvbG9yOiAjYmJjMGM0O1xuXHRcdGJveC1zaGFkb3c6IDAgMXB4IDAgcmdiYSgwLCAwLCAwLCAwLjAyKSwgaW5zZXQgMCAwIDAgMnB4IHJnYmEoMjU1LCAyNTUsIDI1NSwgMC41KTtcbn1cblxuaW5wdXRbdHlwZT1cImNoZWNrYm94XCJdOmRpc2FibGVkLCBpbnB1dFt0eXBlPVwicmFkaW9cIl06ZGlzYWJsZWQge1xuXHRvcGFjaXR5OiAwLjQ7XG59XG5cbmlucHV0W3R5cGU9XCJjaGVja2JveFwiXTpmb2N1cywgaW5wdXRbdHlwZT1cImNoZWNrYm94XCJdOmFjdGl2ZSwgaW5wdXRbdHlwZT1cInJhZGlvXCJdOmZvY3VzLCBpbnB1dFt0eXBlPVwicmFkaW9cIl06YWN0aXZlIHtcblx0YmFja2dyb3VuZDogI2U4ZWFlYjtcbn1cblxuaW5wdXRbdHlwZT1cImNoZWNrYm94XCJdOmNoZWNrZWQsIGlucHV0W3R5cGU9XCJyYWRpb1wiXTpjaGVja2VkIHtcblx0Ym9yZGVyLWNvbG9yOiAjMWM3OGIxO1xuXHRiYWNrZ3JvdW5kOiAjMmE5NGQ2ICFpbXBvcnRhbnQ7XG5cdGJveC1zaGFkb3c6IDAgMXB4IDAgcmdiYSgwLCAwLCAwLCAwLjAyKTtcbn1cblxuaW5wdXRbdHlwZT1cImNoZWNrYm94XCJdOmNoZWNrZWQ6OmFmdGVyIHtcblx0ZGlzcGxheTogYmxvY2s7XG5cdHBvc2l0aW9uOiByZWxhdGl2ZTtcblx0Y29udGVudDogJyc7XG5cdGxlZnQ6IDNweDtcblx0dG9wOiA0cHg7XG5cdGhlaWdodDogOHB4O1xuXHR3aWR0aDogMTRweDtcblx0Ym9yZGVyLWJvdHRvbTogNHB4IHNvbGlkIHdoaXRlO1xuXHRib3JkZXItbGVmdDogNHB4IHNvbGlkIHdoaXRlO1xuXHQtd2Via2l0LXRyYW5zZm9ybTogcm90YXRlKC00NWRlZyk7XG59XG5cbmlucHV0W3R5cGU9XCJyYWRpb1wiXTpjaGVja2VkOjphZnRlciB7XG5cdGRpc3BsYXk6IGJsb2NrO1xuXHRwb3NpdGlvbjogcmVsYXRpdmU7XG5cdGNvbnRlbnQ6ICcnO1xuXHRsZWZ0OiA1cHg7XG5cdHRvcDogNXB4O1xuXHRoZWlnaHQ6IDEwcHg7XG5cdHdpZHRoOiAxMHB4O1xuXHRib3JkZXItcmFkaXVzOiAxMDAlO1xuXHRiYWNrZ3JvdW5kOiB3aGl0ZTtcbn1cblxuaW5wdXQuaW52YWxpZERhdGUge1xuXHRib3JkZXItY29sb3I6ICNjMDA7XG59XG5cbnNlbGVjdCB7XG4gICAgbWluLXdpZHRoOiA1MHB4O1xuICAgIHBhZGRpbmc6IDdweCAxNHB4O1xuICAgIG1hcmdpbi1sZWZ0OiAzcHg7XG4gICAgYmFja2dyb3VuZC1pbWFnZTogdXJsKCdkYXRhOmltYWdlL3N2Zyt4bWw7YmFzZTY0LFBITjJaeUI0Yld4dWN6MGlhSFIwY0RvdkwzZDNkeTUzTXk1dmNtY3ZNakF3TUM5emRtY2lJSGh0Ykc1ek9uaHNhVzVyUFNKb2RIUndPaTh2ZDNkM0xuY3pMbTl5Wnk4eE9UazVMM2hzYVc1cklpQjJaWEp6YVc5dVBTSXhMakVpSUdsa1BTSk1ZWGxsY2w4eElpQjRQU0l3Y0hnaUlIazlJakJ3ZUNJZ2RtbGxkMEp2ZUQwaU1DQXdJREkzTGpZZ01qRWlJR1Z1WVdKc1pTMWlZV05yWjNKdmRXNWtQU0p1WlhjZ01DQXdJREkzTGpZZ01qRWlJSGh0YkRwemNHRmpaVDBpY0hKbGMyVnlkbVVpUGcwS0lDQThaejROQ2lBZ0lDQThaR1ZtY3o0TkNpQWdJQ0FnSUR4d1lYUm9JR2xrUFNKVFZrZEpSRjh4WHlJZ1pEMGlUVFV1TmlBMWFERTJMalJqTUM0MElEQWdNQzQ0SURBdU5pQXdMalFnTVd3dE9DQTVMamhqTFRBdU15QXdMak10TUM0NUlEQXVNeTB4TGpJZ01Hd3RPQzA1TGpoRE5DNDRJRFV1TmlBMUxqRWdOU0ExTGpZZ05Yb2lMejROQ2lBZ0lDQThMMlJsWm5NK0RRb2dJQ0FnUEdOc2FYQlFZWFJvSUdsa1BTSlRWa2RKUkY4eVh5SStEUW9nSUNBZ0lDQThkWE5sSUhoc2FXNXJPbWh5WldZOUlpTlRWa2RKUkY4eFh5SWdiM1psY21ac2IzYzlJblpwYzJsaWJHVWlMejROQ2lBZ0lDQThMMk5zYVhCUVlYUm9QZzBLSUNBZ0lEeHlaV04wSUhnOUlqQWlJSGs5SWpBaUlHTnNhWEF0Y0dGMGFEMGlkWEpzS0NOVFZrZEpSRjh5WHlraUlHWnBiR3c5SWlNMU5UWTVPRVFpSUhkcFpIUm9QU0l5Tnk0MklpQm9aV2xuYUhROUlqSXhJaTgrRFFvZ0lEd3ZaejROQ2p3dmMzWm5QZzBLJyk7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogI2ZmZjtcbiAgICBiYWNrZ3JvdW5kLXBvc2l0aW9uOiA5NSUgNTAlO1xuICAgIGJhY2tncm91bmQtcmVwZWF0OiBuby1yZXBlYXQ7XG4gICAgYmFja2dyb3VuZC1zaXplOiAxNHB4IDE0cHg7XG4gICAgYm9yZGVyOiAxcHggc29saWQgI2NmZDBkMjtcbiAgICBib3JkZXItcmFkaXVzOiAzcHg7XG5cbiAgICAmW211bHRpcGxlXSB7XG4gICAgICBtaW4taGVpZ2h0OiA3NHB4O1xuICAgIH1cbiAgfVxuXG5zZWxlY3Rbc2l6ZT1cIjFcIl0ge1xuXHRhbGlnbi1pdGVtczogY2VudGVyO1xuXHR3aGl0ZS1zcGFjZTogcHJlO1xufVxuXG5idXR0b24uYnRuIHtcblx0YmFja2dyb3VuZC1jb2xvcjogd2hpdGU7XG5cdGJvcmRlci1jb2xvcjogI2JiYzBjNDtcblx0cGFkZGluZy10b3A6IDZweDtcblx0XHRwYWRkaW5nLWJvdHRvbTogN3B4O1xuXHRcdHBhZGRpbmctbGVmdDogNnB4O1xuXHRcdHBhZGRpbmctcmlnaHQ6IDdweDtcblx0XHRtYXJnaW4tYm90dG9tOiAxNHB4O1xuXHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblx0XHRiYWNrZ3JvdW5kLWltYWdlOiAtd2Via2l0LWdyYWRpZW50KGxpbmVhciwgMCAwLCAwIDEwMCUsIGZyb20oI2ZmZmZmZiksIHRvKCNmMWYxZjEpKTtcblx0XHRiYWNrZ3JvdW5kLWltYWdlOiAtd2Via2l0LWxpbmVhci1ncmFkaWVudCh0b3AsICNmZmZmZmYsICNmMWYxZjEpO1xuXHRcdGJhY2tncm91bmQtaW1hZ2U6IC1tb3otbGluZWFyLWdyYWRpZW50KHRvcCwgI2ZmZmZmZiwgI2YxZjFmMSk7XG5cdFx0YmFja2dyb3VuZC1pbWFnZTogLW1zLWxpbmVhci1ncmFkaWVudCh0b3AsICNmZmZmZmYsICNmMWYxZjEpO1xuXHRcdGJhY2tncm91bmQtaW1hZ2U6IC1vLWxpbmVhci1ncmFkaWVudCh0b3AsICNmZmZmZmYsICNmMWYxZjEpO1xuXHR9XG5cblx0YnV0dG9uLmJ0biBzcGFuIHtcblx0XHRmb250LXNpemU6IDE2cHg7XG5cdFx0Zm9udC13ZWlnaHQ6IDcwMDtcblx0XHRjb2xvcjogIzQ0NTk2Yztcblx0fVxuXG5cdGJ1dHRvbi5wcmltYXJ5IHtcblx0XHR3aWR0aDogMjAwcHg7XG5cdH1cblxuXHRidXR0b24uc2luZ2xlIHtcblx0XHRtYXgtd2lkdGg6IDI1MHB4O1xuXHRcdHdpZHRoOiAxMDAlO1xuXHR9XG5cblx0YnV0dG9uIHtcblx0XHRjb2xvcjogYnV0dG9udGV4dDtcblx0fVxuXG5idXR0b24uYnRuIHNwYW4uaWNvbi11dGlsaXR5LWRvd24ge1xuXHRcdG1hcmdpbi1sZWZ0OiAxMHB4O1xuXHRcdG1hcmdpbi1yaWdodDogMTBweDtcblx0fVxuXG4ucGJIZWFkZXIge1xuXHR3aWR0aDogMTAwJTtcblx0cGFkZGluZy10b3A6IDE1cHg7XG5cdHRleHQtYWxpZ246IGNlbnRlcjtcbn1cblxuLnBiVGl0bGUge1xuXHRkaXNwbGF5OiBub25lO1xufVxuXG4ucGJCdXR0b24ge1xuXHR3aWR0aDogMTAwJTtcbn1cblxudGFibGUubGlzdCB7XG5cdHdpZHRoOiAxMDAlO1xufVxuXG50YWJsZS5saXN0IHRyIHtcbn1cblxudGFibGUubGlzdCB0ZCwgdGFibGUubGlzdCB0aCB7XG5cdHBhZGRpbmc6IDVweCAzcHg7XG59XG5cbnRhYmxlLmxpc3QgdGgge1xuXHRjb2xvcjogIzY5NmU3MTtcblx0Zm9udC1zaXplOiAxMnB4O1xuXHR0ZXh0LWFsaWduOiBsZWZ0O1xuXHRwYWRkaW5nLXJpZ2h0OiAxMHB4O1xufVxuXG50YWJsZS5saXN0IHRkIHtcblx0Zm9udC1zaXplOiAxNHB4O1xuXHRjb2xvcjogIzNjM2QzZTtcblx0cGFkZGluZy1yaWdodDogMTBweDtcbn1cblxudGQuZGF0YUNlbGx7XG5cdGJvcmRlci10b3A6IDFweCBzb2xpZCAjY2ZkNGQ5O1xufVxuXG4ubGFiZWxDb2wge1xuXHR0ZXh0LWFsaWduOiByaWdodDtcblx0cGFkZGluZy1yaWdodDogMTBweDtcbn1cblxuLmluc3RydWN0aW9uc0NvbCB7XG5cdHBhZGRpbmctbGVmdDogMTBweDtcblx0cGFkZGluZy10b3A6IDVweDtcbn1cblxuLmJ1dHRvbkNvbnRhaW5lciB7XG5cdHdpZHRoOiAxMDAlO1xuXHRtYXJnaW4tdG9wOiA3cHg7XG5cdG1hcmdpbi1ib3R0b206IDdweDtcblx0dGV4dC1hbGlnbjogY2VudGVyO1xufVxuXG4ucmVjb3JkRWRpdG9yRm9ybSB7XG5cdG1hcmdpbi1sZWZ0OiAxMHB4O1xuXHRtYXJnaW4tcmlnaHQ6IDEwcHg7XG5cdHBhZGRpbmctdG9wOiA4NXB4O1xufVxuXG4ucmVjb3JkRWRpdG9yRm9ybSB0ZCB7XG5cdHBhZGRpbmctYm90dG9tOiAzcHg7XG59XG5cbi5yZWNvcmRFZGl0b3JGb3JtIHNlbGVjdCwgLnJlY29yZEVkaXRvckZvcm0gaW5wdXRbdHlwZT1cInRleHRcIl0ge1xuXHR3aWR0aDogMTAwJTtcbn1cblxuLnN0YXR1c0NvbnRhaW5lciB7XG5cdHBvc2l0aW9uOiBmaXhlZDtcblx0cmlnaHQ6IDA7XG5cdGxlZnQ6IDA7XG5cdHRvcDogMDtcblx0Ym90dG9tOiAwO1xuXHR6LWluZGV4OiAxMDAxO1xuXHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdHBhZGRpbmc6IDBweDtcblx0b3BhY2l0eTogMC42O1xuXHRiYWNrZ3JvdW5kLWNvbG9yOiAjMzU0NDUyO1xufVxuXG4uc3RhdHVzSWNvbiB7XG5cdHdpZHRoOiAzMHB4O1xuXHRoZWlnaHQ6IDMwcHg7XG5cdGNvbG9yOiAjYWZiNWI5O1xuXHRwb3NpdGlvbjogYWJzb2x1dGU7XG5cdHRvcDo1MCU7XG5cdG1hcmdpbjogLTE1cHggYXV0byBhdXRvO1xuXHQtd2Via2l0LWFuaW1hdGlvbjogbG9hZGluZy1yb3RhdGUgbGluZWFyIC44cyBpbmZpbml0ZTtcblx0LW1vei1hbmltYXRpb246IGxvYWRpbmctcm90YXRlIGxpbmVhciAuOHMgaW5maW5pdGU7XG5cdGFuaW1hdGlvbjogbG9hZGluZy1yb3RhdGUgbGluZWFyIC44cyBpbmZpbml0ZTtcblx0LXdlYmtpdC1hbmltYXRpb24tZmlsbC1tb2RlOiBmb3J3YXJkcztcblx0LW1vei1hbmltYXRpb24tZmlsbC1tb2RlOiBmb3J3YXJkcztcblx0YW5pbWF0aW9uLWZpbGwtbW9kZTogZm9yd2FyZHM7XG5cdGJhY2tncm91bmQ6IHVybCgnZGF0YTppbWFnZS9zdmcreG1sO2Jhc2U2NCxQSE4yWnlCNGJXeHVjejBpYUhSMGNEb3ZMM2QzZHk1M015NXZjbWN2TWpBd01DOXpkbWNpSUhkcFpIUm9QU0kyTTNCNElpQm9aV2xuYUhROUlqWXpjSGdpSUhacFpYZENiM2c5SWpBZ01DQTJNeUEyTXlJK1BIQmhkR2dnWm1sc2JEMGlJMkZtWWpWaU9TSWdaRDBpVFRNeExqVXdNU3d4Tmk0M09ERjJMVFF1T0RnMll5MHhNQzQzT0Rrc01DMHhPUzQxTXpZc09DNDNORFV0TVRrdU5UTTJMREU1TGpVek5XTXdMREV3TGpjNE9TdzRMamMwTnl3eE9TNDFNelVzTVRrdU5UTTJMREU1TGpVek5XTXhNQzQzT0Rnc01Dd3hPUzQxTXpRdE9DNDNORFlzTVRrdU5UTTBMVEU1TGpVek5XTXdMVFV1TWpFMExUSXVNRFE1TFRrdU9UUTRMVFV1TXpjM0xURXpMalExTW13MExqY3hPUzAwTGpRNE0yTTBMalEwTERRdU5qY3hMRGN1TVRZNExERXdMams0TXl3M0xqRTJPQ3d4Tnk0NU16ZGpNQ3d4TkM0ek9EVXRNVEV1TmpZeUxESTJMakEwTXkweU5pNHdORElzTWpZdU1EUXpZeTB4TkM0ek9EWXNNQzB5Tmk0d05EY3RNVEV1TmpVNExUSTJMakEwTnkweU5pNHdORE5qTUMweE5DNHpPRGdzTVRFdU5qWXhMVEkyTGpBME55d3lOaTR3TkRjdE1qWXVNRFEzVmpBdU5XdzVMamMyTnl3NExqRXpPVXd6TVM0MU1ERXNNVFl1TnpneGVpSXZQand2YzNablBnPT0nKSBuby1yZXBlYXQgY2VudGVyIGNlbnRlcjtcblx0YmFja2dyb3VuZC1zaXplOiAxMDAlO1xufVxuXG4ubW9kYWxEaWFsb2dXcmFwcGVyIHtcblx0ei1pbmRleDogMjI7XG5cdHBvc2l0aW9uOiBhYnNvbHV0ZTtcblx0dG9wOiAwO1xuXHRsZWZ0OiAwO1xuXHRyaWdodDogMDtcblx0Ym90dG9tOiAwO1xufVxuXG4ubW9kYWxEaWFsb2dCYWNrZ3JvdW5kIHtcblx0ei1pbmRleDogMjE7XG5cdG9wYWNpdHk6IC42O1xuXHRiYWNrZ3JvdW5kLWNvbG9yOiAjMzU0NDUyO1xuXHRwb3NpdGlvbjogZml4ZWQ7XG5cdHRvcDogMDtcblx0cmlnaHQ6IDA7XG5cdGJvdHRvbTogMDtcblx0bGVmdDogMDtcblx0LXdlYmtpdC10cmFuc2l0aW9uOiBvcGFjaXR5IDMwMG1zO1xufVxuXG4ubW9kYWxEaWFsb2cge1xuXHR6LWluZGV4OiAyMjtcblx0cG9zaXRpb246IGZpeGVkO1xuXHR0b3A6MTAwcHg7XG5cdGxlZnQ6MDtcblx0cmlnaHQ6MDtcblx0bWFyZ2luOmF1dG87XG5cdGhlaWdodDogYXV0bztcblx0bWF4LWhlaWdodDogNzAlO1xuXHR3aWR0aDogMTAwJTtcblx0bWF4LXdpZHRoOiAyOTJweDtcblx0Ym9yZGVyLXJhZGl1czogNXB4O1xuXHRiYWNrZ3JvdW5kLWNvbG9yOiAjZmZmZmZmO1xuXHQtd2Via2l0LXRyYW5zaXRpb246IC13ZWJraXQtdHJhbnNmb3JtIC4zcyBlYXNlLWluO1xuXHRvdmVyZmxvdzogc2Nyb2xsO1xufVxuXG4uY2xvc2VCdG4ge1xuXHRwb3NpdGlvbjogZml4ZWQ7XG5cdHotaW5kZXg6IDIyO1xuXHRyaWdodDogMHB4O1xuXHRsZWZ0OiAwcHg7XG5cdHRvcDogNzBweDtcblx0Y29sb3I6ICNmZmZmZmY7XG5cdHdpZHRoOiAxMDAlO1xuXHRtYXgtd2lkdGg6IDI5MnB4O1xuXHRmb250LWZhbWlseTogQXJpYWw7XG5cdGZvbnQtd2VpZ2h0OiA2MDA7XG5cdGZvbnQtc2l6ZTogMjVweDtcblx0ZGlzcGxheTogYmxvY2s7XG5cdG1hcmdpbjogYXV0bztcblx0dGV4dC1hbGlnbjogcmlnaHQ7XG59XG5cbi5tb2RhbERpYWxvZyAuYm9keSB7XG5cdG1heC1oZWlnaHQ6IDcwJTtcblx0b3ZlcmZsb3c6IHNjcm9sbDtcblx0cGFkZGluZzogMXB4IDE0cHg7XG5cdC13ZWJraXQtZmxleDogMTtcblx0Ym9yZGVyLXJhZGl1czogNXB4O1xufVxuXG4ubW9kYWxEaWFsb2cgLnNjcm9sbFdyYXBwZXIge1xuXHRvdmVyZmxvdzogc2Nyb2xsO1xuXHRwb3NpdGlvbjogaW5oZXJpdDtcblx0aGVpZ2h0OiA3MCU7XG5cdC13ZWJraXQtdGFwLWhpZ2hsaWdodC1jb2xvcjogcmdiYSgwLCAwLCAwLCAwKTtcblx0LXdlYmtpdC11c2VyLWRyYWc6IG5vbmU7XG59XG5cblxuLm1vZGFsRGlhbG9nIC5zY3JvbGxDb250ZW50IHtcblx0LXdlYmtpdC10cmFuc2l0aW9uOiAtd2Via2l0LXRyYW5zZm9ybSAwbXMgY3ViaWMtYmV6aWVyKDAuMzMsIDAuNjYsIDAuNjYsIDEpO1xuXHR0cmFuc2l0aW9uOiAtd2Via2l0LXRyYW5zZm9ybSAwbXMgY3ViaWMtYmV6aWVyKDAuMzMsIDAuNjYsIDAuNjYsIDEpO1xuXHQtd2Via2l0LXRyYW5zZm9ybS1vcmlnaW46IDBweCAwcHg7XG59XG5cbi5tb2RhbERpYWxvZyBidXR0b24sXG4ubW9kYWxEaWFsb2cgaW5wdXQge1xuXHRkaXNwbGF5OiBibG9jaztcblx0bWFyZ2luLXRvcDogMTRweDtcblx0d2lkdGg6IDEwMCU7XG59XG5cbi5kb2N1bWVudFByZXZpZXdDb250YWluZXIge1xuXHRwb3NpdGlvbjogYWJzb2x1dGU7XG5cdHdpZHRoOiAxMDAlO1xuXHR0b3A6IDEzNXB4O1xuXHRib3R0b206IDBweDtcblx0b3ZlcmZsb3c6IHNjcm9sbDtcblx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHQtd2Via2l0LW92ZXJmbG93LXNjcm9sbGluZzogdG91Y2g7XG59XG5cbmlmcmFtZS5kb2N1bWVudFByZXZpZXdGcmFtZSB7XG5cdHdpZHRoOiAxMDAlO1xuXHRoZWlnaHQ6IDEwMCU7XG5cdHRleHQtYWxpZ246IGNlbnRlcjtcbn1cblxuaW1nLnBhZ2luYXRpb24ge1xuXHRiYWNrZ3JvdW5kLWltYWdlOiB1cmwoJy9pbWcvcGFnaW5hdGlvbkFycm93cy5naWYnKTtcblx0YmFja2dyb3VuZC1yZXBlYXQ6bm8tcmVwZWF0O1xuXHRtYXJnaW46IDAgMnB4O1xuXHR6b29tOiAxLjQ7XG5cdC1tb3otdHJhbnNmb3JtOiBzY2FsZSgxLjQpO1xuXHQtbW96LXRyYW5zZm9ybS1vcmlnaW46IDAgMDtcbn1cblxuaW1nLndhcm5pbmcge1xuXHRiYWNrZ3JvdW5kLWltYWdlOiB1cmwoJy9pbWcvbXNnX2ljb25zL3dhcm5pbmcxNi5naWYnKTtcblx0YmFja2dyb3VuZC1yZXBlYXQ6bm8tcmVwZWF0O1xuXHRiYWNrZ3JvdW5kLXBvc2l0aW9uOiAwIDA7XG5cdHdpZHRoOiAxNnB4O1xuXHRoZWlnaHQ6IDE2cHg7XG59XG5cbi5tZXNzYWdle1xuXHRib3JkZXItcmFkaXVzOjRweDtcblx0YmFja2dyb3VuZC1jb2xvcjogI2ZmYztcblx0Ym9yZGVyLXN0eWxlOiBzb2xpZDtcblx0Ym9yZGVyLXdpZHRoOiAxcHg7XG5cdGNvbG9yOiAjMDAwO1xuXHRwYWRkaW5nOiA2cHggOHB4IDZweCA2cHg7XG5cdG1hcmdpbjogNHB4IDIwcHg7XG5cdGZvbnQtc2l6ZToxMHB4O1xufVxuXG4ubWVzc2FnZSAubWVzc2FnZVRhYmxlIC5tZXNzYWdlQ2VsbCB7XG5cdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG59XG5cbi5tZXNzYWdlIC5tZXNzYWdlVGV4dHtcblx0bWFyZ2luLWxlZnQ6IDhweDtcbn1cblxuLm1zZ0ljb24sIC5lcnJvckxhcmdle1xuXHRiYWNrZ3JvdW5kLWltYWdlOiB1cmwoL2ltZy9tc2dfaWNvbnMvZXJyb3IzMi5wbmcpO1xuXHRiYWNrZ3JvdW5kLXBvc2l0aW9uOiAwIDA7XG5cdHdpZHRoOiAzMnB4O1xuXHRoZWlnaHQ6IDMycHg7XG59XG5cbi5tZXNzYWdlVGV4dCBoMSwgLm1lc3NhZ2VUZXh0IGgyLCAubWVzc2FnZVRleHQgaDMsIC5tZXNzYWdlVGV4dCBoNCwgLm1lc3NhZ2VUZXh0IGg1LCAubWVzc2FnZVRleHQgaDYge1xuICBmb250LXdlaWdodDogNDAwO1xuICBmb250LWZhbWlseTogaW5oZXJpdDtcbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICBtYXJnaW46IDA7XG4gIHBhZGRpbmc6IDA7XG59XG5cbi5yZXF1aXJlZENvbmZpZ3VyYXRpb25BdHRyaWJ1dGV7XG4gICAgYm9yZGVyLWxlZnQ6ICNjMDAgc29saWQ7XG4gICAgcGFkZGluZy1sZWZ0OiAycHg7XG4gICAgbWFyZ2luLWxlZnQ6IDFweDtcbn1cblxuLm1vYmlsZSB7XG5cdGRpc3BsYXk6IGluaXRpYWw7XG59XG5cbi5kZXNrdG9wIHtcblx0ZGlzcGxheTogbm9uZTtcbn1cblxuLyogTW9iaWxlIFJlc2tpbm5pbmcqL1xuXG5ib2R5IHtcblx0YmFja2dyb3VuZC1jb2xvcjogd2hpdGU7XG59XG5cblxuLyoqKiBQaG9uZSBzdHlsZXMgKioqL1xuXG5AbWVkaWEgb25seSBzY3JlZW4gYW5kIChtaW4tZGV2aWNlLXdpZHRoIDogMzIwcHgpIGFuZCAobWF4LWRldmljZS13aWR0aCA6IDY0MHB4KSB7XG5cdC5waG9uZSB7XG5cdFx0ZGlzcGxheTogaW5pdGlhbDtcblx0fVxuXG5cdC50YWJsZXQge1xuXHRcdGRpc3BsYXk6IG5vbmU7XG5cdH1cblxuXHQuaW5zdHJ1Y3Rpb25zQ29sIHtcblx0XHRwYWRkaW5nLWxlZnQ6IDNweDtcblx0XHRwYWRkaW5nLXRvcDogMTBweDtcblx0fVxuXG5cdC5zZWFyY2hQYW5lbCB0ZCB7XG5cdFx0cGFkZGluZzogMHB4O1xuXHR9XG5cblx0LnNlYXJjaFBhbmVsIGxhYmVsIHtcblx0XHRtYXJnaW46IDBweDtcblx0XHRwYWRkaW5nOiAwcHg7XG5cdFx0cGFkZGluZy1ib3R0b206IDJweDtcblx0fVxuXG5cdC5zZWFyY2hQYW5lbCBkaXYuc2VhcmNoRmllbGQge1xuXHRcdG1hcmdpbi1ib3R0b206IDVweDtcblx0fVxuXG5cdC5ncm91cENvbnRhaW5lciB7XG5cdFx0bWFyZ2luLWJvdHRvbTogMTBweDtcblx0fVxuXG5cdC5ncm91cE5hbWUge1xuXHRcdGZvbnQtd2VpZ2h0OiBib2xkO1xuXHRcdHRleHQtZGVjb3JhdGlvbjogbm9uZTtcblx0fVxuXG5cdC5saXN0IHtcblx0XHRtYXJnaW46IDEwcHggMDtcblx0fVxuXG5cdC51bnBhZ2luYXRlZEhlYWRlcixcblx0LmludmlzaWJsZVRleHQge1xuXHRcdGRpc3BsYXk6IG5vbmU7XG5cdH1cblxuXHQucGFnZVNlbGVjdG9yIHtcblx0XHR3aWR0aDogNTBweDtcblx0XHRtYXJnaW4tcmlnaHQ6IDVweDtcblx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdH1cblxuXHQuZ3JvdXBMaXN0IHtcblx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdFx0cGFkZGluZzogMTBweCA1cHg7XG5cdH1cblxuXHQuZ3JvdXBMaXN0IGEge1xuXHRcdHRleHQtZGVjb3JhdGlvbjogbm9uZTtcblx0fVxuXG5cdC5ncm91cExpc3QgLmdyb3VwTGlua05hbWUge1xuXHRcdHdoaXRlLXNwYWNlOiBub3dyYXA7XG5cdFx0Zm9udC13ZWlnaHQ6IGJvbGQ7XG5cdFx0cGFkZGluZzogMCAxNXB4IDNweDtcblx0fVxuXG5cdC5ncm91cExpc3QgLmRpc3BsYXllZEdyb3VwIHtcblx0XHRib3JkZXItYm90dG9tOiAycHggc29saWQgYmxhY2s7XG5cdFx0Zm9udC13ZWlnaHQ6IGJvbGQ7XG5cdH1cblxuXHQudGFibGVIZWFkZXIge1xuXHRcdGRpc3BsYXk6IGlubGluZTtcblx0fVxuXG5cdC5xdW90ZVRvdGFsLCAuZ3JvdXBUb3RhbCB7XG5cdFx0dGV4dC1hbGlnbjogcmlnaHQ7XG5cdH1cblxuXHQucXVvdGVUb3RhbCB7XG5cdFx0Zm9udC1zaXplOiAyMHB4O1xuXHRcdG1hcmdpbi1yaWdodDogMTVweDtcblx0fVxuXG5cdCBoZWFkZXIgLmdyb3VwVG90YWwge1xuXHRcdGZvbnQtc2l6ZTogMTRweDtcblx0XHRtYXJnaW4tcmlnaHQ6IDVweDtcblx0fVxuXG5cdC8qQ3VzdG9tIGFjdGlvbnMgb24gdGhlIGdyb3VwKi9cblx0Y3VzdG9tQWN0aW9ucyBpbnB1dCB7XG5cdFx0bWFyZ2luLXJpZ2h0OiA1cHg7XG5cdH1cblxuXHQvKlF1b3RlICYgR3JvdXAgRWRpdG9yIC0gZmllbGRzIGFuZCBidXR0b25zKi9cblx0LmN1c3RvbUFjdGlvbnMgaW5wdXQge1xuXHRcdGRpc3BsYXk6IGJsb2NrO1xuXHRcdG1hcmdpbi1ib3R0b206IDVweDtcblx0fVxuXG5cdC8qVGFibGVzKi9cblx0LnRhYmxlSGVhZGVyIHtcblx0XHRmb250LXNpemU6IDEuMmVtO1xuXHR9XG5cblx0LnRhYmxlQ29udGFpbmVyLnN0YW5kYXJkIHtcblx0XHRtYXJnaW4tdG9wOiAyMHB4O1xuXHR9XG5cblxuXHQvKk11bHRpLXNlZ21lbnQgdGFibGUqL1xuXHQuZGV0YWlsUm93IHRkLmRhdGFDZWxsIHtcblx0XHRib3JkZXItdG9wOiBub25lO1xuXHR9XG5cblx0LmZvb3RlclJvdyB7XG5cdFx0Zm9udC13ZWlnaHQ6IGJvbGQ7XG5cdH1cblxuXHQvKlBhZ2luYXRpb24gQ29udHJvbHMqL1xuXHQucGFnaW5hdGlvbkNvbnRyb2xzIHtcblx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdH1cblxufVxuXG4vKiBUYWJsZXQgc3R5bGVzICovXG5cbkBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1pbi1kZXZpY2Utd2lkdGggOiA2NDFweCkgYW5kIChtYXgtZGV2aWNlLXdpZHRoIDogMTAyNXB4KSB7XG5cdC50YWJsZXQge1xuXHRcdGRpc3BsYXk6IGluaXRpYWw7XG5cdH1cblxuXHQucGhvbmUge1xuXHRcdGRpc3BsYXk6IG5vbmU7XG5cdH1cblxuXHQuc2VhcmNoUGFuZWwgdGQge1xuXHRcdHBhZGRpbmctbGVmdDogNXB4O1xuXHRcdHBhZGRpbmctcmlnaHQ6IDVweDtcblx0XHR2ZXJ0aWNhbC1hbGlnbjogdG9wO1xuXHR9XG5cblx0Lmdyb3VwQ29udGFpbmVyIHtcblx0XHRtYXJnaW4tYm90dG9tOiAxMHB4O1xuXHR9XG5cblx0Lmdyb3VwTmFtZSB7XG5cdFx0Zm9udC13ZWlnaHQ6IGJvbGQ7XG5cdFx0dGV4dC1kZWNvcmF0aW9uOiBub25lO1xuXHR9XG5cblx0Lmxpc3Qge1xuXHRcdG1hcmdpbjogMTBweCAwO1xuXHR9XG5cblx0LnVucGFnaW5hdGVkSGVhZGVyLFxuXHQuaW52aXNpYmxlVGV4dCB7XG5cdFx0ZGlzcGxheTogbm9uZTtcblx0fVxuXG5cdC5wYWdlU2VsZWN0b3Ige1xuXHRcdHdpZHRoOiA2MHB4O1xuXHRcdG1hcmdpbi1yaWdodDogNXB4O1xuXHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblx0fVxuXG5cdC5ncm91cExpc3Qge1xuXHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblx0XHRwYWRkaW5nOiAxMHB4IDVweDtcblx0fVxuXG5cdC5ncm91cExpc3QgYSB7XG5cdFx0dGV4dC1kZWNvcmF0aW9uOiBub25lO1xuXHR9XG5cblx0Lmdyb3VwTGlzdCAuZ3JvdXBMaW5rTmFtZSB7XG5cdFx0d2hpdGUtc3BhY2U6IG5vd3JhcDtcblx0XHRmb250LXdlaWdodDogYm9sZDtcblx0XHRwYWRkaW5nOiAwIDE1cHggM3B4O1xuXHR9XG5cblx0Lmdyb3VwTGlzdCAuZGlzcGxheWVkR3JvdXAge1xuXHRcdGJvcmRlci1ib3R0b206IDJweCBzb2xpZCAjM2MzZDNlO1xuXHRcdGZvbnQtd2VpZ2h0OiBib2xkO1xuXHR9XG5cblx0LnRhYmxlSGVhZGVyIHtcblx0XHRkaXNwbGF5OiBpbmxpbmU7XG5cdH1cblxuXHQucXVvdGVUb3RhbCwgLmdyb3VwVG90YWwge1xuXHRcdHRleHQtYWxpZ246IHJpZ2h0O1xuXHR9XG5cblx0LnF1b3RlVG90YWwge1xuXHRcdGZvbnQtc2l6ZTogMjBweDtcblx0XHRtYXJnaW4tcmlnaHQ6IDE1cHg7XG5cdH1cblxuXHRoZWFkZXIgLmdyb3VwVG90YWwge1xuXHRcdGZvbnQtc2l6ZTogMTZweDtcblx0XHRtYXJnaW4tcmlnaHQ6IDVweDtcblx0fVxuXG5cdC8qQ3VzdG9tIGFjdGlvbnMgb24gdGhlIGdyb3VwKi9cblx0LmN1c3RvbUFjdGlvbnMge1xuXHRcdG1hcmdpbi1sZWZ0OiA1cHg7XG5cdH1cblxuXHQuY3VzdG9tQWN0aW9ucyB7XG5cdFx0bWFyZ2luLWJvdHRvbTogNXB4O1xuXHR9XG5cblx0LmN1c3RvbUFjdGlvbnMgaW5wdXQge1xuXHRcdG1hcmdpbi1yaWdodDogNXB4O1xuXHR9XG5cblx0LypUYWJsZXMqL1xuXHQudGFibGVIZWFkZXIge1xuXHRcdGZvbnQtc2l6ZTogMS4yZW07XG5cdH1cblxuXHQudGFibGVDb250YWluZXIge1xuXHRcdHBhZGRpbmctbGVmdDogNXB4O1xuXHR9XG5cblx0LnRhYmxlQ29udGFpbmVyLnN0YW5kYXJkIHtcblx0XHRtYXJnaW4tdG9wOiAyMHB4O1xuXHR9XG5cblx0LypNdWx0aS1zZWdtZW50IHRhYmxlKi9cblx0LmRldGFpbFJvdyB0ZC5kYXRhQ2VsbCB7XG5cdFx0Ym9yZGVyLXRvcDogbm9uZTtcblx0fVxuXG5cdC5mb290ZXJSb3cge1xuXHRcdGZvbnQtd2VpZ2h0OiBib2xkO1xuXHR9XG5cblx0LypQYWdpbmF0aW9uIENvbnRyb2xzKi9cblx0LnBhZ2luYXRpb25Db250cm9scyB7XG5cdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHR9XG5cblx0LyogTW9iaWxlIFJlc2tpbm5pbmcqL1xuXHQuc2JCdG4ge1xuXHRcdGZvbnQtc2l6ZTogMTZweDtcblx0XHRtYXJnaW46IDAgMCAwIDEwcHg7XG5cdH1cblxufVxuXG5cblxuLyoqKiBJY29ucyAqKiovXG5cbkBmb250LWZhY2Uge1xuXHRmb250LWZhbWlseTogJ2ljb21vb24nO1xuXHRzcmM6IHVybCgnZm9udHMvaWNvbW9vbi5lb3QnKTtcbn1cbkBmb250LWZhY2Uge1xuXHRmb250LWZhbWlseTogJ2ljb21vb24nO1xuXHRzcmM6IHVybChkYXRhOmFwcGxpY2F0aW9uL3gtZm9udC10dGY7Y2hhcnNldD11dGYtODtiYXNlNjQsQUFFQUFBQUxBSUFBQXdBd1QxTXZNZzZ2OHl3QUFBQzhBQUFBWUdOdFlYRGdmT2FNQUFBQkhBQUFBRVJuWVhOd0FBQUFFQUFBQVdBQUFBQUlaMng1WmxSTUZ4b0FBQUZvQUFBNldHaGxZV1FBU0FrM0FBQTd3QUFBQURab2FHVmhCOElEK3dBQU8vZ0FBQUFrYUcxMGVPSUFETVVBQUR3Y0FBQUE2R3h2WTJHZEQ1QUlBQUE5QkFBQUFIWnRZWGh3QUVNQkxRQUFQWHdBQUFBZ2JtRnRaVVFYdE5ZQUFEMmNBQUFCT1hCdmMzUUFBd0FBQUFBKzJBQUFBQ0FBQXdRQUFaQUFCUUFBQXBrQ3pBQUFBSThDbVFMTUFBQUI2d0F6QVFrQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJBQUNEbUFnUEEvOEQvd0FQQUFFQUFBQUFBQUFBQUFBQUFBQUFBQUFBZ0FBQUFBQUFDQUFBQUF3QUFBQlFBQXdBQkFBQUFGQUFFQURBQUFBQUlBQWdBQWdBQUFDRGdOT1lDLy84QUFBQWc0QURtQVAvLy8rRWdBaG8zQUFFQUFBQUFBQUFBQUFBQkFBSC8vd0FQQUFFQUFBQUFBQUFBQUFBQ0FBQTNPUUVBQUFBQUFRQlJBQkVEcmdOdUFGTUFBQUV1QVNJR0J3RU9BUlFXRng0Qk1qWTNBVDRCTkNZbkxnRWlCZzhCRGdFVUZoY2VBVEkyUHdFK0FUSVdGeDRCRkFZSEFRNEJJaVluTGdFME5qY0JQZ0V5RmhjZUFSUUdEd0VlQXhjM1BnRTBKaWNEcmlobWFtWXAvaXNvS0Nnb0tXWnFaaWdCSUJrWkdSa1pQMEkvR2JRS0Nnb0tDUmNZRndtMUJoQVFFQVlHQmdZRy91QVdOemszRmhZV0ZoWUIxUlkzT1RjV0ZoWVdGZ1FMRVF3SEFTNHBLU2twQTI0cEtTa3AvaXNvWm1wbUtTZ29LQ2dCSUJrL1FqOFpHUmtaR2JVSkZ4Z1hDUW9LQ2dxMEJnWUdCZ1lRRUJBRy91RVdGaFlXRmpjNU54WUIxUllXRmhZV056azNGZ1FQSUNJakVpNHBabXBtS0FBQkFSRC93QU1RQThBQUtBQUFBU0VpRGdJVkVSUWVBaGNXTWo0QlB3RVhIZ016T2dNelBnTTFFVFF1QWlNQzBQNkFEUmNSQ2dJREJRTURCd1lHQXR2YkFnUUVCQUlCQWdJQ0FRTUZBd0lLRVJjTkE4QUtFUmNOL0ZVREJnVUVBUUVCQXdMYjJ3RUNBZ0VCQkFVR0F3T3JEUmNSQ2dBQUFBQUJBRjcvNGdQZUE1NEFUd0FBSlNjd0xnSWpJZzRDRHdFT0FpWW5MZ01uTGdNbkxnRStBVDhCUGdNMU5DNENMd0V1QXlNT0F3Y09BUjRCRng0RE16SStBamMrQXpjMExnSW5BOHZ0QkFZR0FnUUlCd1lDWlFRTEN3c0ZFaU1pSVJBUUhSc1lDd01DQVFVRVpRTUZBd0lCQVFJQmdnSUdDQWtGRmkwcUpRNHlGVEJ4VlRsN2UzZzJHakV0SnhBT0Z4RUxBZ01GQndUZWR3SUNBZ0lFQlFOY0JBVUJBZ01MR0JzZUVCQWhJaU1TQlFzTEN3UmtBd1lIQ0FRREJRVUVBdTBFQndVREFna1BGUTR5bXJPK1ZUbFlQQjhJRUJnUURpTW9LeFlGQ2dnSEFnQUFBQUFCQUNMLzhnUGVBNHdBVFFBQUFTNERKeTRESXlJT0FnY09Bd2NPQXhVVUhnSVhIZ01YSGdNWEZSUWVBaGN5SGdFeU16SStBajhCTWo0Q056NEROejRETlRRdUFpY0QwQVFpTVRzZEpFaElTQ1FrU0VoSUpCMDdNaU1GQXdVREFnSURCUU1GSXpJN0hRb1ZGUlVLQXdVSUJRSURBd1FDQXdZR0JnTE1IVG82T2gwZE96RWlCQVFGQXdJQ0F3VUVBdHdkTnl3ZEF3UUdCQUlDQkFZRUF4MHNOeDBYTGk4dkdCY3VMaTBXSFRjc0hRTUJBZ0VCQWE4RkNnZ0hBZ0VCQVFJRUFzVUNBd1FEQXh3ck5oMFdMaTR1Rnhjdkx5NFhBQUFDQUluLzN3TjNBOEFBR1FBdUFBQUJJZzRDRlJRZUFqRWVBalkzTUQ0Q05UUXVBaU1SSWk0Q05UUStBak15SGdJVkZBNENJd0lBVG9sbU8yTjNZeEFiR2h3UlpIaGtPMmFKVGlWQk1Cd2NNRUVsSlVFd0hCd3dRU1VEd0Q1cmoxRnUxNnBwRHhBQkR4QnBxdGR1VVk5clB2M1hIREJCSlNWQk1Cd2NNRUVsSlVFd0hBQUJBSkVBTmdNekEyb0FMZ0FBQ1FFK0F6VThBUzRCSnk0REl5RWlEZ0lIQVE0QkZCWVhBUjRETXlFeVBnSTNQZ0V1QVNjQkFkd0JUZ0lFQWdFQkFRRUNCd2dLQmY3M0JBY0hCZ0wrb3dRRUJBUUJYUUlHQndjRUFRa0ZDZ2dIQWdJQkFnUUUvcklCMEFGZ0FnWUdCZ01DQkFRRUFnUUhCUU1DQXdRRC9va0ZEQXdNQmY2SkFnUURBZ01GQ0FVRkNna0pCQUZoQUFBQUFBRUF6UUEyQTI0RGFnQXVBQUFKQVM0REl5RWlEZ0lIRGdFZUFSY0pBUTRERlJ3QkhnRVhIZ016SVRJK0FqY0JQZ0UwSmljRGJ2NmtBZ1lIQndUKzl3VUtDQWNDQWdFQ0JBTUJUdjZ5QWdNQ0FRRUJBUUlIQ0FvRkFRa0VCd2NHQWdGY0JRVUZCUUhtQVhjREJBTUNBd1VIQkFVS0Nna0UvcUQrbndJRkJnWURBZ1FFQkFJRkNBVURBZ01FQWdGM0JRd01EQVVBQUFBQUFRQ1JBR0VEYndNL0FFUUFBQUUzUGdJbUp5NERKeTRCRGdFUEFTY3VBZ1lIRGdNSERnRWVBUjhCQnc0Q0ZoY2VBeGNlQVQ0QlB3RVhIZ0kyTno0RE56NEJMZ0V2QVFLZXlnY0lBZ1FGREJnYUhBOEdEeEFRQjhyTEJoQVFFQVlPR3hvWURBVUVBZ2dIeXNzR0NBSUVCUXdZR2hzT0JoQVFFQWJMeWdjUUVBOEdEeHdhR0F3RkJBSUlCOG9CME1vSEVCQVBCZzhjR2hnTUJRUUNDQWZCd1FjSUFnUUZEQmdhSEE4R0R4QVFCOHJMQmhBUUVBWU9HeG9ZREFVRUFnY0d5OHNHQ0FJRUJRd1lHaHdQQmc4UUVBYkxBQUFCQUk4QXp3TnhBczhBTFFBQUFTNERJeUl1QWlNaURnSWpJZzRDQnc0QkZCWVhIZ01YSGdFeU5qYytBemMrQVRRbUp3TnhBd2tLREFZQk9GeDJQajUyWERnQkJnd0xDUU1EQXdNRE1ISmtSZ01IRWhJU0J3TkdaSEl3QXdNREF3S3JCZ2tIQkFNRUF3TUVBd1FIQ1FZR0RBd01CbFNaZFVjREJnWUdCZ05IZFpsVUJnd01EQVlBQWdBQS85QUVBQU91QUQ0QVlRQUFBUjRETXpJK0FqYytBemMrQWlZbkxnTXJBUzRESnk0REl5SU9BZ2NPQXdjaklnNENCdzRCSGdFWEhnTVhKUlFPQWdjaExnTTFJeFFlQWhVZUF6TWhNajRDTnpRK0FqVWpBZWNEQmdZR0F3TUdCZ1lEQXpwVFh5Z0RBd0VDQWdNSUNRb0dpd1lPRHcwRUJROFVHUThQR1JRUEJRVU9EZzRGaXdZS0NRY0RBZ0lCQXdNb1gxTTZBd0Z5QkFZSEEvMTFBd2NHQktZTURnd0VFQllhRGdNT0Roc1dFQVFNRGd5bUFWQUNBd0lCQVFJREFnSXpWRzA3QkFvTEN3VUZDQVlESUVJNEtRZ0lEUWtGQlFrTkNBa3FPRUVnQXdZSUJRVUxDd29FTzIxVU13SmVObDFOUFJZV1BFMWROMmVhWnpVQ0RoY1FDUWtSRnc0Q05XZWFaZ0FBQUFBQ0FBZi93QVA4QTdrQU9RQmlBQUFGTGdNbkxnTW5BUzRDQmdjT0F3Y09Bd2NPQVI0QkZ3RWVBeGNlQXhjZUFqSXpNajRDTno0Q0ppY25MZ01uQVQ0RE53RWVBek15UGdJM1BnSW1Kd0UrQXpjQkhnTVhCd1A4RHgwZEhROEJBZ01FQXYzTUJoQVJFUWdVSmlRaUVCQWRHeG9NQlFRQ0NBWUNOQUlGQlFVRExsdGJXaXdDQkFRRUFnVUlDQWNFQlFZQ0FnUHdFaVVsSlJIOThRVUxEQTBIQWdBRUNRa0tCUVVJQ0FjRUNBZ0JCd2YrQWdjT0RnNEhBZzhHREF3TUJrd0NMRmxhV2k0REJnVUZBZ0kzQmdjQ0JBUU1HaHdlRUE4Z0lpUVRDQkVSRHdiOXlRSUVBd01CRHg0ZUh4QUJBUUVDQkFZRUJRc0xEUWRzQmd3TURBWUNFUWdRRHc4SC9mOEVCUU1CQWdRR0JBZ1NFaElJQWY0R0RBd01CZjNyRWlNakl4Sk1BQUFBQUFJQU1nQW1BKzREV2dBaUFFOEFBQUVpTGdJbkFSRVVIZ0lYSGdNek1qNENOejRETlJFQkRnTWpBUzRESXlJT0FnY09BeDBCSGdNWEFSNERNekkrQWpjQlBnTTNOVFF1QWljQ0VCTWxKQ0VQL3E0RUNBb0dPSEJ4Y1RnNGNYQndOd1lMQ0FYK3JnOGhKQ1VUQWNBM2IzQnhPRGh4Y0hBNEJnb0lCQUVGQ1EwS0FXd0lFaFFWQ3dzVkZCSUlBV3dLRFFrRkFRVUlDd1lCRlFVS0VBc0JBLzRrQmdzSkJnRUlEQWdFQkFnTUNBRUdDUXNHQWR6Ky9Rc1FDZ1VDSkFnTUNBUUVDQXdJQVFZSkN3WXhCQXdPRVFuKzdRWUpCZ01EQmdrR0FSTUpFUTRNQkRFR0N3a0dBUUFIQUNML3dBUGVBOEFBQkFBSkFBNEFFd0IyQUlRQWlRQUFBU01WTXpVWEl4VXpOVFVqRlRNMUJ5TVZNelVCSWk0Q0p6VTBMZ0lqSWc0Q0hRRVVIZ0lYSWk0Q1BRRXFBeU1xQVE0QkJ6VTBMZ0lqSWc0Q0hRRVVIZ0lYSWk0Q1BRRU9BeU1PQXhVUkZCNENGekllQWpNeVBnSXpQZ00xRVRRdUFpY0REZ01qSWk0Q0p4RWhFU1VqRlRNMUFrU0ppYzJKaVltSnpZbUpBWEVDR0NvN0pRc1RHUTRPR1JNTEF3WUlCUkloR1E4SUVSRVJDUklqSWlFUUN4TVpEZzRaRXdzREJnZ0ZFaUVaRHhZaUdRNEJDUThMQmdZTER3a0RRWEtmWUdDZmNrRURDUThMQmdZTER3aytHRXBnZEVKQ2RHQktHQUx2L2dDSmlRSGlpWW5OaVluTmlZbk5pWWtDSHdRSENBUXdEaGtUQ3dzVEdRNkpDQTROQ3dVTUZoOFRRd0VCQVNVT0dSTUxDeE1aRG9rSURnMExCUXdXSHhNdUF3VUVBd0lKRFJBSi9SWUpFQTBKQWd3T0RBd09EQUlKRFJBSkF1b0pFQTBKQXYwTEJBb0pCZ1lKQ2dRQjUvNFoxb21KQUFBQUFRQUQvOEFEL1FQQUFITUFBQUV1QXljdUF5Y3VBeWN1QXlNaURnSUhEZ01IRGdNSERnTUhEZ0VlQVJjZUF4Y09Bd2NVSGdJWEhnSTJOejRETno0RE54NERGeDRERng0RE16SStBamMrQXpVdUF5YytBemMrQWlZbkEvMENCUWNKQlJOQ1Vsc3NEaU1tSnhJRUNBa0pCUVVLQ1FrRUVpY21JdzRzVzFKQ0V3VUpCd1VDQWdJQkF3TU1LenBHS0FzU0Rna0NBd1lKQmdZTkRRMEdCdzRQRHdnVkxqTTNIaDQzTXk0VkNBOFBEZ2NEQmdZR0F3UUhCd2NEQmdrR0F3SUpEaElMS0VZNkt3d0RBd0VDQWdJN0JRa0lCZ0lJREFnRkFpaGRWMGNTQkFZRUFnSUVCZ1FTUjFkZEtBSUZDQXdJQWdZSUNRVUZDd3NMQlJjNFBrTWlMRk5MUWh3SERRd0tCQVFFQVFNREJBZ0hCd1FLRmhvZkV4TWZHaFlLQkFjSENBUUJBZ0VCQVFJREFnUUtEQTBISEVKTFV5d2lRejQ0RndVTEN3c0ZBQUFEQUFFQUJBUC9BM3dBVUFDWUFOOEFBQ1V1QXljdUFqWTNQZ0ltSnk0REl5SU9BZ2NPQVI0QkZ4NEJEZ0VIRGdNSERnTUhCaFFlQVJjZUF6TXlIZ0l6TWo0Q016SStBamMrQWpRbkxnTW5KVE0rQXpjdUFqWTNQZ00zTkM0Q0p5NERJeUlPQWdjT0FSNEJGeDRCRGdFSERnTUhEZ01IQmhRZUFSY2VBek15SGdJWFBnTTNKUzRESnk0REp5NENOamMrQWlZbkxnTWpJZzRDQnc0REZSNERGeDRCRGdFSEhnTVhIZ01YUGdNek1qNENOejRDTkNjQzdoTXBKUjRJQmdzRUJnc2NId3NJREFzaUtDc1VGQ3NvSWdzTUNBc2ZIQXNHQkFzR0NCNG1LUk1XRnd3R0JRRUJBZ0lDQkFVR0F3RWJRR3hUVW14QUd3RURCZ1VFQWdJQ0FRRUZCd3dYRmY1REFRUUlDQWdFSXg4RkR3c09LVEEwR2dJRUJnUUxJaWdyRkJRcktDSUxEQWdMSHh3TEJnUUxCZ2dlSmlrVEZoY01CZ1VCQVFJQ0FnUUZCZ01CRlRGU1BnZ1JFUkFJQXM0RkJ3d1hGUk1wSlI0SUJnc0VCZ3NjSHdzSURBc2lLQ3NVRkNzb0lnc0VCZ1FDR2pRdktBNE1Ed1VmSXdRSUNRa0VDQkFSRVFnK1VURVZBUU1HQlFRQ0FnSUJBYTBPR0JZVENBY1FFeFlOSUR3NU5ob1lJUlVKQ1JVaEdCbzJPVHdnRFJZVEVBY0lFeFlZRGc4Wkd5QVhBd1lHQlFJQ0JBTUNCQVFFQkFRRUFnTUVBZ0lHQmdZREZ5QWJHUTl3QWdVRkJRSXVWVXRBR1I4dEh4SUVDaFFURXdrWUlSVUpDUlVoR0JvMk9Ud2dEUllURUFjSUV4WVlEZzhaR3lBWEF3WUdCUUlDQkFNQ0F3UUVBUVlMQ2dvRkJSY2dHeGtQRGhnV0V3Z0hFQk1XRFNBOE9UWWFHQ0VWQ1FrVklSZ0pFeE1VQ2dRU0h5MGZHVUJMVlM0Q0JRVUZBZ1VLQ2dzR0FRUUVBd0lEQkFJQ0JRWUdBd0FEQUFBQVVBUUFBMUFBR0FBdEFETUFBQUVoSWc0Q0ZSRVVIZ0l6SVRJK0FqVVJOQzRDSXdVeUhnSVZGQTRDSXlJdUFqVTBQZ0l6QXpjWEV3RWhBOEQ4Z0EwWEVRb0tFUmNOQTRBTkZ4RUtDaEVYRGYwZ0ZDTWFEdzhhSXhRVUl4b1BEeG9qRkdDQWxlc0JBUDBBQTFBS0VSY04vWUFORnhFS0NoRVhEUUtBRFJjUkNvQVBHaU1VRkNNYUR3OGFJeFFVSXhvUC9nREFhd0VyL29BQUFBQUFBUUR2QUc4Qzd3TlJBQzBBQUFFMExnSW5MZ0VpQmdjT0F3Y09BUlFXRng0REZ4NEJNalkzUGdNMU5ENENOVFF1QWpVQzVRUUhDUVlHREF3TUJsV1pkVWNEQmdZR0JnTkhkWmxWQmd3TURBWUdDUWNFQXdRREF3UURBeWtHREFvSkF3TURBd013Y21SR0F3Y1NFaElIQTBaa2NqQURBd01EQXdrTERBWUJPRngyUGo1MlhEZ0JBQUlBQVAvaUEvOERuZ0F4QURZQUFBRXVBeU1oUGdFdUFTY3VBeU1pRGdJSERnTUhFVE15SGdJWEhnTXpNajRDUHdFMkxnSW5BVE1SSXhFRDVBb1lHUmNKL3ZVRkJnUVFFUVVNRFE4SUZod1JDZ1FHRXpCWlRTWWdMQ0VhRGhFbk5rczJlSVZERmdvRkFRSUhDd2o4SEt1ckFpb0xEQVlDT0dKUVBSTUdDZ2NFRXg0bUVpQkhSRG9TL2dzR0N3OEpDaFlTRENOY24zeEtEeHdaRmduOXVRSm0vWm9BQWdCUkFCRURyZ051QURFQVl3QUFBUTRCRkJZWEhnRVVCZzhCRGdFaUppY3VBVFEyUHdFdUF6Y0hEZ0VVRmhjZUFUSTJQd0UrQVRRbUp5NEJJZ1lIQVM0QklnWVBBUTRCRkJZWEhnRXlOamMrQVRRbUp5NEJORFkvQVQ0Qk1oWVhIZ0VVQmc4QkhnTUhOejRCTkNZbkFoNEpDUWtKRmhZV0ZwOFdOemszRmhZV0ZoWk1Cd29GQVFLU0tDZ29LQ2xtYW1Zb29DZ29LQ2dKR0JrWUNRR1JLR1pxWmltZktDZ29LQWtYR0JjSkNnb0tDaFlXRmhhZ0ZqYzVOeFlXRmhZV1RBY0tCUUVDa1NrcEtTa0NPUWtZR1JnSkZqYzVOeGFmRmhZV0ZoWTNPVGNXVEJNbktDa1VraWhtYW1ZcEtDZ29LS0FvWm1wbUtRa0pDUWtCTlNrcEtTbWZLR1pxWmlrSkNRa0pDUmNZRndrV056azNGcDhXRmhZV0ZqYzVOeFpORXljb0tCU1JLV1pxWmlnQUJnQVFBRWtENndOYUFCd0FNUUJHQUdNQWdBQ1ZBQUFCSVRJK0FqYytBVFFtSnk0REl5RWlEZ0lkQVJRZUFqTUhJZzRDRlJRZUFqTXlQZ0kxTkM0Q0l4RWlEZ0lWRkI0Q016SStBalUwTGdJakFTRWlEZ0lkQVJRZUFqTWhNajRDTno0Qk5DWW5MZ01qRVNFaURnSWRBUlFlQWpNaE1qNENOejRCTkNZbkxnTWpBU0lPQWhVVUhnSXpNajRDTlRRdUFpTUJaQUpiQ0E4TUNBRUNBZ0lDQVFnTUR3ajlwUWNNQ1FVR0NRd0cveElmRncwTkZ4OFNFaDhYRFEwWEh4SVNIeGNORFJjZkVoSWZGdzBORng4U0ExcjlwUWNNQ1FVR0NRd0dBbHNJRHd3SUFRSUNBZ0lCQ0F3UENQMmxCd3dKQlFZSkRBWUNXd2dQREFnQkFnSUNBZ0VJREE4SS9LWVNIeGNORFJjZkVoSWZGdzBORng4U0FxOEZDUTBJRVJjVkZ4RUlEUWtGQmdvTkIyUUlEUWtGaVEwWEh4SVNIeGNORFJjZkVoSWZGdzMrelEwWEh4SVNIeGNORFJjZkVoSWZGdzBCTXdZS0RRZGtDQTBKQlFVSkRRZ1JGeFVYRVFnTkNRWCt6UVlLRFFka0NBMEpCUVVKRFFnUkZ4VVhFUWdOQ1FVQ1pnMFhIeElTSHhjTkRSY2ZFaElmRncwQUFBQUFBd0FBLytJRUFBT2VBRHNBckFEU0FBQUJKUzRDSWlNSElnNENEd0VsTGdFT0FRY09BeFVSRkI0Q0Z3VWVBakl6TWo0Q1B3RUZIZ0UrQVRjK0F6VVJOQzRDSndFT0F3Y09Bd2NPQVM0Qkp5NERNVEF1QWljdUFqWXhMZ01qSWk0Q0p4RVhIZ01YRmc0Q0p5NENCZ2NPQWhZWEhnRStBVGMrQWhZWEhnTVhIZ016TWo0Qk1oY1dQZ0l6TWg0Q01SNERGeDRERlJRT0FnY2xEZ01qSWk0Q0p5NEROell1QWljdUF5Y3VBVFEyTno0RE54Y1JBK0grdGdNR0J3Y0RBUUlFQkFRQzh2N09CZzBNREFVR0NRWURCQWdMQndGSkF3VUZCUU1EQmdZR0EvSUJNZ1lOREF3RkJna0dBd1VJQ3dmK1hnWUpDQWtHQlFnTEVRME1Ed29HQWdJRkJBSURDQThNSGhVQkNRZ1pJU2dYRGgwZEd3emVCdzhPQ3dNSEJ3OFJBd1liSUNBTEVSY0pCdzBOQ3dVQ0JBUUlDQWdFQkF3TUNnRUJBZ1lMQ2d3TEJ3Y0lDQkFQRGdZR0VSQUxFeG9TRFFZR0RBb0dBd2dPQ3dGYkJ3NE5DZ01JRGdzSEFRTUhCZ01CQWdVU0h4Y0tGeFlVQnhrWUdCWUlHQnNjREtrRERZMENBZ0VCQVFFQ0FZS0VBZ0lCQkFRRUNRc01CdjA1Q0E0TUNnT09BUUlCQVFJQ0FvS0RBZ0lCQkFNRUNRc01CZ0xIQ0E0TUNnUCtCd1VMRGhFTENoQVJGQTROQkFjT0JnWVdGaEFLRFF3Q0JTc3dKZ1lTRVF3REJRY0VBVkJnRGhNUUVRc1lJaElDQ0E0TUFnVUVCZzhRRHdZR0JBRUZCQVFGQVFNRUF3WUlEQWtKRFFnRUF3SUNBZ0VEQXdZSUJnSURCQVVFQkJBVUZ3b0pFUkFSQ1NNSURRa0VDQW9KQWdjZUloOElIU01VQ2dRQ0JRY0xDQjB2S1NVVEJnNE5EQVZKL253QUFBQUNBQkQvd1FQbEE3NEFOQUJ6QUFBVE5ENENOejRETnpVT0F3Y09Bd2NVRGdJVkZCNENGUjRERng0REZ6VXVBeWN1QXpVbExnTW5MZ0VpQmdjT0F4MEJEZ01IRGdNVkZCNENGeDRERnhVVUhnSVhIZ016TWo0Q056NEROejRCTkNZbnRnVUhDUVFaUTFKZk5GQ1Rja1lEREJRUURBTUxEUW9LREFvRERCRVZEQU5HY3BOUU5GOVNReGtFQ1FjRkF5OENOVlZ1T3dRS0N3c0ZCUWNFQWl0aVZqOElDaEFNQmdZTUVBb0lQbFppS3dJRUJ3VUNCQVVGQWdNR0JnVUNPMjVWTlFJRUJBUUVBY1EwWEUwOUZRVU1EQWtDb3dNU0V3OEJBd3NRRkFzQ05tT09XMXVSWmpnQ0RCUVFDd01CRHhNU0JLUUNDUXdNQlJZL1QxNDFFd002VTE4b0F3TUNBZ01JQ1FvR2hnUVBFUThFQlE4VUdBOFBHQk1QQmdRUEVSQUZoZ1VLQ1FnREFRSUJBUUVDQWdJb1gxTTZBd1lORFF3RkFBQUFBZ0FCQUJrRC93T0hBRm9BcGdBQUpTNERKeTRESnlZK0FqYytBaVluTGdNaklnNENCdzRCSGdFWEhnTUhEZ01IRGdNSERnTUhCaFFlQVJjZUF6TXlIZ0l6TWo0Q016SStBamMrQWpRbkxnTW5CUzRESnk0REp5NERKeVkrQWpjK0FpWW5MZ01qSWc0Q0J4NERGeDRCRGdFSEhnTVhIZ01YSGdNWFBnTXpNajRDTno0Q05DY0NjZ1lPRGc4SURod1lFUU1DQXdjS0JSb2ZDUXdSRFNRck1Sb2FNU3NrRFJFTUNSOGFCUW9IQXdJREVSZ2NEZ2dQRGc0R0dDa2dGZ1lCQVFJQ0FnVUdCZ1FCSmxPRFhsNkVVeWNCQkFZR0JRSUNBd0VCQmhjZ0tSZ0JqUVlXSUNrWUJnME9Ed2dPSEJnUkF3SURDQXNHR2g0SkRSRU5KQ3N4R2hnbEh4c09FeUFiR0FzUUZBVWtLQUlGQkFRQ0NSSVJFUWdZS2lRZEN6QkZMQllCQXdZR0JRSUNBZ0VCOWdRSEJnWURCZ3dORHdrSUVoTVNDQ2hMUlQ4Y0ZpSVlEUTBZSWhZY1AwVkxLQWdTRXhJSUNROE5EQVlEQmdZSEJBOGxLekFhQkFjR0JnTURCUVFDQkFVRUJBVUVBZ1FGQXdNR0JnY0VHakFySlE4Z0dqQXJKUThFQndZR0F3WU1EUThKQ0JJVEVnZ29TMFUvSEJZaUdBMEtFeHdTQ1JVYUh4TWJTVnh0UHdFQ0FnSUJBd2NJQ0FVUEl5Z3NHQUVFQkFNQ0JBVURBd1lHQndRQUF3QkRBRFlEd2dOcUFCUUFaUUI2QUFBQklnNENGUlFlQWpNeVBnSTFOQzRDSXlVdUF5Y3VBeWN1QXljdUF5TXVBeU1pRGdJSElnNENCdzREQnc0REJ3NERCdzRCRkJZWEhnTVhIZ016TWo0Q056NEROejRCTkNZbkFTSXVBalUwUGdJek1oNENGUlFPQWlNQ0FDTStMaHNiTGo0akl6NHVHeHN1UGlNQndnSUlDdzBIRkNnb0tCUURCZ1lIQkFJS0RROEhGaXdzTEJZV0t5c3JGUWNQRFFvQ0JBY0dCZ01VS0Nnb0ZBY09Dd2dCRVJBUkVBRUlDdzRITW1WbFpUSXpabVptTXdjTkN3Z0NEZzRPRHY0K09XVkxMQ3hMWlRrNVpVc3NMRXRsT1FKWkd5NCtJeU0rTGhzYkxqNGpJejR1RzE0SERRb0hBUUlFQXdNQ0NSVVZGUW9IRGdzSEFnSUNBUUVDQWdJSEN3NEhDaFVWRlFrQ0F3TUVBZ0VIQ2cwSFZveUZpVlFIRFFvSEFRWUlCZ01EQmdnR0FRY0tEUWRKa1pHUlNQM2pMRXRsT1RsbFN5d3NTMlU1T1dWTExBQUFBUUF0LytRRDNnTnZBRU1BQUFFMU5DNENKeTRCRGdFSERnTUhEZ0VVRmhjZUF4Y2VBek15UGdJM1BnTTlBUjRERnhZVURnRUhEZ0VlQVRNeVBnSTFOQzRDSndIZUFnVUlCZ1lORFEwR1NvRmhPZ0lGQlFVRkFqcGhnVW9EQndjSEJBTUdCZ1lEQmdnRkFpOWVVRG9NRFJjdUlTTWRCeWdpSkdWZFFWbVJ1RjhDakxrSERRc0pBd1FEQVFRRU1uWm9TQU1IRUJBUEJnUklhSFl4QWdNQ0FRRUJBZ0VEQ1FzTkI3Y0JDeFlnRmhndktpTU1EaXNwSFM1V2ZFNWNmMUVvQlFBQUFBRUJFUUJ2QXhBRFVRQXRBQUFCTGdNbkxnRWlCZ2NPQXhVVURnSVZGQjRDRlJRZUFoY2VBVEkyTno0RE56NEJOQ1luQXhBRFIzV1pWUVlNREF3R0Jna0hCQU1FQXdNRUF3UUhDUVlHREF3TUJsV1pkVWNEQndjSEJ3SUNBMFprY2pBREF3TURBd2tLREFZQk9GeDJQajUyWERnQkJnd0xDUU1EQXdNRE1ISmtSZ01IRWhJU0J3QURBQTBBVUFQd0F6QUFGZ0F0QUVRQUFCTWhNajRDTlRRdUFpTWhJZzRDRlJRZUFqTUZJU0lPQWhVVUhnSXpJVEkrQWpVMExnSWpFU0VpRGdJVkZCNENNeUV5UGdJMU5DNENJMWNEVUE4YUZBc0xGQm9QL0xBUEdoUUxDeFFhRHdOUS9MQVBHaFFMQ3hRYUR3TlFEeG9VQ3dzVUdnLzhyZzhhRkFzTEZCb1BBMUlQR2hRTEN4UWFEd0taRFJVY0R3OGJGQXdNRkJzUER4d1ZEWW9NRkJzUER4c1VDd3NVR3c4UEd4UU0vdFFNRlJzUER4b1RDd3NUR2c4UEd4VU1BQUFDQUFEL3dBUG5BOEFBS2dBL0FBQVRGQjRDTXpJK0FqY0JIZ016TWo0Q056NEJOQ1luQVQ0RE5UUXVBaU1pRGdJVk16UStBak15SGdJVkZBNENJeUl1QWpVQVBHaU1VQnczTkRBV0FTRUdEaEFRQ0FnUUR3NEdEQXdNRFA3ZURoWVBDRHhvakZCUWpHZzhnQ2hHWFRVMVhVWW9LRVpkTlRWZFJpZ0NRRkNNYUR3SUR4WU8vdDRHQ1FZREF3WUpCZ3dnSVNBTUFTRVdNRFEzSEZDTWFEdzhhSXhRTlYxR0tDaEdYVFUxWFVZb0tFWmROUUFDQUFML3dBUCtBNzRCQXdFWUFBQUJMZ01uTGdNeExnTTFORDRDTnpBK0FqRStBVFFtSnk0REp5NEJJZ1lIRGdNeERnTWpJaTRDTHdFdUF5Y3VBU0lHQnc0RER3RU9BeU1pTGdJdkFTNEJJZ1lIRGdNSERnRVVGaGNlQXpFZUF4VVVEZ0lQQVE0REJ3NEJGQllYSGdNZkFSNERGUlFPQWc4QkRnRVVGaGNlQXhjZUF6TXlQZ0kvQVQ0RE16SWVBaGN3SGdJeEhnTVhNaDRCTWpNNkFUNEJNejREUHdFK0F6TXlIZ0lmQVI0RE16SStBamMrQXpjK0FUUW1KeTRETVM0RE5UUStBamN3UGdJM1BnTTNQZ0UwSmljRklpNENOVFErQWpNeUhnSVZGQTRDSXdQK0FRZ01Ed2tMSGhzVENoQU1Cd0VDQkFJUkZCRUdCUVlHQ0JBUkVnb0hFQkVRQndrWUZnOEVDQWdJQkFvU0R3b0NDd0VJREJBSkRCa1pHQXdKRUF3SUFRc0NDZzhUQ2dVSkNRZ0VRd2NRRVJBSENoSVJFQWdHQmdZR0JoSVFDd01FQXdJSURSSUtVd2tRREFnQkFRRUJBUUVJREE4SlV3b1NEUWdDQXdRRE13WUZCZ1lJRUJFU0NnUUlDQWdFQkFnSUJ3TkRCQWdKQ1FVS0V3OEtBZ01FQXdFSURCQUpCZ3dNREFZR0RBd01CZ2tRREFnQkN3SUtEeElLQkFrSUNBTkZBd2NJQ0FRRUNBZ0lCQW9TRVJBSUJnWUZCZ2NTRVF3Q0JBSUJCd3dRQ2hNYkhnc0pEd3dJQVFFQkFRSCtBaVEvTHhzYkx6OGtKRDh2R3hzdlB5UUI4UWtRREFnQkFRUURBZ0lLRHhJS0JBZ0lCd01XR2hZSEVCRVFCd29TRVJBSUJnWUZCZ2NTRVF3Q0JBTUNCdzBSQ2xVSkR3d0lBUUVCQVFFQkNBd1BDVlVLRVEwSEFnTUVBalFHQlFZR0NCQVJFZ29IRUJFUUJ3Z1hGUThFQ0FnSkJBc1REd29DQ3dFSURCQUpEQmtaR0F3SkVBd0lBUXNCQ2c4VEN3VUpDUWdFUXdjUUVSQUhDaElSRUFnREJBTUNBUU1FQXpRQ0JBTUNCdzBSQ2hzZ0dna1BEQWdCQVFFQkFRRUlEQThKVlFvUkRRY0JBZ1FDTlFNRUF3RUJBd1FEQ0JBUkVnb0hFQkVRQndrWUZnOERCd2dJQkFvU0R3b0NBZ01FQVFFSURCQUpEQmtaR0F6Zkd5OC9KQ1EvTHhzYkx6OGtKRDh2R3dBQ0FBRC85QVFBQTJ3QVBnQnVBQUFCTGdNbkxnSUdCdzRESFFFaURnSUhCaDRDRnhZeVBnRTNQZ016RlJRZUFoY2VBVDRCTno0RE56NEROVFF1QWljQklSRWhOU0l1QVNJaklnNENCdzRERlJFVUhnSVhIZ016TWo0Q056NERQUUVPQXdjVkEvY0NNbE5zUEFVS0N3c0ZCUWdHQTFlUGFENEdCQUVLRXc0UUlCMFlDQm91T0VrMEF3WUlCUVVMQ3dvRVBHeFRNZ0lDQXdJQkFRSURBdjczL1pvQnZBOGpKQ01QS1ZOVFV5a1lLUjRSRVI0cEdDbFRVMU1wS1ZOVFV5a1lLUjRSRGlJa0pCRUNRQU0vV1dNb0F3TUJBZ0lEQ0FrS0JxVTFTVTRaRWg0WUV3WUlDQTBGRGhvVURLa0dDZ2tIQXdJQ0FRTURLR1JaUHdJREJnWUdBd01HQmdZRC9qMENab1lCQVFJRUJnUUNGU0VyR1AyZ0dDc2hGUUlFQmdRQ0FnUUdCQUlWSVNzWWlRNGNHeHNNSUFBQUFBRUFud0RoQTRFQzRRQXRBQUFCTGdNbkxnRWlCZ2NPQXdjT0FSUVdGeDRETXpJZUFqTXlQZ0l6TWo0Q056NEJOQ1luQTRFd2NtUkdBd2NTRWhJSEEwWmtjakFEQXdNREF3a0xEQVlCT0Z4MlBqNTJYRGdCQmd3S0NRTURBd01EQVRWVW1YVkhBd1lHQmdZRFIzV1pWQVlNREF3R0Jna0hCQU1FQXdNRUF3UUhDUVlHREF3TUJnQUNBQUQvMEFRQUE2NEFQZ0JoQUFBVE14NERGeDRETXpJK0FqYytBemN6TWo0Q056NEJMZ0VuTGdNbkxnTWpJZzRDQnc0REJ3NENGaGNlQXpNRkZBNENCeUV1QXpVakZCNENGUjRETXlFeVBnSTNORDRDTlNQeWl3VU9EZzRGQlE4VUdROFBHUlFQQlFRTkR3NEdpd1lLQ1FnREFnSUJBd01vWDFNNkF3TUdCZ1lEQXdZR0JnTURPbE5mS0FNREFRSUNBd2dKQ2dZQ1p3UUdCd1A5ZFFNSEJnU21EQTRNQkJBV0dnNEREZzRiRmhBRURBNE1wZ0kySUVFNEtna0lEUWtGQlFrTkNBZ3BPRUlnQXdZSUJRVUxDd3NGTzJ4VU13SUNBd0lCQVFJREFnSXpWR3c3QlFzTEN3VUZDQVlEaVRaZFRUMFdGanhOWFRkbm1tYzFBZzRYRUFrSkVSY09BalZubW1ZQUFRQWovOUFEM1FPdUFGVUFBQ1V1QXljdUF5Y3VBeWNtUGdJM1BnSW1KeTRESXlJT0FnY09BUjRCRng0REJ3NERCdzREQnc0REJ3WWVBaGN5SGdJek1qNENOejRETXo0REp3UGRDQnduTVJ3SUVoTVVDaFFvSWhrRkF3RUlEd3NoSnd3UUZoRXROVHNnSHpzMUxSRVdFQXdvSWdzUENBRURCUmtpS0JNTEZSTVJDQnd4Snh3SUFnSUdDZ1lDTVd1c2ZENW9Wa1ViR3ljWkRRRUdDZ1lDQWh3bU96QW5FZ1VKQ1FnRUNCRVVHQThLRnhvZUVUWmtYRk1sSFM0Z0VSRWdMaDBsVTF4a05oRWVHaGNLRHhnVUVRZ0VDQWtKQlJJbk1Ec21CdzBMQ0FJTERRc0RCUVlEQXdZRkF3SUlDdzBIQUFBQUFBSUFBUC9CQkFBRHdRQVlBRndBQUFFVURnSUhFU01SSWk0Q05UUStBanNCTWg0Q0ZRRU9BeU1xQVM0Qkp5NERKeVlPQWpFUk1ENENNekllQWhjZUF4Y2VBek02QVQ0Qk56SStBamMrQXpNeUhnSVZFUTREQndFUkRCTVpEWWtPR1JNTEN4TVpEb2tPR1JNTEF0UUxIeVVxRmdnUkVSRUlLVG8wT1NnblhGQTJJRFJDSWdvVkZSUUpLRGswT2lrR0RRME5CZ3NXRlJVS0JBa0pDUVFFQ0FnSUJBY01DUVlCQlFjSkJRTjlEaGdTQ3dIOGlRTjNDeElaRGc0WkV3c0xFeGtPL09zRUNBY0ZBUUlDQ0NveExnc0tBd3dOQWprSUNnZ0JBZ1FDQ3ljcEpBZ0JBZ0lCQWdNQ0FRSUNBUUVDQWdFRkNRd0gvZlVHQ2djRkFRQUFBQUFFQUF6Lyt3UUFBM0FBRmdBdEFFUUFkQUFBRXlFeVBnSTFOQzRDSXlFaURnSVZGQjRDTXdVaElnNENGUlFlQWpNaE1qNENOVFF1QWlNUkl5SU9BaFVVSGdJN0FUSStBalUwTGdJakpTTTFOQzRDS3dFaURnSWRBU01pRGdJSEhBRWVBUjhCSGdJeU16b0JQZ0UvQVQ0Q05EVXVBeVB5QXJnU0lCZ09EaGdnRXYxSUVpQVlEZzRZSUJJQ3VQNjVFaUFZRGc0WUlCSUJSeElnR0E0T0dDQVMrUklnR0E0T0dDQVMrUklnR0E0T0dDQVMvbUNUQWdNRUFyVUNCQU1Da3dJREF3SUJBUUVCK1FFQ0FnSUJBUUlDQWdINUFRRUJBUUlEQXdJQ3ZBOGFJUklTSUJnT0RoZ2dFaEloR2crbERoZ2dFaElnRncwTkZ5QVNFaUFZRHY2YUR4a2hFaElmRncwTkZ4OFNFaUVaRDFYL0FnUURBZ0lEQkFML0FRSURBZ0lEQXdNQjlBRUJBUUVCQWZRQkF3TURBZ0lEQWdFQUFBQURBQUQvd0FRQUE4QUFGQUFwQUlFQUFBRWlEZ0lWRkI0Q016SStBalUwTGdJakVTSXVBalUwUGdJek1oNENGUlFPQWlNVERnTUhEZ01IRkE0Q0t3RWlMZ0kxUGdNM1BnTTFOQzRDSnk0REl5SU9BZ2NPQXlzQklpNENOVHdETlRBK0FqRStBek15SGdJWEhnTVZGQTRDQndJQWFydUxVRkNMdTJwcXU0dFFVWXU2YWhBY0ZRME5GUndRRUJ3VkRRMFZIQkRaQlJFWUhoSUlFQTRMQWdVSkRBZEZCdzBLQmdFbU5EZ1RCQVVEQVFNR0NRWUdEaEVUQ2hFZUdCQURBUVlKQ3daSEJ3d0pCUUVCQVFrbE4wa3VHUzBvSXc4UEZ4QUlBd1lKQmdQQVVJdTZhbXE3aTFCUWk3dHFhcnFMVVB4L0RSVWNFQkFjRlEwTkZSd1FFQndWRFFISkNoWVpIQkFIRUJJVUN3Y05DZ1lGQ1F3SEtEc3hLeGdGQ2dzTUJnZ05EQXNHQmdrR0F3d1VHQXdHQ1FjREJRZ01Cd0VDQWdJQkFnSUNIRGt1SFFjT0ZRNE9JQ01sRXdzVkZCTUpBQUFDQUFEL3dBUUFBOEFBRkFBMUFBQUJJZzRDRlJRZUFqTXlQZ0kxTkM0Q0l3RVVEZ0lqSVNJdUFpY3VBVFEyTno0RE15RXlIZ0lWSGdFVUJnY0NBR3E3aTFCUWk3dHFhcnVMVUZHTHVtb0JXUVlLRFFmOWx3Y05DZ1lCQVFFQkFRRUdDZzBIQW1rSERRb0dBZ0lDQWdQQVVJdTZhbXE3aTFCUWk3dHFhcnFMVVAyOUNBMEpCUVVKRFFnUklpSWlFUWdOQ1FVRkNRMElFU0lpSWhFQUFBQUFBd0FKLytJRUFBT2VBQ0VBTmdCYkFBQWxBUzRESXlJT0FnY0JEZ0VVRmhjZUF6TWhNajRDTlRRdUFpY0ZJaTRDTlRRK0FqTXlIZ0lWRkE0Q0l4TU9BeXNCSWk0Q0p5NERKelErQWpjK0FUSVdGeDRERlE0REJ3UHova2tFRFJBU0NRb1NEdzBFL2tRRUJBVUZCUTBQRVFrRGR3NFpFd3NDQXdVRC9nMFFIQlVNREJVY0VCQWNGUXdNRlJ3UUxBRUlEQTRJQXdjT0N3Z0JCZ29JQndNRkNRd0hEUllWRmcwSURBZ0VBd2NJQ2daT0F5MElEUWtGQlFrTkNQek1DQkVSRVFnSURBa0ZDeElaRGdZTENna0VEd3dWSEJBUUhCVU1EQlVjRUJBY0ZRd0JHd2dQQ3djSEN3OElJa1ZFUVI0SERnd0pBZ0lDQWdJQ0NRd09CeDVCUkVVaUFBQURBQUgvd0FRQUE4QUFVUUJtQUpzQUFBRStBemMrQWlZbkxnTW5MZ01qSWc0Q0J3NEJIZ0VYSGdNSERnTUhEZ01IRGdNSEJoUWVBUmNlQXpNeUhnSTdBUzRETlRRK0FqYytBemNYSWc0Q0ZSUWVBak15UGdJMU5DNENJeE1VRGdJckFSVVVEZ0lyQVNJdUFqMEJJeUl1QWowQk5ENENPd0UxTkQ0Q093RXlIZ0lkQVRNeUhnSWRBUUpGREJnV0ZBZ05Fd2dEQ0FJRkJnY0VFQzQzUGlFaFBqY3VFUlVQRENjaEN3OEpBZ01FRnlBbUVnb1RFaEVJSGk4aUZ3Y0JBUU1DQWdVR0J3UUNLMk9pZVNVT0ZnOElDQkVhRWdnVEZCVUt1elZkUlNnb1JWMDFOVjFHS0NoR1hUV2FBd1VHQkZVREJRWUVSQVFHQlFOVkJBWUZBd01GQmdSVkF3VUdCRVFFQmdVRFZRUUdCUU1CMXdzVkZoa1BHRGM1T1JzSERnNE9CaHdzSHhBUUh5d2NKRkZaWVRRUUhSa1dDUTBXRXhBSUJBZ0lDUVVUTERRN0lnTUhCd2NEQXdVRUF3WUhCaFFzTHpJYUhEWXpMeFVLRlJRVENCY29SVjAxTlYxRktDaEZYVFUxWFVVby90NEVCZ1VEVlFRR0JRTURCUVlFVlFNRkJnUkVCQVlGQTFVRUJnVURBd1VHQkZVREJRWUVSQUFCQUZrQUdRT2xBMlVBUkFBQUFTNERJeUVSTkM0Q0p5NEJJZ1lIRGdNVkVTRWlEZ0lIRGdFVUZoY2VBek1oRVJRZUFoY2VBVEkyTno0RE5SRWhNajRDTno0Qk5DWW5BNlVCQ0F3UUNmNytCZ3NQQ0JRb0tDZ1VDQThMQnY3L0NSQU1DQUVDQWdJQ0FRZ01FQWtCQVFZTER3Z1VLQ2dvRkFnUEN3WUJBZ2tRREFnQkFnSUNBZ0lOQ1E4TEJnRUJDUkFNQ0FFQ0FnSUNBUWdNRUFuKy93WUxEd2tVSnljbkZBa1BDd2IrL2drUURBZ0JBZ0lDQWdFSURCQUpBUUlHQ3c4SkZDY25KeFFBQUFFQUFnQTFCQUFEVHdCV0FBQVRBVDRETXpJZUFoY2VBeGNlQXhVVURnSUhEZ01QQVNFeUhnSVhIZ01WRkE0Q0J3NERJeUVYSGdNWEhnTVhIZ01WRkE0Q0J3NERJeUl1QWljQkFnRjlDQkVTRkFzTEZCSVJDQVFIQmdVQ0FnTUNBUVFJQ3dnRUNRb0tCVndDQ2dzVUVoRUlDQXNJQkFRSUN3Z0lFUklVQy8zMlhBVUtDZ2tFQkFjR0JRSUNBd0lCQkFnTENBZ1JFaFFMQ3hRU0VRaitnd0hEQVhJSENnY0RBd2NLQndRSUNRa0ZCUWtKQ1FVTEV4RVFCd1VLQ2dvRldBUUhDd2NIRUJJVEN3b1RFaEFIQndzSEJGZ0ZDZ29LQlFRSUNBa0ZCUWtKQ1FRTEV4SVFCd2dMQ0FRRUNBc0lBWEFBQUFBQ0FJbi8wZ040QTdBQUxnQThBQUFCTkM0Q0t3RTFOQzRDSXlJT0FoMEJJeUlPQWhVUkZCNENGeDRETXpJK0FqYytBelVSSlRVMFBnSXpNaDRDSFFFakEzZ0xFeGtPSVNkSVpUMDlaVWduSkE0WUVnb0lEaFFNS0ZCUlVTZ29VRkJQS0F3VkR3bitJZ1lWS1NJaUtSVUd6UUdyRGhzVURLcytaVWduSjBobFBxc05GaHdPL3BJTUZoSU1BZ2tPQ1FRRUNRNEpBZ3dTRmd3QmNVcXJFQ1FlRkJRZUpCQ3JBQUFCQUFZQUt3UDVBMDhBSkFBQUFUNEJOQ1l2QVM0QklnWUhBU2N1QVNJR0R3RU9BUlFXRndFZUF6TXlQZ0kzQVFQNUF3TURBNVVEQ0FnSUEvNDd4Z01JQ0FnRGxRTURBd01CYWdJRUJBUUNBZ1FFQkFJQ2FnS2JBd2dJQ0FPVkF3TURBLzQ1eHdNREF3T1ZBd2dJQ0FQK2xnRUNBZ0VCQWdJQkFtb0FBUUJmQUNJRG9BT3hBQzBBQUFFMUlnNENGUlFlQWpNeVBnSTFOQzRDSnpjZUF4VVVEZ0lqSWk0Q05UUStBak0xRndjQ0FFRnlWVEV4VlhKQlFYSlZNUXdXSUJSTUd5b2VFRUp4bUZaV21IRkJRWEdZVnB5Y0FxMU9NVlZ5UVVGeVZURXhWWEpCSHpzM01SVklIRUZKVHlwV21IRkJRWEdZVmxhWWNVRk9nb0lBQUFBQUFRQWsvOFlEM2dQQUFEd0FBQ1V1QXpVMExnSWpJZzRDRlJRT0FnY09BeGNlQXhjZUF4Y2VBek15UGdJM1BnTTNQZ00zTmk0Q0p3UEdBaTgyTFRoWWJEUTBiRmc0TFRZdkFnY0tCd01CQVFjTERnZ0NLVXRxUWdjY0ppOGFHaThtSEFkQ2Frc3FBZ2dOQ2djQkFRSUdDZ2ZxQWkxWWhGbDBrVkFjSEZDUmRGaUVXUzBDQmc0UUVRa0pFUTRMQkFFUUZSWUhHQ2dkRVJFZEtCZ0hGaFVRQVFRTERoQUpDUklRRGdZQUFBTUFBUC9BQkFBRHdBQVVBQ2tBVVFBQUFTSU9BaFVVSGdJek1qNENOVFF1QWlNVk1oNENGUlFPQWlNaUxnSTFORDRDTXhNaklpNENOVFErQWpjMUxnTTFORDRDT3dFeUhnSVZCeDRERlJRT0FpTUNBR3E3aTFCUWk3dHFhcnVMVUZDTHUyb1JIUllORFJZZEVSRWRGZzBORmgwUk8zZ0xFdzRJQlFrTUJ3Y01DUVVJRGhNTFdBc1REZ2dCQnd3SUJRZ09Fd3NEd0ZDTHUycHF1NHRRVUl1N2FtcTdpMUMzRFJZZEVSRWRGZzBORmgwUkVSMFdEZjJRQ0E0VEN3Z1BEUW9EdUFNS0RROElDeE1PQ0FnT0V3dnBBd29NRHdnTEV3NElBQUFCQUJYLzBRUHpBNjhBcHdBQUFSUU9BaXNCRng0QkZBWUhEZ01qSWk0Q0x3RWpGUmNlQVJRR0J3NERJeUl1QWk4QkZSUU9BaU1pTGdJOUFRY09BU0ltSnk0Qk5EWS9BVFVqQnc0REl5SXVBaWN1QVRRMlB3RWpJaTRDTlRRK0Fqc0JKeTRCTkRZM1BnRXlGaDhCTXpVbkxnRTBOamMrQVRJV0h3RTFORDRDTXpJZUFoMEJOejRCTWhZWEhnRVVCZzhCRlRNM1BnRXlGaGNlQVJRR0R3RXpNaDRDRlFQekNBNFRDcEJ4Q0FnSUNBUUpDZ29GQlFzS0NRUzdZTDhJQ0FnSUJBa0tDd1VGQ2dvSkJISUlEaE1LQ3hNT0NISUlGQlVVQ0FnSUNBaS9ZTHdFQ1FvS0JRVUtDZ2tFQ0FnSUNIQ1BDeE1PQ0FnT0V3dVBjQWdJQ0FnSUZCVVVDTHBodndnSUNBZ0lGQlVVQ0hJSURoTUxDaE1PQ0hJSUZCVVVDQWdJQ0FpL1lMc0lGQlVVQ0FnSUNBaHdqd29URGdnQndBc1REZ2h5Q0JRVkZBZ0VCZ1FDQWdRR0JMOWh1d2dVRlJRSUJBWUVBZ0lFQmdSd2p3c1REZ2dJRGhNTGozQUlDQWdJQ0JRVkZBaThZTDhFQmdRQ0FnUUdCQWdVRlJRSWNnZ09Fd3NLRXc0SWNnZ1VGUlFJQ0FnSUNMOWd1d2dVRlJRSUNBZ0lDSEdRQ2hNT0NBZ09Fd3FQY0FnSUNBZ0lGQlVVQ0x0Z3Z3Z0lDQWdJRkJVVUNISUlEaE1LQUFnQUFBQVhCQUFEYVFBNkFEOEFSQUJKQUU0QVV3QllBRjBBQUFFSEp3Y25CeWNISndjbkJ5Y0hKd2NuQnljSEVSUU9BaU1pTGdJMVBBRVFOREVpRGdJVkVSUWVBak1oTWo0Q05SRXdMZ0luQVNFMUlSVTFJVFVoRlRVaE5TRVZCU0UxSVJVMUlUVWhGVGNoTlNFVk5TRTFJUlVEMENzdk1USW5MU2twS3l3eUx5d3FKQ3duTFNZR0NRc0ZDQThNQndvWkZnOElEUklLQTV3S0VnMElEUkVRQXY1Sy90a0JKLzdaQVNmKzJRRW5BWWIrd3dFOS9zTUJQUUgrd2dFKy9WSUNyZ05tS0NvcUtpb3FLaXdzS2lvcEtTY25LaW9xS3YxREN4QUtCQWdNRGdjSDNRRUQxZ1VLRHdyOU13b1NEUWdJRFJJS0F2Y0xEZzBDL1NoSVNIdEpTWGxMUy9SSVNIdEpTWHRKU1pLVGt3QUFBQUVBQWdGYUEvMENKZ0FnQUFBQk5DNENJeUVpRGdJSERnRVVGaGNlQXpNaE1qNENOVDRCTkNZbkEvMEdDZzBIL0U4SERRb0dBUUVCQVFFQkJnb05Cd094QncwS0JnSUNBZ0lDQXdnTkNRVUZDUTBJRVNJaUloRUlEUWtGQlFrTkNCRWlJaUlSQUFBQUFnREgvOEFET1FQQUFCUUFiQUFBSlNJT0FoVVVIZ0l6TWo0Q05UUXVBaU1UTGdNaklnNENCeFFPQWpFY0FRWVVGUlFlQWpzQk1qNENOejRETXpJZUFoY2VBeFVVRGdJSERnTUhGQjRDT3dFeVBnSTFQZ00zUGdNM1BnTTFOQzRDSndIbkZpZ2VFaEllS0JZV0tCNFNFaDRvRnZvVk1UZy9JMEJuVFRNTUFRRUJBUWNORVFwa0NBOE1DUUlFRnlFcUdBOGFGeFFJQ0F3SUJBSUVCd1lhVGtvMkFnZ05FZ3BoQ2hJTkJ3TVBGQmNMR1NvaEdBY0lEUWtGREJZaEZac1NIaWdXRmlnZUVoSWVLQllXS0I0U0F0Z1VIUk1LS1VGUUp3RURBd0lDQXdNREFnb1JEQVlGQ1EwSUVTSWNFUVVKRFFnSUVCRVNDd2dRRHc4SElUMUVVemdLRVEwSENBNFNDZzhjR1JZS0ZpZ2pIdzBOR3h3ZER4bzBNUzRVQUFBQUF3QnRBVjBEa3dJbEFCUUFLUUErQUFBVEZCNENNekkrQWpVMExnSWpJZzRDRlNFVUhnSXpNajRDTlRRdUFpTWlEZ0lWSlRJZUFoVVVEZ0lqSWk0Q05UUStBak50RUJzbEZSVWxHeEFRR3lVVkZTVWJFQUV2RUJzbEZSVWxHeEFRR3lVVkZTVWJFQUdURlNVYkVCQWJKUlVWSlJzUUVCc2xGUUhCRlNVYkVCQWJKUlVWSlJzUUVCc2xGUlVsR3hBUUd5VVZGU1ViRUJBYkpSVmtFQnNsRlJVbEd4QVFHeVVWRlNVYkVBQUFBQUFCQUJ2LytRUGpBNGtBaWdBQUFRNERJekFxQWlNaUxnSW5MZ01uSmo0Q1B3RXVBeWN1QXdjT0F3Y09Bd2NHSGdJWEhnTVhGajRDTno0QkhnRVhIZ0VPQVE4QkRnTUhCaTRDSnk0REp5NENORGMrQXpjK0F6YytBemMrQWpJek1oNENGeDRERnpjK0FqSVhIZ01WRmc0Q0J3UE5BUVlKQ3dZREJRZ0ZHbHR4Zno0RkNRY0ZBUUVCQkFjRWhnWU1EUTBIRFJ3ZEhROFBIUndiRFE0WEVnNEVDUU1YS3g0UEl5WW9GUlVxS1NrVURCa1hFd1lGQWdVTUNRRVlPRHcvSHlCQVB6MGRIamN4S1JBUUZnd0dBd2dMRGdnSkZCVVhEQmcrUlVvbENSRVJFUWtkT1RjMUdCRWdIaHdNWlFRSkNnb0ZCUWtIQkFvRURROEJBWWtHQ2dnRUFnb1VFZ0VGQ0FrRkJRb0pDQU5aQmd3TENnUUlEQWNDQWdFSURSSUxEQmtiSFJBZVIwWkFGd3dURGdvQ0FnRUdEUW9HQVFnUkRBb1dGUk1IQVJJZkZ3NEJBUWdSR2hFUktqRTNIaDVCUlVna0VpTWlJUkFRSGh3YURCa3FJQllGQVFJQkNBOFdEd29YR1J3UGRnUUdBd0lDQmdnSkJVNmVnRk1FQUFFQUFQL0JCQUFEd1FCQ0FBQUZJaTRDSnlVT0F5TWlMZ0kxTkQ0Q016SWVBaGNsTlRRK0FqTXlIZ0lWRkE0Q0l5SXVBaWNGRlFVK0F6TXlIZ0lWRkE0Q0l3TkVJejR4SVFiK25Bc1pHeDBQSjBRekhoNHpSQ2NQSFJzWkN3RmhIak5FSnlkRU14NGVNMFFuRHgwYkdRditud0ZIRFI0aUpSUW5SRE1lSGpORUp6OFhLVGtodXdnTkNRVWVNMFFuSjBRekhnVUpEUWk2QWlkRU14NGVNMFFuSjBRekhnVUpEUWk2QkswTkZRNElIak5FSnlkRU14NEFBQUFBQWdBQS84QUVBQVBBQUJRQU9RQUFBU0lPQWhVVUhnSXpNajRDTlRRdUFpTUpBUTRESXlJdUFpOEJMZ0UwTmo4QlBnRXlGaDhCQVQ0Qk1oWWZBUjRCRkFZSEFnQnF1NHRRVUl1N2FtcTdpMUJRaTd0cUFUNytld0VDQWdNQkFRTUNBZ0hrQWdJQ0FsNENCUVVGQW53QkhnSUZCUVVDWGdJQ0FnSUR3RkNMdTJwcXU0dFFVSXU3YW1xN2kxRCtpdjU3QVFFQkFRRUJBUUhrQWdVRkJRSmVBZ0lDQW4wQkhnSUNBZ0plQWdVRkJRSUFBQUFBQkFBaS8vTUQzZ09OQUUwQW5nRFpBU29BQUFFdUF5Y3VBeU1pRGdJSERnTUhEZ01WRkI0Q0Z4NERGeDRERnhVVUhnSVhNaDRCTWpNeVBnSS9BVEkrQWpjK0F6YytBelUwTGdJbkFTSXVBaWN1QWpRMU5ENENNem9CSGdFWEhnTXpNajRDTlRRdUFqVTBQZ0l6TWg0Q0Z4NENGQlVVRGdJaktnRXVBU2N1QXlNaURnSVZGQjRDRlJRT0FpTWxGQTRDSXlJdUFqMEJCdzRESXlJdUFpOEJGUlFPQWlNaUxnSTlBVFErQWpNMkhnSWZBVGMrQXpNMkhnSWRBUmNpTGdJbkxnSTBOVFErQWpNNkFSNEJGeDRETXpJK0FqVTBMZ0kxTkQ0Q016SWVBaGNlQWhRVkZBNENJeW9CTGdFbkxnTWpJZzRDRlJRZUFoVVVEZ0lqQTlBRUlqRTdIU1JJU0Vna0pFaElTQ1FkT3pJakJRTUZBd0lDQXdVREJTTXlPeDBLRlJVVkNnTUZDQVVDQXdNRUFnTUdCZ1lDekIwNk9qb2RIVHN4SWdRRUJRTUNBZ01GQlAxS0RCa1dFZ1FCQVFFRUJnZ0VBZ01EQXdFRkRBMFBDQWtPQ1FVbUxpWUxGUjRUQ1JZVkVRUUJBUUVFQmdnRUFRTURBd0VHREF3TUJnY0xDQVFtTGlZS0ZTQVdBVndFQmdnRkJRZ0dCRG9CQWdNRUFnSUVBd0lCT2dRR0NBVUZDQVlFQkFjSkJRZ09EQWtETEN3Q0JnZ0tCUWdQREFkMkRCa1dFZ1FCQVFFRUJnZ0VBZ01EQXdFRkRBMFBDQWtPQ1FVbUxpWUxGUjRUQ1JZVkVRUUJBUUVFQmdnRUFRTURBd0VHREF3TUJnY0xDQVFtTGlZS0ZTQVdBdDBkTnl3ZEF3UUdCQUlDQkFZRUF4MHNOeDBYTGk4dkdCY3VMaTBXSFRjc0hRTUJBZ0VCQWE4RkNnZ0hBZ0VCQVFJRUFzVUNBd1FEQXh3ck5oMFdMaTR1Rnhjdkx5NFgvdDhFQndvSEFRTURBd0VGQ0FZREFRRUJCQVlFQWdRSENRVU9DZ3dhSGcwWUVnb0RCZ2tHQVFNREF3RUZDQVVEQVFFQkF3VURBUU1HQ0FVTkNRMGFIZzhaRWdvWkJRZ0dCQVFHQ0FXQmp3SURBZ0VCQWdNQ2o0RUZDQVlFQkFZSUJhY0ZDUWNFQVFFRkNRZHNiQVVJQlFNQkFnWUxDS2NaQkFjS0J3RURBd01CQlFnR0F3RUJBUVFHQkFJRUJ3a0ZEZ29NR2g0TkdCSUtBd1lKQmdFREF3TUJCUWdGQXdFQkFRTUZBd0VEQmdnRkRRa05HaDRQR1JJS0FBQUFBQU1Bd1ArL0EwQUR2d0FZQUIwQU1nQUFBUkVVRGdJaklTSXVBalVSTkQ0Q015RXlIZ0lWQnlFUklSRUROQzRDSXlJT0FoVVVIZ0l6TWo0Q05RTkFDaEVYRGY0QURSY1JDZ29SRncwQ0FBMFhFUXByL2xVQnE1VUtFUmNORFJjUkNnb1JGdzBORnhFS0EzLzhnQTBYRVFvS0VSY05BNEFORnhFS0NoRVhEV3Y5cXdKVi9Tc05GeEVLQ2hFWERRMFhFUW9LRVJjTkFBQUFBUUFBQUFFQUFDQlRxa1pmRHp6MUFBc0VBQUFBQUFET2xHSmRBQUFBQU02VVlsMEFBUCsvQkFBRHdRQUFBQWdBQWdBQUFBQUFBQUFCQUFBRHdQL0FBQUFFQUFBQUFBQUVBQUFCQUFBQUFBQUFBQUFBQUFBQUFBQUFPZ0FBQUFBQ0FBQUFCQUFBVVFRQUFSQUVBQUJlQkFBQUlnUUFBSWtFQUFDUkJBQUF6UVFBQUpFRUFBQ1BCQUFBQUFRQUFBY0VBQUF5QkFBQUlnUUFBQU1FQUFBQkJBQUFBQVFBQU84RUFBQUFCQUFBVVFRQUFCQUVBQUFBQkFBQUVBUUFBQUVFQUFCREJBQUFMUVFBQVJFRUFBQU5CQUFBQUFRQUFBSUVBQUFBQkFBQW53UUFBQUFFQUFBakJBQUFBQVFBQUF3RUFBQUFCQUFBQUFRQUFBa0VBQUFCQkFBQVdRUUFBQUlFQUFDSkJBQUFCZ1FBQUY4RUFBQWtCQUFBQUFRQUFCVUVBQUFBQkFBQUFnUUFBTWNFQUFCdEJBQUFHd1FBQUFBRUFBQUFCQUFBSWdRQUFNQUFBQUFBQUFvQWpBRElBVG9CcGdIb0FqUUNnQUxxQXk0RHRnUktCTDRGZEFZVUIwWUhsZ2ZhQ0N3SXdnbU9DcklMVUF3MEROd05QZzJDRGVJT1BBK3FFRVFRaUJFT0VZZ1NDQktrRTB3VG5CUWVGT29WVGhYSUZod1dXaGFjRnZJWFlCaENHTXdaQUJtUUdlZ2FwaHNFRzE0YzRCMHNBQUFBQVFBQUFEb0JLd0FJQUFBQUFBQUNBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQTRBcmdBQkFBQUFBQUFCQUE0QUFBQUJBQUFBQUFBQ0FBNEFSd0FCQUFBQUFBQURBQTRBSkFBQkFBQUFBQUFFQUE0QVZRQUJBQUFBQUFBRkFCWUFEZ0FCQUFBQUFBQUdBQWNBTWdBQkFBQUFBQUFLQUNnQVl3QURBQUVFQ1FBQkFBNEFBQUFEQUFFRUNRQUNBQTRBUndBREFBRUVDUUFEQUE0QUpBQURBQUVFQ1FBRUFBNEFWUUFEQUFFRUNRQUZBQllBRGdBREFBRUVDUUFHQUE0QU9RQURBQUVFQ1FBS0FDZ0FZd0JwQUdNQWJ3QnRBRzhBYndCdUFGWUFaUUJ5QUhNQWFRQnZBRzRBSUFBd0FDNEFNQUJwQUdNQWJ3QnRBRzhBYndCdWFXTnZiVzl2YmdCcEFHTUFid0J0QUc4QWJ3QnVBRklBWlFCbkFIVUFiQUJoQUhJQWFRQmpBRzhBYlFCdkFHOEFiZ0JIQUdVQWJnQmxBSElBWVFCMEFHVUFaQUFnQUdJQWVRQWdBRWtBWXdCdkFFMEFid0J2QUc0QUFBQUFBd0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUE9PSkgZm9ybWF0KCd0cnVldHlwZScpLFxuXHRcdCB1cmwoZGF0YTphcHBsaWNhdGlvbi9mb250LXdvZmY7Y2hhcnNldD11dGYtODtiYXNlNjQsZDA5R1JnQUJBQUFBQUQ5RUFBc0FBQUFBUHZnQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJQVXk4eUFBQUJDQUFBQUdBQUFBQmdEcS96TEdOdFlYQUFBQUZvQUFBQVJBQUFBRVRnZk9hTVoyRnpjQUFBQWF3QUFBQUlBQUFBQ0FBQUFCQm5iSGxtQUFBQnRBQUFPbGdBQURwWVZFd1hHbWhsWVdRQUFEd01BQUFBTmdBQUFEWUFTQWszYUdobFlRQUFQRVFBQUFBa0FBQUFKQWZDQS90b2JYUjRBQUE4YUFBQUFPZ0FBQURvNGdBTXhXeHZZMkVBQUQxUUFBQUFkZ0FBQUhhZEQ1QUliV0Y0Y0FBQVBjZ0FBQUFnQUFBQUlBQkRBUzF1WVcxbEFBQTk2QUFBQVRrQUFBRTVSQmUwMW5CdmMzUUFBRDhrQUFBQUlBQUFBQ0FBQXdBQUFBTUVBQUdRQUFVQUFBS1pBc3dBQUFDUEFwa0N6QUFBQWVzQU13RUpBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQWc1Z0lEd1AvQS84QUR3QUJBQUFBQUFBQUFBQUFBQUFBQUFBQUFJQUFBQUFBQUFnQUFBQU1BQUFBVUFBTUFBUUFBQUJRQUJBQXdBQUFBQ0FBSUFBSUFBQUFnNERUbUF2Ly9BQUFBSU9BQTVnRC8vLy9oSUFJYU53QUJBQUFBQUFBQUFBQUFBUUFCLy84QUR3QUJBQUFBQUFBQUFBQUFBZ0FBTnprQkFBQUFBQUVBVVFBUkE2NERiZ0JUQUFBQkxnRWlCZ2NCRGdFVUZoY2VBVEkyTndFK0FUUW1KeTRCSWdZUEFRNEJGQllYSGdFeU5qOEJQZ0V5RmhjZUFSUUdCd0VPQVNJbUp5NEJORFkzQVQ0Qk1oWVhIZ0VVQmc4QkhnTVhOejRCTkNZbkE2NG9abXBtS2Y0cktDZ29LQ2xtYW1Zb0FTQVpHUmtaR1Q5Q1B4bTBDZ29LQ2drWEdCY0p0UVlRRUJBR0JnWUdCdjdnRmpjNU54WVdGaFlXQWRVV056azNGaFlXRmhZRUN4RU1Cd0V1S1NrcEtRTnVLU2twS2Y0cktHWnFaaWtvS0Nnb0FTQVpQMEkvR1JrWkdSbTFDUmNZRndrS0Nnb0t0QVlHQmdZR0VCQVFCdjdoRmhZV0ZoWTNPVGNXQWRVV0ZoWVdGamM1TnhZRUR5QWlJeEl1S1dacVppZ0FBUUVRLzhBREVBUEFBQ2dBQUFFaElnNENGUkVVSGdJWEZqSStBVDhCRng0RE16b0RNejRETlJFMExnSWpBdEQrZ0EwWEVRb0NBd1VEQXdjR0JnTGIyd0lFQkFRQ0FRSUNBZ0VEQlFNQ0NoRVhEUVBBQ2hFWERmeFZBd1lGQkFFQkFRTUMyOXNCQWdJQkFRUUZCZ01EcXcwWEVRb0FBQUFBQVFCZS8rSUQzZ09lQUU4QUFDVW5NQzRDSXlJT0FnOEJEZ0ltSnk0REp5NERKeTRCUGdFL0FUNEROVFF1QWk4QkxnTWpEZ01IRGdFZUFSY2VBek15UGdJM1BnTTNOQzRDSndQTDdRUUdCZ0lFQ0FjR0FtVUVDd3NMQlJJaklpRVFFQjBiR0FzREFnRUZCR1VEQlFNQ0FRRUNBWUlDQmdnSkJSWXRLaVVPTWhVd2NWVTVlM3Q0TmhveExTY1FEaGNSQ3dJREJRY0UzbmNDQWdJQ0JBVURYQVFGQVFJREN4Z2JIaEFRSVNJakVnVUxDd3NFWkFNR0J3Z0VBd1VGQkFMdEJBY0ZBd0lKRHhVT01wcXp2bFU1V0R3ZkNCQVlFQTRqS0NzV0JRb0lCd0lBQUFBQUFRQWkvL0lEM2dPTUFFMEFBQUV1QXljdUF5TWlEZ0lIRGdNSERnTVZGQjRDRng0REZ4NERGeFVVSGdJWE1oNEJNak15UGdJL0FUSStBamMrQXpjK0F6VTBMZ0luQTlBRUlqRTdIU1JJU0Vna0pFaElTQ1FkT3pJakJRTUZBd0lDQXdVREJTTXlPeDBLRlJVVkNnTUZDQVVDQXdNRUFnTUdCZ1lDekIwNk9qb2RIVHN4SWdRRUJRTUNBZ01GQkFMY0hUY3NIUU1FQmdRQ0FnUUdCQU1kTERjZEZ5NHZMeGdYTGk0dEZoMDNMQjBEQVFJQkFRR3ZCUW9JQndJQkFRRUNCQUxGQWdNRUF3TWNLellkRmk0dUxoY1hMeTh1RndBQUFnQ0ovOThEZHdQQUFCa0FMZ0FBQVNJT0FoVVVIZ0l4SGdJMk56QStBalUwTGdJakVTSXVBalUwUGdJek1oNENGUlFPQWlNQ0FFNkpaanRqZDJNUUd4b2NFV1I0WkR0bWlVNGxRVEFjSERCQkpTVkJNQndjTUVFbEE4QSthNDlSYnRlcWFROFFBUThRYWFyWGJsR1Bhejc5MXh3d1FTVWxRVEFjSERCQkpTVkJNQndBQVFDUkFEWURNd05xQUM0QUFBa0JQZ00xUEFFdUFTY3VBeU1oSWc0Q0J3RU9BUlFXRndFZUF6TWhNajRDTno0QkxnRW5BUUhjQVU0Q0JBSUJBUUVCQWdjSUNnWCs5d1FIQndZQy9xTUVCQVFFQVYwQ0JnY0hCQUVKQlFvSUJ3SUNBUUlFQlA2eUFkQUJZQUlHQmdZREFnUUVCQUlFQndVREFnTUVBLzZKQlF3TURBWCtpUUlFQXdJREJRZ0ZCUW9KQ1FRQllRQUFBQUFCQU0wQU5nTnVBMm9BTGdBQUNRRXVBeU1oSWc0Q0J3NEJIZ0VYQ1FFT0F4VWNBUjRCRng0RE15RXlQZ0kzQVQ0Qk5DWW5BMjcrcEFJR0J3Y0UvdmNGQ2dnSEFnSUJBZ1FEQVU3K3NnSURBZ0VCQVFFQ0J3Z0tCUUVKQkFjSEJnSUJYQVVGQlFVQjVnRjNBd1FEQWdNRkJ3UUZDZ29KQlA2Zy9wOENCUVlHQXdJRUJBUUNCUWdGQXdJREJBSUJkd1VNREF3RkFBQUFBQUVBa1FCaEEyOERQd0JFQUFBQk56NENKaWN1QXljdUFRNEJEd0VuTGdJR0J3NERCdzRCSGdFZkFRY09BaFlYSGdNWEhnRStBVDhCRng0Q05qYytBemMrQVM0Qkx3RUNuc29IQ0FJRUJRd1lHaHdQQmc4UUVBZkt5d1lRRUJBR0Roc2FHQXdGQkFJSUI4ckxCZ2dDQkFVTUdCb2JEZ1lRRUJBR3k4b0hFQkFQQmc4Y0doZ01CUVFDQ0FmS0FkREtCeEFRRHdZUEhCb1lEQVVFQWdnSHdjRUhDQUlFQlF3WUdod1BCZzhRRUFmS3l3WVFFQkFHRGhzYUdBd0ZCQUlIQnN2TEJnZ0NCQVVNR0JvY0R3WVBFQkFHeXdBQUFRQ1BBTThEY1FMUEFDMEFBQUV1QXlNaUxnSWpJZzRDSXlJT0FnY09BUlFXRng0REZ4NEJNalkzUGdNM1BnRTBKaWNEY1FNSkNnd0dBVGhjZGo0K2RsdzRBUVlNQ3drREF3TURBekJ5WkVZREJ4SVNFZ2NEUm1SeU1BTURBd01DcXdZSkJ3UURCQU1EQkFNRUJ3a0dCZ3dNREFaVW1YVkhBd1lHQmdZRFIzV1pWQVlNREF3R0FBSUFBUC9RQkFBRHJnQStBR0VBQUFFZUF6TXlQZ0kzUGdNM1BnSW1KeTRES3dFdUF5Y3VBeU1pRGdJSERnTUhJeUlPQWdjT0FSNEJGeDRERnlVVURnSUhJUzRETlNNVUhnSVZIZ016SVRJK0FqYzBQZ0kxSXdIbkF3WUdCZ01EQmdZR0F3TTZVMThvQXdNQkFnSURDQWtLQm9zR0RnOE5CQVVQRkJrUER4a1VEd1VGRGc0T0JZc0dDZ2tIQXdJQ0FRTURLRjlUT2dNQmNnUUdCd1A5ZFFNSEJnU21EQTRNQkJBV0dnNEREZzRiRmhBRURBNE1wZ0ZRQWdNQ0FRRUNBd0lDTTFSdE93UUtDd3NGQlFnR0F5QkNPQ2tJQ0EwSkJRVUpEUWdKS2poQklBTUdDQVVGQ3dzS0JEdHRWRE1DWGpaZFRUMFdGanhOWFRkbm1tYzFBZzRYRUFrSkVSY09BalZubW1ZQUFBQUFBZ0FILzhBRC9BTzVBRGtBWWdBQUJTNERKeTRESndFdUFnWUhEZ01IRGdNSERnRWVBUmNCSGdNWEhnTVhIZ0l5TXpJK0FqYytBaVluSnk0REp3RStBemNCSGdNek1qNENOejRDSmljQlBnTTNBUjRERndjRC9BOGRIUjBQQVFJREJBTDl6QVlRRVJFSUZDWWtJaEFRSFJzYURBVUVBZ2dHQWpRQ0JRVUZBeTViVzFvc0FnUUVCQUlGQ0FnSEJBVUdBZ0lEOEJJbEpTVVIvZkVGQ3d3TkJ3SUFCQWtKQ2dVRkNBZ0hCQWdJQVFjSC9nSUhEZzRPQndJUEJnd01EQVpNQWl4Wldsb3VBd1lGQlFJQ053WUhBZ1FFREJvY0hoQVBJQ0lrRXdnUkVROEcvY2tDQkFNREFROGVIaDhRQVFFQkFnUUdCQVVMQ3cwSGJBWU1EQXdHQWhFSUVBOFBCLzMvQkFVREFRSUVCZ1FJRWhJU0NBSCtCZ3dNREFYOTZ4SWpJeU1TVEFBQUFBQUNBRElBSmdQdUExb0FJZ0JQQUFBQklpNENKd0VSRkI0Q0Z4NERNekkrQWpjK0F6VVJBUTRESXdFdUF5TWlEZ0lIRGdNZEFSNERGd0VlQXpNeVBnSTNBVDRETnpVMExnSW5BaEFUSlNRaEQvNnVCQWdLQmpod2NYRTRPSEZ3Y0RjR0N3Z0YvcTRQSVNRbEV3SEFOMjl3Y1RnNGNYQndPQVlLQ0FRQkJRa05DZ0ZzQ0JJVUZRc0xGUlFTQ0FGc0NnMEpCUUVGQ0FzR0FSVUZDaEFMQVFQK0pBWUxDUVlCQ0F3SUJBUUlEQWdCQmdrTEJnSGMvdjBMRUFvRkFpUUlEQWdFQkFnTUNBRUdDUXNHTVFRTURoRUovdTBHQ1FZREF3WUpCZ0VUQ1JFT0RBUXhCZ3NKQmdFQUJ3QWkvOEFEM2dQQUFBUUFDUUFPQUJNQWRnQ0VBSWtBQUFFakZUTTFGeU1WTXpVMUl4VXpOUWNqRlRNMUFTSXVBaWMxTkM0Q0l5SU9BaDBCRkI0Q0Z5SXVBajBCS2dNaktnRU9BUWMxTkM0Q0l5SU9BaDBCRkI0Q0Z5SXVBajBCRGdNakRnTVZFUlFlQWhjeUhnSXpNajRDTXo0RE5SRTBMZ0luQXc0REl5SXVBaWNSSVJFbEl4VXpOUUpFaVluTmlZbUppYzJKaVFGeEFoZ3FPeVVMRXhrT0Roa1RDd01HQ0FVU0lSa1BDQkVSRVFrU0l5SWhFQXNUR1E0T0dSTUxBd1lJQlJJaEdROFdJaGtPQVFrUEN3WUdDdzhKQTBGeW4yQmduM0pCQXdrUEN3WUdDdzhKUGhoS1lIUkNRblJnU2hnQzcvNEFpWWtCNG9tSnpZbUp6WW1KelltSkFoOEVCd2dFTUE0WkV3c0xFeGtPaVFnT0RRc0ZEQllmRTBNQkFRRWxEaGtUQ3dzVEdRNkpDQTROQ3dVTUZoOFRMZ01GQkFNQ0NRMFFDZjBXQ1JBTkNRSU1EZ3dNRGd3Q0NRMFFDUUxxQ1JBTkNRTDlDd1FLQ1FZR0NRb0VBZWYrR2RhSmlRQUFBQUVBQS8vQUEvMER3QUJ6QUFBQkxnTW5MZ01uTGdNbkxnTWpJZzRDQnc0REJ3NERCdzREQnc0QkhnRVhIZ01YRGdNSEZCNENGeDRDTmpjK0F6YytBemNlQXhjZUF4Y2VBek15UGdJM1BnTTFMZ01uUGdNM1BnSW1Kd1A5QWdVSENRVVRRbEpiTEE0akppY1NCQWdKQ1FVRkNna0pCQkluSmlNT0xGdFNRaE1GQ1FjRkFnSUNBUU1ERENzNlJpZ0xFZzRKQWdNR0NRWUdEUTBOQmdjT0R3OElGUzR6Tng0ZU56TXVGUWdQRHc0SEF3WUdCZ01FQndjSEF3WUpCZ01DQ1E0U0N5aEdPaXNNQXdNQkFnSUNPd1VKQ0FZQ0NBd0lCUUlvWFZkSEVnUUdCQUlDQkFZRUVrZFhYU2dDQlFnTUNBSUdDQWtGQlFzTEN3VVhPRDVESWl4VFMwSWNCdzBNQ2dRRUJBRURBd1FJQndjRUNoWWFIeE1USHhvV0NnUUhCd2dFQVFJQkFRRUNBd0lFQ2d3TkJ4eENTMU1zSWtNK09CY0ZDd3NMQlFBQUF3QUJBQVFEL3dOOEFGQUFtQURmQUFBbExnTW5MZ0kyTno0Q0ppY3VBeU1pRGdJSERnRWVBUmNlQVE0QkJ3NERCdzREQndZVUhnRVhIZ016TWg0Q016SStBak15UGdJM1BnSTBKeTRESnlVelBnTTNMZ0kyTno0RE56UXVBaWN1QXlNaURnSUhEZ0VlQVJjZUFRNEJCdzREQnc0REJ3WVVIZ0VYSGdNek1oNENGejRETnlVdUF5Y3VBeWN1QWpZM1BnSW1KeTRESXlJT0FnY09BeFVlQXhjZUFRNEJCeDRERng0REZ6NERNekkrQWpjK0FqUW5BdTRUS1NVZUNBWUxCQVlMSEI4TENBd0xJaWdyRkJRcktDSUxEQWdMSHh3TEJnUUxCZ2dlSmlrVEZoY01CZ1VCQVFJQ0FnUUZCZ01CRzBCc1UxSnNRQnNCQXdZRkJBSUNBZ0VCQlFjTUZ4WCtRd0VFQ0FnSUJDTWZCUThMRGlrd05Cb0NCQVlFQ3lJb0t4UVVLeWdpQ3d3SUN4OGNDd1lFQ3dZSUhpWXBFeFlYREFZRkFRRUNBZ0lFQlFZREFSVXhVajRJRVJFUUNBTE9CUWNNRnhVVEtTVWVDQVlMQkFZTEhCOExDQXdMSWlnckZCUXJLQ0lMQkFZRUFobzBMeWdPREE4Rkh5TUVDQWtKQkFnUUVSRUlQbEV4RlFFREJnVUVBZ0lDQVFHdERoZ1dFd2dIRUJNV0RTQThPVFlhR0NFVkNRa1ZJUmdhTmprOElBMFdFeEFIQ0JNV0dBNFBHUnNnRndNR0JnVUNBZ1FEQWdRRUJBUUVCQUlEQkFJQ0JnWUdBeGNnR3hrUGNBSUZCUVVDTGxWTFFCa2ZMUjhTQkFvVUV4TUpHQ0VWQ1FrVklSZ2FOams4SUEwV0V4QUhDQk1XR0E0UEdSc2dGd01HQmdVQ0FnUURBZ01FQkFFR0N3b0tCUVVYSUJzWkR3NFlGaE1JQnhBVEZnMGdQRGsyR2hnaEZRa0pGU0VZQ1JNVEZBb0VFaDh0SHhsQVMxVXVBZ1VGQlFJRkNnb0xCZ0VFQkFNQ0F3UUNBZ1VHQmdNQUF3QUFBRkFFQUFOUUFCZ0FMUUF6QUFBQklTSU9BaFVSRkI0Q015RXlQZ0kxRVRRdUFpTUZNaDRDRlJRT0FpTWlMZ0kxTkQ0Q013TTNGeE1CSVFQQS9JQU5GeEVLQ2hFWERRT0FEUmNSQ2dvUkZ3MzlJQlFqR2c4UEdpTVVGQ01hRHc4YUl4UmdnSlhyQVFEOUFBTlFDaEVYRGYyQURSY1JDZ29SRncwQ2dBMFhFUXFBRHhvakZCUWpHZzhQR2lNVUZDTWFELzRBd0dzQksvNkFBQUFBQUFFQTd3QnZBdThEVVFBdEFBQUJOQzRDSnk0QklnWUhEZ01IRGdFVUZoY2VBeGNlQVRJMk56NEROVFErQWpVMExnSTFBdVVFQndrR0Jnd01EQVpWbVhWSEF3WUdCZ1lEUjNXWlZRWU1EQXdHQmdrSEJBTUVBd01FQXdNcEJnd0tDUU1EQXdNRE1ISmtSZ01IRWhJU0J3TkdaSEl3QXdNREF3TUpDd3dHQVRoY2RqNCtkbHc0QVFBQ0FBRC80Z1AvQTU0QU1RQTJBQUFCTGdNaklUNEJMZ0VuTGdNaklnNENCdzREQnhFek1oNENGeDRETXpJK0FqOEJOaTRDSndFekVTTVJBK1FLR0JrWENmNzFCUVlFRUJFRkRBMFBDQlljRVFvRUJoTXdXVTBtSUN3aEdnNFJKelpMTm5pRlF4WUtCUUVDQndzSS9CeXJxd0lxQ3d3R0FqaGlVRDBUQmdvSEJCTWVKaElnUjBRNkV2NExCZ3NQQ1FvV0Vnd2pYSjk4U2c4Y0dSWUovYmtDWnYyYUFBSUFVUUFSQTY0RGJnQXhBR01BQUFFT0FSUVdGeDRCRkFZUEFRNEJJaVluTGdFME5qOEJMZ00zQnc0QkZCWVhIZ0V5Tmo4QlBnRTBKaWN1QVNJR0J3RXVBU0lHRHdFT0FSUVdGeDRCTWpZM1BnRTBKaWN1QVRRMlB3RStBVElXRng0QkZBWVBBUjREQnpjK0FUUW1Kd0llQ1FrSkNSWVdGaGFmRmpjNU54WVdGaFlXVEFjS0JRRUNraWdvS0NncFptcG1LS0FvS0Nnb0NSZ1pHQWtCa1NobWFtWXBueWdvS0NnSkZ4Z1hDUW9LQ2dvV0ZoWVdvQlkzT1RjV0ZoWVdGa3dIQ2dVQkFwRXBLU2twQWprSkdCa1lDUlkzT1RjV254WVdGaFlXTnprM0Zrd1RKeWdwRkpJb1ptcG1LU2dvS0NpZ0tHWnFaaWtKQ1FrSkFUVXBLU2twbnlobWFtWXBDUWtKQ1FrWEdCY0pGamM1TnhhZkZoWVdGaFkzT1RjV1RSTW5LQ2dVa1NsbWFtWW9BQVlBRUFCSkErc0RXZ0FjQURFQVJnQmpBSUFBbFFBQUFTRXlQZ0kzUGdFMEppY3VBeU1oSWc0Q0hRRVVIZ0l6QnlJT0FoVVVIZ0l6TWo0Q05UUXVBaU1SSWc0Q0ZSUWVBak15UGdJMU5DNENJd0VoSWc0Q0hRRVVIZ0l6SVRJK0FqYytBVFFtSnk0REl4RWhJZzRDSFFFVUhnSXpJVEkrQWpjK0FUUW1KeTRESXdFaURnSVZGQjRDTXpJK0FqVTBMZ0lqQVdRQ1d3Z1BEQWdCQWdJQ0FnRUlEQThJL2FVSERBa0ZCZ2tNQnY4U0h4Y05EUmNmRWhJZkZ3ME5GeDhTRWg4WERRMFhIeElTSHhjTkRSY2ZFZ05hL2FVSERBa0ZCZ2tNQmdKYkNBOE1DQUVDQWdJQ0FRZ01Ed2o5cFFjTUNRVUdDUXdHQWxzSUR3d0lBUUlDQWdJQkNBd1BDUHltRWg4WERRMFhIeElTSHhjTkRSY2ZFZ0t2QlFrTkNCRVhGUmNSQ0EwSkJRWUtEUWRrQ0EwSkJZa05GeDhTRWg4WERRMFhIeElTSHhjTi9zME5GeDhTRWg4WERRMFhIeElTSHhjTkFUTUdDZzBIWkFnTkNRVUZDUTBJRVJjVkZ4RUlEUWtGL3MwR0NnMEhaQWdOQ1FVRkNRMElFUmNWRnhFSURRa0ZBbVlORng4U0VoOFhEUTBYSHhJU0h4Y05BQUFBQUFNQUFQL2lCQUFEbmdBN0FLd0EwZ0FBQVNVdUFpSWpCeUlPQWc4QkpTNEJEZ0VIRGdNVkVSUWVBaGNGSGdJeU16SStBajhCQlI0QlBnRTNQZ00xRVRRdUFpY0JEZ01IRGdNSERnRXVBU2N1QXpFd0xnSW5MZ0kyTVM0REl5SXVBaWNSRng0REZ4WU9BaWN1QWdZSERnSVdGeDRCUGdFM1BnSVdGeDRERng0RE16SStBVElYRmo0Q016SWVBakVlQXhjZUF4VVVEZ0lISlE0REl5SXVBaWN1QXpjMkxnSW5MZ01uTGdFME5qYytBemNYRVFQaC9yWURCZ2NIQXdFQ0JBUUVBdkwremdZTkRBd0ZCZ2tHQXdRSUN3Y0JTUU1GQlFVREF3WUdCZ1B5QVRJR0RRd01CUVlKQmdNRkNBc0gvbDRHQ1FnSkJnVUlDeEVOREE4S0JnSUNCUVFDQXdnUERCNFZBUWtJR1NFb0Z3NGRIUnNNM2djUERnc0RCd2NQRVFNR0d5QWdDeEVYQ1FjTkRRc0ZBZ1FFQ0FnSUJBUU1EQW9CQVFJR0N3b01Dd2NIQ0FnUUR3NEdCaEVRQ3hNYUVnMEdCZ3dLQmdNSURnc0JXd2NPRFFvRENBNExCd0VEQndZREFRSUZFaDhYQ2hjV0ZBY1pHQmdXQ0JnYkhBeXBBdzJOQWdJQkFRRUJBZ0dDaEFJQ0FRUUVCQWtMREFiOU9RZ09EQW9EamdFQ0FRRUNBZ0tDZ3dJQ0FRUURCQWtMREFZQ3h3Z09EQW9EL2djRkN3NFJDd29RRVJRT0RRUUhEZ1lHRmhZUUNnME1BZ1VyTUNZR0VoRU1Bd1VIQkFGUVlBNFRFQkVMR0NJU0FnZ09EQUlGQkFZUEVBOEdCZ1FCQlFRRUJRRURCQU1HQ0F3SkNRMElCQU1DQWdJQkF3TUdDQVlDQXdRRkJBUVFGQmNLQ1JFUUVRa2pDQTBKQkFnS0NRSUhIaUlmQ0IwakZBb0VBZ1VIQ3dnZEx5a2xFd1lPRFF3RlNmNThBQUFBQWdBUS84RUQ1UU8rQURRQWN3QUFFelErQWpjK0F6YzFEZ01IRGdNSEZBNENGUlFlQWhVZUF4Y2VBeGMxTGdNbkxnTTFKUzRESnk0QklnWUhEZ01kQVE0REJ3NERGUlFlQWhjZUF4Y1ZGQjRDRng0RE16SStBamMrQXpjK0FUUW1KN1lGQndrRUdVTlNYelJRazNKR0F3d1VFQXdEQ3cwS0Nnd0tBd3dSRlF3RFJuS1RVRFJmVWtNWkJBa0hCUU12QWpWVmJqc0VDZ3NMQlFVSEJBSXJZbFkvQ0FvUURBWUdEQkFLQ0Q1V1lpc0NCQWNGQWdRRkJRSURCZ1lGQWp0dVZUVUNCQVFFQkFIRU5GeE5QUlVGREF3SkFxTURFaE1QQVFNTEVCUUxBalpqamx0YmtXWTRBZ3dVRUFzREFROFRFZ1NrQWdrTURBVVdQMDllTlJNRE9sTmZLQU1EQWdJRENBa0tCb1lFRHhFUEJBVVBGQmdQRHhnVER3WUVEeEVRQllZRkNna0lBd0VDQVFFQkFnSUNLRjlUT2dNR0RRME1CUUFBQUFJQUFRQVpBLzhEaHdCYUFLWUFBQ1V1QXljdUF5Y21QZ0kzUGdJbUp5NERJeUlPQWdjT0FSNEJGeDREQnc0REJ3NERCdzREQndZVUhnRVhIZ016TWg0Q016SStBak15UGdJM1BnSTBKeTRESndVdUF5Y3VBeWN1QXljbVBnSTNQZ0ltSnk0REl5SU9BZ2NlQXhjZUFRNEJCeDRERng0REZ4NERGejRETXpJK0FqYytBalFuQW5JR0RnNFBDQTRjR0JFREFnTUhDZ1VhSHdrTUVRMGtLekVhR2pFckpBMFJEQWtmR2dVS0J3TUNBeEVZSEE0SUR3NE9CaGdwSUJZR0FRRUNBZ0lGQmdZRUFTWlRnMTVlaEZNbkFRUUdCZ1VDQWdNQkFRWVhJQ2tZQVkwR0ZpQXBHQVlORGc4SURod1lFUU1DQXdnTEJob2VDUTBSRFNRck1Sb1lKUjhiRGhNZ0d4Z0xFQlFGSkNnQ0JRUUVBZ2tTRVJFSUdDb2tIUXN3UlN3V0FRTUdCZ1VDQWdJQkFmWUVCd1lHQXdZTURROEpDQklURWdnb1MwVS9IQllpR0EwTkdDSVdIRDlGU3lnSUVoTVNDQWtQRFF3R0F3WUdCd1FQSlNzd0dnUUhCZ1lEQXdVRUFnUUZCQVFGQkFJRUJRTURCZ1lIQkJvd0t5VVBJQm93S3lVUEJBY0dCZ01HREEwUENRZ1NFeElJS0V0RlB4d1dJaGdOQ2hNY0Vna1ZHaDhURzBsY2JUOEJBZ0lDQVFNSENBZ0ZEeU1vTEJnQkJBUURBZ1FGQXdNR0JnY0VBQU1BUXdBMkE4SURhZ0FVQUdVQWVnQUFBU0lPQWhVVUhnSXpNajRDTlRRdUFpTWxMZ01uTGdNbkxnTW5MZ01qTGdNaklnNENCeUlPQWdjT0F3Y09Bd2NPQXdjT0FSUVdGeDRERng0RE16SStBamMrQXpjK0FUUW1Kd0VpTGdJMU5ENENNekllQWhVVURnSWpBZ0FqUGk0Ykd5NCtJeU0rTGhzYkxqNGpBY0lDQ0FzTkJ4UW9LQ2dVQXdZR0J3UUNDZzBQQnhZc0xDd1dGaXNyS3hVSER3MEtBZ1FIQmdZREZDZ29LQlFIRGdzSUFSRVFFUkFCQ0FzT0J6SmxaV1V5TTJabVpqTUhEUXNJQWc0T0RnNytQamxsU3l3c1MyVTVPV1ZMTEN4TFpUa0NXUnN1UGlNalBpNGJHeTQrSXlNK0xodGVCdzBLQndFQ0JBTURBZ2tWRlJVS0J3NExCd0lDQWdFQkFnSUNCd3NPQndvVkZSVUpBZ01EQkFJQkJ3b05CMWFNaFlsVUJ3MEtCd0VHQ0FZREF3WUlCZ0VIQ2cwSFNaR1JrVWo5NHl4TFpUazVaVXNzTEV0bE9UbGxTeXdBQUFFQUxmL2tBOTREYndCREFBQUJOVFF1QWljdUFRNEJCdzREQnc0QkZCWVhIZ01YSGdNek1qNENOejREUFFFZUF4Y1dGQTRCQnc0QkhnRXpNajRDTlRRdUFpY0IzZ0lGQ0FZR0RRME5Ca3FCWVRvQ0JRVUZCUUk2WVlGS0F3Y0hCd1FEQmdZR0F3WUlCUUl2WGxBNkRBMFhMaUVqSFFjb0lpUmxYVUZaa2JoZkFveTVCdzBMQ1FNRUF3RUVCREoyYUVnREJ4QVFEd1lFU0doMk1RSURBZ0VCQVFJQkF3a0xEUWUzQVFzV0lCWVlMeW9qREE0cktSMHVWbnhPWEg5UktBVUFBQUFCQVJFQWJ3TVFBMUVBTFFBQUFTNERKeTRCSWdZSERnTVZGQTRDRlJRZUFoVVVIZ0lYSGdFeU5qYytBemMrQVRRbUp3TVFBMGQxbVZVR0RBd01CZ1lKQndRREJBTURCQU1FQndrR0Jnd01EQVpWbVhWSEF3Y0hCd2NDQWdOR1pISXdBd01EQXdNSkNnd0dBVGhjZGo0K2RsdzRBUVlNQ3drREF3TURBekJ5WkVZREJ4SVNFZ2NBQXdBTkFGQUQ4QU13QUJZQUxRQkVBQUFUSVRJK0FqVTBMZ0lqSVNJT0FoVVVIZ0l6QlNFaURnSVZGQjRDTXlFeVBnSTFOQzRDSXhFaElnNENGUlFlQWpNaE1qNENOVFF1QWlOWEExQVBHaFFMQ3hRYUQveXdEeG9VQ3dzVUdnOERVUHl3RHhvVUN3c1VHZzhEVUE4YUZBc0xGQm9QL0s0UEdoUUxDeFFhRHdOU0R4b1VDd3NVR2c4Q21RMFZIQThQR3hRTURCUWJEdzhjRlEyS0RCUWJEdzhiRkFzTEZCc1BEeHNVRFA3VURCVWJEdzhhRXdzTEV4b1BEeHNWREFBQUFnQUEvOEFENXdQQUFDb0FQd0FBRXhRZUFqTXlQZ0kzQVI0RE16SStBamMrQVRRbUp3RStBelUwTGdJaklnNENGVE0wUGdJek1oNENGUlFPQWlNaUxnSTFBRHhvakZBY056UXdGZ0VoQmc0UUVBZ0lFQThPQmd3TURBeiszZzRXRHdnOGFJeFFVSXhvUElBb1JsMDFOVjFHS0NoR1hUVTFYVVlvQWtCUWpHZzhDQThXRHY3ZUJna0dBd01HQ1FZTUlDRWdEQUVoRmpBME54eFFqR2c4UEdpTVVEVmRSaWdvUmwwMU5WMUdLQ2hHWFRVQUFnQUMvOEFEL2dPK0FRTUJHQUFBQVM0REp5NERNUzRETlRRK0FqY3dQZ0l4UGdFMEppY3VBeWN1QVNJR0J3NERNUTRESXlJdUFpOEJMZ01uTGdFaUJnY09BdzhCRGdNaklpNENMd0V1QVNJR0J3NERCdzRCRkJZWEhnTXhIZ01WRkE0Q0R3RU9Bd2NPQVJRV0Z4NERId0VlQXhVVURnSVBBUTRCRkJZWEhnTVhIZ016TWo0Q1B3RStBek15SGdJWE1CNENNUjRERnpJZUFUSXpPZ0UrQVRNK0F6OEJQZ016TWg0Q0h3RWVBek15UGdJM1BnTTNQZ0UwSmljdUF6RXVBelUwUGdJM01ENENOejRETno0Qk5DWW5CU0l1QWpVMFBnSXpNaDRDRlJRT0FpTUQvZ0VJREE4SkN4NGJFd29RREFjQkFnUUNFUlFSQmdVR0JnZ1FFUklLQnhBUkVBY0pHQllQQkFnSUNBUUtFZzhLQWdzQkNBd1FDUXdaR1JnTUNSQU1DQUVMQWdvUEV3b0ZDUWtJQkVNSEVCRVFCd29TRVJBSUJnWUdCZ1lTRUFzREJBTUNDQTBTQ2xNSkVBd0lBUUVCQVFFQkNBd1BDVk1LRWcwSUFnTUVBek1HQlFZR0NCQVJFZ29FQ0FnSUJBUUlDQWNEUXdRSUNRa0ZDaE1QQ2dJREJBTUJDQXdRQ1FZTURBd0dCZ3dNREFZSkVBd0lBUXNDQ2c4U0NnUUpDQWdEUlFNSENBZ0VCQWdJQ0FRS0VoRVFDQVlHQlFZSEVoRU1BZ1FDQVFjTUVBb1RHeDRMQ1E4TUNBRUJBUUVCL2dJa1B5OGJHeTgvSkNRL0x4c2JMejhrQWZFSkVBd0lBUUVFQXdJQ0NnOFNDZ1FJQ0FjREZob1dCeEFSRUFjS0VoRVFDQVlHQlFZSEVoRU1BZ1FEQWdjTkVRcFZDUThNQ0FFQkFRRUJBUWdNRHdsVkNoRU5Cd0lEQkFJMEJnVUdCZ2dRRVJJS0J4QVJFQWNJRnhVUEJBZ0lDUVFMRXc4S0Fnc0JDQXdRQ1F3WkdSZ01DUkFNQ0FFTEFRb1BFd3NGQ1FrSUJFTUhFQkVRQndvU0VSQUlBd1FEQWdFREJBTTBBZ1FEQWdjTkVRb2JJQm9KRHd3SUFRRUJBUUVCQ0F3UENWVUtFUTBIQVFJRUFqVURCQU1CQVFNRUF3Z1FFUklLQnhBUkVBY0pHQllQQXdjSUNBUUtFZzhLQWdJREJBRUJDQXdRQ1F3WkdSZ00zeHN2UHlRa1B5OGJHeTgvSkNRL0x4c0FBZ0FBLy9RRUFBTnNBRDRBYmdBQUFTNERKeTRDQmdjT0F4MEJJZzRDQndZZUFoY1dNajRCTno0RE14VVVIZ0lYSGdFK0FUYytBemMrQXpVMExnSW5BU0VSSVRVaUxnRWlJeUlPQWdjT0F4VVJGQjRDRng0RE16SStBamMrQXowQkRnTUhGUVAzQWpKVGJEd0ZDZ3NMQlFVSUJnTlhqMmcrQmdRQkNoTU9FQ0FkR0FnYUxqaEpOQU1HQ0FVRkN3c0tCRHhzVXpJQ0FnTUNBUUVDQXdMKzkvMmFBYndQSXlRakR5bFRVMU1wR0NrZUVSRWVLUmdwVTFOVEtTbFRVMU1wR0NrZUVRNGlKQ1FSQWtBRFAxbGpLQU1EQVFJQ0F3Z0pDZ2FsTlVsT0dSSWVHQk1HQ0FnTkJRNGFGQXlwQmdvSkJ3TUNBZ0VEQXloa1dUOENBd1lHQmdNREJnWUdBLzQ5QW1hR0FRRUNCQVlFQWhVaEt4ajlvQmdySVJVQ0JBWUVBZ0lFQmdRQ0ZTRXJHSWtPSEJzYkRDQUFBQUFCQUo4QTRRT0JBdUVBTFFBQUFTNERKeTRCSWdZSERnTUhEZ0VVRmhjZUF6TXlIZ0l6TWo0Q016SStBamMrQVRRbUp3T0JNSEprUmdNSEVoSVNCd05HWkhJd0F3TURBd01KQ3d3R0FUaGNkajQrZGx3NEFRWU1DZ2tEQXdNREF3RTFWSmwxUndNR0JnWUdBMGQxbVZRR0RBd01CZ1lKQndRREJBTURCQU1FQndrR0Jnd01EQVlBQWdBQS85QUVBQU91QUQ0QVlRQUFFek1lQXhjZUF6TXlQZ0kzUGdNM016SStBamMrQVM0Qkp5NERKeTRESXlJT0FnY09Bd2NPQWhZWEhnTXpCUlFPQWdjaExnTTFJeFFlQWhVZUF6TWhNajRDTnpRK0FqVWo4b3NGRGc0T0JRVVBGQmtQRHhrVUR3VUVEUThPQm9zR0Nna0lBd0lDQVFNREtGOVRPZ01EQmdZR0F3TUdCZ1lEQXpwVFh5Z0RBd0VDQWdNSUNRb0dBbWNFQmdjRC9YVURCd1lFcGd3T0RBUVFGaG9PQXc0T0d4WVFCQXdPREtZQ05pQkJPQ29KQ0EwSkJRVUpEUWdJS1RoQ0lBTUdDQVVGQ3dzTEJUdHNWRE1DQWdNQ0FRRUNBd0lDTTFSc093VUxDd3NGQlFnR0E0azJYVTA5RmhZOFRWMDNaNXBuTlFJT0Z4QUpDUkVYRGdJMVo1cG1BQUVBSS8vUUE5MERyZ0JWQUFBbExnTW5MZ01uTGdNbkpqNENOejRDSmljdUF5TWlEZ0lIRGdFZUFSY2VBd2NPQXdjT0F3Y09Bd2NHSGdJWE1oNENNekkrQWpjK0F6TStBeWNEM1FnY0p6RWNDQklURkFvVUtDSVpCUU1CQ0E4TElTY01FQllSTFRVN0lCODdOUzBSRmhBTUtDSUxEd2dCQXdVWklpZ1RDeFVURVFnY01TY2NDQUlDQmdvR0FqRnJySHcrYUZaRkd4c25HUTBCQmdvR0FnSWNKanN3SnhJRkNRa0lCQWdSRkJnUENoY2FIaEUyWkZ4VEpSMHVJQkVSSUM0ZEpWTmNaRFlSSGhvWENnOFlGQkVJQkFnSkNRVVNKekE3SmdjTkN3Z0NDdzBMQXdVR0F3TUdCUU1DQ0FzTkJ3QUFBQUFDQUFEL3dRUUFBOEVBR0FCY0FBQUJGQTRDQnhFakVTSXVBalUwUGdJN0FUSWVBaFVCRGdNaktnRXVBU2N1QXljbURnSXhFVEErQWpNeUhnSVhIZ01YSGdNek9nRStBVGN5UGdJM1BnTXpNaDRDRlJFT0F3Y0JFUXdUR1EySkRoa1RDd3NUR1E2SkRoa1RDd0xVQ3g4bEtoWUlFUkVSQ0NrNk5Ea29KMXhRTmlBMFFpSUtGUlVVQ1NnNU5Eb3BCZzBORFFZTEZoVVZDZ1FKQ1FrRUJBZ0lDQVFIREFrR0FRVUhDUVVEZlE0WUVnc0IvSWtEZHdzU0dRNE9HUk1MQ3hNWkR2enJCQWdIQlFFQ0FnZ3FNUzRMQ2dNTURRSTVDQW9JQVFJRUFnc25LU1FJQVFJQ0FRSURBZ0VDQWdFQkFnSUJCUWtNQi8zMUJnb0hCUUVBQUFBQUJBQU0vL3NFQUFOd0FCWUFMUUJFQUhRQUFCTWhNajRDTlRRdUFpTWhJZzRDRlJRZUFqTUZJU0lPQWhVVUhnSXpJVEkrQWpVMExnSWpFU01pRGdJVkZCNENPd0V5UGdJMU5DNENJeVVqTlRRdUFpc0JJZzRDSFFFaklnNENCeHdCSGdFZkFSNENNak02QVQ0QlB3RStBalExTGdNajhnSzRFaUFZRGc0WUlCTDlTQklnR0E0T0dDQVNBcmordVJJZ0dBNE9HQ0FTQVVjU0lCZ09EaGdnRXZrU0lCZ09EaGdnRXZrU0lCZ09EaGdnRXY1Z2t3SURCQUsxQWdRREFwTUNBd01DQVFFQkFma0JBZ0lDQVFFQ0FnSUIrUUVCQVFFQ0F3TUNBcndQR2lFU0VpQVlEZzRZSUJJU0lSb1BwUTRZSUJJU0lCY05EUmNnRWhJZ0dBNyttZzhaSVJJU0h4Y05EUmNmRWhJaEdROVYvd0lFQXdJQ0F3UUMvd0VDQXdJQ0F3TURBZlFCQVFFQkFRSDBBUU1EQXdJQ0F3SUJBQUFBQXdBQS84QUVBQVBBQUJRQUtRQ0JBQUFCSWc0Q0ZSUWVBak15UGdJMU5DNENJeEVpTGdJMU5ENENNekllQWhVVURnSWpFdzREQnc0REJ4UU9BaXNCSWk0Q05UNEROejRETlRRdUFpY3VBeU1pRGdJSERnTXJBU0l1QWpVOEF6VXdQZ0l4UGdNek1oNENGeDRERlJRT0FnY0NBR3E3aTFCUWk3dHFhcnVMVUZHTHVtb1FIQlVORFJVY0VCQWNGUTBORlJ3UTJRVVJHQjRTQ0JBT0N3SUZDUXdIUlFjTkNnWUJKalE0RXdRRkF3RURCZ2tHQmc0UkV3b1JIaGdRQXdFR0NRc0dSd2NNQ1FVQkFRRUpKVGRKTGhrdEtDTVBEeGNRQ0FNR0NRWUR3RkNMdW1wcXU0dFFVSXU3YW1xNmkxRDhmdzBWSEJBUUhCVU5EUlVjRUJBY0ZRMEJ5UW9XR1J3UUJ4QVNGQXNIRFFvR0JRa01CeWc3TVNzWUJRb0xEQVlJRFF3TEJnWUpCZ01NRkJnTUJna0hBd1VJREFjQkFnSUNBUUlDQWh3NUxoMEhEaFVPRGlBakpSTUxGUlFUQ1FBQUFnQUEvOEFFQUFQQUFCUUFOUUFBQVNJT0FoVVVIZ0l6TWo0Q05UUXVBaU1CRkE0Q0l5RWlMZ0luTGdFME5qYytBek1oTWg0Q0ZSNEJGQVlIQWdCcXU0dFFVSXU3YW1xN2kxQlJpN3BxQVZrR0NnMEgvWmNIRFFvR0FRRUJBUUVCQmdvTkJ3SnBCdzBLQmdJQ0FnSUR3RkNMdW1wcXU0dFFVSXU3YW1xNmkxRDl2UWdOQ1FVRkNRMElFU0lpSWhFSURRa0ZCUWtOQ0JFaUlpSVJBQUFBQUFNQUNmL2lCQUFEbmdBaEFEWUFXd0FBSlFFdUF5TWlEZ0lIQVE0QkZCWVhIZ016SVRJK0FqVTBMZ0luQlNJdUFqVTBQZ0l6TWg0Q0ZSUU9BaU1URGdNckFTSXVBaWN1QXljMFBnSTNQZ0V5RmhjZUF4VU9Bd2NEOC81SkJBMFFFZ2tLRWc4TkJQNUVCQVFGQlFVTkR4RUpBM2NPR1JNTEFnTUZBLzRORUJ3VkRBd1ZIQkFRSEJVTURCVWNFQ3dCQ0F3T0NBTUhEZ3NJQVFZS0NBY0RCUWtNQncwV0ZSWU5DQXdJQkFNSENBb0dUZ010Q0EwSkJRVUpEUWo4ekFnUkVSRUlDQXdKQlFzU0dRNEdDd29KQkE4TUZSd1FFQndWREF3VkhCQVFIQlVNQVJzSUR3c0hCd3NQQ0NKRlJFRWVCdzRNQ1FJQ0FnSUNBZ2tNRGdjZVFVUkZJZ0FBQXdBQi84QUVBQVBBQUZFQVpnQ2JBQUFCUGdNM1BnSW1KeTRESnk0REl5SU9BZ2NPQVI0QkZ4NERCdzREQnc0REJ3NERCd1lVSGdFWEhnTXpNaDRDT3dFdUF6VTBQZ0kzUGdNM0Z5SU9BaFVVSGdJek1qNENOVFF1QWlNVEZBNENLd0VWRkE0Q0t3RWlMZ0k5QVNNaUxnSTlBVFErQWpzQk5UUStBanNCTWg0Q0hRRXpNaDRDSFFFQ1JRd1lGaFFJRFJNSUF3Z0NCUVlIQkJBdU56NGhJVDQzTGhFVkR3d25JUXNQQ1FJREJCY2dKaElLRXhJUkNCNHZJaGNIQVFFREFnSUZCZ2NFQWl0am9ua2xEaFlQQ0FnUkdoSUlFeFFWQ3JzMVhVVW9LRVZkTlRWZFJpZ29SbDAxbWdNRkJnUlZBd1VHQkVRRUJnVURWUVFHQlFNREJRWUVWUU1GQmdSRUJBWUZBMVVFQmdVREFkY0xGUllaRHhnM09Ua2JCdzRPRGdZY0xCOFFFQjhzSENSUldXRTBFQjBaRmdrTkZoTVFDQVFJQ0FrRkV5dzBPeUlEQndjSEF3TUZCQU1HQndZVUxDOHlHaHcyTXk4VkNoVVVFd2dYS0VWZE5UVmRSU2dvUlYwMU5WMUZLUDdlQkFZRkExVUVCZ1VEQXdVR0JGVURCUVlFUkFRR0JRTlZCQVlGQXdNRkJnUlZBd1VHQkVRQUFRQlpBQmtEcFFObEFFUUFBQUV1QXlNaEVUUXVBaWN1QVNJR0J3NERGUkVoSWc0Q0J3NEJGQllYSGdNeklSRVVIZ0lYSGdFeU5qYytBelVSSVRJK0FqYytBVFFtSndPbEFRZ01FQW4rL2dZTER3Z1VLQ2dvRkFnUEN3Yisvd2tRREFnQkFnSUNBZ0VJREJBSkFRRUdDdzhJRkNnb0tCUUlEd3NHQVFJSkVBd0lBUUlDQWdJQ0RRa1BDd1lCQVFrUURBZ0JBZ0lDQWdFSURCQUovdjhHQ3c4SkZDY25KeFFKRHdzRy92NEpFQXdJQVFJQ0FnSUJDQXdRQ1FFQ0Jnc1BDUlFuSnljVUFBQUJBQUlBTlFRQUEwOEFWZ0FBRXdFK0F6TXlIZ0lYSGdNWEhnTVZGQTRDQnc0RER3RWhNaDRDRng0REZSUU9BZ2NPQXlNaEZ4NERGeDRERng0REZSUU9BZ2NPQXlNaUxnSW5BUUlCZlFnUkVoUUxDeFFTRVFnRUJ3WUZBZ0lEQWdFRUNBc0lCQWtLQ2dWY0Fnb0xGQklSQ0FnTENBUUVDQXNJQ0JFU0ZBdjk5bHdGQ2dvSkJBUUhCZ1VDQWdNQ0FRUUlDd2dJRVJJVUN3c1VFaEVJL29NQnd3RnlCd29IQXdNSENnY0VDQWtKQlFVSkNRa0ZDeE1SRUFjRkNnb0tCVmdFQndzSEJ4QVNFd3NLRXhJUUJ3Y0xCd1JZQlFvS0NnVUVDQWdKQlFVSkNRa0VDeE1TRUFjSUN3Z0VCQWdMQ0FGd0FBQUFBZ0NKLzlJRGVBT3dBQzRBUEFBQUFUUXVBaXNCTlRRdUFpTWlEZ0lkQVNNaURnSVZFUlFlQWhjZUF6TXlQZ0kzUGdNMUVTVTFORDRDTXpJZUFoMEJJd040Q3hNWkRpRW5TR1U5UFdWSUp5UU9HQklLQ0E0VURDaFFVVkVvS0ZCUVR5Z01GUThKL2lJR0ZTa2lJaWtWQnMwQnF3NGJGQXlyUG1WSUp5ZElaVDZyRFJZY0R2NlNEQllTREFJSkRna0VCQWtPQ1FJTUVoWU1BWEZLcXhBa0hoUVVIaVFRcXdBQUFRQUdBQ3NEK1FOUEFDUUFBQUUrQVRRbUx3RXVBU0lHQndFbkxnRWlCZzhCRGdFVUZoY0JIZ016TWo0Q053RUQrUU1EQXdPVkF3Z0lDQVArTzhZRENBZ0lBNVVEQXdNREFXb0NCQVFFQWdJRUJBUUNBbW9DbXdNSUNBZ0RsUU1EQXdQK09jY0RBd01EbFFNSUNBZ0QvcFlCQWdJQkFRSUNBUUpxQUFFQVh3QWlBNkFEc1FBdEFBQUJOU0lPQWhVVUhnSXpNajRDTlRRdUFpYzNIZ01WRkE0Q0l5SXVBalUwUGdJek5SY0hBZ0JCY2xVeE1WVnlRVUZ5VlRFTUZpQVVUQnNxSGhCQ2NaaFdWcGh4UVVGeG1GYWNuQUt0VGpGVmNrRkJjbFV4TVZWeVFSODdOekVWU0J4QlNVOHFWcGh4UVVGeG1GWldtSEZCVG9LQ0FBQUFBQUVBSlAvR0E5NER3QUE4QUFBbExnTTFOQzRDSXlJT0FoVVVEZ0lIRGdNWEhnTVhIZ01YSGdNek1qNENOejRETno0RE56WXVBaWNEeGdJdk5pMDRXR3cwTkd4WU9DMDJMd0lIQ2djREFRRUhDdzRJQWlsTGFrSUhIQ1l2R2hvdkpod0hRbXBMS2dJSURRb0hBUUVDQmdvSDZnSXRXSVJaZEpGUUhCeFFrWFJZaEZrdEFnWU9FQkVKQ1JFT0N3UUJFQlVXQnhnb0hSRVJIU2dZQnhZVkVBRUVDdzRRQ1FrU0VBNEdBQUFEQUFEL3dBUUFBOEFBRkFBcEFGRUFBQUVpRGdJVkZCNENNekkrQWpVMExnSWpGVEllQWhVVURnSWpJaTRDTlRRK0FqTVRJeUl1QWpVMFBnSTNOUzRETlRRK0Fqc0JNaDRDRlFjZUF4VVVEZ0lqQWdCcXU0dFFVSXU3YW1xN2kxQlFpN3RxRVIwV0RRMFdIUkVSSFJZTkRSWWRFVHQ0Q3hNT0NBVUpEQWNIREFrRkNBNFRDMWdMRXc0SUFRY01DQVVJRGhNTEE4QlFpN3RxYXJ1TFVGQ0x1MnBxdTR0UXR3MFdIUkVSSFJZTkRSWWRFUkVkRmczOWtBZ09Fd3NJRHcwS0E3Z0RDZzBQQ0FzVERnZ0lEaE1MNlFNS0RBOElDeE1PQ0FBQUFRQVYvOUVEOHdPdkFLY0FBQUVVRGdJckFSY2VBUlFHQnc0REl5SXVBaThCSXhVWEhnRVVCZ2NPQXlNaUxnSXZBUlVVRGdJaklpNENQUUVIRGdFaUppY3VBVFEyUHdFMUl3Y09BeU1pTGdJbkxnRTBOajhCSXlJdUFqVTBQZ0k3QVNjdUFUUTJOejRCTWhZZkFUTTFKeTRCTkRZM1BnRXlGaDhCTlRRK0FqTXlIZ0lkQVRjK0FUSVdGeDRCRkFZUEFSVXpOejRCTWhZWEhnRVVCZzhCTXpJZUFoVUQ4d2dPRXdxUWNRZ0lDQWdFQ1FvS0JRVUxDZ2tFdTJDL0NBZ0lDQVFKQ2dzRkJRb0tDUVJ5Q0E0VENnc1REZ2h5Q0JRVkZBZ0lDQWdJdjJDOEJBa0tDZ1VGQ2dvSkJBZ0lDQWh3andzVERnZ0lEaE1MajNBSUNBZ0lDQlFWRkFpNlliOElDQWdJQ0JRVkZBaHlDQTRUQ3dvVERnaHlDQlFWRkFnSUNBZ0l2MkM3Q0JRVkZBZ0lDQWdJY0k4S0V3NElBY0FMRXc0SWNnZ1VGUlFJQkFZRUFnSUVCZ1MvWWJzSUZCVVVDQVFHQkFJQ0JBWUVjSThMRXc0SUNBNFRDNDl3Q0FnSUNBZ1VGUlFJdkdDL0JBWUVBZ0lFQmdRSUZCVVVDSElJRGhNTENoTU9DSElJRkJVVUNBZ0lDQWkvWUxzSUZCVVVDQWdJQ0FoeGtBb1REZ2dJRGhNS2ozQUlDQWdJQ0JRVkZBaTdZTDhJQ0FnSUNCUVZGQWh5Q0E0VENnQUlBQUFBRndRQUEya0FPZ0EvQUVRQVNRQk9BRk1BV0FCZEFBQUJCeWNISndjbkJ5Y0hKd2NuQnljSEp3Y25CeEVVRGdJaklpNENOVHdCRURReElnNENGUkVVSGdJeklUSStBalVSTUM0Q0p3RWhOU0VWTlNFMUlSVTFJVFVoRlFVaE5TRVZOU0UxSVJVM0lUVWhGVFVoTlNFVkE5QXJMekV5SnkwcEtTc3NNaThzS2lRc0p5MG1CZ2tMQlFnUERBY0tHUllQQ0EwU0NnT2NDaElOQ0EwUkVBTCtTdjdaQVNmKzJRRW4vdGtCSndHRy9zTUJQZjdEQVQwQi9zSUJQdjFTQXE0RFppZ3FLaW9xS2lvc0xDb3FLU2tuSnlvcUtpcjlRd3NRQ2dRSURBNEhCOTBCQTlZRkNnOEsvVE1LRWcwSUNBMFNDZ0wzQ3c0TkF2MG9TRWg3U1VsNVMwdjBTRWg3U1VsN1NVbVNrNU1BQUFBQkFBSUJXZ1A5QWlZQUlBQUFBVFF1QWlNaElnNENCdzRCRkJZWEhnTXpJVEkrQWpVK0FUUW1Kd1A5QmdvTkIveFBCdzBLQmdFQkFRRUJBUVlLRFFjRHNRY05DZ1lDQWdJQ0FnTUlEUWtGQlFrTkNCRWlJaUlSQ0EwSkJRVUpEUWdSSWlJaUVRQUFBQUlBeC8vQUF6a0R3QUFVQUd3QUFDVWlEZ0lWRkI0Q016SStBalUwTGdJakV5NERJeUlPQWdjVURnSXhIQUVHRkJVVUhnSTdBVEkrQWpjK0F6TXlIZ0lYSGdNVkZBNENCdzREQnhRZUFqc0JNajRDTlQ0RE56NEROejRETlRRdUFpY0I1eFlvSGhJU0hpZ1dGaWdlRWhJZUtCYjZGVEU0UHlOQVowMHpEQUVCQVFFSERSRUtaQWdQREFrQ0JCY2hLaGdQR2hjVUNBZ01DQVFDQkFjR0drNUtOZ0lJRFJJS1lRb1NEUWNERHhRWEN4a3FJUmdIQ0EwSkJRd1dJUldiRWg0b0ZoWW9IaElTSGlnV0ZpZ2VFZ0xZRkIwVENpbEJVQ2NCQXdNQ0FnTURBd0lLRVF3R0JRa05DQkVpSEJFRkNRMElDQkFSRWdzSUVBOFBCeUU5UkZNNENoRU5Cd2dPRWdvUEhCa1dDaFlvSXg4TkRSc2NIUThhTkRFdUZBQUFBQU1BYlFGZEE1TUNKUUFVQUNrQVBnQUFFeFFlQWpNeVBnSTFOQzRDSXlJT0FoVWhGQjRDTXpJK0FqVTBMZ0lqSWc0Q0ZTVXlIZ0lWRkE0Q0l5SXVBalUwUGdJemJSQWJKUlVWSlJzUUVCc2xGUlVsR3hBQkx4QWJKUlVWSlJzUUVCc2xGUlVsR3hBQmt4VWxHeEFRR3lVVkZTVWJFQkFiSlJVQndSVWxHeEFRR3lVVkZTVWJFQkFiSlJVVkpSc1FFQnNsRlJVbEd4QVFHeVVWWkJBYkpSVVZKUnNRRUJzbEZSVWxHeEFBQUFBQUFRQWIvL2tENHdPSkFJb0FBQUVPQXlNd0tnSWpJaTRDSnk0REp5WStBajhCTGdNbkxnTUhEZ01IRGdNSEJoNENGeDRERnhZK0FqYytBUjRCRng0QkRnRVBBUTREQndZdUFpY3VBeWN1QWpRM1BnTTNQZ00zUGdNM1BnSXlNekllQWhjZUF4YzNQZ0l5Rng0REZSWU9BZ2NEelFFR0NRc0dBd1VJQlJwYmNYOCtCUWtIQlFFQkFRUUhCSVlHREEwTkJ3MGNIUjBQRHgwY0d3ME9GeElPQkFrREZ5c2VEeU1tS0JVVktpa3BGQXdaRnhNR0JRSUZEQWtCR0RnOFB4OGdRRDg5SFI0M01Ta1FFQllNQmdNSUN3NElDUlFWRnd3WVBrVktKUWtSRVJFSkhUazNOUmdSSUI0Y0RHVUVDUW9LQlFVSkJ3UUtCQTBQQVFHSkJnb0lCQUlLRkJJQkJRZ0pCUVVLQ1FnRFdRWU1Dd29FQ0F3SEFnSUJDQTBTQ3d3Wkd4MFFIa2RHUUJjTUV3NEtBZ0lCQmcwS0JnRUlFUXdLRmhVVEJ3RVNIeGNPQVFFSUVSb1JFU294Tng0ZVFVVklKQklqSWlFUUVCNGNHZ3daS2lBV0JRRUNBUWdQRmc4S0Z4a2NEM1lFQmdNQ0FnWUlDUVZPbm9CVEJBQUJBQUQvd1FRQUE4RUFRZ0FBQlNJdUFpY2xEZ01qSWk0Q05UUStBak15SGdJWEpUVTBQZ0l6TWg0Q0ZSUU9BaU1pTGdJbkJSVUZQZ016TWg0Q0ZSUU9BaU1EUkNNK01TRUcvcHdMR1JzZER5ZEVNeDRlTTBRbkR4MGJHUXNCWVI0elJDY25SRE1lSGpORUp3OGRHeGtML3A4QlJ3MGVJaVVVSjBRekhoNHpSQ2MvRnlrNUlic0lEUWtGSGpORUp5ZEVNeDRGQ1EwSXVnSW5SRE1lSGpORUp5ZEVNeDRGQ1EwSXVnU3REUlVPQ0I0elJDY25SRE1lQUFBQUFBSUFBUC9BQkFBRHdBQVVBRGtBQUFFaURnSVZGQjRDTXpJK0FqVTBMZ0lqQ1FFT0F5TWlMZ0l2QVM0Qk5EWS9BVDRCTWhZZkFRRStBVElXSHdFZUFSUUdCd0lBYXJ1TFVGQ0x1MnBxdTR0UVVJdTdhZ0UrL25zQkFnSURBUUVEQWdJQjVBSUNBZ0plQWdVRkJRSjhBUjRDQlFVRkFsNENBZ0lDQThCUWk3dHFhcnVMVUZDTHUycHF1NHRRL29yK2V3RUJBUUVCQVFFQjVBSUZCUVVDWGdJQ0FnSjlBUjRDQWdJQ1hnSUZCUVVDQUFBQUFBUUFJdi96QTk0RGpRQk5BSjRBMlFFcUFBQUJMZ01uTGdNaklnNENCdzREQnc0REZSUWVBaGNlQXhjZUF4Y1ZGQjRDRnpJZUFUSXpNajRDUHdFeVBnSTNQZ00zUGdNMU5DNENKd0VpTGdJbkxnSTBOVFErQWpNNkFSNEJGeDRETXpJK0FqVTBMZ0kxTkQ0Q016SWVBaGNlQWhRVkZBNENJeW9CTGdFbkxnTWpJZzRDRlJRZUFoVVVEZ0lqSlJRT0FpTWlMZ0k5QVFjT0F5TWlMZ0l2QVJVVURnSWpJaTRDUFFFMFBnSXpOaDRDSHdFM1BnTXpOaDRDSFFFWElpNENKeTRDTkRVMFBnSXpPZ0VlQVJjZUF6TXlQZ0kxTkM0Q05UUStBak15SGdJWEhnSVVGUlFPQWlNcUFTNEJKeTRESXlJT0FoVVVIZ0lWRkE0Q0l3UFFCQ0l4T3gwa1NFaElKQ1JJU0Vna0hUc3lJd1VEQlFNQ0FnTUZBd1VqTWpzZENoVVZGUW9EQlFnRkFnTURCQUlEQmdZR0Fzd2RPam82SFIwN01TSUVCQVVEQWdJREJRVDlTZ3daRmhJRUFRRUJCQVlJQkFJREF3TUJCUXdORHdnSkRna0ZKaTRtQ3hVZUV3a1dGUkVFQVFFQkJBWUlCQUVEQXdNQkJnd01EQVlIQ3dnRUppNG1DaFVnRmdGY0JBWUlCUVVJQmdRNkFRSURCQUlDQkFNQ0FUb0VCZ2dGQlFnR0JBUUhDUVVJRGd3SkF5d3NBZ1lJQ2dVSUR3d0hkZ3daRmhJRUFRRUJCQVlJQkFJREF3TUJCUXdORHdnSkRna0ZKaTRtQ3hVZUV3a1dGUkVFQVFFQkJBWUlCQUVEQXdNQkJnd01EQVlIQ3dnRUppNG1DaFVnRmdMZEhUY3NIUU1FQmdRQ0FnUUdCQU1kTERjZEZ5NHZMeGdYTGk0dEZoMDNMQjBEQVFJQkFRR3ZCUW9JQndJQkFRRUNCQUxGQWdNRUF3TWNLellkRmk0dUxoY1hMeTh1Ri83ZkJBY0tCd0VEQXdNQkJRZ0dBd0VCQVFRR0JBSUVCd2tGRGdvTUdoNE5HQklLQXdZSkJnRURBd01CQlFnRkF3RUJBUU1GQXdFREJnZ0ZEUWtOR2g0UEdSSUtHUVVJQmdRRUJnZ0ZnWThDQXdJQkFRSURBbytCQlFnR0JBUUdDQVduQlFrSEJBRUJCUWtIYkd3RkNBVURBUUlHQ3dpbkdRUUhDZ2NCQXdNREFRVUlCZ01CQVFFRUJnUUNCQWNKQlE0S0RCb2VEUmdTQ2dNR0NRWUJBd01EQVFVSUJRTUJBUUVEQlFNQkF3WUlCUTBKRFJvZUR4a1NDZ0FBQUFBREFNRC92d05BQTc4QUdBQWRBRElBQUFFUkZBNENJeUVpTGdJMUVUUStBak1oTWg0Q0ZRY2hFU0VSQXpRdUFpTWlEZ0lWRkI0Q016SStBalVEUUFvUkZ3MytBQTBYRVFvS0VSY05BZ0FORnhFS2EvNVZBYXVWQ2hFWERRMFhFUW9LRVJjTkRSY1JDZ04vL0lBTkZ4RUtDaEVYRFFPQURSY1JDZ29SRncxci9hc0NWZjByRFJjUkNnb1JGdzBORnhFS0NoRVhEUUFBQUFFQUFBQUJBQUFnVTZwR1h3ODg5UUFMQkFBQUFBQUF6cFJpWFFBQUFBRE9sR0pkQUFEL3Z3UUFBOEVBQUFBSUFBSUFBQUFBQUFBQUFRQUFBOEQvd0FBQUJBQUFBQUFBQkFBQUFRQUFBQUFBQUFBQUFBQUFBQUFBQURvQUFBQUFBZ0FBQUFRQUFGRUVBQUVRQkFBQVhnUUFBQ0lFQUFDSkJBQUFrUVFBQU0wRUFBQ1JCQUFBandRQUFBQUVBQUFIQkFBQU1nUUFBQ0lFQUFBREJBQUFBUVFBQUFBRUFBRHZCQUFBQUFRQUFGRUVBQUFRQkFBQUFBUUFBQkFFQUFBQkJBQUFRd1FBQUMwRUFBRVJCQUFBRFFRQUFBQUVBQUFDQkFBQUFBUUFBSjhFQUFBQUJBQUFJd1FBQUFBRUFBQU1CQUFBQUFRQUFBQUVBQUFKQkFBQUFRUUFBRmtFQUFBQ0JBQUFpUVFBQUFZRUFBQmZCQUFBSkFRQUFBQUVBQUFWQkFBQUFBUUFBQUlFQUFESEJBQUFiUVFBQUJzRUFBQUFCQUFBQUFRQUFDSUVBQURBQUFBQUFBQUtBSXdBeUFFNkFhWUI2QUkwQW9BQzZnTXVBN1lFU2dTK0JYUUdGQWRHQjVZSDJnZ3NDTUlKamdxeUMxQU1OQXpjRFQ0TmdnM2lEandQcWhCRUVJZ1JEaEdJRWdnU3BCTk1FNXdVSGhUcUZVNFZ5QlljRmxvV25CYnlGMkFZUWhqTUdRQVprQm5vR3FZYkJCdGVIT0FkTEFBQUFBRUFBQUE2QVNzQUNBQUFBQUFBQWdBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBT0FLNEFBUUFBQUFBQUFRQU9BQUFBQVFBQUFBQUFBZ0FPQUVjQUFRQUFBQUFBQXdBT0FDUUFBUUFBQUFBQUJBQU9BRlVBQVFBQUFBQUFCUUFXQUE0QUFRQUFBQUFBQmdBSEFESUFBUUFBQUFBQUNnQW9BR01BQXdBQkJBa0FBUUFPQUFBQUF3QUJCQWtBQWdBT0FFY0FBd0FCQkFrQUF3QU9BQ1FBQXdBQkJBa0FCQUFPQUZVQUF3QUJCQWtBQlFBV0FBNEFBd0FCQkFrQUJnQU9BRGtBQXdBQkJBa0FDZ0FvQUdNQWFRQmpBRzhBYlFCdkFHOEFiZ0JXQUdVQWNnQnpBR2tBYndCdUFDQUFNQUF1QURBQWFRQmpBRzhBYlFCdkFHOEFibWxqYjIxdmIyNEFhUUJqQUc4QWJRQnZBRzhBYmdCU0FHVUFad0IxQUd3QVlRQnlBR2tBWXdCdkFHMEFid0J2QUc0QVJ3QmxBRzRBWlFCeUFHRUFkQUJsQUdRQUlBQmlBSGtBSUFCSkFHTUFid0JOQUc4QWJ3QnVBQUFBQUFNQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQT0pIGZvcm1hdCgnd29mZicpO1xuXHRmb250LXdlaWdodDogbm9ybWFsO1xuXHRmb250LXN0eWxlOiBub3JtYWw7XG59XG5cbltjbGFzcyo9XCJpY29uLXV0aWxpdHktXCJdIHtcblx0Zm9udC1mYW1pbHk6ICdpY29tb29uJztcblx0c3BlYWs6IG5vbmU7XG5cdGZvbnQtc3R5bGU6IG5vcm1hbDtcblx0Zm9udC13ZWlnaHQ6IG5vcm1hbDtcblx0Zm9udC12YXJpYW50OiBub3JtYWw7XG5cdHRleHQtdHJhbnNmb3JtOiBub25lO1xuXHRsaW5lLWhlaWdodDogMTtcblxuXHQvKiBCZXR0ZXIgRm9udCBSZW5kZXJpbmcgPT09PT09PT09PT0gKi9cblx0LXdlYmtpdC1mb250LXNtb290aGluZzogYW50aWFsaWFzZWQ7XG5cdC1tb3otb3N4LWZvbnQtc21vb3RoaW5nOiBncmF5c2NhbGU7XG59XG5cbi5pY29uLXV0aWxpdHktc3VjY2VzczpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTYwMFwiO1xufVxuLmljb24tdXRpbGl0eS1hdHRhY2g6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMDBcIjtcbn1cbi5pY29uLXV0aWxpdHktYm9va21hcms6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMDFcIjtcbn1cbi5pY29uLXV0aWxpdHktY2FsbDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAwMlwiO1xufVxuLmljb24tdXRpbGl0eS1jaGF0OmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDAzXCI7XG59XG4uaWNvbi11dGlsaXR5LWNoZWNraW46YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMDRcIjtcbn1cbi5pY29uLXV0aWxpdHktY2hldnJvbmxlZnQ6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMDVcIjtcbn1cbi5pY29uLXV0aWxpdHktY2hldnJvbnJpZ2h0OmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDA2XCI7XG59XG4uaWNvbi11dGlsaXR5LWNsb3NlOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDA3XCI7XG59XG4uaWNvbi11dGlsaXR5LWRvd246YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMDhcIjtcbn1cbi5pY29uLXV0aWxpdHktZG93bmxvYWQ6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMDlcIjtcbn1cbi5pY29uLXV0aWxpdHktZW1haWw6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMGJcIjtcbn1cbi5pY29uLXV0aWxpdHktZ3JvdXBzOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDBlXCI7XG59XG4uaWNvbi11dGlsaXR5LWltYWdlOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDBmXCI7XG59XG4uaWNvbi11dGlsaXR5LWxlZnQ6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMTBcIjtcbn1cbi5pY29uLXV0aWxpdHktbGlrZTpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAxMVwiO1xufVxuLmljb24tdXRpbGl0eS1saW5rOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDEyXCI7XG59XG4uaWNvbi11dGlsaXR5LWxpc3Q6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMTNcIjtcbn1cbi5pY29uLXV0aWxpdHktbG9jYXRpb246YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMTRcIjtcbn1cbi5pY29uLXV0aWxpdHktbG9nb3V0OmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDE1XCI7XG59XG4uaWNvbi11dGlsaXR5LXBlb3BsZTpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAxNlwiO1xufVxuLmljb24tdXRpbGl0eS1waG90bzpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAxN1wiO1xufVxuLmljb24tdXRpbGl0eS1yZXBseTpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAxOFwiO1xufVxuLmljb24tdXRpbGl0eS1yaWdodDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAxOVwiO1xufVxuLmljb24tdXRpbGl0eS11cDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAxZVwiO1xufVxuLmljb24tdXRpbGl0eS11cGxvYWQ6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMWZcIjtcbn1cbi5pY29uLXV0aWxpdHktdXNlcjpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAyMFwiO1xufVxuLmljb24tdXRpbGl0eS1maWx0ZXI6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMjJcIjtcbn1cbi5pY29uLXV0aWxpdHktaGVscDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAyM1wiO1xufVxuLmljb24tdXRpbGl0eS1lcnJvcjpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAyNFwiO1xufVxuLmljb24tdXRpbGl0eS13YXJuaW5nOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDI1XCI7XG59XG4uaWNvbi11dGlsaXR5LWFkZHVzZXI6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMjZcIjtcbn1cbi5pY29uLXV0aWxpdHktYWRkOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDI3XCI7XG59XG4uaWNvbi11dGlsaXR5LWVkaXQ6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMGFcIjtcbn1cbi5pY29uLXV0aWxpdHktYmFjazpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAyOFwiO1xufVxuLmljb24tdXRpbGl0eS1sb2NrOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDI5XCI7XG59XG4uaWNvbi11dGlsaXR5LWluZm86YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMmRcIjtcbn1cbi5pY29uLXV0aWxpdHktZnJvemVuOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDJlXCI7XG59XG4uaWNvbi11dGlsaXR5LXNwaW5uZXI6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMmJcIjtcbn1cbi5pY29uLXV0aWxpdHktbmV3czpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAyZlwiO1xufVxuLmljb24tdXRpbGl0eS1kYXNoOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDMwXCI7XG59XG4uaWNvbi11dGlsaXR5LXF1ZXN0aW9uOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDMxXCI7XG59XG4uaWNvbi11dGlsaXR5LTNkb3RzOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDMyXCI7XG59XG4uaWNvbi11dGlsaXR5LXJlZnJlc2g6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMzNcIjtcbn1cbi5pY29uLXV0aWxpdHktc29jaWFsc2hhcmU6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMzRcIjtcbn1cbi5pY29uLXV0aWxpdHktcHJpb3JpdHk6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMjFcIjtcbn1cbi5pY29uLXV0aWxpdHktc2VhcmNoOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDFiXCI7XG59XG4uaWNvbi11dGlsaXR5LXJvd3M6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMWFcIjtcbn1cbi5pY29uLXV0aWxpdHktZXZlbnQ6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMGNcIjtcbn1cbi5pY29uLXV0aWxpdHktc2V0dGluZ3M6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMWNcIjtcbn1cbi5pY29uLXV0aWxpdHktY2hlY2s6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMmFcIjtcbn1cbi5pY29uLXV0aWxpdHktbm90aWZpY2F0aW9uOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDJjXCI7XG59XG4uaWNvbi11dGlsaXR5LXNoYXJlOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDFkXCI7XG59XG4uaWNvbi11dGlsaXR5LWZhdm9yaXRlOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDBkXCI7XG59XG4uaWNvbi11dGlsaXR5LXNtczpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTYwMVwiO1xufVxuLmljb24tdXRpbGl0eS1wdXNoOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlNjAyXCI7XG59XG5cbkBmb250LWZhY2Uge1xuXHRmb250LWZhbWlseTogJ2ljb21vb24nO1xuXHRzcmM6IHVybCgnZm9udHMvaWNvbW9vbi5lb3QnKTtcbn1cbkBmb250LWZhY2Uge1xuXHRmb250LWZhbWlseTogJ2ljb21vb24nO1xuXHRzcmM6IHVybChkYXRhOmFwcGxpY2F0aW9uL3gtZm9udC10dGY7Y2hhcnNldD11dGYtODtiYXNlNjQsQUFFQUFBQUxBSUFBQXdBd1QxTXZNZzhTRGRBQUFBQzhBQUFBWUdOdFlYQ3lTM2hsQUFBQkhBQUFBSnhuWVhOd0FBQUFFQUFBQWJnQUFBQUlaMng1WnVWcW01OEFBQUhBQUFBRzJHaGxZV1FGTlBZekFBQUltQUFBQURab2FHVmhCOE1EMUFBQUNOQUFBQUFrYUcxMGVEWHFBRm9BQUFqMEFBQUFVR3h2WTJFUmhnK3FBQUFKUkFBQUFDcHRZWGh3QUJvQVZ3QUFDWEFBQUFBZ2JtRnRaVmNacHU0QUFBbVFBQUFCUlhCdmMzUUFBd0FBQUFBSzJBQUFBQ0FBQXdRQUFaQUFCUUFBQXBrQ3pBQUFBSThDbVFMTUFBQUI2d0F6QVFrQUFBQUFBQUFBQUFBQUFBQUFBQUFCRUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJBQUFEd3BnUEEvOEFBUUFQQUFFQUFBQUFCQUFBQUFBQUFBQUFBQUFBZ0FBQUFBQUFDQUFBQUF3QUFBQlFBQXdBQkFBQUFGQUFFQUlnQUFBQWVBQkFBQXdBT0FBRUFJT1lFNlN6cGhPb0s2Zy9xVnZCRThFcndUdkJhOEtiLy9mLy9BQUFBQUFBZzVnSHBMT21FNmdycUQrcFY4RVR3U3ZCTzhGcndwZi85Ly84QUFmL2pHZ01XM0JhRkZnQVYvQlczRDhvUHhRL0NEN2NQYlFBREFBRUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQi8vOEFEd0FCQUFBQUFBQUFBQUFBQWdBQU56a0JBQUFBQUFFQUFBQUFBQUFBQUFBQ0FBQTNPUUVBQUFBQUFRQUFBQUFBQUFBQUFBSUFBRGM1QVFBQUFBQUJBQUFBUUFHQUEwQUFBd0FBRXdrQkVRQUJnUDZBQTBEK2dQNkFBd0FBQUFFQUFBREFBd0FDUUFBREFBQVRDUUVoQUFHQUFYLzlBUUpBL29BQmdBQUFBZ0FTLzhBRDdnUEFBRFlBU3dBQUFTNEJQZ0UzSnc0Qkl5SXVBalVqRkFZSERnSW1Kd2NlQVJjZUFRNEJCeGMrQVRNeUhnSVZNelEyTno0Q0ZoYzNMZ0VuQlNJdUFqVTBQZ0l6TWg0Q0ZSUU9BaU1EcGhRSkV5OGpaUlV5R3loSE5SN0pEUTBWUGtoTkkyVVdKUTBVQ1JRdUkyVVZNaG9vUnpVZnlRME5GRDVKVENSa0ZTVU4vbG9yU3prZ0lEbExLeXRMT1NBZ09Vc3JBVjRqVEVrK0ZLOE5EaDgxUnlrWk1oY2pMaE1KRks0TkpCY2pURWcvRks0TURoODFSeWdaTVJjakxoTUpGSzhNSkJkdElEbExLeXRMT1NBZ09Vc3JLMHM1SUFBQUFBQUVBQUQvd0FRQUE4QUFFQUFhQUM4QVJBQUFBVFEyT3dFeUZoMEJGQVlyQVNJbVBRRVRJVFV6TlNNMU14RXpBeUlPQWhVVUhnSXpNajRDTlRRdUFpTVJJaTRDTlRRK0FqTXlIZ0lWRkE0Q0l3SEFIQlFnRkJ3Y0ZDQVVITUQvQUVCQXdFQ0FhcnVMVUZDTHUycHF1NHRRVUl1N2FsYVljVUZCY1poV1ZwaHhRVUZ4bUZZQ2tCUWNIQlFnRkJ3Y0ZDRCtNRURBUVA4QUFzQlFpN3RxYXJ1TFVGQ0x1MnBxdTR0US9HQkJjWmhXVnBoeFFVRnhtRlpXbUhGQkFBVUFBUC9BQkFBRHdBQUpBQTBBRmdBYUFDRUFBQUVSSVFjUklSRWhFU0VsRlNNM0F4RXpOU0VWQnhFaEFSVWpOd0VoRVRNMUlSRUNnUDVBd0FHQUFvRCtnUDVBWldXQXdBRkF3UDdBQWdCbFpRR0EvZ0RBQVVBQ3dBRUF3UDNBL3dBREFLVmxaZjJiQWNEQXdNRC9BQUZsWldYOW13SEF3UDJBQUFBQkFBRC93QVFBQThBQUxnQUFBU0UzTGdFaklnWUhEZ0VWRkJZWEhnRXpNalkzUGdFM0Z3NERJeUl1QWpVMFBnSXpNaDRDRnpjUkJBRCtnSkEzakUxTmpEYzJPam8yTjR4TlRZdzNCQWtFWUNOV1ltdzZhcnVMVUZDTHUybzFaRnhTSTVZQ1FKQTJPam8yTjR4TlRZdzNOam82TmdVSkJWUW9RUzBaVUl1N2FtcTdpMUFWSnpjamx2NkFBQUVBQVAvQUJBQUR3QUFrQUFBQklSRTBKaXNCSWdZVkVTRWlCaDBCRkJZeklSRVVGanNCTWpZMUVTRXlOajBCTkNZakErRCtvQk1Od0EwVC9xQU5FeE1OQVdBVERjQU5Fd0ZnRFJNVERRSkFBV0FORXhNTi9xQVREY0FORS82Z0RSTVREUUZnRXczQURSTUFBQUVBQXYvQ0EvNER2Z0JVQUFBbE9BRXhDUUU0QVRFK0FUYzJKaThCTGdFSERnRUhPQUV4Q1FFNEFURXVBU2NtQmc4QkRnRVhIZ0VYT0FFeENRRTRBVEVPQVFjR0ZoOEJIZ0UzUGdFM09BRXhDUUU0QVRFZUFSY1dOajhCUGdFbkxnRW5BL2YreVFFM0FnUUJBd01Ia3djU0NRTUdBdjdKL3NrQ0JnTUpFZ2VUQndNREFRUUNBVGYreVFJRUFRTURCNU1IRWdrREJnSUJOd0UzQWdZRENSSUhrd2NEQXdFRUFva0JOd0UzQWdZRENSSUhrd2NEQXdFRUF2N0pBVGNDQkFFREF3ZVRCeElKQXdZQy9zbit5UUlHQXdrU0I1TUhBd01CQkFJQk4vN0pBZ1FCQXdNSGt3Y1NDUU1HQWdBQUFBSUFBUC9BQkFBRHdBQVVBQ0VBQUFFaURnSVZGQjRDTXpJK0FqVTBMZ0lqRVNJbU5UUTJNeklXRlJRR0l3SUFhcnVMVUZDTHUycHF1NHRRVUl1N2FqVkxTelUxUzBzMUE4QlFpN3RxYXJ1TFVGQ0x1MnBxdTR0US9ZQkxOVFZMU3pVMVN3QUNBQUQvd0FRQUE4QUFGQUFwQUFBQklnNENGUlFlQWpNeVBnSTFOQzRDSXhFaUxnSTFORDRDTXpJZUFoVVVEZ0lqQWdCcXU0dFFVSXU3YW1xN2kxQlFpN3RxVUl0cFBEeHBpMUJRaTJrOFBHbUxVQVBBVUl1N2FtcTdpMUJRaTd0cWFydUxVUHlBUEdtTFVGQ0xhVHc4YVl0UVVJdHBQQUFCQUFBQVFBR0FBMEFBQXdBQUV3RVJBUUFCZ1A2QUFjRCtnQU1BL29BQUFBRUFSZ0FBQTdjRGJnQWVBQUFCTmhjV0ZSRVVCd1luQVNZbkVSUUhCaWNCSmpVME53RTJGeFlWRVRZM0E1MExCd2dJQnd2K2FnUURCd2dML21zTEN3R1ZDd2dIQXdRRFpnc0RCQS84dHc4REF3b0JsZ1VHL21vUEF3TUtBWllMRHc4TEFaVUxBd1FQL21zR0JRQUFBQUFCQUFBQUFBTnhBMjRBSGdBQU53WW5KalVSTkRjMkZ3RVdGeEUwTnpZWEFSWVZGQWNCQmljbU5SRUdCeG9MQ0FjSENBc0JsUVVEQndnTEFaVUxDLzVyQ3dnSEF3VUhDZ01ERHdOSkR3UURDLzVyQlFZQmxROEVBd3YrYXdzUER3dithZ29EQXc4QmxnWUZBQUFCQUFBQVFBR0FBMEFBQXdBQUV3a0JFUUFCZ1A2QUEwRCtnUDZBQXdBQUFBSUFBQUJBQW9BRFFBQURBQWdBQUFrQkVRRUJNeEVqRVFFQUFZRCtnUDhBZ0lBQndQNkFBd0QrZ1A2QUF3RDlBQUFBQUFBQ0FBQUFRQUtBQTBBQUF3QUlBQUEzQ1FFUkFSRXpFU01BQVlEK2dBSUFnSUJBQVlBQmdQMEFBd0Q5QUFNQUFBQUJBQUFBQVFBQW1XaENSbDhQUFBVQUN3UUFBQUFBQU5FSzJOc0FBQUFBMFFyWTJ3QUEvOEFFQUFQQUFBQUFDQUFDQUFBQUFBQUFBQUVBQUFQQS84QUFBQVFBQUFELy93UUFBQUVBQUFBQUFBQUFBQUFBQUFBQUFBQVVBQUFBQUFBQUFBQUFBQUFBQWdBQUFBRi9BQUFDL3dBQUJBQUFFZ1FBQUFBRUFBQUFCQUFBQUFRQUFBQUVBQUFDQkFBQUFBUUFBQUFCZndBQUE3Y0FSZ08zQUFBQmZ3QUFBb0FBQUFLQUFBQUFBQUFBQUFvQUZBQWVBQzRBUGdDdUFRd0JTZ0dRQWNZQ1BnSndBcXdDdkFMMEF5b0RPZ05VQTJ3QUFBQUJBQUFBRkFCVkFBVUFBQUFBQUFJQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQURnQ3VBQUVBQUFBQUFBRUFEZ0FBQUFFQUFBQUFBQUlBRGdCSEFBRUFBQUFBQUFNQURnQWtBQUVBQUFBQUFBUUFEZ0JWQUFFQUFBQUFBQVVBRmdBT0FBRUFBQUFBQUFZQUJ3QXlBQUVBQUFBQUFBb0FOQUJqQUFNQUFRUUpBQUVBRGdBQUFBTUFBUVFKQUFJQURnQkhBQU1BQVFRSkFBTUFEZ0FrQUFNQUFRUUpBQVFBRGdCVkFBTUFBUVFKQUFVQUZnQU9BQU1BQVFRSkFBWUFEZ0E1QUFNQUFRUUpBQW9BTkFCakFHa0FZd0J2QUcwQWJ3QnZBRzRBVmdCbEFISUFjd0JwQUc4QWJnQWdBREVBTGdBd0FHa0FZd0J2QUcwQWJ3QnZBRzVwWTI5dGIyOXVBR2tBWXdCdkFHMEFid0J2QUc0QVVnQmxBR2NBZFFCc0FHRUFjZ0JwQUdNQWJ3QnRBRzhBYndCdUFFWUFid0J1QUhRQUlBQm5BR1VBYmdCbEFISUFZUUIwQUdVQVpBQWdBR0lBZVFBZ0FFa0FZd0J2QUUwQWJ3QnZBRzRBTGdBQUFBQURBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBKSBmb3JtYXQoJ3RydWV0eXBlJyksXG5cdFx0IHVybChkYXRhOmFwcGxpY2F0aW9uL2ZvbnQtd29mZjtjaGFyc2V0PXV0Zi04O2Jhc2U2NCxkMDlHUmdBQkFBQUFBQXRFQUFzQUFBQUFDdmdBQVFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQlBVeTh5QUFBQkNBQUFBR0FBQUFCZ0R4SU4wR050WVhBQUFBRm9BQUFBbkFBQUFKeXlTM2hsWjJGemNBQUFBZ1FBQUFBSUFBQUFDQUFBQUJCbmJIbG1BQUFDREFBQUJ0Z0FBQWJZNVdxYm4yaGxZV1FBQUFqa0FBQUFOZ0FBQURZRk5QWXphR2hsWVFBQUNSd0FBQUFrQUFBQUpBZkRBOVJvYlhSNEFBQUpRQUFBQUZBQUFBQlFOZW9BV214dlkyRUFBQW1RQUFBQUtnQUFBQ29SaGcrcWJXRjRjQUFBQ2J3QUFBQWdBQUFBSUFBYUFGZHVZVzFsQUFBSjNBQUFBVVVBQUFGRlZ4bW03bkJ2YzNRQUFBc2tBQUFBSUFBQUFDQUFBd0FBQUFNRUFBR1FBQVVBQUFLWkFzd0FBQUNQQXBrQ3pBQUFBZXNBTXdFSkFBQUFBQUFBQUFBQUFBQUFBQUFBQVJBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBQThLWUR3UC9BQUVBRHdBQkFBQUFBQVFBQUFBQUFBQUFBQUFBQUlBQUFBQUFBQWdBQUFBTUFBQUFVQUFNQUFRQUFBQlFBQkFDSUFBQUFIZ0FRQUFNQURnQUJBQ0RtQk9rczZZVHFDdW9QNmxid1JQQks4RTd3V3ZDbS8vMy8vd0FBQUFBQUlPWUI2U3pwaE9vSzZnL3FWZkJFOEVyd1R2QmE4S1gvL2YvL0FBSC80eG9ERnR3V2hSWUFGZndWdHcvS0Q4VVB3ZyszRDIwQUF3QUJBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFFQUFmLy9BQThBQVFBQUFBQUFBQUFBQUFJQUFEYzVBUUFBQUFBQkFBQUFBQUFBQUFBQUFnQUFOemtCQUFBQUFBRUFBQUFBQUFBQUFBQUNBQUEzT1FFQUFBQUFBUUFBQUVBQmdBTkFBQU1BQUJNSkFSRUFBWUQrZ0FOQS9vRCtnQU1BQUFBQkFBQUF3QU1BQWtBQUF3QUFFd2tCSVFBQmdBRi8vUUVDUVA2QUFZQUFBQUlBRXYvQUErNER3QUEyQUVzQUFBRXVBVDRCTnljT0FTTWlMZ0kxSXhRR0J3NENKaWNISGdFWEhnRU9BUWNYUGdFek1oNENGVE0wTmpjK0FoWVhOeTRCSndVaUxnSTFORDRDTXpJZUFoVVVEZ0lqQTZZVUNSTXZJMlVWTWhzb1J6VWV5UTBORlQ1SVRTTmxGaVVORkFrVUxpTmxGVElhS0VjMUg4a05EUlErU1V3a1pCVWxEZjVhSzBzNUlDQTVTeXNyU3prZ0lEbExLd0ZlSTB4SlBoU3ZEUTRmTlVjcEdUSVhJeTRUQ1JTdURTUVhJMHhJUHhTdURBNGZOVWNvR1RFWEl5NFRDUlN2RENRWGJTQTVTeXNyU3prZ0lEbExLeXRMT1NBQUFBQUFCQUFBLzhBRUFBUEFBQkFBR2dBdkFFUUFBQUUwTmpzQk1oWWRBUlFHS3dFaUpqMEJFeUUxTXpVak5UTVJNd01pRGdJVkZCNENNekkrQWpVMExnSWpFU0l1QWpVMFBnSXpNaDRDRlJRT0FpTUJ3QndVSUJRY0hCUWdGQnpBL3dCQVFNQkFnR3E3aTFCUWk3dHFhcnVMVUZDTHUycFdtSEZCUVhHWVZsYVljVUZCY1poV0FwQVVIQndVSUJRY0hCUWcvakJBd0VEL0FBTEFVSXU3YW1xN2kxQlFpN3RxYXJ1TFVQeGdRWEdZVmxhWWNVRkJjWmhXVnBoeFFRQUZBQUQvd0FRQUE4QUFDUUFOQUJZQUdnQWhBQUFCRVNFSEVTRVJJUkVoSlJVak53TVJNelVoRlFjUklRRVZJemNCSVJFek5TRVJBb0QrUU1BQmdBS0Evb0QrUUdWbGdNQUJRTUQrd0FJQVpXVUJnUDRBd0FGQUFzQUJBTUQ5d1A4QUF3Q2xaV1g5bXdIQXdNREEvd0FCWldWbC9ac0J3TUQ5Z0FBQUFRQUEvOEFFQUFQQUFDNEFBQUVoTnk0Qkl5SUdCdzRCRlJRV0Z4NEJNekkyTno0Qk54Y09BeU1pTGdJMU5ENENNekllQWhjM0VRUUEvb0NRTjR4TlRZdzNOam82TmplTVRVMk1Od1FKQkdBalZtSnNPbXE3aTFCUWk3dHFOV1JjVWlPV0FrQ1FOam82TmplTVRVMk1Oelk2T2pZRkNRVlVLRUV0R1ZDTHUycHF1NHRRRlNjM0k1YitnQUFCQUFEL3dBUUFBOEFBSkFBQUFTRVJOQ1lyQVNJR0ZSRWhJZ1lkQVJRV015RVJGQlk3QVRJMk5SRWhNalk5QVRRbUl3UGcvcUFURGNBTkUvNmdEUk1URFFGZ0V3M0FEUk1CWUEwVEV3MENRQUZnRFJNVERmNmdFdzNBRFJQK29BMFRFdzBCWUJNTndBMFRBQUFCQUFML3dnUCtBNzRBVkFBQUpUZ0JNUWtCT0FFeFBnRTNOaVl2QVM0QkJ3NEJCemdCTVFrQk9BRXhMZ0VuSmdZUEFRNEJGeDRCRnpnQk1Ra0JPQUV4RGdFSEJoWWZBUjRCTno0Qk56Z0JNUWtCT0FFeEhnRVhGalkvQVQ0Qkp5NEJKd1AzL3NrQk53SUVBUU1EQjVNSEVna0RCZ0wreWY3SkFnWURDUklIa3djREF3RUVBZ0UzL3NrQ0JBRURBd2VUQnhJSkF3WUNBVGNCTndJR0F3a1NCNU1IQXdNQkJBS0pBVGNCTndJR0F3a1NCNU1IQXdNQkJBTCt5UUUzQWdRQkF3TUhrd2NTQ1FNR0F2N0ovc2tDQmdNSkVnZVRCd01EQVFRQ0FUZit5UUlFQVFNREI1TUhFZ2tEQmdJQUFBQUNBQUQvd0FRQUE4QUFGQUFoQUFBQklnNENGUlFlQWpNeVBnSTFOQzRDSXhFaUpqVTBOak15RmhVVUJpTUNBR3E3aTFCUWk3dHFhcnVMVUZDTHUybzFTMHMxTlV0TE5RUEFVSXU3YW1xN2kxQlFpN3RxYXJ1TFVQMkFTelUxUzBzMU5Vc0FBZ0FBLzhBRUFBUEFBQlFBS1FBQUFTSU9BaFVVSGdJek1qNENOVFF1QWlNUklpNENOVFErQWpNeUhnSVZGQTRDSXdJQWFydUxVRkNMdTJwcXU0dFFVSXU3YWxDTGFUdzhhWXRRVUl0cFBEeHBpMUFEd0ZDTHUycHF1NHRRVUl1N2FtcTdpMUQ4Z0R4cGkxQlFpMms4UEdtTFVGQ0xhVHdBQVFBQUFFQUJnQU5BQUFNQUFCTUJFUUVBQVlEK2dBSEEvb0FEQVA2QUFBQUJBRVlBQUFPM0EyNEFIZ0FBQVRZWEZoVVJGQWNHSndFbUp4RVVCd1luQVNZMU5EY0JOaGNXRlJFMk53T2RDd2NJQ0FjTC9tb0VBd2NJQy81ckN3c0JsUXNJQndNRUEyWUxBd1FQL0xjUEF3TUtBWllGQnY1cUR3TURDZ0dXQ3c4UEN3R1ZDd01FRC81ckJnVUFBQUFBQVFBQUFBQURjUU51QUI0QUFEY0dKeVkxRVRRM05oY0JGaGNSTkRjMkZ3RVdGUlFIQVFZbkpqVVJCZ2NhQ3dnSEJ3Z0xBWlVGQXdjSUN3R1ZDd3YrYXdzSUJ3TUZCd29EQXc4RFNROEVBd3YrYXdVR0FaVVBCQU1ML21zTER3OEwvbW9LQXdNUEFaWUdCUUFBQVFBQUFFQUJnQU5BQUFNQUFCTUpBUkVBQVlEK2dBTkEvb0QrZ0FNQUFBQUNBQUFBUUFLQUEwQUFBd0FJQUFBSkFSRUJBVE1SSXhFQkFBR0Evb0QvQUlDQUFjRCtnQU1BL29EK2dBTUEvUUFBQUFBQUFnQUFBRUFDZ0FOQUFBTUFDQUFBTndrQkVRRVJNeEVqQUFHQS9vQUNBSUNBUUFHQUFZRDlBQU1BL1FBREFBQUFBUUFBQUFFQUFKbG9Ra1pmRHp6MUFBc0VBQUFBQUFEUkN0amJBQUFBQU5FSzJOc0FBUC9BQkFBRHdBQUFBQWdBQWdBQUFBQUFBQUFCQUFBRHdQL0FBQUFFQUFBQS8vOEVBQUFCQUFBQUFBQUFBQUFBQUFBQUFBQUFGQUFBQUFBQUFBQUFBQUFBQUFJQUFBQUJmd0FBQXY4QUFBUUFBQklFQUFBQUJBQUFBQVFBQUFBRUFBQUFCQUFBQWdRQUFBQUVBQUFBQVg4QUFBTzNBRVlEdHdBQUFYOEFBQUtBQUFBQ2dBQUFBQUFBQUFBS0FCUUFIZ0F1QUQ0QXJnRU1BVW9Ca0FIR0FqNENjQUtzQXJ3QzlBTXFBem9EVkFOc0FBQUFBUUFBQUJRQVZRQUZBQUFBQUFBQ0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBNEFyZ0FCQUFBQUFBQUJBQTRBQUFBQkFBQUFBQUFDQUE0QVJ3QUJBQUFBQUFBREFBNEFKQUFCQUFBQUFBQUVBQTRBVlFBQkFBQUFBQUFGQUJZQURnQUJBQUFBQUFBR0FBY0FNZ0FCQUFBQUFBQUtBRFFBWXdBREFBRUVDUUFCQUE0QUFBQURBQUVFQ1FBQ0FBNEFSd0FEQUFFRUNRQURBQTRBSkFBREFBRUVDUUFFQUE0QVZRQURBQUVFQ1FBRkFCWUFEZ0FEQUFFRUNRQUdBQTRBT1FBREFBRUVDUUFLQURRQVl3QnBBR01BYndCdEFHOEFid0J1QUZZQVpRQnlBSE1BYVFCdkFHNEFJQUF4QUM0QU1BQnBBR01BYndCdEFHOEFid0J1YVdOdmJXOXZiZ0JwQUdNQWJ3QnRBRzhBYndCdUFGSUFaUUJuQUhVQWJBQmhBSElBYVFCakFHOEFiUUJ2QUc4QWJnQkdBRzhBYmdCMEFDQUFad0JsQUc0QVpRQnlBR0VBZEFCbEFHUUFJQUJpQUhrQUlBQkpBR01BYndCTkFHOEFid0J1QUM0QUFBQUFBd0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUE9PSkgZm9ybWF0KCd3b2ZmJyk7XG5cdGZvbnQtd2VpZ2h0OiBub3JtYWw7XG5cdGZvbnQtc3R5bGU6IG5vcm1hbDtcbn1cblxuW2NsYXNzXj1cInNiLWljb24tXCJdLCBbY2xhc3MqPVwiIHNiLWljb24tXCJdIHtcblx0Zm9udC1mYW1pbHk6ICdpY29tb29uJztcblx0c3BlYWs6IG5vbmU7XG5cdGZvbnQtc3R5bGU6IG5vcm1hbDtcblx0Zm9udC13ZWlnaHQ6IG5vcm1hbDtcblx0Zm9udC12YXJpYW50OiBub3JtYWw7XG5cdHRleHQtdHJhbnNmb3JtOiBub25lO1xuXHRsaW5lLWhlaWdodDogMTtcblx0Zm9udC1zaXplOiAxLjJlbTtcblx0Y29sb3I6ICMxNjZiYmY7XG5cblx0LyogQmV0dGVyIEZvbnQgUmVuZGVyaW5nID09PT09PT09PT09ICovXG5cdC13ZWJraXQtZm9udC1zbW9vdGhpbmc6IGFudGlhbGlhc2VkO1xuXHQtbW96LW9zeC1mb250LXNtb290aGluZzogZ3JheXNjYWxlO1xufVxuXG4uc2ItaWNvbi1qdW1wLWxlZnQ6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGYwYTVcIjtcbn1cblxuLnNiLWljb24tanVtcC1yaWdodDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZjBhNlwiO1xufVxuXG4uc2ItaWNvbi10cmlhbmdsZS1sZWZ0OmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxmMDQ0XCI7XG59XG5cbi5zYi1pY29uLXRyaWFuZ2xlLXJpZ2h0MzpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZjA1YVwiO1xufVxuXG4uc2ItaWNvbi10cmlhbmdsZS1yaWdodDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTYwMVwiO1xufVxuXG4uc2ItaWNvbi10cmlhbmdsZS1kb3duOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlNjAyXCI7XG59XG5cbi5zYi1pY29uLWluZm86YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGU2MDRcIjtcbn1cblxuLnNiLWljb24tY29nOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlNjAzXCI7XG59XG5cbi5zYi1pY29uLWNvcHk6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGU5MmNcIjtcbn1cblxuLnNiLWljb24tc3Bpbm5lcjExOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlOTg0XCI7XG59XG5cbi5zYi1pY29uLXBsdXM6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGVhMGFcIjtcbn1cblxuLnNiLWljb24tY3Jvc3M6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGVhMGZcIjtcbn1cblxuLnNiLWljb24tcmFkaW8tY2hlY2tlZDI6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGVhNTVcIjtcbn1cblxuLnNiLWljb24tcmFkaW8tdW5jaGVja2VkOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlYTU2XCI7XG59XG5cbi8qTXVsdGktc2VnbWVudCBsaW5lIGV4cGFuZC9jb2xsYXBzZSBsaW5rKi9cbi5zYi1pY29uLXRyaWFuZ2xlLXJpZ2h0LFxuLnNiLWljb24tdHJpYW5nbGUtZG93biB7XG5cdGNvbG9yOiBibGFjaztcblx0dmVydGljYWwtYWxpZ246IHRleHQtYm90dG9tO1xuXHRjdXJzb3I6IHBvaW50ZXI7XG59XG5cbi8qQWN0aW9uIGxpbmtzIG9uIHRoZSBhY3Rpb25zIGNvbHVtbiovXG4uc2ItaWNvbi1jcm9zcy5saW5lLFxuLnNiLWljb24tY29nLmxpbmUge1xuXHRmb250LXNpemU6IDFlbTtcbn1cblxuLypQYWdpbmF0aW9uIGNvbnRyb2xzKi9cbi5zYi1pY29uLWp1bXAtbGVmdCxcbi5zYi1pY29uLXRyaWFuZ2xlLWxlZnQsXG4uc2ItaWNvbi10cmlhbmdsZS1yaWdodDMsXG4uc2ItaWNvbi1qdW1wLXJpZ2h0IHtcblx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0bWFyZ2luLXJpZ2h0OiA1cHg7XG5cdGN1cnNvcjogcG9pbnRlcjtcbn1cblxuLnNiLWljb24tanVtcC1sZWZ0LmRpc2FibGVkLFxuLnNiLWljb24tdHJpYW5nbGUtbGVmdC5kaXNhYmxlZCxcbi5zYi1pY29uLXRyaWFuZ2xlLXJpZ2h0My5kaXNhYmxlZCxcbi5zYi1pY29uLWp1bXAtcmlnaHQuZGlzYWJsZWQge1xuXHRjb2xvcjogI2QzZDNkMztcblx0Y3Vyc29yOiBkZWZhdWx0O1xufVxuXG4vKioqIGpRdWVyeSBVSSBDYWxlbmRhciAqKiovXG5cbi51aS1kYXRlcGlja2VyIHtcblx0YmFja2dyb3VuZC1pbWFnZTogdXJsKCcvaW1nL2Fsb2hhU2tpbi9jYWxfc3ByaXRlLnBuZycpO1xuXHRiYWNrZ3JvdW5kLXBvc2l0aW9uOiBsZWZ0IC0xMDlweDtcblx0YmFja2dyb3VuZC1yZXBlYXQ6IHJlcGVhdC14O1xuXHRiYWNrZ3JvdW5kLWNvbG9yOiAjZWRlZGVkO1xuXHR6LWluZGV4OiAxMDAgIWltcG9ydGFudDtcblx0d2lkdGg6IGF1dG87XG5cdHBhZGRpbmc6IDdweCA1cHggNnB4O1xuXHRib3JkZXItbGVmdDogMXB4IHNvbGlkICNkNmQ2ZDY7XG5cdGJvcmRlci1yaWdodDogMXB4IHNvbGlkICNkNmQ2ZDY7XG5cdC1tb3otYm94LXNoYWRvdzogMCAycHggNnB4ICMxMTE7XG5cdC13ZWJraXQtYm94LXNoYWRvdzogMCAycHggNnB4ICMxMTE7XG5cdGJveC1zaGFkb3c6IDAgMnB4IDZweCAjMTExO1xuXHQtbW96LWJvcmRlci1yYWRpdXM6IDVweDtcblx0LXdlYmtpdC1ib3JkZXItcmFkaXVzOiA1cHg7XG5cdGJvcmRlci1yYWRpdXM6IDVweDtcbn1cblxuLnVpLWRhdGVwaWNrZXIsIC51aS1kYXRlcGlja2VyLWhlYWRlciwgLnVpLWRhdGVwaWNrZXItY2FsZW5kYXIsIC51aS1kYXRlcGlja2VyLXdlZWstZW5kLCAudWktZGF0ZXBpY2tlci1idXR0b25wYW5lIHtcblx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHRvdmVyZmxvdzogaGlkZGVuO1xuXHR3aGl0ZS1zcGFjZTogbm93cmFwO1xufVxuXG4udWktZGF0ZXBpY2tlci1oZWFkZXIge1xuXHRwYWRkaW5nOiAwIDAgM3B4O1xufVxuXG4udWktZGF0ZXBpY2tlci10aXRsZSB7XG5cdGRpc3BsYXk6IGlubGluZS1ibG9jaztcbn1cblxuLnVpLWRhdGVwaWNrZXItbW9udGgge1xuXHRmbG9hdDogbGVmdDtcbn1cblxuLnVpLWRhdGVwaWNrZXIteWVhciB7XG5cdGZsb2F0OiByaWdodDtcbn1cblxuLnVpLWRhdGVwaWNrZXItcHJldiwgLnVpLWRhdGVwaWNrZXItbmV4dCB7XG5cdG1hcmdpbi10b3A6IDRweDtcblx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHR3aWR0aDogMTlweDtcblx0aGVpZ2h0OiAxNnB4O1xuXHRtYXJnaW46IDJweCA0cHggMCAwO1xuXHRiYWNrZ3JvdW5kLXJlcGVhdDogbm8tcmVwZWF0O1xuXHRsaW5lLWhlaWdodDogNDAwJTtcbn1cblxuLnVpLWRhdGVwaWNrZXItcHJldiB7XG5cdGZsb2F0OiBsZWZ0O1xuXHRiYWNrZ3JvdW5kLWltYWdlOiB1cmwoJy9pbWcvZnVuY19pY29ucy9jYWwvbGVmdEFycm93LmdpZicpO1xufVxuXG4udWktZGF0ZXBpY2tlci1uZXh0IHtcblx0ZmxvYXQ6IGxlZnQ7XG5cdGJhY2tncm91bmQtaW1hZ2U6IHVybCgnL2ltZy9mdW5jX2ljb25zL2NhbC9yaWdodEFycm93LmdpZicpO1xufVxuXG4udWktZGF0ZXBpY2tlci1jYWxlbmRhciB7XG5cdHBhZGRpbmc6IDAgNXB4O1xuXHRtYXJnaW4tbGVmdDogYXV0bztcblx0bWFyZ2luLXJpZ2h0OiBhdXRvO1xufVxuXG4udWktZGF0ZXBpY2tlci1jYWxlbmRhciA+IHRoZWFkID4gdHIgPiB0aCB7XG5cdHRleHQtYWxpZ246IGNlbnRlcjtcblx0Zm9udC13ZWlnaHQ6IG5vcm1hbDtcblx0Zm9udC1zaXplOiAuOWVtO1xuXHR3aWR0aDogMTQlO1xufVxuXG4udWktZGF0ZXBpY2tlci1jYWxlbmRhciB0ZCB7XG5cdHBhZGRpbmc6IDJweDtcbn1cblxuLnVpLWRhdGVwaWNrZXItY2FsZW5kYXIgYSB7XG5cdHdpZHRoOiBhdXRvO1xuXHRib3JkZXItYm90dG9tOiBub25lO1xuXHR0ZXh0LWRlY29yYXRpb246IG5vbmU7XG5cdGZvbnQtc2l6ZTogLjk1ZW07XG59XG5cbi51aS1kYXRlcGlja2VyLW90aGVyLW1vbnRoIGEge1xuXHRjb2xvcjogIzk5OTtcbn1cblxuLnVpLWRhdGVwaWNrZXItdG9kYXksIC51aS1kYXRlcGlja2VyLXRvZGF5ID4gYSB7XG5cdGJhY2tncm91bmQtY29sb3I6ICMxNzk3YzA7XG5cdGNvbG9yOiAjZmZmO1xuXHRmb250LXdlaWdodDogYm9sZDtcblx0dGV4dC1kZWNvcmF0aW9uOiBub25lO1xufVxuXG4udWktZGF0ZXBpY2tlci1jdXJyZW50LWRheSB7XG5cdGJhY2tncm91bmQtY29sb3I6ICNjNmUxZmY7XG5cdGJvcmRlcjogMXB4IHNvbGlkICM5Y2Y7XG5cdGZvbnQtd2VpZ2h0OiBib2xkO1xuXHR0ZXh0LWRlY29yYXRpb246IG5vbmU7XG59XG5cbi51aS1kYXRlcGlja2VyLWN1cnJlbnQtZGF5ID4gYSB7XG5cdGJhY2tncm91bmQtY29sb3I6ICNjNmUxZmY7XG5cdGNvbG9yOiAjMzMzO1xufVxuXG4udWktZGF0ZXBpY2tlci1idXR0b25wYW5lIHtcblx0cGFkZGluZzogMXB4O1xuXHRjbGVhcjogYm90aDtcbn1cblxuLnVpLWRhdGVwaWNrZXItYnV0dG9ucGFuZSA+IGJ1dHRvbiB7XG5cdGJhY2tncm91bmQ6IHRyYW5zcGFyZW50O1xuXHRib3JkZXI6IG5vbmUgIWltcG9ydGFudDtcblx0Y29sb3I6ICMwMTViYTc7XG5cdGN1cnNvcjogcG9pbnRlcjtcblx0Zm9udC13ZWlnaHQ6IG5vcm1hbDtcblx0cGFkZGluZzogMDtcblx0bWFyZ2luOiAwO1xufVxuXG4udWktZGF0ZXBpY2tlci1jbG9zZSB7XG5cdGRpc3BsYXk6IG5vbmU7XG59XG5cbiN1aS1kYXRlcGlja2VyLWRpdiB7XG5cdGRpc3BsYXk6IG5vbmU7XG59XG4iLCIvLyBAaW1wb3J0IFwiaWNvbnMvc2FsZXNmb3JjZS9jc3Mvc2YtaWNvbnMtZW1iZWRkZWQuY3NzXCI7XG5AZm9udC1mYWNlIHtcblx0Zm9udC1mYW1pbHk6ICdzZi1pY29ucyc7XG5cdHNyYzogdXJsKCcuLi9mb250L3NmLWljb25zLmVvdD84Nzc0MjQ0NicpO1xuXHRzcmM6IHVybCgnLi4vZm9udC9zZi1pY29ucy5lb3Q/ODc3NDI0NDYjaWVmaXgnKSBmb3JtYXQoJ2VtYmVkZGVkLW9wZW50eXBlJyksXG5cdHVybCgnLi4vZm9udC9zZi1pY29ucy5zdmc/ODc3NDI0NDYjc2YtaWNvbnMnKSBmb3JtYXQoJ3N2ZycpO1xuXHRmb250LXdlaWdodDogbm9ybWFsO1xuXHRmb250LXN0eWxlOiBub3JtYWw7XG59XG5AZm9udC1mYWNlIHtcblx0Zm9udC1mYW1pbHk6ICdzZi1pY29ucyc7XG5cdHNyYzogdXJsKCdkYXRhOmFwcGxpY2F0aW9uL29jdGV0LXN0cmVhbTtiYXNlNjQsZDA5R1JnQUJBQUFBQUdSZ0FBOEFBQUFBdjNnQUFRQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJIVTFWQ0FBQUJXQUFBQURzQUFBQlVJSXNsZWs5VEx6SUFBQUdVQUFBQVF3QUFBRlkrSUVvQ1kyMWhjQUFBQWRnQUFBTGtBQUFKRWg3RTdLbGpkblFnQUFBRXZBQUFBQk1BQUFBZ0J0Zi9CR1p3WjIwQUFBVFFBQUFGa0FBQUMzQ0trWkJaWjJGemNBQUFDbUFBQUFBSUFBQUFDQUFBQUJCbmJIbG1BQUFLYUFBQVVub0FBSnd5NnZPRnVtaGxZV1FBQUZ6a0FBQUFOQUFBQURZVUFETDdhR2hsWVFBQVhSZ0FBQUFmQUFBQUpBZEJBOWxvYlhSNEFBQmRPQUFBQUNFQUFBSXdJZWYvL1d4dlkyRUFBRjFjQUFBQkdnQUFBUnJHZ2FKSWJXRjRjQUFBWG5nQUFBQWdBQUFBSUFJc0RLQnVZVzFsQUFCZW1BQUFBWU1BQUFMTnYxcWw0WEJ2YzNRQUFHQWNBQUFEeGdBQUJjLzdrY3VQY0hKbGNBQUFZK1FBQUFCNkFBQUFodVZCSzd4NG5HTmdaR0JnNEdJd1lMQmpZSEp4OHdsaDRNdEpMTWxqa0dKZ1lZQUFrRHd5bXpFbk16MlJnUVBHQThxeGdHa09JR2FEaUFJQUpqc0ZTQUI0bkdOZ1pIN0dPSUdCbFlHQnFZcHBEd01EUXcrRVpuekFZTWpJQkJSbFlHVm13QW9DMGx4VEdCeGVNTHpvWVE3Nm44VVF4UnpNTUEwb3pBaVNBd0FVTmd5Z0FIaWM3ZGFMbHMwRkhNWHg3eG5qVUpSTEtaV2lYTHBRaVZSMG9hdTdycVFyS1VwSkNOMFRrakFQNGZIMlcrajduOW1QMGF6MW1UTnoxcHhaWjliNjdiMEhtQTNNMGpwTndzUVpSbjdGNklUUGpxYWZuOFh0MDg5UGpyYjUvZGlmR2pHUmE1bTZkUXRDYmd5UHcwc1lqNVpPUDA3NG1rbC84NWc1ek9VMlh6K1ArZHpCblN4Z0lZdFl6RjNjelJMdTRWNldjaC8zOHdETGVKQ0hXTTRLSHVZUlZyS0sxYXpoVVI3amNaNWdyZS9qU1o3aWFkYnpEQnZZeUxOczRqbWU1d1UyczRVWGVZbVhlWVd0Yk9OVlh1TjEzdUJOM21JN085akpMbmF6aDczczQyM2U0VjNlNDMwK1lEOEgrSkNEZk1USGZNS25mTWJuSE9Jd1gzQ0VML21Lb3h6amE3N2hPTi95SFNmNG5wUDh3Q2xPYzRZZk9jczV6dk1UUC9NTHYvSWJ2L01IZjNLQnY3aklKUzd6TjFmNGg2djh5eld1YzhPL2hkR1kvei9tRDUvR04vdmQxSEJCTTRaclMzbEJwSWJyVEEwWG1ob3VOK1dsa2ZMbVNIbDlwTHhEVXNORnA3eE5Vc083UzNtdnBMeGNVdDR3S2ErWmxIZE55Z3NuNWEyVDh1cEplZitrVEFJcE0wSEtkSkF5SjZSTURDbXpROG9Va1RKUHBFd1dLVE5HeXJTUk1uZWtUQ0FwczBqS1ZKSXluNlNHNjA2WldWS21sNVE1Sm1XaVNabHRVa01McGN3N0taTlB5ZzRnWlJ1UXNoZEkyUkNrN0FwU3RnWXArNE9VVFVMS1RpRmx1NUN5WjBqWk9LVHNIbEsyRUNuN2lKVE5STXFPSW1WYmtiSzNTTmxncE93eVVyWWFLZnVObEUxSHlzNGpaZnVSc2dkSjJZaWs3RVpTdGlRcCs1S1V6VW5LRGlWbG01S3lWMG5ac0tUc1dsSzJMaW43bDVSTlRNcE9KbVU3azdLblNkbllwT3h1VXJZNEtmdWNsTTFPeW80blpkdVRzdmRKdVFDazNBSlNyZ0lwOTRHVVMwSEt6U0RsZXBCeVIwaTVLS1RjRmxLdURDbjNocFRMUThvTkl1VWFrWEtYU0xsUXBOd3FVcTRXS2ZlTGxFdEd5azBqNWJxUmN1ZEl1WGlrM0Q1U3JpQXA5NUNVeTBqS2pTVGxXcEp5TjBtNW9LVGNVbEt1S2luM2xaUkxTOHJOSmVYNmtuS0hTYm5JL3Q4eWcrRnhhZ1pyL2dPZVNLTG1lSnhqWUVBREVoRElIUHcvQzRRQkVuWUQzd0I0bksxV2FYZlRSaFFkZVVtY2hDd2xDeTFxWWNURWFiQkdKbXpCZ0FsQnNtTWdYWnl0bGFDTEZEdnB2dkdKMytCZjgyVGFjK2czZmxydkd5OGtrTFRuY0pxVG8zZm56ZFhNMjJVU1dwTFlDK3VSbEpzdnhkVFdKbzNzUEFucGhrM0xVWHdvTzNzaFpZckozd1ZSRUsyVzJyY2RoMFJFSWxDMXJyQkVFUHNlV1pwa2ZPaFJSc3UycEZkTnlpMDk2UzViNDBHOVZkOStHanJLc1R1aHBHWXpkR2c5c2lWVkdGV2lTS1k5VXRLbVphajZLMGtydkwvQ3pGZk5VTUtJVGlKcHZCbkcwRWplRzJlMHltZzF0dU1vaW15eTNDaFNKSnJoUVJSNWxOVVM1K1NLQ1F6S0I4MlE4c3FuRWVYRC9JaXMyS09jVnJCTHR0UDh2aTk1cDNjNVA3RmZiMUcyNUVBZnlJN3M0T3gwSlYrRVcxdGgzTFNUN1NoVUVYYlhkMEpzMmV4VS8yYVA4cHBHQTdjck1yM1FqR0NwZklVUUt6K2h6UDRoV1MyY1QvbVNSNk5hc3BFVFFldGxUdXhMUG9IVzQ0Z3BjYzBZV2REZDBRa1IxUDJTTXd6Mm1ENGUvUEhlS1pZTEV3SjRITXQ2UnlXY0NCTXBZWE0wU2Rvd2NtQWxaWXNxcWZXdW1EamxkVnJFVzhKKzdkclJsODVvNDFCM1lqeGJEeDFiT1ZISjhXaFNwNWxNbmRwSnphTXBEYUtVZENaNHpLOERLRCtpU1Y1dFl6V0psVWZUT0diR2hFUWlBaTNjUzFOQkxEdXhwQ2tFemFNWnZia2JwcmwyTFZxa3lRUDEzS1AzOU9aV3VMblRVOW9POUxOR2YxYW5ZanJZQzlQcGFlUXY4V25hNVNKRjZmcnBHWDVNNGtIV0FqS1JMVGJEbElNSGIvME8wc3ZYbGh5RjF3Ylk3dTN6SzZoOTFrVHdwQUg3RzlBZVQ5VXBDVXlGbUZXSVZrQmlyV3RabHNuVnJCYXB5TlIzUTVwV3ZxelRCSXB5SEJmSHZveHgvVjh6TTVhWUVyN2ZpZE96SXk0OWMrMUxDTk1jZkp0MVBaclhxY1Z5QVhGbWVVNm5XWmJ2NnpUSDhnT2Q1bG1lMStrSVMxdW5veXcvMUdtQjVVYzZIV041UVF1YWROL0JrSXN3NUFJT2tEQ0VwUU5EV0Y2Q0lTd1ZER0c1Q0VOWUZtRUl5eVVZd3ZKakdNSnlHWWF3dkt4bDFkUlRTZVBhbVZnR2JFSmdZbzRldWN4RjVXb3F1VlJDdTJoVWFrT2VFbTZWVkJUUHFuOWxvRjQ4OG9ZNXNCWklsOGlhWHpIT2xZOUc1ZmpXRlMxdkdqdFh3TEhxYngrTzlqbnhVdGFMaFQ4Ri85WFdWQ1c5WXMzRGs2dndHNGFlYkNlcU5xbDRkRTJYejFVOXV2NWZWRlJZQy9RYlNJVllLTXF5YkhCbklvU1BPcDJHYXFDVlE4eHN6RHkwNjNYTG1wL0QvVGN4UWhaUS9mZzNGQm9MM0lOT1dVbFo3ZUNzMWRmYnN0dzdnM0k0RXl4Sk1UZnorbGI0SWlPejBuNlJXY3FlajN3ZWNBV01TbVhZYWdPdEZielpKekVQbWQ0a3p3UnhXMUUyU05yWXpnU0pEUnp6Z0huem5RUW1ZZXFxRGVSTzRZWU4rQVZoYnNGNUoxeWllcU1zaCs1RjdQTW9wUHhicCtKRTlxaG9qTUN6MlJ0aHIrOUN5bTl4RENRMCthVitERlFWb2FrWU5SWFFORkp1cUFaZnh0bTZiVUxHRHZRaktuYkRzcXppdzhjVzk1V1NiUm1FZktTSTFhT2puOVplb2s2cTNINW1GSmZ2bmI0RndTQTFNWDk3MzNSeGtNcTdXc2t5UjIwRFU3Y2FsVlBYbWtQalZZZnE1bEgxdmVQc0V6bHJtbTY2Sng1Nlg5T3EyOEhGWEN5dzltME8wbEltRjlUMVlZVU5vc3ZGcFZEcVpUUko3N2dIR0JZWTBPOVFpbzMvcS9yWWZKNHJWWVhSY1NUZlR0UzMwZWRnRFB3UDJIOUg5UVBROTJQb2NnMHV6L2VhRTU5dTlPRnNtYTZpRit1bjZEY3dhNjI1V2JvRzNOQjBBK0loUjYyT3VNb05mS2NHY1hxa3VSenBJZUJqM1JYaUFjQW1nTVhnRTkyMWpPWlRBS1A1akRrK3dPZk1ZZEJrRG9NdDVqRFlaczRhd0E1ekdPd3loOEVlY3hoOHdaeDFnQytad3lCa0RvT0lPUXllTUNjQWVNb2NCbDh4aDhIWHpHSHdEWFB1QTN6TEhBWXhjeGdrekdHd3IrbldNTXd0WHRCZG9MWkJWYUFEVTA5WTNNUGlVRk5seVA2T0Y0Yjl2VUhNL3NFZ3B2Nm82ZmFRK2hNdkRQVm5nNWo2aTBGTS9WWFRuU0gxTjE0WTZ1OEdNZlVQZzVqNlRMOFl5MlVHdjR4OGx3b0hsRjFzUHVmdmlmY1AyOFZBdVFBQkFBSC8vd0FQZUp6TXZRbWNIRWQ1TjF4VmZWV2ZNejMzN0RIbnpySEg3SzUyZC9hVWRtY2w3U0ZwZGEra2xTekw2ME95YkZtSGJ4dERiQzdiTVFZN3dqR09JSUdBRFFRd0pzU0VJd1FNNVAwZ2hoRENFUWkyT1g0QkRDRWZjWUJmdnNTdjFIeFBWZmNjTzFwWk51VE43OVhSWFYxZDNkTmRYZlU4ei8rNUNna0kvZ2lmeDE5SEJvcWpQQnF2akZCUkliS0VNRWFMWGhIaEpVa2dHT0dGMWhiTHhDaWRhc20zNWtOQk0yN0ZGUmtaMkZDbFVIZHdJSUZERnM3MDRxRkpuTDdnd1psa09aa3NUN0lOdnIyeG5HSzdLVjcrQjYveUFodDRaSXpRYno0dXZGMlFVQjhhcXF4QkJKT1RTRUxTS1FHZUcrRkYyR0cwSk1vRVdpNFExRlhJSkZ1aUFaK21vRDdTcDhEVHdrTU5yOE5EK1d3Nmt5L2JRL2x1bkpIRGRraUdZN2tkaHlLRDZZRUlIRWNtOE1Bd25COG0wM2lkWWR1Rzh3VlZDK2pqZWtCVG5TK3dDcnl1V29FN3ZCTXYwUko1ei81ZndqN3lPWGoyWWlYSE9oYWRsTEFnQ3FjUUZrVzhDSDB2TGlFUml3dkJZRElZak1oU1N6Y2VHUjdxdy9tTUQ4c1pieDlLNGtqSTJ3OU00ZUVCYjgvYURaSEZGMVUxcjBiVnM1SmZPZ3Y3b2dwRnlWR2h3Q3ZsLysxV3ZpamhhOC9TcHZQL1cvWkQwYTJVNWJPMWk2Q0wyWGd4eUgyb2dFYlFITnFIcmtZM1ZhNWYzbEhwRndWMWFYNjBLRktSek1FYkVSV1RaVDlHUGxNWFZBR3B5MGhBSWhYRVpjdlFCQ29wZEJGdUppdVM3RlpRWlFrcFZJRnZkZFVWQnc4czdscll2SEg5MnZHaGdaNnVUTEt0SlJvT0JYeW1vU2tTS3BDQ3piOGYrMDdaak13K1ViaDV6NzhmKzI1NUhKTGgwK2JoVXcvRHA0eUVvNi93bVB5ZGMyKzhJK1NQeGZ5aHhtMHVobStMNTNQT0Z5V3BLTXF5V0pTa0haSVVZc1dRSkYyMWFpMjVMeHVOUk5PeHE3ei9nV2loTTQ1L0VFczRSMWlMWnlYNDgreExsaENCc2ZPZzBDMzBvVFZvR2sxV0poQWJQZ1FkbHpHUzROOHg2R1ZNQkx5TUpGR1VvSXNsTnBJa0VmcDFhdTNJVURiZEVyVjlhQTFadytaQUx1dSs2QWovMjRzTGVWbVJGUXV6RGhpWnhQQXZtc0R3eEJFTFF5M01Ddm04M3NrczYvNjU4WTZXakN3VjVycVRFN0c4VEh6R3NtbGp1Yi9RZTJObDI5M0ZUa0ZZYzJqUzlBZUR0ckdzQndMNnNtSGY2dGZiMTEwVk1sdTcrcnEzOW1NY0NXY0hWQ05nRGw5ZTZDNWhZZWY2amR2WDMzNHdLb1dOZHNOK21sMTB1VzdiT2tJaWYvKzNDejIxOFhkbFpkbUNHV1VTWkM2ellXZkFzQU5pcG91R3pvZWNCa01PYVVpVk5IV1pZbS9JUVVGaUEwNWlBMjRQSDJ6cnhzdXJEamJmS3hoc0FxY2Z2SHM0L1JpNXlMR3c3ZHhuazcxajhYUTZQdGE0N1UyUzZWU3A5RjVkZFg1RmRaMWlVOVh6T25YZXErcTZpZzlRdlFCbjl2TXo3MU4xb2FlVUdrOFBwTTZrQjlKL0JQL0hrNzJsbEVCU3BYTTNxSm9HUkFBMk43RXJlZWtNMjl6SUR2bFU1cHUzazA4Z0gwb0NQWnF1VENJTVkwbkFDSHBQd1FRSWYrTllvcGdOcGt3cTRHZEVOZFdYNld1SitwT0JKQkJXSC9HcGJsL1ZYcEFOR2VGaXg3OTM5bDhaZFJSQ2JIdUJNcG14alRGMkJCdm5oMEJWTlp0dm5PL1Y2NzI1OFhtaEJHK3lFYzFYWnBBb2l5ZVJMTWtuMlllWFRoS1ZJQVdkUkFwV1RpSXNDSnpTQ2t2d3NnS2JINVBEZzcybHJzNU0ydU1VU1pMVTNGbkNPRUwxeTFVNVJaM0M1RE5LQXhGZXdUV3FGTGtnUEFhTXdEYk8zVzJ3QjlmdFVwSjlvSUN6ajhhb2M1YlNUdGhmSjltR0gwNkdJdHAxalBaUzZnVDBwOWpiUGNWbWdITTJWZXBOWWxFUGtEeGxGOFVva09kak1veUxvM29ncU9HSFRUamtwSnF5NzhyN29nZUZVQ2VhUWhzcjAwZ1VKRUdVamlPSkNCSTVCaDhaQ1NJU2x1RWpZMHdXWVVmd0VoQVB2QkFKWXpRK050Q1hTb1k3STUyNmhrSTRSTm1uelFCNWtFT01JZ3d3aWpGVXlCZnlRb1p0aDlqeEFEc1RZbTJFV2s5Qno5VTZBZi82TmNldVdUYzF0ZTZhWXk5ZWQzUnlhbXJ5NkhXdnVYVG50ajc0czIzbnA2cUZOb1d6VGZvV2x3RUpQYXhkN1FKZU9QdWRGVmZ3QXQ1THpVK3lqdnFaYXJ6RjVWaDhmUC9tbDhKUHlaZFJFVzFIZDZCU3BXdGNKaUxDYzBBM1JSZ0x3R1ZQZ3JBZ1lSQWZwQ00zWFgvbzBzMXpJK1ZrZTZjc2hidHh2c3hlRE40dm13RUtHSVpYRC9QM2c3OEp6RDR5SjUyVE9BZE5XTlB5a050V1ZpSnVVOWhGM1pibDRVSmVjcHROWXQ3T3ZXV2s0Wjdlb01xekhzVURuUzN4SG45cmUwZG5zajNWM2FhYTZYV3BUa3h5aVlwaWllSE90bDVUSmwxcFEydnJUclludXpyYTIreWVlRXVub2hoWGRZaVdVa25rY0NIbGZLdkRNdExSZUNhVlBaQk5aZUxSdEc3bDVsTjl1RGVOSDB6MzRrZ3dGOGVqNjdaT2p3eGxXbjEyT0xpeHVENlhpTm1HYmJXMjU3clRYVlRKSnlNeHVXV056MmNFMmxvS2xlTEdZTmoydFdhR1JxYTNyalBpY3Y4R2hYYWx1M1B0MS90dEs5Q2VqRXhrZWphSG85SHc1cDdNUkNRYmg5bnJUOFk3K3JJREE5bFVDN0FTeE9mcHgyRnNTaWdLVkh4dFpRem1JZ1lCQ0lud1ljaHhSTWdKR2FRaFVWaUVuY0Q0bHlBdXhHTUVwUk94UXJ6QTUyYVVSQldQMk1ETDRPWTVXUUNDRGNNT0RxTVI5bEdFbTUwdG9RNTlnOTRSZm4ycXA0ZFR4MUxLNlpja0lTRWIrSDJadUd5VXlFell2aWtRS3FYT0xiQ3orTmVwMGhsVkd0SU5nU3Fwa3N0N25nWmErVXVQVms2aDNaVWRsSW1iSUdVdWc3aURCSmtJeXpxV2tTTEt5cklHdEZJU0YyRW5Ta3RBUTZXRmdYNlhjbzZQOUU4TlRKMVBQNDBhcjNGZmhVMGlwZWxZYURvdU5KOWZRVThad2JFTjhxcm1jaU50L1NXblNEYWJjODgza05sQlBndjU1aWR3a2xWRE0yQVhDdWNaS1pBQnEvMndIVjBHVStrdGxUY2RQMHhNWTJIajJxR2VqdmF3S1drSVg3cUg2Sm93UjJYUlJ5UnNJb0FQeHdPcXJmZ2x3YUpJTTVGMkxJUU5xRGJNNVNEV2RGMWJoSjJtTHlGZDB4Y3VYOTY1bzFMcDcwK2xiQkFscjdsNitlVGxKL2Z2MjNIWnpzc3EyeXZiNW1mN3Avb25SNGRUZmFuZVlqNE9IV2tuVmVoSTdBdERSNDRNdW1PaE9qWVkvMjZnelhtODh2UkUwL0ZndHVsWXVzaUhlSGFBR2dabEd6SmFLem9PSzYxbG15ZlpKc1EyTDlSSytNeTVyN0U5NldmYmh2Sm40Tnd3TzNLZXBnWSs1TzdkT3VmZGplY3VWRjdyL1FKc0NLMlg2encvVFc1RmJhZ0g3VVY3S3J2V1lGSE90Uk1pZ09ndUtVeEVPbzVrVVpIRlkyeDhneUNrTE1Qd0Y0Z29MQ1BPTFZDTldXQzBjL3VtMmVsS2ViQ3prRTZHQXFnTnQ2azFac0ZJSmtDVUNORC9hR1RRNVJxTWFUVEprU091ZU9uVmdlZzUzRXZxb3Vnd2wwUkpOQ0xqWCsrYTNWRHN6RXRDbXhnd2xsUTZ2NWRYN05vd08xUi9TU3BJZk4vYUJjTXMweHN5QmFJcFlkWEF0TVV1eFpQbEZDWWxja3MrVjVsZW1KK21kTDloaTBsQjZtSVZqN3cybDNjbWE5L25HSlpFUHpWTjZvL2tmSG9ZMkcvQTlDbXFUODNIN1FER0FGa0xGU1Q4eGdGNjluTkJSUmFuYUtNVitBVkJ4SE9NY0oyRTdpWVloQ2pKQmFZU0I2WU1CQzc0ZlIyWjlwWlEwQmYxUjhjWXU4a0JKWk5CbGtoZ0dGUEFWREw1SVpBblF2SklVMjhKenpsemVpNm5PL09tbklvS3AySnAyVkZCY0J4SXA5TTYzY3BrdTYxVVQ1TXZCaTByZUc0c01wREpETXlDZ0pqdXp6ek9wTDhYbWVTSUd1U2xkdFNGT2lwcEVaQUR3R2dRaDBBOFFzQVJFVHFTVE9RNkVsM0pydTVCU1lwMDU4STFPV2hrMlB1bThFbUIxRExXanh0eHZ2RDVrZnk1Ukc1a3g5aE5odDljMk4rOUoyLzZqSzI5bFZUQkdaaThkdDI2YTEvTk50R3UzT2hJdm10THBUUW9TOHBBU3d6R1hycTFvOUJIZnJEeDV2dHUzc2czTG1iK1YvSU0rUXFJOXRySDJZTUZNZXN4RzM0cENqQVllaTJQVFN1azRyZkJwTHZHYXRmSSt6V0FMYzVmMEtUcVBLRUIyNm05YnovS0F0V2FxSXp5bHlReXFRbENuRjRyZFhxZDd5Q291NnVqTDkrWGFJMEVEUTFsU1piV2dSTmowM3lVZW1OM0JUbVFnTndBNjJmZEEreEhheTMyOUd6YXNtL256UHF0aFRZdFdiSjE0UW85VUhMKyt0T3FRWlRLWW9WaTQ5dkZ0dWYyYnBvRHhDU1d1aC9ZL2EyMmZHK3FYZmZiUm51eTlBMGZMWUlJb1ZwdVh6d28vQTNJZGhuVVUrbGthbytUVE5OQmdBWXpQUWpUZlJ6QnFMMHRIUEpidXFhSUtBT1RrVTNKck8yT3BMTGRVTXJBVzR5QTRBcmRDSUxiaDVjMTlTbFYvNG11UGtYMVpWbkhJc1YvSlFWRS9Da3FDbmlMczU5RGtEbm5rM3ovUGxreU5Qd3BXWFptcVFYd3pNTm5UTzRNQTIzWmdBNmd0MWI4dXpaWkVvaGNFd01kcmFKQXlOeVdqNmc3bGlweEdiUCtWeWgvY2tsbDFPZWtDQnovU091V2oyalFvQjNKV0haSDRtcU5YdUlHKy9kWFdtTVJndmJ2WGRpeWZxbzhsRWxIZW1JOWhvN0NKS3g1eXA4K1Q2TWkreGp1WlJSZTRVS0RVaFhsNGVOeEJoQ0ZVM0RFWlZnUU5vQVdNYVdSWElCVDdGSlBFd09qZ0g5Nk1vYUxQbGsvOURpbGN6U2tQbjZGSGcvZDVYeUhWeWtLcTNyaUN0azJ3bGZFOWVVbmFFU1prN0h5K0NGS05OWDV0aGJZMmdLMVNvVE9LY29UaDZpb2FUaXZSZkViVjdRMUZPdUNUWk1yZnVueEs1U0FFYjZyL2tCQUJPSFgvVWFJeThXUENrOEpMYWdiamFLRDZIUkZHOE9pTWduMGpuMGZHN3EvbDgyWWt5cFdxRWlWd3pLZkhGZHFJT1ZRaFZEQWhDQTBNMHlJOTNQeGVXdHJwYi94QXZFNHU0S0swckVMWDdLLzBsTHFPYkMwWjlmMnJmT3pHeXJySmdZSGVrWkxvNFdPZHAzTjdhcGlBbnE4RjhOY2xxT2N5akMyQW4zT2RweFFEaGQ2TWM1WU9BU1RiUklQOVdLdXBBaFhhV2EyU2pqTEx2VnN4NE5BUXZGanNaQnBhNkZXbzhNc0hibnI4bERNTkFmaWhxWFJ1QzlsYmk2TTZVcDhQSS9uZEYzcEtBQTVPelk1ZWV6VmJETmlxS01HSUdsMVFsWDVKcThhbzZyeHB2eGlOaG95dysxMitVMDNyeGZtSnpadTNOUVhhMG0xUlFLYVQwNG5TaE1kTTkwUjJuVVV0MDhDNFp1Q3UxMDdDWFI0bk9xYU9xNnBCVlViVnpXZGpnTmhWbXU2elpYeTFaM29BWFJ2NVkweEl5d0hKR1FxQk1Pa1dtN3hSN1dRSk5vNmtZZ29MY2V0Q0EwQ3doUElvbGNrd3BKUGhha2hMTHp1cmh0T1hiRzhhOGY2U2xVUXZlK2V1eDU0M1FPdnV2WFVuVGZjZVMxSVYxZWNQQURTMWE3TE5zOVZ0cS9mZmlFeHRaVnBlMTFVek1VbUxnMWQ1QmovSDI3LzRvMU1jM0toRFc2OUtaWk94eTYwd2EwdmViVWcxUS9PL1ZHOURLT3ZkZzg4OU4vVEJtaW9WTk54MlNqTjlYdzcwWExsMHZFQlFpZ0lGWVFDeFZPTzYweWNFR0FBd0Z5V0pVR0c2WVUwVmRLV1lmeFFvc0owVTBSUldVU0t3aENVd2pTQTJ4Zm1Oakl0WUY5UG9TUFpGZzF4RlpkTjdEcnM0RXB2VDI0V3VISzhEcXVhTmFuQml5cTNIQ1BaaTcrYUt1VUJUcjBWNEpiQkZSZ0FxNXozNnVvZk1RWUNtek82NnZ3ZFp5YURxcjRBWlBBdWZuQ1hxakc5VmdIUTJFOUtLYVlPYzM3SlVCbFRtTUZOL3FxbTJYTGV5NlNaQXR2YzZGWXkxUmFqYjg4Sm55ZmZoem1VQlU2MHBUSVA2RXlTQmVrNEJSb25TK0l4Z0p1eVNJNUJoOHZRZzZ1b1FYSWRBWDluc2FNbjE1Tk1SQ1ArYkNCYkhsQkJDTUpOSFFNSUxEOFNaT3IzQlBiVThMSlFsZDJFejVkU1o1MWt5Vlg0Zk9uYzEyMWIvVE01TEIrUkl0SnUyRDlDemZYd1hwVlNpWnptNy9jSTY2U3RDUitRYyswSmxhaTNxdW92clRnK3dKcFVTcDc4N3ZGWWdnYlFQblNvY29rZkhoMkdoaXhRUWFiSGdkd0NaQVhDcXhCQmdUZFVzWHFLRFJkQkJpbEhkTjlUNU84cHNlc1dKR0hmM20xYlptZldUNCtQbGJweUlKU0dBNlltREVnRGJHU01sTU00WGNkSW5tS0hHVTJHUFNOSlRmYXBZaWloYnF5NHNGN3NESG5HN1pqbjJXZDdUeDJidm9jZFB3K2Q4VGVkbFA2S3h1Z0xxbHFFM2Y2NmZtdy9iZmx6STBidWdmN2FraXB4Y2RjMjhBKzQyU1ZsMkZ3STdrMlNqNlZLNTk3TTlHRy9vdlRmWFJ2SEV0T1h2WS9oV3J6ZlZOVURpdHVmcDRYSGhDNlFMUSs0OW95dWRxSVNDOFNMblJ1SlFvVTVKaG1yQWxHUGE1ajFKc0xIRWFZcXBzZVFRaVdxTUtXYVRDV1phZDloN0tuTE9xYUtUQmRoUitVbEpGTjU0ZUFsR0YxeCtTVlhIN3g2eis2RlRlc3JmYVZjSmg1enJXZDgvalZ5TUZ3WUhpb0EyMk9xald6R1IybzZEc2Izb0dPenZCUkpRdmRHUWZCZ0EyOFFPam5DQ3F5TG9iOUh1R2pPUkJiSmxjZGQyUnovUjI2eW8yTnlNOXZnazNPU05CZFFqU1JOMklvdTdCK1k4b3ZaMkdRc0svckh4NVpFWGJFVE5HblFZRU16VTEyQ1ZsSW1OaG50RVAwYkIzZGJLalJxTjZsellQenlzYkhMYjJJYi9NL3dDK3M2T3RiQnovd0dyVzNaMXJMVzF4c2F0dndFcDB1aFN5SXRMWkg5Z1Q3QVNINXJPTlJucmMzQ1g3ZUJBT2N2amJZbm81ZEcrOU9pYlEzNFNsdkdsdmxOYjFvZTg4YitBM3pzWjlGR29JdEhLNGR6V0JYWFlVVmxWaWNOd1FjNkRyaExGVVNWelFONkNzbFFKMnZMUkNlSUdkbGdDaGhZVlJSMUVYWXFNd0tveXNMc0RPQ3hMVE03WjNkV3BzWkgrM29UYmJGSTBPYXljeFpuVFM0N2w2c0t6UnJuQ1ZkbnhLREhzd3JEVEFWWTRMcTlxcWFVZzE0dVBUSkUxL0FweU9LTmZKemV5RWtYSDhPTWdPRkxuK3NJaHNxRCt3NTg3Y0Mrd1NFbzdEODZ1WFowelhOY0c0clAvWGpUSFpzMjNYR2FiZkNQT2NXRGF4ZFV2YUhvMEdjR1JpY21qOEwxNWVxTnlxRmd4M09VRnRYNHA3MnJZWU1RcmRuemZFMlN4b09WTjdlYklGbmZlOWZTRGxIVGJ6czFYeEdwZW5SNXRGK1VGWEZPREJMUDhvUndvR292c0xHdUNmcXlIMnMrckZKTlhiWXdOVUZ3b3dyMHVTeEpNdlM1TEROd0pVc0xUS056LzMxdmVOMnJYM1hURGRkZHU5THE1OXByL1gxMm44YjFPU0gyQlFacnhJZjNmMVV2N3pHbDgvWHlUZnlxZkpGajZSVzJ4M2MvUzQxcy9QNTQxc0M3UXFMY2wzNDIzU2RKb1hnMkc4ZWZnSzN6eDNXVnhHb2JIRFBvbDFqNUFoc1NNR2lSM2ExSWpWbEpLcWI3K3RKRlNjckduVjM4Tno0Y3p6cTdhamZjc1VycDJaYzhXN1ZGdjBkWUo4UlFEcVVyQ1k3OU9WTUFJQVVmbjZzQWd1RnlNQnBtUnVnUkdOSkF1VWR3M1JhOXduak9MZFBLSncwRHA0eWtqak9HVVliOUpVcklGL1Z0OVVkOUllVVNQYWs3ZWtKM2ZxenJ1QlVLUTdxK1g3RjBvdmlpTWV2Y2YrbVdzbC8zN0h6dkFKcGNBdmxuSEhEa1BqUldHZTVJK2dTQ2dNOHh4TXZCQm1ObTVLUWl5QUFvanF3Ri9EQTdVNW1hMkxCMnc4and3UGpnZUNiTjBYcGVBZkxwQXdnUkRUS0RlVjVoWUFLbUpyTnhEdWNMSTR4bFc2NnRFNm9BVGtoVjdwMTJDeFlXWFBoWEdGSHlMbWFFbmhCOHBWNW5uMmpMdnJnUy9MSXNIKzlhVTE1UWxITC80TmpnTmwweEFqdHBndTRNR0lxMmJXaHNzTCtzbU52Ty9hV3Jwc0hQOEQzTy9Ka2NsTS80aVo4UVlwbXlYL296V2Y0UDNTWkRJS2dZd2NrVzU1ZEtTUGtEdjZidktJOHV4MW8wdW1rd094Mi9UdGV2YTZ1a0J6ZFJyU1cyUERxeS9kdnNudFYvK091SzhuUjRLRXlJcUdzZzQveFFDVkZQcG5UcDVqamFESHp1V25SSDVUWWttNFlwR3pDSERSWEk0WEdrVWtNRnJpWUs0aW1rSUNDQU9qT2UraXpOdDR3c1pNcVd5WXlyRkJsMEdSNGFDUUphWkhza2dDZ2hJR0VCbzZPSEw3dDBhYy8yclhNelUrdkdSOHVEdmQzRmZLSXREdVRVOE1pcHpUVW9GeWVuT1RiUjdFWmhpME80Vnl5SFByYVBLN1QzTWFaZkx6TFRZVC9JRHo5bUlnaCt2NjN2QTZtVTNzU0lNV3llMXozQkVoOXdwZEtxdFZXN3RlaytYdkZSUFlEZnh3VzRINmRLL1lZTkVtclY0dXE4dHlhWDFzMndxR29IK1JMZ3ZEREtvOHRkcFVlV1RVbDhKZlFtRVlrZ0FpOFRUMEJUZ2hiWkZmdmdJcktsdFpMaFdwR1hiTFMvWXNVaTZVUWtIOHNIeHdaa0tlckpyWVY4bndBTXl1MzdkRFNkWWRQQ0JkSWd4T2FGYlNDby84UnZtNGJXVHpYRERtMUtsY2lUbzJlZkRTWk04WVNjQ3BITjRiUjRRc3FSZ1ZRSmhvYzJydW1LVmtvOXZqV2NDVGpYQmFQUklINm9qY3VwVXMzT1U4ZXhJS3ZxUkJNOGpac0JDRmFTQWJXYXpHWkNaWVV4REl6cEl1d29YbEtoaUJmcWFQV2xVV25WVU4vSUE5Sk5LRkY1aGNmQ1krZitpd3VtQ256cGMxZC9rNWxKdnNrKytrdVdCR21sSWJ2cTlmQzg3Ym94d09ZbnZJS2ZlcjVlZE9tZUs5K29LSWlHQVB2TlYyYkNXRUVsTENrZzRRQ0VPUVdOS0JaaEFtSU1iRmNCenF0aVJaS1VSZGdwakxrcTBzSndlZTFFZVhwNE90elptcmR6S1UxcWJlQ2ZhMnB2K2Nva0ZueWNpK3JQdXhJTDJmcnlCWlhydVZ6aUNpZXZldTVsQ2ljaWwwMU1jaHNLb0F3Z25RbDBvTExQQis4OFc3VlJxRmdXRkZrQXNWdFVCSTdvRkVCMGRaTkZrNmxpYUpDZzBaSEJpYUdKM2xJK2wyaVBoR0VlQmtpQXF3U3orYW9WZndUZXU4Q01oZ3BuYUVNZXBndU5OQjlYdVFUNTJqTkIyL20xYlgvVEhnaGdId3pkN0w5YnNsKytWNWJkM2VZVlJ3UGg5dmF1OW5aeUM3YWRYOEVWMzdSdDdLY1I3ZXZBeitjdEdWcjRaWGUzZWNYUm8reXFyblpQWm1QMnR3alFqV0UwaS9haUkrZ1dkRGQ2cVBJSHpNd3dOZEpYRUNYNXNuM2I1MFJWTXpHeGJyMmFtRVNhdS9NazlNVXNBbFpqRWZPNFhkVWdCTEJBTWRjaEtGZ3lNTmNpNkZqMVk0dW8xcklQbTZKb0xzTE9aSm9FVTF5SVJRbDYvV3Z2dVAzRzY0OWRjK1hsbCt6ZnZYUExwZzNURTJPRGE3bzdVKzNSZkN4bk14dHRoRVNDS3cyYUhBTjY2Z1ZwNVV6TktoZHh4UHBkejVNZk9VL0ZzN0tJTTJ6YjNwbDFXcmtVVldIYkYrcFMyYk1Hdlo4VjcrZkZsMTFMN3N2R05WRUc0ZXhwVWU1c3g1dmoyZnZoNEVQOE54YmhZQlVaOExhWFdlZmFYSDl6clhCTTJJVk1aQU8vaUtOMjFJdEdHRll0R0VRSG9hZ1BveG5EZ3FJR2JQczQwZ2o4TzRhSUFQOFlMQlVsUVR6a2Vkd2RndHRSVmFHSFRCZ0J4anhTVlRaQnNJazNKUklZalpRVHZZbFNLdG5lMXRvU2p6SHZoR0RBOXZzc1ZVWW1OaG1WRFRaK09oV253L1cvZytFc0RtY0wzSU5oeE5YWERncGhUbFltOEE0bXdaSXZwL3VjZjNJTzRKM09FOVgvVHoxRi91NUwvb0EvYlBnQWFGTXRFRWtlVkxSZ3RPTkx3cTYrOU5sUDhPc3V3ZXZPZlNMZHhmOFMzU2NxbWhtSXRsdTJHZEl0UFBVak94Q3pBZ0QyNm5xZnV1NzBtc29Sa3hpTTYwakFkWkJraVFUR08xNzJVNThnSTFXVDFXVWJhNHFpTGNKT1U1WjByR2pLUXFPaTlPV29SUU9jakt4a0lKMU5WcUVHdDFOZTM4eHdtdHMzVy85eHRNWmx5T3NiZWRNdjhDelhmbndLdG5lczN1WXIvS1RCRzVMdkIvUVgyZEdMbm9tZmI1eXZjQnMvdC9hZjhjNjk2UGtEOE0xVDliWlZlOXJOd0t1aWdCNDZLM2tRd2tWOEV1aTJ5THc1dURtS0hDRW9rMnB0cVRwdHlHNGY1ZGMxSzlHQUJJd0FFNnAxeHBDdzk5djU3b0RwZkM0M09wb2o4L21SZ1BFVk9XUVZXaDRGU1Buajd0eDN6QUEzTU1KWi9FOW00T2F2eUtiNm5wYUNGZkxzWTR5SGRxUDJTa3NXYzh6Z0dqUzloMnJ2Q2d0TUltS3dvRWJVdWV1T3pNME1BQWNpcnZFT3V6aWhQQ1Q4cGVDbjc2Qng5UVNsZnlLTHROaTE4KzVNaDZZWXppTmh5d3I3TzR1ZGZueWt0WGZYL093aXVWb1Y1SGRRZWtLTjAzZUFWRzhzenM3djZtbDN6b1JIUjBKK0c1RHZFVUFGSFptN2QzWjdHT3hSb1NqRVBReFdCellTNC9BblFjcHV3R0Rja2VvbFhNNjRGL0NJMEdZWXpnOEFmRG5mMS9YaE9nanp4UUNFSFdEZzdETkdPME5nREltMUd4NEtPL2Rmdm1qY2hNSGlvVEQzMmU0UnZpd01vamxrVjZ5YVdUaG9FMllPamd3eklZR0JLZ3R6SmRVd1k1NWNEeVZ6d01WNmtiZkpGN0xjdUcyNVozbGRMM0dCRk41Tm8rcFRlakptL0d2THpHd0xhYkh0RnZ6dStPd01GQU9CRmtLSkhGQ0ZjRUJYK3pPWmZySC9kYS9yZHk1alJXSE5YYS90LzdkRUtMcHUxNDcydjZiMFFZcVZ6Mms0bWpGK3h1NUJXdUFXK0UvNVBlREdjVUlEYXJMRGtBR0pzSHV3T3pqTC9hOTc3UnFSRmYvZnhLNmRFOEZvOHRQdzBUd2RLOVBCTXlxeUhyMzlZeU5ZMWZEY2xvK1lJS1FQdWw3bVZ3THBvSnBLajR0RWh3c2tHVW1YR3lESmFxcXNMU09xTUIvbm1tTnphMlZBNFBiS1YzTFIva282azhLb01qVStOalJZcFRnQnZ3a2dUUkpSRWlkcnFpa3V6WHY3N0VxYUVXMmFaOHcyeG1ZZ2lET3VNTU4wOWN1WnZvenp5M1IvWmpsVmN1WFdrcC9Kc0wxSjhpVFVPSS9HRXRGMkdyVzFMWG9tUnI1Y2lHVXlzWUs3TFNYWE1KcXhKdFh6b3EwN1JlWjlpcitqMjg1K3dRQk0vN2trRFVTMExVYlV2MUozSFFJT05vVXVxeHdjZ0dFeDNrTWtPWjhnd0tYbWdGVmhTV1FhVm54Q3hVakRqSWN4S3dkSWVpRFRjVFVTWWxva2lwa2FpVGtycmxzN1BOVFgyMW5NcEZyaTRmWkl1K3V5cUYvSVpWRmhRaHNUM29KMUdjSHRxcnE4d0RxUUtYbCsvWHZIcmxrN05iWDJtbU5ucnp2S2ZCZVBYdmQ3TG9hL1hWUFBLSWJ1MXpXL0FaaFJNV0F2OUxBR3RaYTg4RFBYODhLNWpxb3FMU2lXU3JkU2s1ZE1lb2FxSnEzNzVQeVVQTVQ5TmNlUTl2R2hubzZZVG9SU04zZkxGdUFkZ3N5OHdKVENJOE41U1hBMUdzeGVEUk1xd3JEYmtOZXllcHpINHlVdFFyOHZ5ejlVb2xxUFR0UW4vMUlXeUovOFVJbXA3T2pqSDFlSTJnTXRmaWc3dDQzclVmS0FZQUxsandodkVReHlkUTVPT3M4clllcjhUQlZvVG9uVEgvNVFqYjZBbzZxb2R0Q1krc01mMHJpU1UwQnlqR3RCM0dMQnRlZStaNFFFaXhnR3lSaWhSanRXWGJkNHZITHQwZzZpNmZNVlFsVXlKNXAxTGFKUjFTSWlya1JrUHR0TWhRamlMbGNnTm54NHJqNWtYUG5nQWVhN1BiTis3WGk1cGpJTTlMbmMyR29JOG1oV0dWN0lsYmZaZjd0OGtXTzhFOC9wZGluMUU1Z2hSTzNYQTRDZDcwcVZBbm8vTTFLeGlWTjZxMDQ5bjRuM01kUzBlcGtjQytqN21QSmdueDY0cVY1azFnMDJtN2dkNDdLYTZ1REd1c0dyVmtLZVB1RUI3cytUQldwOVQxV2ZBTi9oSklJcHhmeENaQ0Evc2lpZlpLNld3QWdWY2hJcEN2TzMwS0ZwY2tWVDRPUXlYdG5zWmQxcy8vNktIbzJOaG1LajBUQ1YycnJ4ZWFhZzh5eEJJNTRieFFwZFl0TkZlV0pUK2d4QXkrZVlzM1JVblZGalhDS0pRU21xNHI5bjdyNHI2cUFWZlk2M3h5VGhYdWNpVXppcG1wN0w5Q01tUDNUZW4zZXI4VHRZdFhQVXJlNnFYaFpubUtzbWZ5ZVlqeGVxb0cyQXUwN2lXeXZScUFFazZ2alZzLzBpVlM3dklySXB6Q1ZCR3QveUVSLzA2aDR4eEFnWUVwaG5xd0wvNEZzVEJRWTFQWWI4cWlUN0Q0ZXhaTXJTbGNpblV0OHVwUHFwdWhpM1lrWkVvc2lVS1hPTFpGSzZIZFVFV2NiN1hVRzkxZlhSMlB2U04xZjkwdkhmNnU2VmZTL3Z4cXBrSG50RmQ0YlJNYk8wYjhkMlptcnNMRm9XUnRkZGM5V1Z5NGNPN045M2N1bms3cDNiOSs3WXUyVitldHY2YmVzbXhpcmpsZkpBcWFjNDJqbGF5RmtKcTkzdmMwRkl5L2tnNUlLZ0EyYzlkdWZTOVpCY3lJWUJnZ0pieko1WEMyTEtJTnRIUEErU1dvTndSRzRBTDdqd0pWL1FGOVk5c0JKT1h1cUNsWE8vTnlScmdCekdXMU9wOW9FQk94dyszYWNBbnVqckhpNzNkSGFtQzdqdzdJSDl6STltUDdUU21ZZXd2QkxnT0o4N0g5Y0VvMWJBbWE1SXNpSytTOUhTL2FsTDUwT3AwUHQxNVk4VWJYakg4UHRQZDAxMXJwTlZlWXZYUWhjbDFCQ25WYU85V0sxRXVFVm5IdXZxRWxiMEhSWFBsclBsSXhhTXBiVU54RmhYRlZVL0RJUlhWYTVzcE15cUxxakxHc2hqakJhemZaVWF3M2hNd2ozV3JYNFArZGpMdTBsbHN2bDY1ZmdydVFHTXJpd3pLNzJVS2NuNmJ6QWxYU3hvN09LbW9mOVZ4L2RYclZwOE9jYWZJNnp0VmJYTloycWJoN25XUU9aaklFTHVCSm1pQXcyaGpXZ1JYWVh1cWJ3aDB5SUpncmgrZktCTGxPUXJEdXphTEtvYXlGMHNEQkc1Q0k3NXJSSUJoQVg1dUszN0JWVlRUNWsxSlpGUHNRUkowNlJGWHBDMEpRTnJrcmF3ZDgvc3pIQTVuNHVFRHgzY2M5WGVxN1l0ekN6T0xrNnVMVzhjM3RqYmt4dktEeVhhd2gyUmptZ29FR0RZaTlQOHdnb2lQeVExQlFjcFRjZnA3QW9KVFZhYWpqdnh5dmI0NjJIUmtONVFoazFZRkRlck1mV1BSTnpqbk9XKzBpTDNsWDZLbHl2TVY3dFNaT1dWRy95UmhoYmtjRmlDdTBrU3UrdG1GVzVtdnFuZTlzbm1heTlZeVhrMTErRTlpRXBvSFl1NmRWRXFsdUFFbDNmUGo0RG82eVZvdE55N3JtOWRJWmRxUnlWU1Vqd3dYYTQ2eWpFSTY0YXA4TC9uTzZVMnF4UElqMDdFc3dTb3VDYkNMdzMxNURkMnlxSnVTaXJKeHVHTTY0eWVqVGtKcXNPWSs0TjRSc2ZEMlhnNjdndjdWWjlkbXRkbys5cGMyQVlhNklOYWQ3VHljZnVrRG5JaEc2ZFVyK0h4WHFCRU95cGJZMWdnY1FDMk1zenpEb0dJS0FmaXZqU25jY1h1U2dkazJZdlJrVVFlbllOUlYyYzIzZFlTQ2xvRzZzTThqamNIaUQzSFFqektPZVlFd2Qwbk1zd2pWd0l3ejEwcUJnZEdwSEROdFVJSTVxYWp6dk5BWmVMUkRibStIYjI5T3c3dDZITytWNTdrNWI3cGZwenQzYjY4SGNvL2I0L2ZyNFdsc0hSL1M0SzM2dDNScjU4dXNtSnYxNE5tUDJzUERXdCt4VXpmc0IvbEs5bWdxM0dvT2VTaUtvcmZ2V044TEpmcEZYbG9FUXNGR3E3R0F2R1lvUkNBWmVBNkhLL0FqUEIwUWhjUEcycjhwSVc4VU14WmVzZ1hhOGxsT3ZxbXV3cXlOakxaVlJBRXJTTkVwWitsZXdIbmZheGttOFgyWkhkbjk0M2R4WjVFZTZjWjZKMUk5OGJhU21rU1R2Y1BGL0ZqVnNBTStoSkdhRHpUUFIrT0ZQTVRtcEs5ZWRQSVpWbEJGUlJiRS9vU1JtKzI1UmZCb0MrUzdvaHZMQTd1aWJXMHhQWU1GamZHczVtSUwyekhBdkhXVkQ3T3ZKbGFoN3U4bUczb2syZklZekRtQzVVT3hQeEJXZVFNYzY0UlhJOGtGb3hIaElWeXJsek9EWEp0UjdtdUt3TytyQWc4SkdERkdNNHk3NnRKN3ZkQ25vbjZuVi81SXhGL1BDblBpTzEycno4YTlXT3pvU1lkU1pBamNWWlI4RWNLVWVmRHdSZ3Zlc2Q0VnpDV3FQbmczUXZmTkE3UzlDRGFnSFl6MnhVTGJSR3B5dFZKSXRES1pjbFZLekxIS2hQTE9sYXBES3dKY3hnUHV5cU96M2RndEhQYnB0bnB5YkhoM3U2T1FSQXpNb20ya0dzU2plTzR0YXFIU2ZVTmMxVUNsNVdhb1h6Vmk3dHVDMTF4TEJ4N29aUzZLZG43QWxQYWtWOHdzK2RHN21seUU3N3EzSWYwd0dnUmY3VTRhanNQZXZaSndCZWY4MUFHSEpQVFd4a1MyVnBYK28yeFJtT2ZBNWkvdG5OMHRCUC9EWVA1M0RKcWNVVHp5M3JaMVIzOW0vQjU4bmZRZzcyVmJsZDNCQlA4bElpNTRWaGtMbW53d1JHTHZreTBCZ002ZDdDWHZMZ3VMNUtkYTdxaTljajI0VnI4emZ2T3ZSYms5RStBbk02Q0tKK2dGTzkwWXlLaHlpUjM2Z0UvZmlSR1B3bFFvSnRTNTNHdkVZdTAvS1FXOHdQU0RhN1VSNlJSTDZQRStWd3lJUW9FejdIbjQ3Ullndm1MaFVXSmhZd3VzY204a00xZ2xPbk45cmExdUtvRytVS3FCc3dESTJIa1JqSHpVczRYTUp2aXJPRnF3WkJPSjR0bXZIVDBjTGZUbmtqakExREEvNXhJczhyVm9pQ2RBUjQ4bVU0NDdkMkhuZStsRS9pZnV3K1A4am9QRDdMY0R1VExnRms2VUZlbDRORWhKRlFWb2FMSXpXT013UkJ4WVNRWUw5dVNGTzkyWFR5QUtFbk1PQ3dOTWN0WWhpa2Q1WEMrT2k3TCtQdlFrZmd2RkVrT24zMVVENGhVZUxqVmNENlV2YXpEK2JBU05MSHI4TWl0WVErWnBvWE5vUG9PbjZrNS8wOHFnZGZLcGk0Kyt5eWpEWjVPNk4rRk1Qa0VpcUVVS3JJWTVMQWJQd1B6VUVRU0M4eHdZNDlrMTNkUnJ2dG9adEl0OFZ3Mlhjd1UyMXZqcVpaVWVaQnlEODFlM0tCZFpvUVRQZ1o4Q0NGYjV0SjliUjhldVhUWStUeWIvbmh5K05JUm42K2x4ZWQ3K252ZmErM3FhdVZiL09QUks4WWkvbk52OUVmR3JoanR6SGUwSnpyeXpsK2Q2WjNzeGVremZXdWhwNFhmL0FZMnZ3QzZGb0dSM28vV1Y2YmdpVmNFMnlMUDRIMytDK1E2WXRIdXJvNytYSCtpUFpxTlpWdEQvQVZZTUg2Rys2bUV1Ri9LQVBkVldlSEtKelI2REFvL0tyM3RzaXYrOFlyTDNsWVN4VnBSZFpUeDVUSFBnVzY4MGZQdjRQMzVZakYvLzBFYVZLcEYreHQxVHp0OHdHc0pHNCsvZlVFQXFnMklkMzlsTDFJRjlhU0dFYUVFTVc5VG1WQVEwT0dsWkh4TWh4ZFdXQ2drV1c1T1p0RlpKR2pyd3N6R3RXT0QvY1c5blh0cUtUa0twR0RVYlNleWw1Smp1TUhiZENYUnk3aGNqek5JM2krTTF2bHExbHRYUWU1cXh5Snl0aUgwMmphMk1rTDJCMVYzM0lEenZVUDdGb2RIS1FtWTQ3cWZ5RHNtcHpjbGdhaGM0NFpSWTdrV2FFMVlhTFdKNFJiZjRFYVVoM1FleUIxd0hUNTZremhxMkhob2FHRFB2aXVOb0UrYnV6M2JFYVBYd2FXZGxFbWFNYmFoVEVrQmRUVjlIN1BoaG9BYnJrWHJLdU0xYnc2WkdmVmRwYWNJbmJlSW9CdVhtR0RPZFozRmZDYmQxaG91UlVvWENjeFdCamlwWVNZTmkxRWU1a0VLWXNRa0RrWlluNEd3eUdPWEl2alhPMmMzRmpzN2l4dG4zMTB0N0p3NE1rSDJLenFSSjNkTnlsaW4rOG5Fa1k1QU1XaWFDcVhKOXZaVVVDZjNyYmlFRjNiQWRWcElwWVhoNFlLaWhUUTRkTDZybWRuK25tS1htR2pQNXJPRktqWmw3OTZCQmxBRmJRWmNjblhsS2gxTGVBQWpxUVZtK3p3d1VuRk9Od2tWVmVDM3h6V3NxaWRnNmloWVFsaGFsZ1hndXFLSUZua0JzZkdGeElYMTB4anQycmxqMjh5RzZjM3JONjliT3pMYzI1Tm9pNFp0bnlLaER0emhNdG1hbVVkaFhjTGp1cU5OL0RhZEtmUVNsMnBId2lQUU5NdWxyNEZvUkk1bWJRODdTdHhkeVlaTHlZLzJCY1ZvYXk2WXR3RGF5MVl1MU5FYUZZTkxOZm5aK1NjN0VJNFNqUnIrcUN6ZlpZU0N0aXpIVzZoR1h2LzFEOFV5aGlObTR4LzRPalh3cnhNenNWYmJKMUVxK2YydHNabEVYYUNXbFhoYW95MlJvQjAyRlZtMmc1RVdxcWVlY1g2WmlRRStDWDBtbnNVZ0ZLOFlWMmxVWm43djJReVIzR0RFVnhEKzM5OVh5TUVvUzBmU0Z3My9ieUJKaGZKcVFmK3JESy9wRTlQVEoxN0hObG1PZHRWbDE4dGh0VEYxN2tkZVU5aWN2WXViMjAyNjdEcFR1R09KL0FMZTEwUTV0QW5rNzJ0WXJFUVFpTlBHZGNNQ1JwV3hMTkNqS3c0UVdkbTFtWWlTTklkY3YwWUF1eFREVEpNeDB5MGpGaE1BOHczUUZwdHZUQ3dSaFFXL2RlU3FRd2YzTG01YlNMWEh3bGJPbnl1cVRIWmZZYWowTU9oNVpDbzNoUWZLM0xjd01nZzBIT2hUR0FZUVNEQk0wem1GdVN5REwrSzdSdjdsRGFKQlkvNXJaUnBpMmdUNkpRNnFYZzFGNTlBYWdpTkVndjk0RFNHa0ExTkFqejBFL2tsUTdBQmVQMnJRT3RRdHdzRTMrVUVQTlFoNWcwamxhLzB4YXV6SXh1OW55Z29ueFc4Tkp3OHBHSmNJS1JHWWJUaUxoVFZFd0ZGQ29rQ2YxZ2c0UzBUbkwycXVDVmMxT0NuUW1pelZITGQwUStWa0FGdVNCWUJPOGtrbmtVLzBuV1JNWFlSUFFMQ0dpWGJjanpVQi9oMVRzYUREdjJOSTEwL1lCdUZwcU5nZTRTV1RtYzhXM0JDbVZVS1dOa1g1bjJCNU1DaTFjK0RRR0pZUVhhbG9LTlFGU2w0ZnpUV2ZienJPTlJucW00K2JEZjk0cU80UTFnSGsvMkUzSThYRHdBMThLdzZkTjdoYTZZYzlYakVHZTVCWEgzWnJuUzlVUmU4QS9uM1B5d3lFK012cnRkTzE0cGJhVmV4ZVRQTHlEaCtDdzAvWGZwQUp3TTdmdW52dk1UWUZxaDVzZ1JmcndqNStxRjVkdGQyNXZoVUdqeHJjVzlrdHNxQkxSU0RLY2NxWWxzSURJMWdJTTNNNVVaREFWWnhjUzFmMyt5NzErRXlNM0ZDL2ZKWUYxcHJkdm00M0VrSnZqb1NBYnE3SFBsam41WG5BSzl6VGZ0MDExOWsxdXpqWDJUbUg5MTFWYk9uUmVsby8zVkl5ZXJSczZNb3F6eTg1bDlXaitmQS9kTTd0bXV2cW5GdWM3Yndwc3pIVzFoYmI2R2RXbkFITzA3K2FLamtHRDlXYnZCYmFvK29ZZi90NVkvd0I5SFRGT2pwZkJBcTdvOTh2c0VCNjExUzh6c1kreS9KZEdmQ0hCUXNGa1JXOFBJU1JxUkl1MlFLREVIV0ZjT0ZXa3dtbnhHeGZKY1d0bGJYc2V0L0ozKzd5L1pYQjYwK3hLTC9YM2ZXYVY5OSsyODAzblhyZytnZXV1L2J3RlkyR3MxSVhEME1QdUdhenlDcGVsQmZ6cEEvK3J1Y3ZZc0IyVTFwNGx1aHovNnd4QU10Q0o3UjY2WFAxdVBkNjZhbW1ScnkwdklxbEcvL0RTc04xN1NZMzFlN3BRdHVYVTRuZnVycHhuTStmUm4vWVNtV2RRbVNCbWROZzNyQ283UlBVRFVHbjlSRDBsMHExRkd6S2FORzVTaGFVeG41ODdveHU5NlN1WmU0L256NzNXZTRYWklNUVBISFdTZlY0OGVoRXR3MG53anFHdFBDY0lUK0I3a25oZnpIc0YwdXBEWXdZYkdDcFVGYkpoVEpjR1VSZUtoVGtaVUpCWGlJVXhGOEsxZDZwN1A0WjRPYkJCdjBPZSt4dzA3RjlrV1BoN1JkTUduV0JNdm1XUzkvZ3F6eGU4MjF5cnF2NVFlRzA1d0ZsRy84SDMxTnBmbyttNCtCTHZ1ZU5BZjNjMTdsT3AxY1BGTnlnTnpjQTdzeHYvYW9Oc1ZYc1hkZWdiQ1hscVdJSlU5eUl4SFh0WXU0L2lTaEFONllxWUg3Q0l3MkttZ2FXNlZXeDFCOE5uRmI1K0FkbG40dy9LRWwveG5JTTdwYUpKRWtma1B6U21tajBrdWhVOU53TUNWdGYxeFJSbEIrWC9MQVZ2L1pCV2NZZmdzWWZrRmg3aS9na1h1NlBySU1yb21mL3hJb0lBd0pjNEpjZWwrRUNIZFgwZCs2N0JEME4zdEhLNGVteE5aM3dwZkNjaXVHTGlZcDgzS1FHZkVOUkJveU9rUUFZN0JDU2RDd3Frc2crTHlLN21GdjlFZ083YUtFOGxPc0lod2lhbkJqYVVON0E5SGk1d1VScktCdk9NZy9KdXR1QmxGNFpIcGxMMitubXRHaTR5WExSYk5rUTNuNzJvMHd0SVd6end6dCtTU0JuSFhLSFkzQUM4MnNnWmM0dHJoYzJrQjE4Mi9Pc3lIeXpUMFhkQy94d2NYU3JRSnhmNnVxTlhzSTM1eTVvd3hzMmJtcDVNVDdNKzJxRWVjeDUycUc2S2g0ZjZld3BENGhTckR2WWxEQ0h4ZUc3aHRjc0E1T3NIb0JUeEROQVJIandQcHV6ajlkOUNNbVA1OGY2U3EwRFE4bkJzWmw5VkxmcDRzYVJ3Y1JRUHBSSjVidjdKeFFhRkh4c2RKNzlFN1lWN0R6QUhTMlJNa0k0UWZ5cVU5RjBzUTJIakdSTTlZbWlicVpGUzhHZjFYUnYvTjRybEZDVXoxU21jM1JOQjRKVVM4UEN3eXVZVXNKTHdoSk50cmEyQnBpcU9TZkptVUt1NXQ1ZHphZ1pLbHlndm9UelF5TzU0WUdvRkFrcDBFYTQzWG5ZeWxyT0k3cStSOVRGWjFKYmtzL0Nmbyt1TjlWdlRybjF6bmJuYllhQnIvRmxMWHlOWVRodnM3Skh2a3JwVitXbzNDOElyd2tFWGlNSS9YTDBoMTlWMWE5S01ZblYyVGFyazJLaHIwcFIyVzByZlZWeDZUSEhmZjN3RGZzQlUrOUEzNjM0TjAwRDZobGJBNmluRjRPSUFCSkpIQ1NTTllqRlN5bUhvVzhJRVE4emIzbEJRVUlOQktrdUlGUVpJTnpQNXY3VzFpMGZhWUVMQnhvdWxFUnkvT1ZjQ2NTU1h5UWZmd1ZYc2ZRZGpPdHQzVEt6WWQxRWVUQ1Q5dmNIK3QzNXBhMG1uelRZd0ppbWozbmxNeVZyMVJCMlhnS2RaZ0dFL01oRFB6OWd0dG1mZmNnQ3hHc2wvTEpvaFRQam1iQWx5djRLSnFGbkRYcUFRWjBETlJzcmJFZy9ZS2Z2OGFzejhhenpvYmcvWkJ1V1FpWFZNb0xyaXNWRUttQllxa1RsMXB5dlpaWmRsS2lGNGZHU2g5bGJ5UzJBWUpsUDkrWUt3NmpNY1J0R3E4YnplckxnZms2VGdHN0pzaHZwSVM5Uk52c1dNQm91RDZ3cDlYUVdVKzB0MFZEQVo2Z0t5dUdjN2psQU1lZVpiSnFyZjBDeWhta2I5UElMOGR5M2hYSitXQWxGbUVORVJvNVdDL2o5dUtEb2VGZ3dOR2VVQ242dDN3aVNnTmwyQ0lyNElDODdYOVg4UkFvazNLQ0VGOXdkUGtTVnoyaStOczN3eDRQTzUvbk9VTEVWKzRrYjh4QjJkMVhkZElZc0lCMmxXTzZoUnY5Y1pnMUNOV1BRYUd6SVpxVEgxZTB4cGJUTWROS2U0MjU5SUdUdzg0eXp0RXFLZGU1ckxJL1c3b0R5YkdRcStwd1NjTDhzeGoyU2hHWFZ4clo2VXFQS1Y4TGhyeWhVYzg2eWo5ZVFINGpaQW5wWVZtR1dVeFZWeVljb1ZCMmR1RVdQWmRncEZqcXlxV1FzNnFwSWxBdXBTSUo0UmR4SWpZQ3M1bHY0QnVlN2FsejlVK1o3RktkN1pGditOdXk3dGRYOENwM0huSCtrOUZIYVFydFVkYThzZjU5ZjVQbnNma3o0WTVBejU5Q0dTbVdHeFhqTXNaeWV5SHNOQWhJbmNSMHNtMFVXZ3RaUGpZK3M2VXVuNGxFMFIrYVVCcjFzZ1NuTXVNNlFSVTh5dytxd0Y2TU9WZXdrNGVTZXE4MWcwalhhNmNwMkx4WitENGkvcWFuNi9PZU9ibDY3ZERraEV5UGpEeTl1dW1kRXcycVJSdFNoZTJZN2NzT3pFWjhhS2I1aFlmemFvcUdMUHVzZVBlRFg4YkxtSXphTHE3cmJvdFJRTm8yRmZKMWpIejI4N1E5SDExVUdlcUhMaWhRclBVbGJqYVNQM0RIVmtadGQ2Q25xZnQwSTZHdDF2MC9EaHd6N2YwNldhNVpSWDFxV08zT2hMSDIvZ3lqbjJscUZLOGdNWVBWWUplem1tR2FqbHVYaVFRWXhCSVlmV0dKdXo3WXovSzZtaEZsa3hncFI1eWd3cUVmTWRqNDM3aFUrQ0x3MWdVcUlmcXhVREZGUzZzYVMzTXY1T3g4VVhyWmdycElIT3R5THBkd2tkcVVEUGsyRlk4NHRabXNnYWk3L1lVZGUxNjdldWV2eVEwdUxyKy9JeTZUVitXTjhoNjNxNjVldnZDR1VDdU1IL3duSXQ0Vy9Zd1hFbHJzdlhUNjYvT2hnV2RQYTIyN2R1ZnRnTm1NWmx6MU5DLzVMMWs0R3hOYVFzODNrNzh5KzcxOXdmTldPOHZCOVI1a2xpZkp4cjBnc0FjNUpYZFpFVmFwTzREWDl4VUl5Z1ZGNXFIOTB6V2hQZDZHdjJKZk5KUExKZkNpQTJuRzdjWUVzZGxWUGkwSWVWeVBBQnM4cnNNbDlkTjNrcUNhdkZXM2p2V2JvNUd0ZmZlem8yaWs4TlhuMG1QT09aRy92VktuMHhSVTdRUm9idmV5S0c0OGM4UVhlWS9pRktWbGJoOGVoNXFkWExvK01Pd1pyVWlteDdWU3Z1MjJpV1hubWV5QjY4NXdJalpTS3BkNTBxWlIwUVNwbFljNFBXT1puSnFSR0k2dFpLSThTdis2YzBtME1OQnFtNVlPNkg2ajFhcVpKVy9OWmVqYXArWHhheHFOSkw1Qm55TmRXNW0vRE50TWFNMEVLRDBmSU13MGpqbnowM0JJYmozaXJtcVI0SjB2Z3h1Uzd0OEM3RGdHUFBJRk9zOHloOTczMk52amNMQ2tPRjFZNWpjWmlOWHNkSjk0eUVHOVpQdkxtKysrOTU0NVgzWEx6L0d6V3I3RFFCWjYybGl1VkdGbmpLVE9HWGFtVlozSHBZdzRhQlJheXdOdDRjUXpEZVI3SzBJdDUvZzNXMmcyQWlQSjRoNm9zWEhYTjlvUmdObDZpdFl3bzlZeGh0VVJqVlpYalYrMkFGWlYwUVlsVjFzZmJ3bmJMbmJGTXFETVlEMUJWQ2lyOUxHeEFOTnZ5TzNibTRxMTM5R1JhdW5wZWRVZHZGOVZ3ZnltWjdTdmRlbk5QWHFWR01TazMzaUtjNjhySGdsU0JPL1RLV0ZLcEhJaGtTb1ZkdVVUa1cvdGxlUmg0NXQ3ZHNCbVc1ZDA3M2VPZGU5M2owektoek1VeEZ0UWo4Wm5aK0oweFZSS29HdEpNbFNqOWhtbW9zaG1LK3N5UURvOXp5eTJsdm13Q0hpZUMvYjEzdktxbnF5VURqeE1oQW5QZ1Y2cTMrTDBJMEdRYW9oWWxTcTlreVpvdTI3NklTczJRUC9LVEpmZG5MOWtOanlINTVWMDczZU9kK3lTSlBWWXpybU0wZkE1ZGhxNnRYRzFVczdCcUpzQTFRUVZDN3NjcTBrVlZYMVlzNGtVWis1ZzlUMTZFblV5WEVKWHB3dWI1ZW9EWHJ1M3psMjIrakxHLy9ybUJ1Zk0xTHZiS1dNYVhsWnhWYVhBMGIycTNldjFqQUhwc1Z4Y0RFUDh5emdyKzlMeHl3TXNpWFd2WVZDSDByQWd2cm9WMzNka1F5UVdzdERIK0M3L1cxdS9oOFY2TjhWMmViWVhGZC9WWFNzd1BJc3pTUXN6VlBRbkVGWUZlMVRBdnFTSE1xMWxudXpMTWkzeTN5YTVCYXhZUC9PSHpUQk9MTmJNRnF0b1JJL3o1cXRuZ1QxV09zd2pZL2lLUnBSM3poRWUvcXBWUm9oQnBycFl4eTRBdFN3WEZtTDBiZHFQQ09GZFVjbDdPckpZWVFTdlhJb2dWV21vWmlNMVZvbHVydWppbENhTklkV2pQUFhTYVhVYWJJUXI1Ym1PNHFnWWQ4QmlyOEFKV25iK3Fwd2w1b1Y0c2VybGxYMmlLUi9WQ1VCdmpVZXVHbXhkV00rYW9GN0RsM0lQZWlSNnV2RFZVblcrQnFCd1J3ekpoRE5hR1dkZUdiUlNrZG5EWjEyTEV0WmhNVFoyb0ZsV1hXN0hsOTF1THNMUDhTOGh2K1JmdXU3YzVHOTJadDUxKzRONTMzdmZPMTkzNXFsdFAzWFBEUFM4L0kxMzdLbk5UYXJMSU5PY0NhRDV1dHVCY3JQM3ZOTGZQZlpmUFByYkJoTSs3ZS9TRzRzdG84RnRUZ2RVMmpaUmh0YzNMb0JiVjNKOS95OGRNZ1krWW81WER5SkNOazhpVUZNbGt2dHhFVXNneEVSTXFFWHBNeDFTUUtBOVBsZ1IwRENGVlF1b3hobmxaMWlZV3RnQXpVOVBVUmFTcTJoSk1WVzFoNithWjllc21RTG9jN0lEWjFSSEtsZ2NzcWIwNzF5eGhaM24rYng0NDBzMVh1QmdzTTB1L3hKa3ZmRUlRTzdKaEx2eVVBY1lVbWlWMC9Ob0FpNXlFbmdTNU92RGpRejZkbmdFT2RJYnExaVVqM2IxOWUrWm1kcEo3dlpwTDF5eU43Wm1mTFhheFpvUmY2QXJrZ2RkV0RYWTZkb0wwWGFMNExqWFF0Nyt0N2FiT3pqY1B3UkVOanUzcmg0T1orVDFCaXYrNTFycWFHOFROQVRuT2M2UXpZcXR3WWl0U1FpVGlodUVnTndwSFBzTG16MEIvVjVHdDhPRWZENHhmMkVvZ1pWZU1UK2JlNEpFcVQxNXgwelN6SmsvejRkT2ZLZ1hJN1RjeTgwaS9IdWpweUpjTTIyZDBGbUpkZlMwOS9mdldiTWdVUy9nemdFWm05VUJ2RXQ5bjJNSGU1RlBNaG5EajRLVnRDVGh4RitBWFZUSjlrcXBadWU3dEwzQVRRb1BzbWtRYjBGeGxZei9BQ2N4elhKeFUzQVViS0trbDZUOS93WWJKZGVXQmxjczFxQzlqdVFacFJmNmlQRU9telNGSDBRdXQxckRHOCtOaEFValgwUmdPYWRBdVJxOXpvNDB1c0ZyRG5hb0sxM0JETEhjaE9zTlBIM1VYYStoaWl6WFU4Tm9YeUtQQXk1ZzJwT2FqMFB6YTBXQXd3clFodVFhRndvaW5VR0JRRHA5MHZrQnBGeURpWDhpMmpMOEJoUzVLei8xQWphZnhGTk1sVVBydmtvUy96YndtVytpNTcycWV2b0Q4RzgvSHoySjhxMUF4R1dFeHZwSXJuVmQvZ0xsaXNrV0hNdVMwY3dyZTdFRlgvOEIrRkk5VDJxMUVOK0Q3NEhmd20rQUF6amxQMDdnS0cyaWxuSmNmZUQxYVF0c3JDenZuTFFua2lJbUJYSnRJUkRMSE12cnlaK0JqVzVBYnRDOHN5eTg1d25MNzdsdmNzbmw2c2p5VXpUVG45bDJaeFRmaXFnamg2K2Y3Y0lNVXpnZEZyaW1Kcjh5SENXN0krRHZFd3kwWmNSQSs2SHpMVW94YUd0OURlc1E2K3dEdVZEVkNxOWwxSDE4Mm93SGg5eU1zQlc5WTVhbDVEU0E3UmRVOGU3aWF4SmZTeHcvcHNzLzVqaFlTZWxacmVaVVJVSnFiaHFPNG0vKzRsOFdYL2Jody9jcHN2OHRtTEZpZFYzY0xYeFpZNXF4VEh0cnE0Tm15T2FocHdqeDF5RlBJdTZBbjcyR2VhQlhnRExORlR2aUZMdWE1SU9UeDdqVTg0dDQ2VC9TaXoxWWxTMVRiTm0xcFM4V0M3YWRiQzMybFZBQ2tyb2d5ckt1eXBiVGIrWExwVURFYmUvTkF3ZWZySDVqYmVQOVF2MnpnQTBNekcrNWUwNk5wWm1mUlVyWFd6WnZiVXZGZzRuUkxvYi9VRnVFM0tBT2VvY0ZBVytmQlN6dXo4ZE5sTzFEc2wwVVJzSytvdFVXc2VPdTJIWW5UY1V1M2ZRSE5CMTlwMkxDcGo3YXFjWTJha1JEODREM3Jad1pIUXFIczBCclJiNUluKzMyKzRrQ1gxa29FUTFEVnRvZ1piOTBPZDJneGpJQVIwaTJRWkFDV1VOTU8yUzIyRlE3RlR3L056YnpKblQvUENEZVQ3NEdjTkZZWjdtYmV3bk9JRXk2V1VCMEx4NUVnbkpDd1NJaTRDRHVSTERGcjJnSjhsejdVTnhLUHRzbE12Y203L2tKT3p5TmVSQWVuNGdYbUhZcXZaMzVjUlBKV2ZISE8xc25NTlNyVnJqMndORHdxQS9VeUxhTGNlK3BtL0IrQ29NZ3FOSStxYkw2eUpiOXFDOC9RaUNBT2w1Y3VPYWI3QStaOVA5NHdnOHdMK0Rtd3pJRHZSRStnejZLL1IwOVYvcnFsS2dlMnkyMWlxOFRGUUFwaVlNcElhZ21wSnZ4bEF4bC9XcktDTnZHRkxOOXlQcGFMZEVpaGNEaTA2QlZENGFWNGxJUkQ0WVhQUC9YUmo3ejdYYWNmUEQ5WDhkTmZmT3J2UC8vM24vcjRSejc3MGM5KzRIM3ZldUxkVDV4NTI0UHZQUDNPM3k2SGNlRy9RV0w4djYzOWlxVS96cjJaNndrZlp6NUNuVjRSQk1naXErQXF4UCtCQnE5QUFuM3FwVTkvN2lMeTZVdGZYZVd2UTJRNzZtZHpOR2ZCb0kxakVhQnNTU0o0Um1MT2FLZUl1MFFENFVzMENFeGx5dVpvUCtvZlR1U0xiSTV5cFpIZ0xVdmhRcldSU1p6QTBTRGZKWm51dTRydytwaFdIUCtMb2hqaXRtbkJwM0tqMGV4QjBSL3lrZTFIUlgvQUVvZDQzUW5WSjZaUGlkYnJSTm1QUi85UTFUZ0creWF3RlVOei91WjUyT3YwTmw2bjBhMy9IOVZXNU94YzZZUDBuVXJiRzNIUU1rRjRPcm84WHltbVpGRmEyakhhSC9QTFFCUG50bndrL0grRlJ4Skd2OS9ra2RTODVsOUhwczN6U01LL2xVZFNNN3ArcGVkckhrbloxVDJTeUgrZSswK21tV0RCbkliejRHb3hmdmUvN01yaVFEUWRleEwrRDNDUFlRbzN4aDltM3BwVnJZZnowMXJ6cTJxbEoxOW1IUlpEZGpScWg5eHROdTRHbU1hemlPZEtPai9QL0w3S29pV2F4SkQ0cXBUQXZrQUlzelUvOVVuQTYwL3FLbEdVSTc5dFpxUkdHSksreVBFcmJoLzluYW1WQkZEbGt4ejB6WEhyeXFwbHRpNlM4MG51YmpQSEpmbFZ5MnlLeWw3OHpXTXIrcGV0eE1ZVTh5eFdURDNGQ0pNYjFjeVdTeEJFbG9HTlVta1JkaEpkMGpDVjZNS2xCL2JzMnJxNVhMVkFHWUIzbXozcTBrMzRWVnJwL0ZwdXhzY1hPMyttdmlTVVVHeFVQcDc5VHYwTWVRYk9mSWlmV2RRRDUzSVh1b1pzcTVtbXZFV2tiUDBicXhEcTFlb3UzSStBaVFtTENPZUxJRURuc1k0VEpSWjdwNnB1N0oyNnhQdDQxZjc3SGZ2bmY3Yi83cTExMi9odjA0Rk1QbjBYWUs1VzFJMkNGWC9kRmppWkdPUlpzRnlIZ0lqc3BjaTFzQWVFZXpITElzUFRPc0Y1Rm1RWkliNGw0R1U0YmZtSi9pOVVFZzZLWmt6L21SS2tQOWZqcHJRa1NNclBkV0tiT0IyUkRvalJxQ0E0djZKcXVKVStMZ2RVNStkbVJLWWZrS1FQVURsaTRyQWFrQitucldGZ0o2WmFmYzYvYk1DaHRTV0lPQTVWUFlEYjUrSlI1cUhOQVRCZXdtOEJlZllHZ0prZzErSXhLUDh0RHdrazU1eGJHQUM5eFlXNmVMaTY2YUpWZWVEdFpELzhWcXJTTG1EWHh3M0EweUozK0dJb2FpRVlqQVlZMWxaZEV5bi91V2dEM2hiZVd2OEZCbmtiZmdHZmRXNkFwM21MaDQ2L0NPVVIvbFFlQnY1TDRWdmtFN1dvL00yVk9TQUNWS1ZJUFk2SXFxbEVPNDVFVFR6RkV2WmhpZVZsaE5NSTAyVUVweHIxWWJ1MmI1NkRRVDBhRFlaSGJaMXB3bHkxUnFPQ0o5UFg3TXgrTWFmTDVtUDhMVUFKUExzS2pEM0RMODI0SUlMbFUvays0UDV2d1dnZFpZT1NmSW5ySWVzcDU0QWljdTBYVU1SL28zU1dxcWJEMmptcUpzMHkvVUNNUHFlcVBKRHdXelZ4N25GdkVnQlJybzlpTmpiK0FNWndOOXJFdFdIZU9rY3dRbGhTQWdWNDAzR2tLQ2RFakNUSmpTeVZsbFNtUTFxWW51b0laVXZaam5BMnA3RzRBTUN4N2E1cGdrV0xlMTNEc3cvTFBHakE2eWllaGpqQ0dYOWRrY2p6RDdOWWN0YUx3cWZmUllOUHFkcjFLc2hiSDViODBvZXBZUjNYMUtkY1RaOTd6akxVeHlVL2pIUGR4MDVwcHZndUdWL0hEazk2aDVKVWEwb3ZkQmY0QmZseHhZK3FPWFYvMnNDejk3RFlNYUNSOGtta0NNb3BObzhZUlFTK0QrL1BWb1JwOXFmWnVxVlFKWVc4UTg1M1JGMUIyczVUalRaN0FPYWJjamk3NjUzK2xQTk0vdTBOZTJzOWwrRFd4dnJHTlFhZE0ycmdOYXo4bWlCOXB5U1JtMnNmMzdtdU5qWndxa1lBOFVOMXQxNnlSSFhyRkQ5eEErdHgxMWpvNmxCdjVtdmJEcUhyM0l3NUhYeWhiVmVaeE9JVUVibVNKU0xBYUpGRlJERUhOTVRjMXJKTnpjako4MXZ0cjBSdEVJQjZPclBwMXBoL3lCNXloUjJlY3J3SldlYVlocVFXbFcySG1LUEVaR01GWHpSMUNXWVI4K2xsczhoNXc5emFzWTA4S2oyL3ZsamEwdU1HcU9jcjY3dnFiR0NyV01pL1pnN0x6RkhVK2MvT3VSSVJpcHQ2M0hoMzUxY0xsY2xzUjgxT05rU3VRSEV2bS9vQ3VxUUN6QkVqRy9NbC94aERZTW1XWlJEYnNiaHNLTHFrZ2VoSGhFV3ZLRENWaFVCWThPYkU0RUJyeTZiNWpRc3pDNDJwMW51Nld0YTByaW1ZUExVQmMvOWdzWFd5a2dCUXI3Z3J4QTBYbVA5WjA0S0FQTWhEdWJBYmhSQWxZdXZFNGJYNXVmYkpLOGZDaVZaRnFsQ1RPSWZYSHA1b0UzQllNTlVLRmN0VGNEaHgrRWwvTEphT1JxOWVzY1B0VkZ3elBMWThGbytZVzA5TWpmUlJ2eWhFNFRxY2hjcVJma1hhb0pyd00wSnliUG1HNWJFWDJUWHBXT08yTG9NUThoQUtvQzR2Zy9wUmRIUGxoaGlXeGNGdUlxQWkxb1hkVzRpbWI1Z2dWSlhtMkxJeU1oS0FqclBzZmlMUWNKT2NuOXBNSWxRNkwwOXhPSGo0eW4xZUN2V1JNbHNwcEwwbDJCWHV5cFJ0Qy9oMXptNEFRMW51eDdDYXJYVkY1b0NYYVhWY2FadGx0a2VHUU9MWkY3cnRoT1hIWDdtS0laUjNWV3NONXhQZTJwWnJlUzdjSnowTVV2UldIb0ROd2tGdXpWMHYwMmR4SlJ0MzNzQ3VGV21zRGEvTnhxL2l4bDFlOVFKYzlaSVd5VWNQaWxSZXp5Mi9ybi9iTzRFR1RqT1BGOEdUWjZEN21KNmNqVlJNRmdoYU96YTBCazJUYVpIWlFGeGc3dm9qY3gxbE5NSWQyWG94ZS9jUk55QzJGM3ZhVHplMk9OSVlqSHd0VERmUGVXM1Q1TDdMQ1JrZkdicDdzeS9rTTJadXprVlVYMlJ1cERPMTlmU3c1N1BtdDNUblR6VGY2aTVySXhXWkJNd3h3MGZrVFpPNWpxazdqcVNqTkZnY2JuWllRMVdNMXBoRGZSSGRoaHlYbGgxRVdLTWc2UjVIaUFvQ09nekNnVTVVL1RqU1FwZ2lqZklWT1lncWtNdkRXRWVHcEJ2TEFaWngzV1Jjd1VSKzJmUXZJNTlpK1JhRExQKzZ4ZHplZkQ1ckNWaytDNEQrcFkyM3Ayd28vM2ZlZjM5bFpOK2VhUTlHM25qOXFSUFhITG44c2tNSDk5eTI3emEyVGxWbGNYcnhmRGhaSG95dzZQand5akRKNXFTNnpTdTFucGRFZHpDOGNyMVhkcksrb0ZtNFNhMEdmTitMK1JVKzN5amRuSHNXSCtEODZiMHNvaWJZSVBaOGdsY1ovUFM1U245QUQrbDJ4TDhQMk5ZVGp6TGU5Wm9iR1lYbVN4Njk1aVlva205VkpmK0E4NzA2UzN4OFZRVVh1Zm9GZnZPb1AySWJRV0NjZHdYMElERFdxUCtNVjdNMUFzV29aMnU1V2VoSEtaNC9mUll0VkRZbFlMYk1UckNWcithSVFsaFVPV0xyQndDQTRqRjdERkdkbDJxUjVSM3FMeFZ6TFRIYkFoazFSVkxVblZQcldQQmRGR2g4T1FTZHRhNWhSVXdsZ1F0aHFTbkhiNDQ3aGVhbkFGQk1FamZWelRlM0JrY3ZHeG5ZMlJmYUd1UUxaTzdZT0wyTkVOMGtIMk5yWWZFMGlrZFRKZWM3eE5EdTEzU1NpVVMwNGtRNUZRN2lIOXRrK0pKQlVSZzlNQ2hELzNzTFovWjB2V2tuVlczNkhyN0E4MmwyZzRvS3MvRkczNXJSb2g0cHRVZUxob2MxUGk1OGdXT05KdjlJUzJlK0hZS3JkYkxZNnFJTmFnWVEvWHV4OEtkblAyQUZNTVUzMjBGZ3cvNHd2cDNpZ0NBRldqUm5JWlJ3ZnM2L1Q3ZzFpcC9VV2dJZTFuZ0gyZGVBTlU3VmwydFlZc2ErR3Rid1Z1TGtKall2enkrSFBIdndmUXhkM09lQ0dXNVE0NmExTHVXcEZmaG53a1ViWFdwMGhXL2dScGJaaEhKL1pnVzdQbkhjcmtZRUw5V3c2eWU0ZG1KMFpHaVFlVFczdGJyK2d1b0ZBNytqN2tOV0Y0THhQSnlIVnZOMFpqTDFhdDdPcVllNXA1ZjBzT3orSDVabHFIbkVkZjk2QlA0L0xMbVY0cW9PME5uNk5lNk5XSHQySGF0OFJJSmJ5bVgzemw0dW1zL3hYRFNsU3Bmckx3Z2YvUlR6S2hRV1dUNmFKZTQ2ZVY0cW1tQjZ0ZHdTL0ZpdUVweHBjcWVYaVlZbGpkZ0puK0FKMXhMRE10R2NlNjF1KzNCSGpIN1NqZXpGdXhuZTJlbGFrZXVaYUJydDRWbVFMMWdVZ0NBUmlXZGdGRUdTNStzYUFCM0ZQSEpDNE9IcWlzSjlsRm1XSVZHQlI1OVp2NDVIZExKWEFHa1VYa0Z0c0hNd25sWmY1R0E0VXBQeGJiN1lRWFB1RFRkd29DbEQ2cDg1RHhxQmdQR0lwV25PSjkzb1lUeXJSa0k2aUs3V2k5TUIyeFBYbnpQQ3lucUc5MTdQQW05SmE2b1VFM29zZU5Wd1JIVSs1Y1lsNHpsbzhJZ2VEaG40aEdrNWF6ZjZZODlVazJ1bzZyUWFxeVhYZUkycE5tS2ZNTXFoTXBvQjdNUFc5YU9FbmtTcXBKNnFSazNJR2tHS3F4aHFkdVBHYVBlT0xmTWJLaE9qZy8zZHhXd0tCSGNMaFhGWXJ5Wmdhb1IvbmdqMU8rS2ppVHNBMElqaU85WEFIVVl3U1A3MGxRSWovTUhyZlRwOUhBYnk0NnBobmVEUy85T3ZBQng1T1k0WUg4Q29CMVhZaWlLVk1wRzUyNnliYTFFRVRnREF4dVVBWkJVT0lKQ0J2a0pITWhHUCtpMVZJVDFDRCtjQVlTbGQ1cXQxSjlqcVNUWFRwTXNCd2swajUzemkveFE1NmhoOXV3WjZkMDRZUkZPMlV3UDdEcTdmdU1CNVFKWDBsLzQzSS8yNkxtU2lZY01qL2Y5Qjl4NFlYQm9WaE14MGw2ejU2S1liazBsRyt1L2ZjYWhLOVBFSjRCcHZWRUdVdXRHL1pxUkcrWW1IaGU0Q2VXb2VMVloycm9rQUcyVFpNUURveVRvaEttYmg3Q3psRTBqbkFsM1dYTmluc2JtM3hDZ0dYN2RzWm1ObGNtSjhaTGl2MUpGdGlmbm43WG5YVm1Hc2d2MVlvdEpRSkdxeGhhVUtYaFkzdHlvU1psN3orWUpYRmVKNUlnWjV5QTRMd3lGZmRBNG9odXV1cDNmQ2Y4MGN5UlRIQ0xIRDJZRnMyQ1prckpnWk5UUWRqckx4TnF3citBT0tSdHBBbm41WFBmMGVQcE9ObTNHYXlHSm9ibE1sRVdRbkFrbUYydXhlSFFrS3A3TndpMzlVVkZYNVJ5alUvVkhpNUZXb2JTVi94TWhkNGwxNHFTWGV1WDM2WDFkZnFoM3YzRGhMYnIvZzR1dTEzejVTalYxd1YrbUd5aFd4QzlETHZkaGpsckl3MytRc2ZtdkRTdUMxdk1pRDFYWE9HUU9PWUdEQWMxNW9xN2ZRV2JHUVNjZGo3TzRTYzE4bzlBbzhySUd0UEQvQ1ZnTGdLK0xVOHczQUF3aWZjcHlpSGRUMFM5NzgyTFl0MTdlMStmZisvczc1bWZXakdMbXI0Sno5em9ZYjdyNWhBOStFTVJwZFB6Ty82L2YzK052YWJ0aTg3YjMzSDlTMWdGMzhEZUpMMytEdmJmQWFycitCUC9PZHdqOElFNXgzbHlzRFpTeUlKV0JRN1RBYUJYZGxlYjdpMXNuNnA1bWVHaHNaNkdQNVR1UHVPZ3RNR0t2RlpYQ01VMkFwcnF0NndZWnNwMVVFT055WS90ek5JRGV4Ly9hYmI3Nzl6NVB3NTgraGROdWZwNkIwVEtmZlZBeEQyYXJxbXZvTlZUZVZiNmlhcVd4VkRFMkZFK1N4cFdyNzJ6K2FTaVJTSDJVbDUxOVZYYWZmVUV3ZEx0RjB0ZG9hN3FWcWhzSjU5R25PLzI1RWI2eThMZ0dqVGlpd0ZDQ1h6eEpOWGRvT2RFQ3N2VGxtM25Cc1pQaXhwaHB3L1hFTEc2WnFtTWVRYVo2Z0FMQkVwS3BvMFMwaGRjbjI2WUtLVk9BQUo2NDdjdmpLS3k1aFZvR0ZtWTNycHlmR2hnWjZ1anVMYWVBR2pQUERJTHNSMzhpWHJzbldISWF5NVZxeGxsbWs1amZFa2c5N3hScDJxSGtnRFlacnhkb0taelhmb3ZKZ3JWakZHSSs5YVErbGFTVWdQM1Q4SVVWaGhVVk82eGVobEZZVVZzc0xlOTdFS1AyYjlpaEtrdHJ5UXljZllvV2d2TWlYU0YyRXFpU2xwNDgvUkFNU0ZIYS9pWm05SG1IVjdqMmdPazNwSGxhdHY4UVBKcUh4c1llVW9KUmtQd2pNMi8xQk9QUGc4WWZjWDk1YmRRQmxZL2E3d3Y4aXo4RThtMERGU280dG9CcG0wcVdyWWFvcTJjbVJaR0tnUHpHUm5PaGttVEJ6K2VvU1ZEd0pKaHVySzNSR0Y2QXhyaEQ2TmtIcUxIVnYzcm8wT1Q1U3V1TGR2ZjJ0clZsTHZWblZ5YmtQTG0zZDFGMHFLbEtYb0tzM1crcTJTL1l2Yk80dVFlc0Z4OVRtRjNiUHozWjJSY0o1L2RpdVBjdWJwdFNBSlBRUlhjV2Y3dXFjbmQrOWJkYlVibFlOb1UrUVNxemlzZm1aenE1cWZpV2IzQUxTU0J4dFI0Y3JWL1Ftb3hHUUxmQVc0QjZJektrWWd5eUcrZnJuSUpXaFk5QXZFaUxTY1VRbGVrcURPYXRndG80QlZLRmRURHUzeEpZelhHaHRVZVQ1MmNFMXBXNFlTcW1XN2EzYi9UNDVyc1FEYkNsMExJZXpReU9lWjJNOXZwNmxBMlZlcmI0bUxmVWs0VEY0aWtVWWQ4bHp0NjBFSHBra0kzeXQ5RGhlaTNFK0lhdmlvbVNJWVVtYVZjT2JwdFp0bFhCSm8vSVd5UkszeUZUcmtkWmRQbHE1dHJWZGtjYjI5WlV2enhwYVRDQlM1N0cxYzNjc1NISXUrMFo4ZzJLYXltMnEvSHFRRlVTNGtTSE9YUytyOTJjenQ4NXJ0bktKSkYxQy9kckl3ZktHMGJIcHZyMWpvcFRMVzJhN0tFdmQ4QlN6dDh6dG1OMjRxeUdtbzRSTUdEbGx0QlVkUmpPVjlRaUVYNmFBQmVrWEhXZktOeVFjQTlTaUNGelhEMzJJai9FSVJpS3VVRyszdHJhR28yMWhtd2ZxdVk1VW51QSsxWlNLUGxkUHJEZFVhRWk0ZDRIa2UwUENCZHFUQktBT3AyeG4rbXo4WlZuZU9lbDZWVTN5cUJXbmMyU1hMY0RmbmFPVTFvb0srYTgxY3pieEMvNjVOWXF5Wmc0S3hKNWJRMytZSHpLd2lmVnlYcFp6d3pvVWpYSk94cCtSWldmSTdzMncrd080bVhSVEJVMnk4QmpwVXl2djdCWC8vOUt1NXJlSkk0cnY3TzU4N1BmYVhzYzJ0dlBsT1A1SWNHTHdZbkJSTUNtSm9TRWtvUkRWcEVTcUVJclVORVFjVUJWeHFhcEtTSWhLbEZaVi80QlVRcm0waDE3YUEwSkExVk43QmRGZWV1dWhVcVVTcVpmRTdielpPSEdRV2c3MXdUTzdxLzJOdGJ0KyszdHYzdnhlNng1SFprd2c3dzBTUmh0bUJhQjlNY3FSTENHRFBoOGx1QWRmS3I4b2ZVSXJvYzd2d1Jkb3Z0N2JGekUxR1ROcEdGbjB4b3BzVy9kbVpOY2NRTVJOY0MrU05LYStEcysrVlo4eEVMZXNxNm9jNHFRSlNWY2llbGlCTW41WEpJdmExTEpYSkJ1aVFNdVNheExpWG9WNUcyb2grZzduWUticm1CMXNzd2xzRTlhYnB6anN1VTVZYWZWL28rNy9uZjhOYUxwazVaV0l6V2E5UEg3U3J5RHA4ODgrK25EdC9ldXJpMitmYnB5Y0hwOStyVmFwKy9YUlVuNHduWXg2cm1Qb0JFUHBTMUhITmhQdEV1U2g2dmZ0OWpJdmtlVTlUMHdzTE1tS04vUVlDcVFpT2plRVFDN01MZ0EzNFI0NkVNZmNyclp3NSt2OGNKZFFJWU9sdW1Cb1BkajBnS20zdVlEeTA2SnN4Sk54YmpzZjdYUVdDV1ZZK1FZemVvYmhyUmVRbXFCWW1HMm5iTTlMZWhINWpoM2hyZGY2Z09Kc3Y2b2lIUmtrbTQrbmtqMmo4ZVJ3VGlVTUo2RStkanFKTWFmV0J1N3BUNWg2ZXFCY1BGamNPU2gvNjlnSngwbllUcnZWeUxZR0k4bC9FVzM3RGRFVDJ6ZWo5a1U3d3BuWFJUdmEwZDNlNENpS0l6UE1uMndsaE1JOVhZWWJUV1F6aDNSRWNRck9qUEZoZEE0eVFMQnNhZXhBMUFxTm5qa0NWUk43K2VHOStINVd2c1A1YmtrcVM2OUxrMUpUK3FydXhyakZoandtaVU1em9xRzBjNmdrbVhET1NCQnBpenN6RUZXbHFzWnRGNFB5YWxRczJkZXdDcFgwWUEwRGJ6UzlDWk8yL0VrYys3ZnpLVVRqWGduUXJIdW5HM016amVicFpyUVFDUmRTdWV3QXBEVWdHbW9MQU5OTWZ5bW9zblQ0VUF3Y05BSnJHa3RCRGZGWVdhVDU1MktaN1A0OTNLTkJzUXp0ZjBsVG1oTmRzb2x4WGlXL3EwWlljY3p2ckpGVUlmMjlHVldjMW0yRHppcE8yRkZuQ1RQRG1keXg2dEE4ZXF4MjdEbGFOdWp5MFB5bnhibHVhaklVWnlidG5wUFBEYlR1cTRTb2FDYmp4S0lvRlUrblU3S1Q4Rm9mTys0RHB1dnNnVzJIbmU2SFMxdDdHOGNkOStyU1JqcEJHUks1VFJwSnBIZTExRzlMdGpRQ0ViYURoZ3FUQW8xT3I0V1RPaHZaZ2RmQ3pYb0lsQTc4RVArejRGMEZFMG9DK1pLWHBFdVFtc2g0OGI2WWwwR2J1VUpmUGw0NjNsTXBXYTVlTEtlUGppVHkvVVYrWFhUNWRxWVNiaDF6NDNFWC9SQ3VaTjd6c0VxeEZWSklDTnV0bG00cUZsRmRTMlVZZDhrNlJnNGhlMzdXRS80c0RFb2o5ZUVVWi9sSm0zSmVMd2RNZDBldE41amdDTWhUUEJZZDhJUk03MmhaVE83REFvN0JFVzZQZzl5SUNNVGNxcUNDVWUzcjVuOXU1WW5sa2FVL3ZLUjFnSDN5dDBROFlsQzY1Vlc5dS9jV3FhV2g0K0VFSXBwRmwzNzBERzM5VjBKTUdxS282WGwzNzgvVGlDWExpWWdzM2cvdktyOHBiNHI2UkdQU2xIUUJkQmFoZ0N0bHFxamJLbW1FYWFLU0s1WWhPQVVoTlYyVUFERjJ0Q1doQU1qMDJmcUpvU0pJVE03Tm5yMHdmV0Z5NHNSVWZjcXZGTWVHeG5wN29vV3VRaEIzZEhiOVN4ZnVSaTlRUGpjUW5JUnZJYXQ4Q0k0RVU2ZXZsS1pVd0w4RzQ0ZzJiOTI0UGo0eE1YNzlCckxidlZzcmx4ZjhhdFZmdVB5ODNWazVQem1STHhiekU1UHJqVk1GL2puVm1QSVhmSDloK1pMdlh6cVNyOVhtYWpYbFBKemQrbk0vNHRiTmZVaWlJejhFaFBWOW1LM0lEdHJ5Z28veWdEZFhrOW9jVXhiUGMxb2FobHdZRGNuY0RlUXVLcjl3Y0dIRU5Mc3c3OER1Y3RWOXhJYUtGQWV2S3doalZhQys2U003cE9PbnV2Y000OGQydi8wWTQyZDYvaW5XUS9ZanJLTlRtOXd1WG1OcDkyZmVydEhhbW1Jb3E0eXQ4bVlObDlZVVFwNjdhWGFOdHkvMGZ3QndHdG9JQUFCNG5HTmdaR0JnQU9LYTJ5eEo4ZncyWHhtNG1WOEFSUmh1VkpXdmdkSnIvLy83bjhYOGpqa1l5T1ZnWUFLSkFnQnpLdzMzZUp4allHUmdZQTc2bndVa1gvei85LzhYOHpzR29BZ0s2QUVBdHhnSUh3QjRuR04rd2NEQVREYisvNDk4dlhod05vM1VRdHo4bnladUhpRVlBUGNHZzRZQUFBQUFBQUFBQUZ3QXVnRVlBZGdDV0FNQUEyWUQ3QVJ3QlRvRmxnWWFCdm9Ib2dmK0NGUUlkZ2phQ1NnSi9BcktDOG9NYkF6YURZSU9XQThBRUFBUVRCRDBFYjRTTGhMSUUwNFQyaFRVRldnV0hoWnFGc0lYRUJlTUdEZ1l4Qmt1R2VZYWxCdnNITzRkdkI0eUhxSWZOaCtNSUM0Z2dDRHVJVUlob2lJU0lyd2pPaVBvSkdBbEppWVdKcGdudGlnY0tKQXBCaWxzS2dJcVppcmtLOElzUEN5R0xPb3RkaTNzTGhRdVppN2dMelF2VmpCWU1RNHhYaklNTXlZenpEUStOTVExQWpVNE5lbzJvamNNT0hRNDJqbitPcTQ3VWp2eVBFWThmRHk2UFZROTJENXVQdkkvbEVCYVFOQkI3a0o4UXJKQzdrTjBROFpFVmtUeVJYaEdERVpLUm5KR3pFZEdTQ1pJbUVsQ1NnUkxoRXhpVE1CTkZFM0tUaGtBQUFBQkFBQUFqQURRQUEwQUFBQUFBQUlBVGdCZUFITUFBQURSQzNBQUFBQUFlSngxa00xS3cwQVVoYy9ZSDdVRkZRVzN6a29xMHZRSFhDZ1VDcFYybzVzaTNVb2E4MWZTVEptWkZ2b2F2b01QNDB2NExKNm1VNUdLQ1pQNTdybm4zcmtaQU9mNGdzRDJ1ZVBhc3NBUm95MGY0QkE5eHlYcWo0N0w1Q2ZIRmRUeDRyaEsvZFZ4RGJlSUhkZHhnWGQyRU9WalJqTjhPQlk0RTZlT0QzQWlyaHlYcURjZGw4azl4eFZjaW1mSFZlcUI0eG9td2ppdTQxcDhEdFJpcmRNNHNiSXh1SkhkZHVkZVR0ZFNVVXB6UDVQKzBpWktHOW1Ya2NwdG1HWEtDOVRjUk0wMFVMa1poL0V5OC9VdTNPMlRVSnRVNWJManRYZlNLTXhEN2R2d2JkUGRyT0t1dFpHTXRKckxvZXNyRjFyTndzQjZpYldMaDFicjkza1lRR0dCTlRSU1hsVUNDNGtHMVJ2dVhiVFJ3VDFwU29la2MrdEtrY05IUnNYSGtoVkprVEdNKzF3Um81eHFTRWRHOWhEd08yYytRcE8xUVpFM0dOTVJzejVqRi8wbnV4OVA2TjY0MGlLV25NdmpkUHV1RVYxNTRmU0xDZDUrWmpkWThiUXVWY3VhelpTNm1FcGl1RGV2NUgxc2NqTXFBWFd2dUJWTDlRRXR2di84M3plTHdvSk5BSGljYlZQbm54czFFTDBYYjdHdkJ3S0UzanNIZHhjSWhONTc3OTNJMHF4WDhhNmtrN1QyT2ZUZXd2L015SGZtbHcvc0IyMmJlZS9ObTVtVkV5dEgxK3JLLzE4WGNRSTlaTWhSb0VRZkE2eGlEZXZZd0NhMnNJMlR1QXlYNHhTdXdKVzRDcWR4TmE3QnRiZ08xK01HM0lpYmNETnV3YTI0RGJmakR0eUp1M0EzN3NHOXVBODd1QjhQWUJkNzJNY1pQSWlIY0JZUDR4R2N3Nk40REkvakNUeUpwL0EwbnNHemVBN1A0d1c4aUpmd01sN0JxM2dOcitNTnZJbTM4RGJld2J0NEQrL2pBM3lJai9BeFBzR24rQXlmNHd0OGlTRytnc0FJRWdxRUNtUFUwRGlQQ1JxME1MQndPSUJIUUVTSEtXWTR4QndYOERXK3diZjREdC9qQi95SW4vQXpmc0d2K0EyLzR3LzhpYi93Tnk3aW41WDhqTEl4OUlSU3VXeHNvSUh6V3RMSTJrbFdVK1A2eHNhak4yOW5vZWhjWThVaVVrNktzYmVkQzJ2V2tSbFd0bEhrdDcwZTEzRW9HajAydzBpSHNYVGVxazdHallPT1F0U1dBNGxVT1JQZWFEUE91a0ErWCtTc000K3V0QlFwS0t0dFMzMXBUZlJDeHBLMXBjQk1PQmN5YWQwODE2MFlVNWFJKzRGaVpLaFFYTEMyMWFid0pLMVhBK0ZacjdJejA1TmQzTktHOHlNcmFsMGpJbTJrVEZMSG9nZEJLeG8yT3NReVlkZ3VGZ2NkVngzV1BhVm90ZmlYalpXVlpURGFPWXFaWS80MTJZVm8yMkdTVlM3NE9sZUlHSVdzU3lYbVUwMnpUSnZLYmkvWnhYaFlhV3BVN2tTSWxBWHJZOCtwaWlVN2ZzeWlDSk0rZzNrN0ZjMWFzRktMSnRUQ1UrSEl1b1lLSGRsWVdTaHFpTk5IUWs1NkkyRnlhb1Z1c2hIWHdtNVRvczBYYVFNbFFqMnl3cXNpMXNKTVFoNHQ2MXBkK3JxelZ3YW5qZUVXdU5wR205T1VUQ3hIblU2dXJKL242blExWDdUeHBPUS81QzlwYkVaS3g2SVJjN2FyenlOanZZN3o3UkNGVVV3NHRLUHpKR01vRXhkVDlZK3NPbmVtWEloTnpKMlVGRUxwcWZJVTZxMkdxa3ZuSmt1dHl5V1hFVE0rWTA3c3I4OVMxSnFuMWs1VHc4eUVZZHBXK0htZmU5TzFyTEZRWGxReGJCeC9WeFNaamttNDdaS3lSaytvbjVDUGhyZ21PVm5qYytxdFNjZ0ZIVHJXbnlYa1BPWE04eWhHRFdXTG1WMjRzN08zR1hWRFE1bUtUR054aXJlbFRvcEhYWlBhb2hhemtvNStKYWJKRlZvL3Bsak0rWkl2cVNncTNiQ3JXU3BuYzRtampXS2VRY2MzejBLb244aFRyek9PcG95LzIvODRUZGVPeUM4NWVTVlhqeERUKytDWXFITzhyU1I4V1ZuUGE2ZFdEYzJHTTUwRWJDMXh1SWVKdE9oTUF1R0ZUdlBZR2U1bzVteUlKM2l1QTBQSXVzZkpSZVh0QlY0OGFkdmtlRWdibHhUelNtbzVZLzlPS3gyazdmZ1hTMUJkUTVxbklPenM3aStuWVBmNFlmOXNQM295aXRlM2lNS1BlYTlrTjZLVmxYOEI4amphaWdBQWVKeGo4TjdCY0NJb1lpTWpZMS9rQnNhZEhBd2NETWtGR3hsWW5UWXhNREpvZ1JpYnVaZ1lPU0FzUGdZd2k4MXBGOU1Cb0RRbmtNM3V0SXZCQWNKbVpuRFpxTUxZRVJpeHdhRWpZaU56aXN0R05SQnZGMGNEQXlPTFEwZHlTQVJJU1NRUWJPWmhZdVRSMnNINHYzVURTKzlHSmdZWEFBeDJJL1FBQUE9PScpIGZvcm1hdCgnd29mZicpLFxuXHR1cmwoJ2RhdGE6YXBwbGljYXRpb24vb2N0ZXQtc3RyZWFtO2Jhc2U2NCxBQUVBQUFBUEFJQUFBd0J3UjFOVlFpQ0xKWG9BQUFEOEFBQUFWRTlUTHpJK0lFb0NBQUFCVUFBQUFGWmpiV0Z3SHNUc3FRQUFBYWdBQUFrU1kzWjBJQWJYL3dRQUFMTmdBQUFBSUdad1oyMktrWkJaQUFDemdBQUFDM0JuWVhOd0FBQUFFQUFBczFnQUFBQUlaMng1WnVyemhib0FBQXE4QUFDY01taGxZV1FVQURMN0FBQ204QUFBQURab2FHVmhCMEVEMlFBQXB5Z0FBQUFrYUcxMGVDSG4vLzBBQUtkTUFBQUNNR3h2WTJIR2dhSklBQUNwZkFBQUFScHRZWGh3QWl3TW9BQUFxcGdBQUFBZ2JtRnRaYjlhcGVFQUFLcTRBQUFDelhCdmMzVDdrY3VQQUFDdGlBQUFCYzl3Y21WdzVVRXJ2QUFBdnZBQUFBQ0dBQUVBQUFBS0FEQUFQZ0FDUkVaTVZBQU9iR0YwYmdBYUFBUUFBQUFBQUFBQUFRQUFBQVFBQUFBQUFBQUFBUUFBQUFGc2FXZGhBQWdBQUFBQkFBQUFBUUFFQUFRQUFBQUJBQWdBQVFBR0FBQUFBUUFBQUFFRDVnR1FBQVVBQUFKNkFyd0FBQUNNQW5vQ3ZBQUFBZUFBTVFFQ0FBQUNBQVVEQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFGQm1SV1FBUU9nQTZJd0RVdjlxQUZvRFV3Q1dBQUFBQVFBQUFBQUFBQUFBQUFVQUFBQURBQUFBTEFBQUFBUUFBQUp5QUFFQUFBQUFBV3dBQXdBQkFBQUFMQUFEQUFvQUFBSnlBQVFCUUFBQUFBWUFCQUFCQUFMb2llaU0vLzhBQU9nQTZJdi8vd0FBQUFBQUFRQUdBUmdBQUFBQkFBSUFBd0FFQUFVQUJnQUhBQWdBQ1FBS0FBc0FEQUFOQUE0QUR3QVFBQkVBRWdBVEFCUUFGUUFXQUJjQUdBQVpBQm9BR3dBY0FCMEFIZ0FmQUNBQUlRQWlBQ01BSkFBbEFDWUFKd0FvQUNrQUtnQXJBQ3dBTFFBdUFDOEFNQUF4QURJQU13QTBBRFVBTmdBM0FEZ0FPUUE2QURzQVBBQTlBRDRBUHdCQUFFRUFRZ0JEQUVRQVJRQkdBRWNBU0FCSkFFb0FTd0JNQUUwQVRnQlBBRkFBVVFCU0FGTUFWQUJWQUZZQVZ3QllBRmtBV2dCYkFGd0FYUUJlQUY4QVlBQmhBR0lBWXdCa0FHVUFaZ0JuQUdnQWFRQnFBR3NBYkFCdEFHNEFid0J3QUhFQWNnQnpBSFFBZFFCMkFIY0FlQUI1QUhvQWV3QjhBSDBBZmdCL0FJQUFnUUNDQUlNQWhBQ0ZBSVlBaHdDSUFJa0FpZ0NMQUNZQUFBRUdBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBd0FBQUFBQnFBQUFBQUFBQUFBakFBQTZBQUFBT2dBQUFBQUFRQUE2QUVBQU9nQkFBQUFBZ0FBNkFJQUFPZ0NBQUFBQXdBQTZBTUFBT2dEQUFBQUJBQUE2QVFBQU9nRUFBQUFCUUFBNkFVQUFPZ0ZBQUFBQmdBQTZBWUFBT2dHQUFBQUJ3QUE2QWNBQU9nSEFBQUFDQUFBNkFnQUFPZ0lBQUFBQ1FBQTZBa0FBT2dKQUFBQUNnQUE2QW9BQU9nS0FBQUFDd0FBNkFzQUFPZ0xBQUFBREFBQTZBd0FBT2dNQUFBQURRQUE2QTBBQU9nTkFBQUFEZ0FBNkE0QUFPZ09BQUFBRHdBQTZBOEFBT2dQQUFBQUVBQUE2QkFBQU9nUUFBQUFFUUFBNkJFQUFPZ1JBQUFBRWdBQTZCSUFBT2dTQUFBQUV3QUE2Qk1BQU9nVEFBQUFGQUFBNkJRQUFPZ1VBQUFBRlFBQTZCVUFBT2dWQUFBQUZnQUE2QllBQU9nV0FBQUFGd0FBNkJjQUFPZ1hBQUFBR0FBQTZCZ0FBT2dZQUFBQUdRQUE2QmtBQU9nWkFBQUFHZ0FBNkJvQUFPZ2FBQUFBR3dBQTZCc0FBT2diQUFBQUhBQUE2QndBQU9nY0FBQUFIUUFBNkIwQUFPZ2RBQUFBSGdBQTZCNEFBT2dlQUFBQUh3QUE2QjhBQU9nZkFBQUFJQUFBNkNBQUFPZ2dBQUFBSVFBQTZDRUFBT2doQUFBQUlnQUE2Q0lBQU9naUFBQUFJd0FBNkNNQUFPZ2pBQUFBSkFBQTZDUUFBT2drQUFBQUpRQUE2Q1VBQU9nbEFBQUFKZ0FBNkNZQUFPZ21BQUFBSndBQTZDY0FBT2duQUFBQUtBQUE2Q2dBQU9nb0FBQUFLUUFBNkNrQUFPZ3BBQUFBS2dBQTZDb0FBT2dxQUFBQUt3QUE2Q3NBQU9nckFBQUFMQUFBNkN3QUFPZ3NBQUFBTFFBQTZDMEFBT2d0QUFBQUxnQUE2QzRBQU9ndUFBQUFMd0FBNkM4QUFPZ3ZBQUFBTUFBQTZEQUFBT2d3QUFBQU1RQUE2REVBQU9neEFBQUFNZ0FBNkRJQUFPZ3lBQUFBTXdBQTZETUFBT2d6QUFBQU5BQUE2RFFBQU9nMEFBQUFOUUFBNkRVQUFPZzFBQUFBTmdBQTZEWUFBT2cyQUFBQU53QUE2RGNBQU9nM0FBQUFPQUFBNkRnQUFPZzRBQUFBT1FBQTZEa0FBT2c1QUFBQU9nQUE2RG9BQU9nNkFBQUFPd0FBNkRzQUFPZzdBQUFBUEFBQTZEd0FBT2c4QUFBQVBRQUE2RDBBQU9nOUFBQUFQZ0FBNkQ0QUFPZytBQUFBUHdBQTZEOEFBT2cvQUFBQVFBQUE2RUFBQU9oQUFBQUFRUUFBNkVFQUFPaEJBQUFBUWdBQTZFSUFBT2hDQUFBQVF3QUE2RU1BQU9oREFBQUFSQUFBNkVRQUFPaEVBQUFBUlFBQTZFVUFBT2hGQUFBQVJnQUE2RVlBQU9oR0FBQUFSd0FBNkVjQUFPaEhBQUFBU0FBQTZFZ0FBT2hJQUFBQVNRQUE2RWtBQU9oSkFBQUFTZ0FBNkVvQUFPaEtBQUFBU3dBQTZFc0FBT2hMQUFBQVRBQUE2RXdBQU9oTUFBQUFUUUFBNkUwQUFPaE5BQUFBVGdBQTZFNEFBT2hPQUFBQVR3QUE2RThBQU9oUEFBQUFVQUFBNkZBQUFPaFFBQUFBVVFBQTZGRUFBT2hSQUFBQVVnQUE2RklBQU9oU0FBQUFVd0FBNkZNQUFPaFRBQUFBVkFBQTZGUUFBT2hVQUFBQVZRQUE2RlVBQU9oVkFBQUFWZ0FBNkZZQUFPaFdBQUFBVndBQTZGY0FBT2hYQUFBQVdBQUE2RmdBQU9oWUFBQUFXUUFBNkZrQUFPaFpBQUFBV2dBQTZGb0FBT2hhQUFBQVd3QUE2RnNBQU9oYkFBQUFYQUFBNkZ3QUFPaGNBQUFBWFFBQTZGMEFBT2hkQUFBQVhnQUE2RjRBQU9oZUFBQUFYd0FBNkY4QUFPaGZBQUFBWUFBQTZHQUFBT2hnQUFBQVlRQUE2R0VBQU9oaEFBQUFZZ0FBNkdJQUFPaGlBQUFBWXdBQTZHTUFBT2hqQUFBQVpBQUE2R1FBQU9oa0FBQUFaUUFBNkdVQUFPaGxBQUFBWmdBQTZHWUFBT2htQUFBQVp3QUE2R2NBQU9obkFBQUFhQUFBNkdnQUFPaG9BQUFBYVFBQTZHa0FBT2hwQUFBQWFnQUE2R29BQU9ocUFBQUFhd0FBNkdzQUFPaHJBQUFBYkFBQTZHd0FBT2hzQUFBQWJRQUE2RzBBQU9odEFBQUFiZ0FBNkc0QUFPaHVBQUFBYndBQTZHOEFBT2h2QUFBQWNBQUE2SEFBQU9od0FBQUFjUUFBNkhFQUFPaHhBQUFBY2dBQTZISUFBT2h5QUFBQWN3QUE2SE1BQU9oekFBQUFkQUFBNkhRQUFPaDBBQUFBZFFBQTZIVUFBT2gxQUFBQWRnQUE2SFlBQU9oMkFBQUFkd0FBNkhjQUFPaDNBQUFBZUFBQTZIZ0FBT2g0QUFBQWVRQUE2SGtBQU9oNUFBQUFlZ0FBNkhvQUFPaDZBQUFBZXdBQTZIc0FBT2g3QUFBQWZBQUE2SHdBQU9oOEFBQUFmUUFBNkgwQUFPaDlBQUFBZmdBQTZINEFBT2grQUFBQWZ3QUE2SDhBQU9oL0FBQUFnQUFBNklBQUFPaUFBQUFBZ1FBQTZJRUFBT2lCQUFBQWdnQUE2SUlBQU9pQ0FBQUFnd0FBNklNQUFPaURBQUFBaEFBQTZJUUFBT2lFQUFBQWhRQUE2SVVBQU9pRkFBQUFoZ0FBNklZQUFPaUdBQUFBaHdBQTZJY0FBT2lIQUFBQWlBQUE2SWdBQU9pSUFBQUFpUUFBNklrQUFPaUpBQUFBaWdBQTZJc0FBT2lMQUFBQWl3QUE2SXdBQU9pTUFBQUFKZ0FBQUFNQUFBQUFBOElCMGdBTUFCa0FKZ0E2UURjSUJBY0NCZ1VBQVFFQVZBZ0VCd0lHQlFBQUFWZ0ZBd0lCQUFGTUd4b09EUUVBSVNBYUpoc21GQk1OR1E0WkJ3WUFEQUVNQ1FVVUt4TXlIZ0VVRGdFaUxnRTBQZ0VoTWg0QkZBNEJJaTRCTkQ0QklUSWVBUlFPQVNJdUFUUStBWm9mTlI4Zk5UNDFIeDgxQVhrZk5SOGZOVDQxSHg4MUFYa2dOUjhmTlQ4MUh4ODFBZEVmTlQ0MUh4ODFQalVmSHpVK05SOGZOVDQxSHg4MVBqVWZIelUrTlI4QUFBQUJBQUQvdHdPYkF3VUFMd0EwUURFQUFnRUNid0FGQUFWd0F3RUJBQUFCVkFNQkFRRUFXQVFHQWdBQkFFd0NBQ29uSWg4YUZ4SVBDZ2NBTHdJdkJ3VVVLd0VoTWpZOUFUUW1JeUVpSmpVUk5DWXJBU0lHRlJFVUJpTWhJZ1lkQVJRV015RXlGaFVSRkJZN0FUSTJOUkUwTmdKQkFUME1FUkVNL3NNSkNoSUxPZ3NTQ2duK3d3d1JFUXdCUFFrS0VnczZDeElLQVNRU0N6b0xFZ29KQVQwTUVSRU0vc01KQ2hJTE9nc1NDZ24rd3d3UkVRd0JQUWtLQUFBQUFBRUFBUC81QTFjQ3dRQXZBQ2hBSlFJQkFBRUFid1VCQXdRRGNBQUJCQVFCVkFBQkFRUllBQVFCQkV3VEV4OFRFeFlHQlJvckFUYzJOQzhCSmlJUEFRWWlMd0VtSWc4QkJoUWZBUllVRHdFR0ZCOEJGakkvQVRZeUh3RVdNajhCTmpRdkFTWTBBbFQ2Q1FrbUNSY0ovQVVRQmZ3SkZ3a29DUW44QlFYK0NRa29DUmNKL0FVUUJ2c0pGd2tvQ1FuNkJRRnEvQWdYQ1NnSkNmd0ZCZjRKQ1NnSkZ3bjdCaEFGL2drWENTZ0pDZndHQnZ3SkNTZ0pGd244QlJBQUJRQUFBQUFEREFLS0FDY0FOd0JIQUZjQVp3QjBRSEZnVUVBd0JBTUpXRWc0S0FRSUJBSkhBQUVBQWdrQkFtQVFBUUFQRFFzRENRTUFDV0FBQXdBRUNBTUVZQTRNQ2dNSUJRY0lWQUFGQUFZSEJRWmdEZ3dLQXdnSUIxZ0FCd2dIVEFJQVpHSmNXbFJTVEVwRVFqdzZORElzS2lJZkhCb1hGUlFTRHcwTUNnY0ZBQ2NDSnhFRkZDc0JJU0lHSFFFaklnWVVGanNCRlNNaUJoUVdPd0VWSXlJR0ZCWTdBUlVVRmpNaE1qWTFFVFFtQVJRR0t3RWlKajBCTkRZN0FUSVdGUmNVQmlzQklpWTlBVFEyT3dFeUZoVVhGQVlyQVNJbVBRRTBOanNCTWhZVkZ4UUdLd0VpSmowQk5EWTdBVElXRlFMTi9vZ1pKQlFRR0JnUUZCUVFHQmdRRkJRUUdCZ1FGQ1VZQVhnWkppWCt4d1VGS0FRR0JnUW9CUVZRQlFVVUJBWUdCQlFGQldRRkJTZ0VCZ1lFS0FVRlVBVUZGQVFHQmdRVUJRVUNpaU1YRmhjaEdHUVhJUmhrRnlFWUVoY25LUmtCNEJnZS9tWUVCZ1lFM0FVRkJRWGNCQVlHQk53RkJRVUYzQVFHQmdUY0JRVUZCZHdFQmdZRTNBVUZCUVVBQWdBQS81QURLd012QURFQVFRQStRRHNBQWdFQUFRSUFiUVlCQUFVQkFBVnJBQU1BQVFJREFXQUFCUVFFQlZRQUJRVUVXQUFFQlFSTUFnQS9QRGMwSXlFYUZ4RVBBREVDTVFjRkZDc2xJeUltUFFFME5qYzJOelkzTmk0Qkp5WUdCd1lIRGdFckFTSW1OejRCTno0QkZ4NEJGeFlYRmc0QkJ3NEJIUUVVQmhjVUJpc0JJaVk5QVRRMk93RXlGaFVDSW1BTEVFYzZKQm9pQmdVblJ5c2ZPeGdtQmdJUERHQU5FUUVHTUNjdWMwQk9oaWdwQXdNeFhqNE5FQk1URVF4Z0N4SVNDMkFNRVhjUUN4MDlaQlFOR3lvdkswMHdBUUVXRlNNeUNRd1NEVFpoSnlzdEFRTlJRa1JQUW5sY0Z3VVZEQjBNRWNvTEVoSUxZUXNSRVFzQUFBUUFBUCtRQTVzRExBQW5BRGNBUndCWEFHTkFZQTRCQUFBTkFnQU5ZQUFCQUFJTUFRSmdBQXdBQ3dRTUMyQUFBd0FFQ2dNRVlBQUtBQWtGQ2dsZ0NBRUZBQVlIQlFaZ0NBRUZCUWRZQUFjRkIwd0NBRlZTVEVwRVFqMDZOVElzS2lJZkhCb1hGUlFTRHcwTUNnY0ZBQ2NDSnc4RkZDc0JJU0lHSFFFaklnWVVGanNCRlNNaUJoUVdPd0VWSXlJR0ZCWTdBUlVVRmpNaE1qWTFFVFFtQXhRR0l5RWlKajBCTkRZeklUSVdGVGNVQmlNaElpWTlBVFEyTXlFeUZoVTNGQVlqSVNJbVBRRTBOak1oTWhZVkEwNzl2eDh1T1JraElSazVPUmtoSVJrNU9Sa2hJUms1TGg4Q1FTQXRMYVlMQ2Y3ekNBc0xDQUVOQ1FzbUN3aitwZ2tMQ3drQldnZ0xKd3NKL2xrSUN3c0lBYWNKQ3dNc0xTQTZJVElnbWlFeUlaa2hNaUU2SHk0dElBTUNJQzM5Y2drS0Nna21DUW9LQ1hRSkN3c0pKZ2tLQ2dtYUNRb0tDWE1KQ3dzSkFBQUFBQU1BQUFBQUE1c0N1QUFQQUI4QUx3QkJRRDRBQVFZQkFBTUJBR0FBQXdjQkFnVURBbUFBQlFRRUJWUUFCUVVFV0FnQkJBVUVUQ0lnRWhBQ0FDb25JQzhpTHhvWEVCOFNId29IQUE4Q0R3a0ZGQ3NCSVNJbVBRRTBOak1oTWhZZEFSUUdBeUVpSmowQk5EWXpJVElXSFFFVUJnTWhJaVk5QVRRMk15RXlGaDBCRkFZRGZ2enNEQkVSREFNVURCRVJEUHpzREJFUkRBTVVEQkVSRFB6c0RCRVJEQU1VREJFUkFrVVJERGtNRVJFTU9Rd1IvdUVTQ3pvS0VSSUxPZ29SL3Q0UkREa01FUkVNT1F3UkFBSUFBUCtRQThJRExRQWZBRVFBU0VCRkFBUUdCRzhBQmdVR2J3Z0JCUUFGYndJSkFnQUhBRzhBQndFSGJ3QUJBd01CVkFBQkFRTllBQU1CQTB3Q0FEOCtOak11TFNvcElpRWFGeElQQ2djQUh3SWZDZ1VVS3lVaklnWWRBUlFHSXlFaUpqMEJOQ1lyQVNJR0ZSRVVGak1oTWpZMUVUUW1BU1lpQndFR0ZCOEJGakkvQVRZeUZoVVJGQlk3QVRJMk5SRTBOaDhCRmpJL0FUWTBKd09sT2dzU0VRejloZ3dSRWdzNkN4RXRId01DSUMwUy9sY0lHQWorL0FnSUtRZ1lDR3dGRVF3UUN6b0xGQllLYkFrWENTZ0lDUDRTQzhBTUVSRU13QXNTRWd2Ky9DQXRMaDhCQkFzU0FpWUlDUDc4Q0JnSUtBa0phd1lMQ1A1b0N4SVRDZ0dXRFFrSmF3a0pLQWtYQ0FBREFBRC9rQVBDQXl3QUZBQXBBRDhBUkVCQkFBUURCUU1FQlcwQUJRSURCUUpyQmdFQUFBTUVBQU5nQndFQ0FRRUNWQWNCQWdJQldBQUJBZ0ZNRmhVQkFEbzVNaThnSHhVcEZpa0xDZ0FVQVJRSUJSUXJBU0lIQmdjR0ZCY1dGeFl5TnpZM05qUW5KaWNtQXlJbkppY21ORGMyTnpZeUZ4WVhGaFFIQmdjR0F5WTlBVFFtS3dFaUJoMEJGQjhCRmpJL0FUWTBKd0gwZld0cFBUOC9QV2xyK214b1BqOC9QbWhzZlYxUlRpOHZMeTlPVWJwUlRpOHZMeTlPVVJ3SEVnczZDeElJamdrWENTZ0pDUU1zUHo1b2JQcHNhRDQvUHo1b2JQcHNhRDQvL05ndkwwNVJ1bEZPTHk4dkwwNVJ1bEZPTHk4QlZnZ051UXNTRWd2cENReU9DUWtvQ1JjSkFBQURBQUQvOGdQb0Fzc0FLQUJQQUhzQUxVQXFPZ1lDQkFBQlJ3SUJBQVFBYndBRUFRUnZBd0VCQlFGdkFBVUZablJ4WGwxS1J6YzFIeDBwQmdVVkt3RW1OVFEzTmpjbUp5WWpJZ2NPQVJVVUZ4WVZGQWNHQndZSEJnY2VBVHNCTWpZM05qYzJOejRCSlNZbkpqVTBOelkxTkNZbkppTWlCd1lIRmhjV0ZSUUhCaFlYRmhjZUFUc0JNalkxTmljbUJTWW5KalUwTno0Qk5UUW1KeVlpQnc0QkZSUVdGeFlWRkFjR0J3WUhCZ2NVRmpNaE1qWTFKaWNtSnlZQk1pa2FHU3dRR3gwa0tSOGRJQ3NjQ1EwaFBTQXBBUUlsSGtBSERnUVZLUnd1RFFZQ0tpRU1DaHdySHgwZktpUWRIQkVzR1JvcEJ3Y01aQ1FFRGdkQUhpVUJKeUQrMVNRT0RDRVhHU0lnSTFvaklDSVpGeUVMRGlWSUlDOEJMaUVCa0NFdUFSWVRKUmtCT0QxTlFUYzBJaHNQRVJVVFJDaENKUjRZRVF3UkRoc2RKU3NoS2dnSEpoOFdHQVlhTVE4UERCSWNHaWRBS0VRVEZSRVBHeUkwTjBGTlBRd1pCakJEQndncUlTc2xIWEVRRVE0U0hSOFdPeUlzU2hVWEZ4VktMQ0k3RmlNWkZBd1JFQjhaSkM4ak1qSWpJQm9YRmc0QUFBSUFBUCszQThJREJRQVhBQ2NBUEVBNUFBRURBVzhGQVFBRUFnUUFBbTBBQWdKdUJnRURCQVFEVkFZQkF3TUVXQUFFQXdSTUdSZ0NBQ0VlR0NjWkp4SVBDZ2NBRndJWEJ3VVVLd0VoSWlZdkFTNEJLd0VpQmhVUkZCWXpJVEkyTlJFMEppY2hJZ1lmQVJZeklUSVhGalkxTkNZRGRmNUxGQ1FMUXdza0ZZTWdMQ3dnQXdJZ0xTMGcvakFGQlFNZUJnd0JweUlaQmd3dEFrVVZFWFFTRkMwZy9Vd2dMUzBnQWZRZ0xab0pCVFFMREFNSUJ5QXRBQUFFQUFEL3lnT2JBdklBRHdBZkFDOEFQd0JUUUZBSUFRQUFBUUlBQVdBSkFRSUFBd1lDQTJBTEFRWUFCd1FHQjJBS0FRUUZCUVJVQ2dFRUJBVllBQVVFQlV3eU1DSWdFaEFDQURvM01EOHlQeW9uSUM4aUx4b1hFQjhTSHdvSEFBOENEd3dGRkNzQklTSUdIUUVVRmpNaE1qWTlBVFFtQnlFaUJoMEJGQll6SVRJMlBRRTBKZ01oSWdZZEFSUVdNeUV5TmowQk5DWW5JU0lHSFFFVUZqTWhNalk5QVRRbUEzNzg3QXdSRVF3REZBd1JFUXo5aGd3UkVRd0NlZ3dSRVF6OWhnd1JFUXdDZWd3UkVRejg3QXdSRVF3REZBd1JFUUx5RWdzNkN4RVJDem9MRXVjUkREa01FUkVNT1F3Ui9qTVNDem9MRWhJTE9nc1M1aEVMT2d3UkVRdzZDeEVBQUFBSEFBQUFBQU1nQW9vQUR3QWZBQzhBUHdCUEFGOEFid0NPUUl0dFpRSU5ERXhFUERRc0pCMFZEUVVLQUFGZFZRSUxDZ05IQ0FZRUR3SUZBUTBBRFFFQWJSSUpFUWNRQlFNT0NBQUtEUUFLYXhRQkRBQU5BUXdOWUJNQkNnc0xDbFFUQVFvS0MxZ0FDd29MVEdGZ1VWQkFRREF3SUNBUkVBRUFhV2RnYjJGdldWZFFYMUZmUUU5QVRraEdNRDh3UGpnMklDOGdMaWdtR1JjUUh4RWZDUWNBRHdFUEZRVVVLemN6TWpZMUVUUW1Ld0VpQmhVUkZCWUJJeUlHRlJFVUZqc0JNalkxRVRRbUFUSTJOUkUwSmlzQklnWVZFUlFXT3dFeU5qVVJOQ1lyQVNJR0ZSRVVGak1qTWpZMUVUUW1Ld0VpQmhVUkZCWXpCU0VpQmgwQkZCWXpJVEkyUFFFMEpnTWhJZ1lkQVJRV015RXlOajBCTkNiY01nZ01EQWd5Q0F3TUFqZ3lDQXdNQ0RJSURBeisvZ2dNREFnOENBd01DTFFJREF3SUZBZ01EQWp3Q0F3TUNCUUlEQXdJQVpyOTBBZ01EQWdDTUFnTURBajkwQWdNREFnQ01BZ01ETDRNQ0FFMkNBd01DUDdLQ0F3Qlhnd0kvc29JREF3SUFUWUlEUDZpREFnQk5nZ01EQWoreWdnTURBZ0JOZ2dNREFqK3lnZ01EQWdCTmdnTURBait5Z2dNUEF3SUZBZ01EQWdVQ0F3Q0NBd0lGQWdNREFnVUNBd0FBQUFBQXdBQUFBQURJUUozQUJ3QUxBQldBRlZBVWpFQkJBWWxIUUlDQXdKSEFBVUhCZ2NGQm0wQUJnUUhCZ1JyQ0FFQUFBY0ZBQWRnQUFRQUF3SUVBMkFBQWdFQkFsUUFBZ0lCV0FBQkFnRk1BUUJSVDBsR1FVQTFNeWtuSVI4VUVnQWNBUndKQlJRckFTSUhCZ2NHRlJRWEZnOEJCaFkvQVRZWEZqTXlOelkzTmpRbUp5WURGQVlyQVNJbVBRRTBOanNCTWhZVk53NEJIUUVVQmlzQklpWTlBVFErQVRjMkxnSUhCZ2NPQVNzQklpWTNOamMrQVJjZUFoY1dCZ0gwVWtaREtDa21CUU1jQkJJTVdBa0lTRlpTUmtNb0tWSkRSalFNQ0JRSURBd0lGQWdNQ0FNRkRBZ1VDQXdiS2djUUJTSXVGQTBEQWdvSEZRa01BUWdhRVMwWkh6VWdBUUl0QW5ZbUpVQkJURWhCQ0FoWkRCRUVId01GS2lZbFFFR1lnU1VtL2o0SURBd0lGQWdNREFockFRVUVFQWdORFFnUUZpVVBDeFV1SHdFU0RROEhDUThKSmhrUkVnRUJJRFVmSjBBQUEvLysvN2NENndNSkFBNEFGd0FuQURoQU5TQUJBd1FCUndBRUF3UnZBQU1BQWdFREFtQUZBUUVBQUFGVUJRRUJBUUJZQUFBQkFFd1FEeVFpSFJvVUV3OFhFQmM1QmdVVkt5VUJMZ0VHQndFR0hnRXpJVEkrQVNVaUpqUTJNaFlVQmpjVUJpc0JJaVk5QVRRMk93RXlGaFVEM2Y1SEN5VWxDLzVJRFFZZ0Z3TndHQ0VHL2drWklTRXlJU0VoQ3doTkNRc0xDVTBJQ3lFQ3h4TU9EaFA5T1JZeUlpSXlSaUV5SUNFd0lxMEpDZ29KK2dnTEN3Z0FBQUlBQVArUUE4SURMUUFkQUNvQUpFQWhCQUVDQXdKdkFBTUJBMjhBQVFBQmJ3QUFBR1lmSGlVa0hpb2ZLaXN6QlFVV0t5VVZGQVlqSVNJbVBRRTBOelkvQVRZWEZqTXlOamMySHdFV0Z4WVhGZ0V5SGdFVURnRWlMZ0UwUGdFRHdqY20vUjRsTjFBNWRBd1FEVXhaSzFVbURROE1UUzVBSUNmK01qNXFQVDFxZkdvOVBXb1hLaVU0TnlZcVMwQXRNd1lGQnpJYUdBY0ZCaUViSkNjdkF1QkVkWXAxUkVSMWluVkVBQUFCQUFELzdBTGJBc3dBREFBS3R3QUFBR1lUQVFVVkt5VVJORDRCRndFV0ZBY0JCaVlCRFE0VUNRR1hEQXorYVE0ZENnS29DZzRCQi82ekNCOEovcThLRGdBQUFBSUFBUCtRQThJRE1BQWpBQzhBTzBBNEFBRUFBVzhDQmdJQUFBTUVBQU5nQndFRUJRVUVWQWNCQkFRRldBQUZCQVZNSmlRQ0FDc3FKQzhtTHg0YkZoTU1DZ0FqQWlNSUJSUXJKU01pSmowQk5DY21KeVlIQmdjT0FSMEJGQVlyQVNJR0hRRVVGak1oTWpZOUFUUW1CU01pQmhjZUFUSTJOelltQTNVS0d5Z3NMRWxMVjFGRlFrMG5IQW9mTFJFTEEySUxFaTMrdmJ3SkRBSUhRRlJBQ0FFTTF5Z2MzVlpKUnlncEF3UXRLNDlUMVJ3bUxpQWRDeEFSREIwZkxkTVBDQ2cxTmljSkRnQUFBUUFBLzVBRHhBTXNBQ0lBTEVBcEFBVUFCVzhFQmdJQUFnQnZBQUlCQW04REFRRUJaZ0VBSFJ3VkZCQU9Dd29IQkFBaUFTSUhCUlFyQVNNUkZBWXJBU0ltTlJFakVSUUdLd0VpSmpVUkl5SW1KeVkzQVRZeUZ3RVdCd1lEcm1BS0NjQUpDK1lMQ2NBSUMyQUdDd0VFQ0FHN0JSSUVBYm9JQkFNQlMvNVpDUXNMQ1FGSC9ya0pDd3NKQWFjR0JRd0tBYm9HQnY1R0NBNExBQUFBQkFBQS81QUR3Z01zQUJVQUxBQkRBRm9BazBBUVVra09CUVFBQVRzeUpCc0VBd0lDUjB1d0NWQllRQmtHQVFFQUFXOEhDQUlBQWdCdkJRa0NBZ01DYndRQkF3Tm1HMHV3Q2xCWVFCMEFCZ0VHYndBQkFBRnZCd2dDQUFJQWJ3VUpBZ0lEQW04RUFRTURaaHRBR1FZQkFRQUJid2NJQWdBQ0FHOEZDUUlDQXdKdkJBRURBMlpaV1VBYkdCWUNBRmxXVEV0Q1B6VTBJaUVXTEJnc0RBc0FGUUlWQ2dVVUt3RWhNall2QVRjMk5DOEJKZ1lQQVNjbUJoVVJGQllISVNJR0h3RUhCaFFmQVJZeVB3RVhIZ0UyTlJFMEpoY1JGQlkvQVJjV01qOEJOaVl2QVRjK0FTWWpJU0lHSnhFMEpnOEJKeVlpRHdFR0ZCOEJCdzRCRmpNaE1qWUNPUUVvRHdZTFhxMElDRWNJRkFtdFlnc1pGSUQrMkE4R0MxNnRCd2RIQ0JRSnIySUdFUXdWWWhrTFlLOElGZ2RIQmdFSHJWNElBZ29KL3RjS0VrMGFDMkN2QnhZSVJ3Y0hyMTRJQkFvS0FTWUtGd0dGR1F0Z3J3Z1dCMGNHQVFldFhnd0hEdjdYQ2hKTkdndGdyd2NXQ0VjSEI2OWVDQVFLQ2dFbUNoY2YvdGdQQmd0ZXJRY0hSd2dVQ2ExaUJ4SU1GWUFCS0E4R0MxNnRDQWhIQnhVSnIySUdFQXdVQUFNQUFQK2tBOEFER2dBckFEZ0FYQUNTUUFvNUFRUUhQZ0VGQkFKSFM3QVJVRmhBTGdBQUFnQnZDUUVIQ0FRSUIyVUdBUVFGQlFSakNnRUNBQWdIQWdoZ0FBVUJBUVZVQUFVRkFWa0RBUUVGQVUwYlFEQUFBQUlBYndrQkJ3Z0VDQWNFYlFZQkJBVUlCQVZyQ2dFQ0FBZ0hBZ2hnQUFVQkFRVlVBQVVGQVZrREFRRUZBVTFaUUJvdExGcFlWVkpQVFVoR1EwQTlPek15TERndE9DY2tIUXNGRlNzbE5EWTNOamMyTnpZM1BnRXVBUTRCQndZWEZoY1dGeFlIQmdjR0R3RUdCd1lIQmg0Qk15RXlOaWN1QVFFaURnRVVIZ0V5UGdFMExnRVhGQVlyQVJVVUJpc0JJaVk5QVNNaUpqMEJORFk3QVRVME5qc0JNaFlkQVRNeUZoVUJwUmdVRFJFS0ZCc01KQTB0Wm9CaEZCZ05EVElaREE0S0NCa1BJQTFLSnprTEJ4azZKZ0ZIQ3dzSEpDY0JORDVyUGo1cmZHcytQbXMzREFrNERBa21DUWs3Q1FrSkNUc0pDU1lKRERnSkRJc21WQ01YRkEwVkhSRTFpM1ZDQTBnN1JFUkpMeGdhSUJ3V0Vnb1BCaUVlTFRza1JTc1dDQ3BvQVIwK2FueHFQejVyZkdvKytnZ0xPZ2dMQ2drNkNna25DUW82Q1FvTENEb0xDQUFKQUFEL3R3T2JBd1VBRHdBZkFDOEFQd0JQQUY4QWJ3Qi9BSThBaUVDRkdBd1ZCaElGQUEwSEFnRUVBQUZnR2hBWENoUUZCQkVMQWdVQ0JBVmdHUTRXQ0JNRkFnTURBbFFaRGhZSUV3VUNBZ05ZRHdrQ0F3SURUSUtBY25CaVlGSlFRa0F5TUNJZ0VoQUNBSXFIZ0krQ2ozcDNjSDl5ZjJwbllHOWliMXBYVUY5U1gwcEhRRTlDVHpvM01EOHlQeW9uSUM4aUx4b1hFQjhTSHdvSEFBOENEeHNGRkNzVEl5SUdIUUVVRmpzQk1qWTlBVFFtQXlNaUJoMEJGQlk3QVRJMlBRRTBKZ01qSWdZZEFSUVdPd0V5TmowQk5DWUJJeUlHSFFFVUZqc0JNalk5QVRRbUF5TWlCaDBCRkJZN0FUSTJQUUUwSmdNaklnWWRBUlFXT3dFeU5qMEJOQ1lCSXlJR0hRRVVGanNCTWpZOUFUUW1BeU1pQmgwQkZCWTdBVEkyUFFFMEpnTWpJZ1lkQVJRV093RXlOajBCTkNiNmN4a2hJUmx6R1NFaEdYTVpJU0VaY3hraElSbHpHU0VoR1hNWklTRUJHM1FZSVNFWWRCZ2hJUmgwR0NFaEdIUVlJU0VZZEJnaElSaDBHQ0VoQVJ0ekdTRWhHWE1aSVNFWmN4a2hJUmx6R1NFaEdYTVpJU0VaY3hraElRTUZJUmx6R1NFaEdYTVpJZjJaSVJsekdTRWhHWE1aSVFFeklSaDBHQ0VoR0hRWUlRRTBJUmx6R1NFaEdYTVpJZjJaSVJsekdTRWhHWE1aSVFFeklSaDBHQ0VoR0hRWUlRRTBJUmx6R1NFaEdYTVpJZjJaSVJsekdTRWhHWE1aSVFFeklSaDBHQ0VoR0hRWUlRQUFBQVVBQVArUUE1c0RMQUFSQUNFQU1RQkJBRkVBWUVCZE9qSUNBZ2dCUndBQ0NBY0lBZ2R0Q3dFQUFBRURBQUZnQUFNQUJnVURCbUFBQlFBS0NRVUtZQUFKQUFnQ0NRaGdBQWNFQkFkVUFBY0hCRmdBQkFjRVRBSUFUMHhIUkQ4OE56UXZMQ2NrSHh3WEZBd0tCd1VBRVFJUkRBVVVLd0VoSWdZZEFTRXlGaFVSTXpJMk5SRTBKZ00wSmlNaElnWVZFUlFXTXlFeU5qVUJGQVlyQVNJbVBRRTBOanNCTWhZVkV4UUdJeUVpSmowQk5EWXpJVElXRlRjVUJpTWhJaVk5QVRRMk15RXlGaFVEVHY0TUh5NEJ6aUF0SmlBdExaTXRJUDRNSUMwdUh3SDBJQzMrcGdzSm1Ra0xDd21aQ1F1YUN3bit6UWtMQ3drQk13a0xUQW9KL29BSkN3c0pBWUFKQ2dNc0xTQW5MU0Q5NWkwZ0FrRWdMZjd5SUMwdElQMi9IeTR1SHdHN0NRb0tDU1lKQ2dvSi9xWUlDd3NJSndnTEN3aHpDUW9LQ1NZSkN3c0pBQU1BQVAvZEE4SUMzd0FQQUNNQUxBQkxRRWdBQXdZRkJnTUZiUWdCQlFRR0JRUnJBQVFDQmdRQ2F3QUFBQVlEQUFaZ0J3RUNBUUVDVkFjQkFnSUJXQUFCQWdGTUpTUVNFQ2tvSkN3bExCOGVGeFlRSXhJak5USUpCUllyQVRRbUl5RWlCaFVSRkJZeklUSTJOU2NoSWlZM0V6WXlId0VlQVQ4Qk5qSWZBUllHQXlJbU5EWXlGaFFHQThJdElQeitIeTB0SHdNQ0lDM0kvZElSRVFtcEJoVUdaZ1VXQlZNR0ZRYVlDQTFDSUMwdFFDMHRBcElnTFMwZy9aZ2dMUzRmVFI0UEFTWUtDcThKQWdsM0NRbnlEaGtCV2kxQUxTMUFMUUFBQUFBREFBRC9rQVBDQXl3QUFnQXlBRmNBWGtCYkVBRUJBZ0ZIQUFZRENBTUdDRzBBQ0FjRENBZHJDZ0VIQWdNSEFtc0FDUUVKY0FzQkFBQURCZ0FEWUFRQkFnRUJBbFFFQVFJQ0FWZ0ZBUUVDQVV3RkExZFdUa3RHUlVKQk9qa3RLaVVpSFJvVkVnMEtBeklGTWd3RkZDczNOUlVCSVNJR0ZSRVVGanNCTWpZOUFUUW1Ld0VpSmpVUk5EWXpJVElXRlJFVUJpc0JJZ1lkQVJRV093RXlOalVSTkNZRE56WTBMd0VtSWc4QkJoUWZBUll5UHdFMk1oWVZFUlFXT3dFeU5qVVJORFlmQVJZeW1nTGIvUDRmTFMwZjV3a0tDZ21qREJFUkRBSjZEQkVSREtNSkNnb0o1eUF0TGNRcENBanpDQmdJOEFrSktBZ1lDRmtGRVF3UUN6b0xGQllLV1FnYXNRd1lBb2N0SVAxTElDMExDVTBJQ3hFTUFlQU1FUkVNL2lBTUVRc0lUUWtMTGg4Q3RTQXQvWTBvQ1JjSTh3Z0k4UWdYQ1NnSkNWZ0dDd2orcHdzU0Vnc0JXUTBKQ1ZvSEFBQURBQUQva2dPbEF5b0FEQUJhQUdjQWRFQnhLaDBDQ1FJT0FRRUFVVVFDQndnRFJ3UUJBZ01KQXdJSmJRb0JBQWtCQ1FBQmJRQUJDQWtCQ0dzQUJ3Z0ZDQWNGYlFBRkJnZ0ZCbXNBQXdBSkFBTUpZQXNCQ0FjR0NGUUxBUWdJQmxnQUJnZ0dURnhiQVFCaVlWdG5YR2RWVTB4SlFrQXZMU1VpR1JnSEJnQU1BUXdNQlJRckFTSU9BUlFlQVRJK0FUUXVBUUVuTmpRbk56NEJMd0V1QVNNaUR3SW1Md0V1QVNzQklnWVBBUVlITHdFbUl5SUdEd0VHRmg4QkJoUVhCdzRCSHdFZUFUTXlQd0VXSHdFZUFUc0JNalkvQVRZM0Z4WXpNalkvQVRZbUJTSXVBVFErQVRJZUFSUU9BUUgySlQ0a0pENUtQaVFrUGdGdlJ3VUZSeElKREI4SUhoRUhDd05aTWo4UUJDTVlQaGdqQkJBNk9WZ0VDd2NSSGdnZkRBZ1RSd1VGUnhJSkRCOElIaEVOQ1ZneVB4QUZJaGcrRnlRRUVFUXpVdzRKRVI0SUhRMEkvbG82WVRrNVlYUmhPVGxoQWVNa1BrbzlKQ1E5U2o0ay93QThHazRhUEE4dUZEWU9FQUlCSVMwVVd4WWFHaFpaRWk4Z0FRTVFEallVTHc0OEl6d2pQQTh1RkRZT0VBTWhMUlJkRngwZkYxMFhNQ0VFRVE0eUR5MUxPV0IwWVRrNVlYUmdPUUFBQUFNQUFQK1BBOElETEFBakFFUUFVUUJvUUdVbEFRa0VQUUVIQ1FKSEFBRUtBQW9CQUcwQUJBTUpBd1FKYlFBSUJ3aHdBQVlBQ2dFR0NtQUNDd0lBQlFFREJBQURZQXdCQ1FjSENWUU1BUWtKQjFnQUJ3a0hURVpGQVFCTVMwVlJSbEZBUHpvNEx5NGVIQmdXRXhFTENnY0VBQ01CSXcwRkZDc0JJelUwSmlzQklnWWRBU01pQmgwQkZCWTdBUlVVRmpzQk1qWTlBVE15TmowQk5DWUJKelkzTmpVMEp5WW5KaUlIQmdjR0ZCY1dGeFl6TWpjMk54Y1dNajhCUGdFbElpNEJORDRCTWg0QkZBNEJBbFJ6Q3doTkNRdHpDQXNMQ0hNTENVMElDM01KQ2dvQlhkMGtFeFExTTFkYTBGcFhNelExTTFkWmFENDhPREhkQ1JjSktBa0IvZVZKZTBsSmU1SjdTVWw3QWVWekNRb0tDWE1MQ1V3SkMzTUpDZ29KY3dzSlRBa0wvZ2piTWpnN1BtaGFWek0xTlROWFd0QmFWek0xRkJNazNRZ0lLQWtadkVsN2tudEpTWHVTZTBrQUFBZ0FBQUFBQXd3Q2lnQVBBQzhBUHdCUEFGOEFid0IvQUk4QWtFQ05IUTBDQUFLSWdGaFFCQW9MZUhCSVFBUUlDV2hnT0RBRUJnY0VSd1FUQWdJQkFBRUNBRzBBQVJJQkFBTUJBR0FBQXhFQkN3b0RDMkFRQVFvUEFRa0lDZ2xnRGdFSURRRUhCZ2dIWUF3QkJnVUZCbFFNQVFZR0JWZ0FCUVlGVEJFUUFRQ01pb1NDZkhwMGNteHFaR0pjV2xSU1RFcEVRanc2TkRJcUp5SWZHaGNRTHhFdkNnY0FEd0VQRkFVVUt3RXpNalk5QVRRbUt3RWlCaDBCRkJZbEl5SUdIUUVVQmlzQklpWTlBVFFtS3dFaUJoVVJGQll6SVRJMk5SRTBKZ0VVQmlzQklpWTlBVFEyT3dFeUZoVTFGQVlyQVNJbVBRRTBOanNCTWhZVk5SUUdLd0VpSmowQk5EWTdBVElXRlFVVUJpc0JJaVk5QVRRMk93RXlGaFUxRkFZckFTSW1QUUUwTmpzQk1oWVZOUlFHS3dFaUpqMEJORFk3QVRJV0ZRR0czQWdNSXhtTUdTTU1BVklVQkFZdklkd2hMd1VGRkJrakl4a0J1QmtqSS82ZERBZ1VDQXdNQ0JRSURBd0lGQWdNREFnVUNBd01DQlFJREF3SUZBZ01BUmdNQ01nSURBd0l5QWdNREFqSUNBd01DTWdJREF3SXlBZ01EQWpJQ0F3Q0Vnd0lLQmtqSXhrb0NBeEdCUVVvSVM4dklTZ0ZCU01aL2xJWkl5TVpBYTRaSS81U0NBd01DQlFJREF3SVVBZ01EQWdVQ0F3TUNGQUlEQXdJRkFnTURBamNDQXdNQ0JRSURBd0lVQWdNREFnVUNBd01DRkFJREF3SUZBZ01EQWdBQUFBQUFRQUEvNk1EUFFNWUFDVUFJVUFlQUFNQkEyOEZBUUVDQVc4RUFRSUFBbThBQUFCbUV4VTFFeGNWQmdVYUt6Y0dGQmNCRmpJM0FUWTBMd0VtSWc4QkJpSW1OUkUwSmlzQklnWVZFUlFHSWk4QkppSUh1UXdNQVNBTUh3c0JJZ3dNTlF3ZkMxc0hGQThYRDAwUUZ3OFVCMXNMSHd2K0N4NEwvdVVMQ3dFYkN4NExOQXNMV1FjT0N3SUhEeGNZRHYzNUN3NEhXUXNMQUFBRUFBRC9uQU9sQXkwQU1RQTZBRU1BVndBNVFEWWtIdzhEQWdBQlJ3QUZBQVZ2QUFBQ0FHOEVBUUlCQW04SEF3WURBUUZtUERzek1rWkZRRDg3UXp4RE56WXlPak02SWlFSUJSUXJKU1lIQVM0QkR3RU9BUmNURmhRUEFTWUhEZ0VIQmhZWEZqYytBVGMySmljM05qSWZBUTRCRng0QkZ4WTNQZ0VuTGdFRklpWTBOaklXRkFZaElpWTBOaklXRGdFREZqSS9BVFltSnpjSEppOEJKZ1lQQVFZVUZ3TVBMUzcrVndRUkJnOFpCeFBMQmdadEtqRTFUQWNITlRBek9UTk9Dd2NNRWxFSUhnaFJFZ3dIQ2s0ME9UTXdOUWNOVHYyMkdTRWhNaUVoQWRzWklTRXlJUUVpcVFZVEJwb1FBaEFDQWdJT0RRWVFCYWtHQnZZTEVRSTBCZ01GREJNK0d2N3lCeFFIa1JBS0MxQTFPR0FZR2dvSVNUTWpRUmxzQ3d0c0hFQWhNMGtJQ2hvWVlEZzNUOWNoTWlFaE1pRWhNaUVoTWlFQjBnY0h5aFUwRlFJQ0JBc0tCQUlHNFFjVUNBQUZBQUQva0FQQ0F5d0FJd0E2QUVvQVdnQnFBSHRBZUFBR0RRd05CZ3h0QUFFTUNRd0JDVzBBQ1FnTUNRaHJBQVFEQkhBQUJ3QUxDZ2NMWUFBS0FBOE9DZzlnQUE0QURRWU9EV0FBREFBSUFBd0lZQUlRQWdBREF3QlVBaEFDQUFBRFdBVUJBd0FEVEFFQWFHVmZYVmhWVDAxSFJUODlPamcxTXk0cktDWWVIQmtXRXhFTUNnY0VBQ01CSXhFRkZDc2xJelUwSmlzQklnWWRBU01pQmgwQkZCWTdBUlVVRmpzQk1qWTlBVE15TmowQk5DWWxORFk3QVJFMEppTWhJZ1lWRVJRV015RTFORFk3QVFFVUJpc0JJaVk5QVRRMk93RXlGaFVURkFZaklTSW1QUUUwTmpNaE1oWVZOeFFHSXlFaUpqMEJORFl6SVRJV0ZRT2xWeEVNT1F3UlZ3c1NFZ3RYRVF3NURCRlhDeElTL3Q0UkREQXRJUDNsSHkwdEh3R29FUXRYL3FZTENIUUlDd3NJZEFnTDV3c0ovcVlJQ3dzSUFWb0pDMHdLQ2Y1WkNBc0xDQUduQ1FwM1Z3c1NFZ3RYRVF3NURCRlhDeElTQzFjUkREa01FYVFMRWdHbklDMHRJUDNsSUMwd0RCRUJ1d2tMQ3drbUNRb0tDZjZtQ1FvS0NTWUpDd3NKZEFrTEN3a21DUW9LQ1FBQUFBSUFBUCszQThnREJRQVZBQ1lBWVV1d0NsQllRQ01BQVFBQUFXTUZBUU1DQkFJREJHMEFCQVJ1QUFBQ0FnQlVBQUFBQWxjQUFnQUNTeHRBSWdBQkFBRnZCUUVEQWdRQ0F3UnRBQVFFYmdBQUFnSUFWQUFBQUFKWEFBSUFBa3RaUUE0WUZpRWVGaVlZSmhNNU1nWUZGeXNCTkNZaklTSW5KaThESmljbUt3RWlCaDBCSVJjaElnNEJGeE1lQVRNaE1qWTNFelltQTA0dElQN21FQkVOREFvd0NBb01FUlJKSUMwQ3REajgzQk1lRFFSdUJpQVVBa29WSVFSdUJTVUNNaUF0Q2djTENqb0tDd2NLTFNDdFRSVWlFdjVzRXhjWEV3R1VIQzBBQUFBQUJRQUEvN2NEd2dNRkFBOEFId0F2QUQ4QVR3QmVRRnNMQWdvREFBQURCQUFEWUF3QkJBQUZCZ1FGWUEwQkJnQUhDQVlIWUE0QkNBRUJDRlFPQVFnSUFWZ0pBUUVJQVV4Q1FESXdJaUFTRUFJQVNrZEFUMEpQT2pjd1B6SS9LaWNnTHlJdkdoY1FIeElmQ2djQUR3SVBEd1VVS3dFaElnWVZFUlFXTXlFeU5qVVJOQ1loSXlJR0hRRVVGanNCTWpZOUFUUW1CeU1pQmgwQkZCWTdBVEkyUFFFMEpnY2pJZ1lkQVJRV093RXlOajBCTkNZSEl5SUdIUUVVRmpzQk1qWTlBVFFtQTZYOStRd1JFUXdDQndzU0V2MW4xQXNSRVF2VUN4SVNDOVFMRVJFTDFBc1NFZ3ZVQ3hFUkM5UUxFaElMMUFzUkVRdlVDeElTQXdVUkRQenNEQkVSREFNVURCRVJER0FMRWhJTFlBd1I1eEVMWVFzUkVRdGhDeEhtRWd0Z0RCRVJER0FMRXVjU0MyQU1FUkVNWUFzU0FBQUVBQUQvandQQ0F5d0FDUUFUQURRQVFRQklRRVVWQVFjQUxRRUZCd0pIQUFZRkJuQUFCQUFJQVFRSVlBSUJBUU1CQUFjQkFHQUpBUWNGQlFkVUNRRUhCd1ZZQUFVSEJVdzJOVHc3TlVFMlFSVXBHeVlSSlNBS0JSc3JBVE15TmowQk5DWXJBVEVqSWdZZEFSUVdPd0VCSnpZM05qVTBKeVluSmlJSEJnY0dGQmNXRnhZek1qYzJOeGNXTWo4QlBnRWxJaTRCTkQ0Qk1oNEJGQTRCQVczbkNRb0tDZWR6Q0FzTENITUNUZDBrRXhRMU0xZGEwRnBYTXpRMU0xZFphRDQ4T0RIZENSY0pLQWtCL2VWSmUwbEplNUo3U1VsN0FYRUxDVXdKQ3dzSlRBa0wvbnJkTWpnN1BtaGFWek0xTlROWFd0QmFWek0xRkJNazNRZ0lLQWtadkVsN2tudEpTWHVTZTBrQUJBQUFBQUFERFFKNEFCSUFJZ0F5QURzQVdrQlhEd0VEQVVZQUJRY0dCd1VHYlFrQkJnTUhCZ05yQUFNRUJ3TUVhd0FFQWdjRUFtc0lBUUFBQndVQUIyQUFBZ0VCQWxRQUFnSUJXQUFCQWdGTU5ETUNBRGczTXpzME95NHRKaVVlSFJZVkNna0FFZ0lTQ2dVVUt3RWpKZ2NCQmhRZkFSWXlOd0UrQVNjMU5DWURCd1lpTHdFbU5EOEJOaklmQVJZVU53Y0dJaThCSmpRL0FUWXlId0VXRkRjaUpqUTJNaFlVQmdMUTJ4TVIvdlFSRWRRUk1oSUJEd2dJQVNQeERnWVFCb2dHQmc0R0VBYUlCa29PQmhBR2lBWUdEZ1lRQm9nR01oVWRIU29kSFFKMkFSSCs4eEV5RXRRUkVRRVFDQllLMGhrai9rZ09CZ2FJQmhBR0RnWUdpQVlRU2c0R0JvZ0dFQVlPQmdhSUJoQ2tIU29kSFNvZEFBZ0FBQUFBQXlBQ2lnQVdBQ1lBTmdCR0FGWUFaZ0IyQUlZQWxFQ1JCUUVCQUQ4M0x5Y0VCUVpmVjA5SEJBa0tEUUVDRG5kbkFnMENCVWQvYndJQ0FVWUFBZzRORGdJTmJSRUJBQUFCQXdBQllCSUJBd2dCQmdVREJtQUhBUVVNQVFvSkJRcGdDd0VKRUFFT0Fna09ZQThCRFFRRURWUVBBUTBOQkZnQUJBMEVUQmdYQWdDRGdYdDVjM0ZyYVdOaFcxbFRVVXRKUTBFN09UTXhLeWtnSFJjbUdDVVJEd29IQUJZQ0ZoTUZGQ3NCSVNJR0hRRVVGak1oTWhZVkVSUVdNekkyTlJFMEpnVWlCaFVSRkJZeklUSTJOUkUwSmlNSEZBWXJBU0ltUFFFME5qc0JNaFlWRnhRR0t3RWlKajBCTkRZN0FUSVdGUWNVQmlzQklpWTlBVFEyT3dFeUZoVVhGQVlyQVNJbVBRRTBOanNCTWhZVkJ4UUdLd0VpSmowQk5EWTdBVElXRlJjVUJpc0JJaVk5QVRRMk93RXlGaFVDNVA3QUdTTUdCQUVpR1NNR0JCMHBJLzRiR1NNakdRRkFHU01qR2ZBTUNCUUlEQXdJRkFnTTNBd0lqQWdNREFpTUNBemNEQWdVQ0F3TUNCUUlETndNQ0l3SURBd0lqQWdNM0F3SUZBZ01EQWdVQ0F6Y0RBaU1DQXdNQ0l3SURBS0tJeGtLQkFZakdmN0tCQVlwSFFGS0dTT01JeG4rckJrakl4a0JWQmtqakFnTURBZ1VDQXdNQ0JRSURBd0lGQWdNREFoNENBd01DQlFJREF3SUZBZ01EQWdVQ0F3TUNIZ0lEQXdJRkFnTURBZ1VDQXdNQ0JRSURBd0lBQUFBQndBQS8yb0Rhd05TQUEwQUVRQVZBQmtBSFFBdUFEY0FkRUJ4Snd3Q0N3QUJSeThCQUVVTURnSUxBQW9BQ3dwdEFBb0NBQW9DYXdBQ0F3QUNBMnNBQXdBRUJRTUVYZ0FGQUFZSEJRWmVBQWNBQ0FrSENGNE5BUUFBREVnQUNRa0JXQUFCQVEwQlNSNGVBUUEzTlI0dUhpMGdIeDBjR3hvWkdCY1dGUlFURWhFUUR3NEpCZ0FOQVEwUEJSUXJFeUlHRlJFVUZqTWhNalkxRVFrQklSVWhGU0VWSVJVaEZTRVZNeFVqQVJVakp5WW5KaWNtTnhjV0Z4WVhGak1ERlJRWEZoY1dPd0ZRSVM4dklRTExJUy8rMmY1YUFWSCtyd0ZSL3E4QlVmNnZ3TUFDemNnUUVoQVZEQThCQWdNSUNoSVdIMXdIQ2hNWEpNZ0RVaThoL0xnaEx5OGhBbHNCUGYyNElTb2hLaUVxSVFJTER3UUhDZzBTRngwT0VRMFVDdzRCUCtRUkVoZ09FZ0FHQUFELzNRUENBdDhBRHdBZkFDOEFQd0JQQUY4QWFVQm1EUUlNQXdBQUF3VUFBMkFBQlE0RUFnRUdCUUZnRUFnUEF3WUFDUW9HQ1dBUkFRb0hCd3BVRVFFS0NnZFlDd0VIQ2dkTVVsQkNRREl3SWlBU0VBSUFXbGRRWDFKZlNrZEFUMEpQT2pjd1B6SS9LaWNnTHlJdkdoY1FIeElmQ2djQUR3SVBFZ1VVS3dFaklnWWRBUlFXT3dFeU5qMEJOQ1lwQVNJR0hRRVVGak1oTWpZOUFUUW1BU0V5TmowQk5DWWpJU0lHSFFFVUZnY2pJZ1lkQVJRV093RXlOajBCTkNZcEFTSUdIUUVVRmpNaE1qWTlBVFFtQnlFaUJoMEJGQll6SVRJMlBRRTBKZ0VYMUFzUkVRdlVDeElTQW9QOStRd1JFUXdDQndzU0V2M3VBVVlNRVJFTS9yb01FUkY3MUFzUkVRdlVDeElTQW9QOStRd1JFUXdDQndzU0Vzeit1Z3dSRVF3QlJnd1JFUUxmRWd2NkRCRVJEUG9MRWhJTE9nc1NFZ3M2Q3hMK3pCRU1PZ3NSRVFzNkRCR2FFUXo2Q3hJU0Mvb01FUkVNT1F3UkVRdzVEQkhBRWdzNkN4SVNDem9MRWdBQUFnQUEvNUFEZFFNc0FCY0FKUUFwUUNZREFRRUVBVzhBQkFBRWJ3VUJBQUlBYndBQ0FtWUNBQ0lnR3hvU0R3b0hBQmNDRndZRkZDc0JJeUltUFFFMEppTWhJZ1lWRVJRV015RXlOalVSTkNZM0p5WWlCaDBCRkJZN0FUSTJOQU5XMXlZckVnMyt3U1U0T0NVQ1NDWTNFZ3pNQmhRT0p4cWtDQTBCNVNzbDJBMFNOeWI5SGlVNE9DVUIyUTBTZGN3R0RRbWpHaWNPRkFBQkFBRC9rQVBDQXl3QUt3QWRRQm9qQVFJQUFVY0FBUUFCYndBQUFnQnZBQUlDWmgwcUZRTUZGeXNCTGdFUEFRWWlMd0VtTkQ4Qk5pWW5KaU1pQmdjR0Z4WVhBUTRCRmhjZUFUSTJOd0VXRnhZM1BnRTFOQU8yQXhBSW5BZ1pDVzRJQ0o0R0JBZ29LbEdHSWlRS0J3eittQlVPRGhVUUtTZ3BFQUZtR3k1U1NFWlVBbWNKQXdhY0NBaHVDUmtJbkFZUUJReFVSa2hTTEIzK21oVTROeFFRRVJFUUFXWU1Cd29rSW9aUkt3QUFBQUVBQVAra0F5Z0RHUUFsQUNGQUhnQUFBZ0J2QkFFQ0FRSnZCUUVCQXdGdkFBTURaaE1WTlJNWEZRWUZHaXNCTmpRbkFTWWlCd0VHRkI4QkZqSS9BVFl5RmhVUkZCWTdBVEkyTlJFME5qSWZBUll5TndNY0RBeis0QXdmQy83ZkN3czJEQjhMV3djVUR4Y1BUUThZRHhRSFdnd2ZDd0crREIwTEFSc0xDLzdsQ3gwTU5Bc0xXUWNPQy8zNUR4Y1pEUUlIQ3c0SFdRc0xBQUFBQUFFQUFQK0hBOHNETXdCSEFCRkFEZ0FCQUFGdkFBQUFaaE1SQWdVV0t5VVdOajhCUGdFV0ZBOEJEZ0VtTHdFdUFUWTNBVDRCRmg4QkhnRUdEd0VPQVJjV0Z4NEJOajhCUGdFbUp5TXVBUVlIQVE0QkZoOEJIZ0UyUHdFK0FTNENCZzhCQmhRWEFWTUlGd25BQ3g4WURPd2FSVVlhQWhvUkVSb0JvaGxHUlJvQ0doSVNHZ0lJQWdZU0NRTVZFZ3NKTUNJaU1BUXdnb0l3L2w4d0lpSXdBekdBZ1REdkhoUVhQVkpRSGIwSUNKQUlBUWZCQ2dFWElnenBHaEVSR2dJYVJrVWFBYUVhRWhJYUFocEZSaGtDQ0JJSkh5UU1CaEVNQ2pDQ2dqQXdJaUl3L21Bd2dvRXhCREFpSWpEdEhsSlJPeE1YSDd3SkdRZ0FBd0FBLzVBRG13TXNBQjhBTHdCQ0FKdTFOd0VKQ2dGSFM3QU5VRmhBTXdNQkFRQUFBV01BQ1FvSUNna0liUVFDQ3dNQUFBVUdBQVZoREFFR0FBb0pCZ3BnQUFnSEJ3aFVBQWdJQjFnQUJ3Z0hUQnRBTWdNQkFRQUJid0FKQ2dnS0NRaHRCQUlMQXdBQUJRWUFCV0VNQVFZQUNna0dDbUFBQ0FjSENGUUFDQWdIV0FBSENBZE1XVUFoSWlBQkFFQS9PamswTXlvbklDOGlMeG9YRWhBTkRBa0lCUVFBSHdFZkRRVVVLd0VqTlRRbUlnWWRBU0UxTkNZaUJoMEJJeUlHSFFFVUZqTWhNalk5QVRRbUZ5RWlCaFVSRkJZeklUSTJOUkUwSmdFVkZBWWlKajBCQndZaUpqUS9BVFl5RmhVRFRtQWlMeUwrOGlFd0ltQWdMUkVNQXhRTUVTMFEvT3dNRVM0ZkFyUWdMUkgrcEJnZUZ4MElGeEVLU3dzaUdBTExKeGdpSWhnbkp4Z2lJaGduTFI4eEN4RVJDekVnTFBvUkMvNG9IeTR0SUFIWUN4SCtXUU1NRnhnT3dSOElFaFlLU3d3WEVBQUFBQUFEQUFEL2tBUENBeXdBRkFBZEFEOEFYMEJjTWdFR0J6b3NBZ1VHSmg0Q0JBVURSd0FFQlFFRkJBRnRBQUVCYmdrQkFBb0JBZ01BQW1BQUF3QUhCZ01IWUFBR0JRVUdWQUFHQmdWWUNBRUZCZ1ZNRmhVQkFEMDhOalF2TGlrb0lpQWFHUlVkRmgwTENnQVVBUlFMQlJRckFTSUhCZ2NHRkJjV0Z4WXlOelkzTmpRbkppY21CeklXRkFZaUpqUTJFeFFHS3dFaUpqMEJORFl5TmowQk5DWWlKajBCTkRZN0FUSVdIUUVVRmpJV0ZRSDBmbXRwUEQ4L1BHbHIvR3hvUFQ4L1BXaHNmaGtoSVRJaElYa0tDWm9IREFzUUN3b1FEQXNJZEFjTUNoQU1BeXcvUFdocy9HeG9QVDgvUFdocy9HeG9QVC9wSVRJZ0lUQWkvbXdJQ1FrSUp3Y09DUWhOQ0EwSkNDY0hEZzBJbWdnSkRRZ0FBQUFBQXdBQUFBQUQ2QUtVQUJRQUtRQTVBQXEzTkN3a0dBc0NBeTByQVNjbUJnY0RCaFFYRXg0QlB3RStBUzhCTnpZbUJRTXVBUThCRGdFZkFRY0dGaDhCRmpZM0V6WTBBU2NtQmdjREJoWWZBUlkyTnhNMkpnRTZMUW9XQ044R0J1RUhGd29zQ3dJSnRMWUdBd0tlNFFjWUNTd0xBZ20zdHdjQ0NTd0tGZ2poQnY1NE9nc1hBbzhERFFzNkRCWURqZ01NQW1jbEJ3SUovdWNIRlFqKzZRa0RDQ1VIR1FqaDRRa1g4QUVYQ1FRSkpBZ1lDZUhoQ0JrSEpRY0RDQUVaQ2hNQkdnNEREUXY5M2d3VUF3NENEQXdDSWd3VUFBQUZBQUQva0FPYkF5d0FEd0F2QUQ4QVR3QmZBRzFBYWxoUUFnb0xTRUFDQ0FrQ1J3UU5BZ0lCQUFFQ0FHMEFBUXdCQUFNQkFHQUFBd0FMQ2dNTFlBQUtBQWtJQ2dsZ0FBZ0FCd1lJQjJBQUJnVUZCbFFBQmdZRldBQUZCZ1ZNRWhBQ0FGeGFWVkpNU2tWQ1BEbzFNaW9uSWg4YUZ4QXZFaThLQndBUEFnOE9CUlFyQVNFeU5qMEJOQ1lyQVNJR0hRRVVGaVVqSWdZZEFSUUdJeUVpSmowQk5DWXJBU0lHRlJFVUZqTWhNalkxRVRRbUF4UUdJeUVpSmowQk5EWXpJVElXRlRVVUJpTWhJaVk5QVRRMk15RXlGaFUxRkFZaklTSW1QUUUwTmpNaE1oWVZBVkVCUndzUkxTRG1JQzBSQWdrd0N4SXRJUDZBSUMwU0N6QWZMaTRmQXJRZ0xTMlRDd2orV1FrTEN3a0Jwd2dMQ3dqK1dRa0xDd2tCcHdnTEN3aitXUWtMQ3drQnB3Z0xBbXNTQzFjZ0xTMGdWd3NTZEJJTFZ5QXRMU0JYQ3hJdElQMUxIeTR0SUFLMUlDMzlYd2tMQ3drbUNRb0tDWE1JQ3dzSUp3Z0xDd2h6Q0FzTENDY0lDd3NJQUFBQUFBSUFBUCtQQThJRExRQWpBRWNBaDB1d0NsQllRQ01BQUFVQWJ3QUZBUVZ2QXdFQkJnRnZBQVlFQm04QUJBSUVid0FDQndKdkFBY0haaHRMc0F0UVdFQWZBQUFGQUc4QUJRRUZid01CQVFRQmJ3WUJCQUlFYndBQ0J3SnZBQWNIWmh0QUl3QUFCUUJ2QUFVQkJXOERBUUVHQVc4QUJnUUdid0FFQWdSdkFBSUhBbThBQndkbVdWbEFDeGNZT0JRWU9CY1ZDQVVjS3dFMk5DOEJKaUlQQVFZVUh3RVdNajhCTmhZVkVSUVdPd0V5TmpVUk5EWWZBUll5TndFbkppSVBBUVltTlJFMEppc0JJZ1lWRVJRR0x3RW1JZzhCQmhRZkFSWXlQd0UySmdJUkNBamJDUmNKM1FnSUtRZ1hDVVVKR0JFTU9Rd1JHQWxGQ1JjSkFjOG9DUmNKUlFrWUVRdzVEQkVZQ1VVSkZ3Z3BDQWpkQ1JjSjNRZ0JBaDRKRnduZENBamRDUmNKS0FrSlJRa0pEZjVvQ3hJVENnR1lEUWtKUlFrSi9xZ21DUWxGQ1FrTkFad0xFaE1LL21nTkNRbEZDUWtxQ1JjSjNRZ0kzUWtaQUFnQUFQOXFBMnNEVWdBTkFCNEFKd0E0QUVBQVRnQldBRzhCZDBBWEZ3d0NBd0J0WjBZd0JBZ0hZU29DQmcwRFJ4OEJBRVZMc0E5UVdFQlZCQlFDQXdBQ0FBTUNiUUFDQndBQ0Iyc1NDd0lIQ0FBSENHc0FFQWtGQmhCbEZRRUZEUVlGWXdBUENRZ1BVZ0FKRUFnSlZCa09HQXdXQlFnQURRWUlEV0FUQVFBQURFZ1JGd29EQmdZQldRQUJBUTBCU1J0THNCRlFXRUJXQkJRQ0F3QUNBQU1DYlFBQ0J3QUNCMnNTQ3dJSENBQUhDR3NBRUFrRkNSQUZiUlVCQlEwR0JXTUFEd2tJRDFJQUNSQUlDVlFaRGhnTUZnVUlBQTBHQ0ExZ0V3RUFBQXhJRVJjS0F3WUdBVmtBQVFFTkFVa2JRRmNFRkFJREFBSUFBd0p0QUFJSEFBSUhheElMQWdjSUFBY0lhd0FRQ1FVSkVBVnRGUUVGRFFrRkRXc0FEd2tJRDFJQUNSQUlDVlFaRGhnTUZnVUlBQTBHQ0ExZ0V3RUFBQXhJRVJjS0F3WUdBVmtBQVFFTkFVbFpXVUJGV0ZkUVQwSkJPamtwS0E0T0FRQnNhV1JqWUY1YVdWZHZXRzlUVVU5V1VGWkxTRUZPUWs0OU96bEFPa0ExTWkwc0tEZ3BPQ2NsRGg0T0hSQVBDUVlBRFFFTkdnVVVLeE1pQmhVUkZCWXpJVEkyTlJFSkFSVWpKeVluSmljbU54Y1dGeFlYRmpNREZSUVhGaGNXT3dFQkl4VVVCaUltUFFFME5qc0JNaFlVQmljakZUTXlOalFtRnlNaUpqMEJORFk3QVRJV0ZBWW5JeFV6TWo0QkpqTWpGVE15RmhRR0t3RVZGQVlpSmowQk5EWTdBVElWRmdaUUlTOHZJUUxMSVMvKzJRRW55QThURHhVTER3RUNBd2dLRWhVZlhRY0tFeGNreVAxK05BWUtCd29IT2hzZ0lCMHlNaEVWRlpJdkJ3b0tCeThyTmpVc0tTa2hKd0VuM0ZwWkJBVUZCRmtIQ2djTEIyQUtBUVlEVWk4aC9MZ2hMeThoQWxzQlBmN0JEd1FIQ2cwU0Z4ME9FUTBVQ3c0QlArUVJFeGNPRXY1QlFBVUdCd1NnQndvaE1DQmRTQlFnRktnTEI1a0hDalpRTnFpU0tqOHBQUVlKQmtzRkJnY0VvQWNLQ3dRRkFBQUZBQUFBQUFNTUFvb0FEd0F2QUQ4QVR3QmZBUWxBRmgwTkFnQUNTQUVMQ1ZnQkJ3dFFRRGd3QkFZSEJFZExzQTVRV0VBOEJBMENBZ0VBQVFJQWJRQUxDUWNKQzJVQUJ3WUpCMk1BQVF3QkFBTUJBR0FBQXdBSkN3TUpZQW9JQWdZRkJRWlVDZ2dDQmdZRldBQUZCZ1ZNRzB1d0gxQllRRDBFRFFJQ0FRQUJBZ0J0QUFzSkJ3a0xaUUFIQmdrSEJtc0FBUXdCQUFNQkFHQUFBd0FKQ3dNSllBb0lBZ1lGQlFaVUNnZ0NCZ1lGV0FBRkJnVk1HMEErQkEwQ0FnRUFBUUlBYlFBTENRY0pDd2R0QUFjR0NRY0dhd0FCREFFQUF3RUFZQUFEQUFrTEF3bGdDZ2dDQmdVRkJsUUtDQUlHQmdWWUFBVUdCVXhaV1VBakVSQUJBRnhhVkZKTVNrUkNQRG8wTWlvbkloOGFGeEF2RVM4S0J3QVBBUThPQlJRckFUTXlOajBCTkNZckFTSUdIUUVVRmlVaklnWWRBUlFHS3dFaUpqMEJOQ1lyQVNJR0ZSRVVGak1oTWpZMUVUUW1BUlFHS3dFaUpqMEJORFk3QVRJV0ZSY1VCaXNCSWlZOUFUUTJPd0V5RmhVWEZBWXJBU0ltUFFFME5qc0JNaFlWQVliY0NBd2pHWXdaSXd3QlVoUUVCaThoM0NFdkJRVVVHU01qR1FHNEdTTWovc1VNQ0JRSURBd0lGQWdNWkF3SUZBZ01EQWdVQ0F4a0RBZ1VDQXdNQ0JRSURBSVNEQWdvR1NNakdTZ0lERVlGQlNnaEx5OGhLQVVGSXhuK1Voa2pJeGtCcmhrai9tWUlEQXdJWkFnTURBaGtDQXdNQ0w0SURBd0l2Z2dNREFpV0NBd01DQUFHQUFBQUFBTVdBbjhBRkFBa0FEUUFSQUJVQUdRQWgwQ0VJaG9GQXdNRVFqb3lLZ1FGQm1KYVVrb0VDUW9EUndBQUFRQnZBQUVFQVc4QUJBTUVid0FDQXdZREFnWnRFUXNRQXdrS0NYQU5BUU1JQVFZRkF3WmdEd2NPQXdVS0NnVlVEd2NPQXdVRkNsZ01BUW9GQ2t4V1ZVWkZOalVtSlJZVlhseFZaRlprVGt4RlZFWlVQancxUkRaRUxpd2xOQ1kwSGh3VkpCWWtGeFFTRWdVWEt3RW5KaUlQQVNjbUlnOEJCaFFmQVJZeVB3RTJOQVVoSWlZOUFUUTJNeUV5RmgwQkZBWUhJU0ltUFFFME5qTWhNaFlkQVJRR0lTTWlKajBCTkRZN0FUSVdIUUVVQmdjaklpWTlBVFEyT3dFeUZoMEJGQVlwQVNJbVBRRTBOak1oTWhZZEFSUUdBZElWQkF3RmhEVUVEQVVWQkFSS0NSZ0ptUVFCTFA3OENBd01DQUVFQ0F3TUNQN0FDQXdNQ0FGQUNBd00va0FvQ0F3TUNDZ0lEQXdJS0FnTURBZ29DQXdNQWJEK3dBZ01EQWdCUUFnTURBSmxGUVVGaERVRkJSVUVEQVZLQ1FtWkJBMkxEQWdvQ0F3TUNDZ0lETFFNQ0NnSURBd0lLQWdNREFnb0NBd01DQ2dJRExRTUNDZ0lEQXdJS0FnTURBZ29DQXdNQ0NnSURBQUFBZ0FBQUFBRElBS1FBQzBBUFFBNlFEY2pBUUlBQVVjQkJRSUFBQUlEQUFKZ0JnRURCQVFEVkFZQkF3TUVXQUFFQXdSTUx5NENBRGcxTGowdlBTY2xJQjBBTFFJdEJ3VVVLd0VqSWlZMU5qYzJOelkzTmpjMkppY21EZ0VWRkJjV0Z4WVhGaGNVQmlzQklnWWRBUlFXTXlFeU5qMEJOQ1lISVNJR0hRRVVGak1oTWpZOUFUUW1BdVJ1R1NNQ0NRVU5DZ1FHQVFNMExDWkVLUVlFQ3cwRkNRSWpHVzRaSXd3SUFqQUlEQ01ZL2g0SUN5TVpBWkVaSWdzQk5pTVpJUmtQRlJBSkR4RXRTQW9JSFR3bEZSRUtFaFVQR1NFWkl5TVpLQWdNREFnb0dTTzBDd2dCR1NNakdRRUlDd0FCQUFEL2tBUENBeTRBTHdCUVFFMFlBUU1DR1FFQkF3WUJBQUVrQXdJRUFDVUJCUVFGUndvQkF3RkdBQUlEQW04QUF3RURid0FCQUFGdkJnRUFCQUJ2QUFRRkJHOEFCUVZtQVFBcUtTTWhIQm9VRXc0TUFDOEJMd2NGRkNzbElnWUhKVFkxTkNZMUpSNEJNekkrQVRRdUFTSU9BUjBCQlNZaklnNEJGQjRCTXpJM0JSVVVIZ0V5UGdFMExnRURFeVZCRi83bkFnSUJHUmRESlM5UUxpNVFYbEF2L3Q0MVBpOVFMaTVRTDBFd0FTTXVUMkJQTGk1UTZ4MFpqQW9WQlJVRmpCb2VMbEJlVUM4dVVEQUxraWd1VUY1UUxpcVFEVEJRTGk1UVlFOHVBQUlBQVArUUE4SURMQUFyQUZrQUprQWpFd0VDQUFGSEFBQUNBRzhBQWdFQ2J3QUJBd0Z2QUFNRFpsTlFPamtsSWk0RUJSVXJBU1luSmpVME5qYytBVFUwSmljbUl5SUhCZ2NVRng0QkZSUUdCd1lVRnhZZkFSWTdBVEkyUFFFMEp5WUZKaWNtTlRRM1BnRTFOQ1luSmlJSERnRVZGQllYRmhVVUJ3WUhCZ2NHQndZZEFSUVdNeUV5TmowQk5DY21BeWdsRGdzVUR4Z2FKU0lrTDBFcUp3WUtOejRxSndNRENpUVVDQVhwSVM0dkl2NjFMUkVOS0IwZkt5a3JjeXNvTEI0ZEtRMFNManNoTGhnY0xTRUNGU0V3TmlnQnBRNFNEUk1QSGd3VU9pSXJTQlVXS0NZN0NnY2pkVWszWHlNRENRTUhFUW9ETHg0TUxpTWE3aE1URHhZaEpCbEVLRE5WR0JvYUdGVXpLRVFaSXlJV0R4VVJHQklaR3lBbUdTQXRMaDhiTmlvZkFBQUFBUUFBQUFBQzJ3S2xBQzBBSjBBa0FBQUZBUUVDQUFGZ0JBRUNBd01DVkFRQkFnSURXQUFEQWdOTU5TVTFOU1V6QmdVYUt3RTFOQ1lqSVNJR0hRRVVGak15RmdjRERnRXJBU0lHSFFFVUZqTWhNalk5QVRRbUl5SW1OeE0rQVRzQk1qWUMyeGNRL3ZNUUZoWVFHUjhHUlFRZEVTNFFGeGNRQVEwUUZoWVFHUjhHUlFRZEVTRVdIZ0ptR1JBV0ZoQW5FQlluRi82dUV4Z1dFQ2NRRmhZUUp4QVdKeGNCVWhNWUhnQUFBQVVBQVArUUE0Z0RMQUFaQUNNQU13QkRBRk1BWGtCYlRFUThOQVFJQ1FGSEFBRUFCQUFCQkdBRkFnd0RBQUFEQmdBRFlBMEJCZ3NCQ1FnR0NXQUtBUWdIQndoVUNnRUlDQWRZQUFjSUIwd21KQUVBVVU1SlJrRStPVFl1S3lRekpqTWpJaDRjRkJFTUNnY0VBQmtCR1E0RkZDc0JJelUwSmlzQklnWWRBU01pQmgwQkZCWXpJVEkyUFFFMEppVTBOanNCTWhZZEFTTUZJU0lHRlJFVUZqTWhNalkxRVRRbUFSUUdLd0VpSmpVUk5EWTdBVElXRlJNVUJpc0JJaVkxRVRRMk93RXlGaFVEYS9BdElIUWZMdkFMRWhJTEF1NExFaEwrUkFzSlRRZ0xkQUZrL2F3TEVqZ29BYzRvT0JIK2tBb0pKZ2tMQ3drbUNRckJDd2ttQ1FvS0NTWUpDd0tTVFNBdExTQk5FZ3M2Q3hJU0N6b0xFamtKQ3dzSk9jRVJDLzQ4S1RnNEtRSEVDeEgrV1FnTEN3Z0JEZ2dMQ3dqKzhnZ0xDd2dCRGdnTEN3Z0FBQUVBQVAvdkE4SUN6UUFqQUM1QUt3QUJBQUZ2QUFJREFuQUVBUUFEQXdCVUJBRUFBQU5ZQUFNQUEwd0NBQjRiRXhJTENnQWpBaU1GQlJRckFTRWlKajhCTmpRdkFTWWlCd0VHRkJjQkZqSS9BVFkwTHdFbU5qTWhNalk5QVRRbUE2ZjlnUTBKQ2JnSkNTb0lHQWorcndnSUFWRUlHQWdvQ1FtNENRa05BbjhMRWhBQm1CZ0l1UWtYQ0NzSUNQNnRDQmdJL3E4SUNDa0lHQWk1Q2hnUUN6b01Fd0FBQXdBQS81QUR3Z01zQUJRQUlRQXVBRHBBTnlZbEh4NEVBd0lCUndRQkFBQUNBd0FDWUFVQkF3RUJBMVFGQVFNREFWZ0FBUU1CVENNaUFRQWlMaU11SEJvTENnQVVBUlFHQlJRckFTSUhCZ2NHRkJjV0Z4WXlOelkzTmpRbkppY21BVFEzTmpjMk16SVdGd0V1QVFFaUppY0JIZ0VWRkFjR0J3WUI5SDFyYVQwL1B6MXBhL3BzYUQ0L1B6NW9iUDRwTHk5T1VWMDRaU3YrSFI0aEFWbzRaU3NCNHg0aEx5OU9VUU1zUHo1b2JQcHNhRDQvUHo1b2JQcHNhRDQvL2pKZFVVNHZMeUVlL2gwclpmN2VJUjRCNHl0bE9GMVJUaTh2QUFBQUFBSUFBQUFBQThJQ3l3QU5BQ1FBS2tBbkFBRURBVzhBQXdBRGJ3QUFBZ0J2QUFJRUJBSlVBQUlDQkZnQUJBSUVURGNUR1RVUkJRVVpLd0VXTWpjQk5pY21Jd1VpRGdFWEJUUW1Cd0VHSWljQkppSUdGU1lkQVJRV015RXlOalVCM3dnWUNBR3pCd1VHRmZ5a0N4SUVDQU9XR3d6K3JDTmZKUDZ1QnhNTkFTMGZBd0lnTFFFUENBZ0JsQTBORGdFTkV3bWNEdzBLL3NZZ0hnRThCZzBMQk56Y0lDMHVId0FBQUFNQUFQL3hBeFVDdUFBWUFDQUFLQUJCUUQ0VkFRTUVBVWNBQUFBRkJBQUZZQWNCQkFBREFnUURZQVlCQWdFQkFsUUdBUUlDQVZnQUFRSUJUQ0loR2hrbEl5RW9JaWdkR3hrZ0dpQTFNd2dGRmlzQk5DNEJJeUVpQmhVUkZCWXpJVEkrQVRVMEp5WW5OamMyQXlNMU16SVdGQVlESXpVek1oWVVCZ01WTjEwMi9zSVFGaFlRQVQ0MlhUY1BEeG9hRHcvSzN0NGJLaW9iM3Q0Yktpb0I1VGhpT1JZUS9ZVVFGamxpT0NrbUpCMGVKQ2IrdTVvdVBpNEJJWm92UEM4QUFBUC8vd0FBQSs0Q3BRQVdBQ01BTUFCQ1FEOEhBUVFEQlFNRUJXMEFCUUlEQlFKckFBQUFBd1FBQTJBR0FRSUJBUUpVQmdFQ0FnRllBQUVDQVV3bEpCZ1hLeW9rTUNVd0hoMFhJeGdqR3hRSUJSWXJBUzRCSnlZaUJ3NEJCd1lVRng0QkZ4WXlOejRCTnpZRklpNEJORDRCTWg0QkZBNEJBeUlPQVJRZUFUSStBVFF1QVFQa0xaZGZZdFppWDVjdEJBUXRsMTlpMW1KZmx5MEovZ2M2WURrNVlIUmhPVGxoT2lVK0pDUStTajRrSkQ0QmIxeU1KaWdvSm94Y0NCTUhYSXdtS0NnbWpGd1IwemxnZEdFNU9XRjBZRGtCV2lRK1NqNGtKRDVLUGlRQUFnQUEvNUFEd3dNdEFDY0FWZ0JaUUZZQUNRTUpid29CQUFJSUFnQUliUUFJQmdJSUJtc0FCZ0VDQmdGckN3VUNBd2NCQWdBREFtQUFBUVFFQVZRQUFRRUVXQUFFQVFSTUtTZ0NBRTFNUlVROE9UTXdLRllwVlNJZkdoY1NEd29IQUNjQ0p3d0ZGQ3NCSXlJR0hRRVVCaU1oSWlZMUVUUTJPd0V5TmowQk5DWXJBU0lHRlJFVUZqTWhNalkxRVRRbUFTSUhCZ2NHQndZV093RXlOamMrQVRjMk93RXlGZzhCQmhRZkFSWXlOd0UyTkNjQkppSVBBUTRCSHdFV0JpTURwVG9MRWhFTS9ZWU1FUkVNVFFzU0VndVJIeTB0SHdNQ0lDMFMvdDVlVjFRMk9BZ0NFZzA2Q3hBQ0JsQStRVWtmRFFrSmFRa0pLQWtYQ0FFR0NBaisvQWdZQ0NnSkFnbHJDUWtOQVJFUkROTU1FUkVNQVpRTEVSSUxPZ3NTTFNEOTVTQXRMaDhCRnd3UkFUUTBNbFZYWXd3VER3cEhlU01rR0Foc0NCZ0lLUWdJQVFRSUdBZ0JCQWdJS0FrWENXd0lHQUFBQUFNQUFBQUFBeUFDaWdBVUFDMEFQQUE5UURvRkFRTUNCQUlEQkcwR0FRQUhBUUlEQUFKZ0FBUUJBUVJVQUFRRUFWZ0FBUVFCVEJZVkFRQW9KaUloSEJzVkxSWXRDd29BRkFFVUNBVVVLd0VpQndZSEJoUVhGaGNXTWpjMk56WTBKeVluSmdjeUhnRVZGQWNqSWdZSERnRWlKaWN1QVNzQkpqVTBQZ0VURmo0Qk56WTNOaVlIQmdjT0FSWUI5RkZHUkNncEtTaEVScUpHUkNncEtTaEVSbEU3WmpzQ1dRY0xBZ1krVWo0R0FRc0lXUUk3WmlRU0tCTU5EUWNJQ0I4ZEhTQVRDd0tLS1NoRVJxSkdSQ2dwS1NoRVJxSkdSQ2dwVUR0bU93b1VDUWduTmpZbkJ3b1VDanRtTy83YUNnMGpNQ3dvS2dRZUhTTW1JeWNBQUFVQUFBQUFBeUFDaWdBa0FESUFRQUJLQUZRQVowQmtDd0VGQVRJQkFBVWFBUVFBU0FFSkNBUkhDdzBDQ0FRSkJBZ0piUW9CQ1FsdUFnRUJCd0VGQUFFRllBWUREQU1BQkFRQVZBWUREQU1BQUFSWUFBUUFCRXhDUVFFQVVsRlFUa1ZEUVVwQ1NqMDhOell1TEI0Y0Z4VVJEd2NGQUNRQkpBNEZGQ3NCSXpZbUp5WWpJZ1lIQmdjbUp5NEJJeUlIRGdFWEl5SUdIUUVVRmpNaE1qWTlBVFFtSVNJbkxnSTNOak15RmhjV0ZUY0dCd1lqTlRRM1BnRXlGeFlHRnlNUk16STJQUUUwSmdVVkZCWTdBUkVqSWdZQzVGY1RCQmNiSlJNbURnVUZCQVlPSlJRa0d4Y0VFMWdaSXd3SUFqQUlEQ1ArMlJFU0ZSY0NDZ2dNRUJjR0JvQU1GQk1SQmdZWkdnZ0tBb1BTckJnaURQNEVJeG1xMGdnTUFmUWVSUmdiRVE4RkNBZ0ZFQkFiR0VVZUl4a29DQXdNQ0NnWkl3WUhHU0VLQ0JvV0V4RVZEUWNHQmhFVEZob0lDeURiL3ZJaUdNQUlEQlMrR1NNQkRnd0FBQU1BQUFBQUF5QUNpZ0FVQUNFQU5RQkxRRWdqSWdJRkJBRkhBQVFEQlFNRUJXMEFCUUlEQlFKckJnRUFBQU1FQUFOZ0J3RUNBUUVDVkFjQkFnSUJXQUFCQWdGTUZoVUJBREF2SnlVY0d4VWhGaUVMQ2dBVUFSUUlCUlFyQVNJSEJnY0dGQmNXRnhZeU56WTNOalFuSmljbUF5SXVBVFErQVRJZUFSUU9BU2MxTkNZckFTSUdIUUVVSHdFV01qOEJOalFuQWZSUlJrUW9LU2tvUkVhaVJrUW9LU2tvUkVaUlFXNUJRVzZDYmtGQmJpTU1DQlFJREFsZ0JoQUdEZ1lHQW9vcEtFUkdva1pFS0NrcEtFUkdva1pFS0NuOTVFRnVnbTVCUVc2Q2JrSDhnQWdNREFpTURRaGdCZ1lPQmhBR0FBVUFBQUFBQXU0Q2lnQU5BQ1VBU1FCWkFHa0FZRUJkRXdFQUFrUTlOZ01CQUVBNUl3TUhBV0phQWdZSFVrb0NCQVVGUndBQ0FBSnZBQUFCQUc4SUFRRUFCd1lCQjJBQUJnQUZCQVlGWUFBRUF3TUVWQUFFQkFOWUFBTUVBMHdRRG1aa1hseFdWRTVNSUIwWUZRNGxFQ1VvQ1FVVkt3RW5KaUlHSFFFVUZqc0JNalkwQnlNaUpqMEJOQ1lyQVNJR0ZSRVVGak1oTWpZMUVUUW1KVDhCTWpVM05qSWZBUll6Rng0QkR3RUdGUmNXQmk4QkpnOEJCaVkvQVRRdkFTWTJBUlFHSXlFaUpqMEJORFl6SVRJV0ZUY1VCaU1oSWlZOUFUUTJNeUV5RmhVQzZvUUVEQWdZRUdvR0NCU01HU01NQ01nWkl5TVpBWHdaSXd6K1hqRUNBUllDQlFFV0FnRXhBZ0lDSkFFSUFRVUNMQUlDTEFJRkFRZ0JKQUVEQVRnTUNQNzhDQXdNQ0FFRUNBd29EQWorMUFnTURBZ0JMQWdNQWdLRUJBZ0dhaEFZQ0F4UUl4bU1DQXdqR2Y0Z0dTTWpHUUVzQ0F4ZUJ3RUJMUUlDTFFJSEFRVUJJd0VETVFJREFSY0NBaGNCQXdJeEF3RWpBZ1Qrc3dnTURBZ1VDQXdNQ0dRSURBd0lGQWdNREFnQUFBZ0FBUCtRQThJRExBQVBBQjhBTHdBL0FFOEFYd0J2QUg4QWNrQnZFZ0VPQlE1dkJnRUZEd1Z2QUE4RUQyOEhBUVFBQkc4SUFRSUJDZ0VDQ20wUUFRb0RBUW9EYXdrQkF3c0JBd3RyQUFzTGJoRU1BZ0FCQVFCVUVRd0NBQUFCV0EwQkFRQUJUSEp3WW1CU1VIcDNjSDl5ZjJwbllHOWliMXBYVUY5U1gwcEpGeGNYRnhjWEV6VXpFd1VkS3dFMU5DWXJBU0lHSFFFVUZqc0JNallYSmlJUEFRWVVId0VXTWo4Qk5qUW5BUll5UHdFMk5DOEJKaUlQQVFZVUZ5VW1JZzhCQmhRZkFSWXlQd0UyTkNjQkppSVBBUVlVSHdFV01qOEJOalFuSlNNaUJoMEJGQlk3QVRJMlBRRTBKaVVqSWdZZEFSUVdPd0V5TmowQk5DWUJJeUlHSFFFVUZqc0JNalk5QVRRbUFUUVNDOVFMRVJFTDFBc1NKQWdZQ0pZSkNTZ0pGd21XQ0FnQkR3Z1lDSllKQ1NnSkZ3bVdDQWoraEFrWENTZ0pDWllJR0FncENBZ0JPUWdZQ0NzSUNKWUpGd2tvQ1FuK3d6b0xFaElMT2dzU0VnR0oxQXNTRWd2VUN4SVMvbUU2Q3hJU0N6b0xFaElCUVRvTEVoSUxPZ3NTRWtzSUNKWUpGd2tvQ1FtV0NCZ0lBUThJQ0pZSkZ3a29DUW1VQ0JnSXZBa0pLQWtYQ1pZSUNDa0lHQWoreVFnSUtRZ1lDSllKQ1NnSkZ3bEpFZ3ZVQ3hJU0M5UUxFdm9TQ3pvTEVoSUxPZ3NTQVpRU0M5UUxFaElMMUFzU0FBQUFBQU1BQVAvZEE4SUMzd0FNQUNzQU9BQldRRk1FQ1FJQ0F3Y0RBZ2R0Q0FFQUJ3RUhBQUZ0QUFFR0J3RUdhd0FEQUFjQUF3ZGdDZ0VHQlFVR1ZBb0JCZ1lGV0FBRkJnVk1MU3dQRFFFQU16SXNPQzA0SmlNZUd4WVREU3NQS3djR0FBd0JEQXNGRkNzQklnNEJGQjRCTWo0Qk5DNEJKU01pTHdFdUFTc0JJZ1lQQVE0Qkt3RWlCaFVSRkJZeklUSTJOUkUwSmdFaUxnRTBQZ0V5SGdFVURnRUI5Q3BIS1NwR1ZFY3BLVWNCVjJRb0dpd0tMQnU4R2kwTUxBb2pGR01mTFMwZkF3SWdMUzMrWHo1clBqNXJmR3MrUG1zQjBTbEhVa2NxS1VkVVJpbDBJa1FZSEJ3WVJCQVNMU0QrTWlBdExoOEJ6aUF0L2d3K2EzeHFQajVxZkdzK0FBQUFDQUFBLzVBRG13TXNBQThBSHdBdkFEOEFUd0JmQUc4QWp3REtRQTVvU0NnREJBVlFNQkFEQWdNQ1IwdXdEVkJZUUQwUkFROE9EZzlqRWhBVkF3NEFFd0FPRTJFVUFRQU5DUUlGQkFBRllBd0lBZ1FMQndJREFnUURZQW9HQWdJQkFRSlVDZ1lDQWdJQldBQUJBZ0ZNRzBBOEVRRVBEZzl2RWhBVkF3NEFFd0FPRTJFVUFRQU5DUUlGQkFBRllBd0lBZ1FMQndJREFnUURZQW9HQWdJQkFRSlVDZ1lDQWdJQldBQUJBZ0ZNV1VBemNYQUNBSXFIZ29COWZIbDRkWFJ3ajNHUGJHcGxZbHhhVlZKTVNrVkNQRG8xTWkwcUpDSWRHaFFTQ2djQUR3SVBGZ1VVS3dFaElnWVZFUlFXTXlFeU5qVVJOQ1lCRkFZckFTSW1QUUUwTmpzQk1oWVZOUlFHS3dFaUpqMEJORFk3QVRJV0ZSTVVCaXNCSWlZOUFUUTJPd0V5RmhVMUZBWXJBU0ltUFFFME5qc0JNaFlWRXhRR0t3RWlKajBCTkRZN0FUSVdGVFVVQmlzQklpWTlBVFEyT3dFeUZoVVRJelUwSmlJR0hRRWhOVFFtSWdZZEFTTWlCaDBCRkJZeklUSTJQUUUwSmdOKy9Pd01FUzRmQXJRZ0xSSDk0d29KVFFnTEN3aE5DUW9LQ1UwSUN3c0lUUWtLd1FzSVRRa0xDd2xOQ0FzTENFMEpDd3NKVFFnTHdBc0lUUWtLQ2dsTkNBc0xDRTBKQ2dvSlRRZ0xZR0FpTHlMKzhpRXdJbUFnTFJFTUF4UU1FUzBCMFJFTC9pZ2ZMaTBnQWRnTEVmNVpDQXNMQ0UwSkN3c0pkQWtMQ3dsTkNBc0xDUDd5Q0FzTENFMEpDd3NKZEFrTEN3bE5DQXNMQ1A3eUNBc0xDRTBKQ3dzSmRBa0xDd2xOQ0FzTENBR1RKeGdpSWhnbkp4Z2lJaGduTFI4eEN4RVJDekVnTEFBREFBRC90d1BDQXdVQUR3QWZBQzhBUUVBOUJ3SUdBd0FGQVFVQUFXMERBUUVCYmdnQkJBVUZCRlFJQVFRRUJWZ0FCUVFGVENJZ0VoQUNBQ29uSUM4aUx4b1hFQjhTSHdvSEFBOENEd2tGRkNzVEl5SUdGUkVVRmpzQk1qWTFFVFFtS1FFaUJoVVJGQll6SVRJMk5SRTBKaWNoSWdZZEFSUVdNeUV5TmowQk5DYmRtZ3NSTENCcURCRVJBcno5dnd3UkVRd0NFU0F0RWp2OC9pQXNFUXNEWWdzU0xRSUxFUXorRmlBdEVRd0NHZ3dSRVF6OTVnd1JMU0FCNmd3UitpMGdRd3NTRWd0RElDMEFBQUFFQUFEL3lnT2JBdklBRHdBZkFDOEFQd0EyUURNQUFBQUJBZ0FCWUFBQ0FBTUdBZ05nQUFZQUJ3UUdCMkFBQkFVRkJGUUFCQVFGV0FBRkJBVk1OVFUxTlRVMU5USUlCUndyQVRRbUl5RWlCaDBCRkJZeklUSTJOUlUwSmlNaElnWWRBUlFXTXlFeU5qVVJOQ1lqSVNJR0hRRVVGak1oTWpZMUVUUW1JeUVpQmgwQkZCWXpJVEkyTlFPYkVRejg3QXdSRVF3REZBd1JFUXo4N0F3UkVRd0RGQXdSRVF6ODdBd1JFUXdERkF3UkVRejg3QXdSRVF3REZBd1JBdFVMRWhJTE9nc1JFUXV0REJFUkREa01FUkVNL213TEVoSUxPZ3NTRWdzQklRc1JFUXM2REJFUkRBQUFCQUFBLzhvRG13THlBQThBSHdBdkFEOEFOa0F6QUFBQUFRSUFBV0FBQWdBREJnSURZQUFHQUFjRUJnZGdBQVFGQlFSVUFBUUVCVmdBQlFRRlREVTFOVFUxTlRVeUNBVWNLd0UwSmlNaElnWWRBUlFXTXlFeU5qVUhOQ1lqSVNJR0hRRVVGak1oTWpZMUF6UW1JeUVpQmgwQkZCWXpJVEkyTlJNMEppTWhJZ1lkQVJRV015RXlOalVEbXhFTS9Pd01FUkVNQXhRTUVYTVNDLzNTQ3hJU0N3SXVDeEluRVF6K0lBd1JFUXdCNEF3Um1oRU0vT3dNRVJFTUF4UU1FUUxWQ3hJU0N6b0xFUkVMclF3UkVRdzVEQkVSRFA1c0N4SVNDem9MRWhJTEFTRUxFUkVMT2d3UkVRd0FBQUFEQUFEL2p3UENBeXdBRHdBZkFERUFJMEFnQUFNQkEyOEFBUUlCYndBQ0JBSnZBQVFBQkc4QUFBQm1IaGNhRnhJRkJSa3JOeGNXTWpjQk5qUXZBU1lpQndFR0ZBRUdGQjhCRmpJL0FUWTBMd0VtSWdjQkJoWS9BVFkvQVRZMEx3RW1JZzhCQmdlM3F3WVBCZ0dyQlFXcEJoQUYvbE1HQWdVRkJhb0ZFQVV4RnhkYkZ6OFgvVVVDRlE3U0NnY0VCQWF0QlJBRUJBWUUwS3NHQmdHc0JoQUZxZ1VGL2xNR0RnSVBCUkFGcWdVRk1CWTlGMXNYRi95ZURoWURNZ01IQkFRUUJhMEdCQVFHQ3dBQUFBQUZBQUQva0FQQ0F5d0FEd0FUQUNNQU13QkRBR2hBWlVFNU1Ta0VCZ2NCUndrQkJ3UUdCQWNHYlEwSURBTUdBZ1FHQW1zQUFRQURCUUVEWGdBRkN3RUVCd1VFWUFBQ0FBQUNVZ0FDQWdCWUNnRUFBZ0JNTlRRbEpCVVVBZ0ErT3pSRE5VTXVLeVF6SlRNZUd4UWpGU01URWhFUUNnY0FEd0lQRGdVVUt3VWhJaVkxRVRRMk15RXlGaFVSRkFZbElSRWhBU0VpSmowQk5EWXpJVElXSFFFVUJnRWpJaVk5QVRRMk93RXlGaDBCRkFZaEl5SW1QUUUwTmpzQk1oWWRBUlFHQTV2OHNoQVdGaEFEVGhBWEYveklBd0w4L2dKNy9nd0lDd3NJQWZRSkNncitkbk1JQ3dzSWN3a0xDd0Y0NXdnTEN3am5DUW9LY0JjUUEwNFFGeGNRL0xJUUYwMERBdjd5Q3dsekNRb0tDWE1KQy82QUN3am5DQXNMQ09jSUN3c0k1d2dMQ3dqbkNBc0FBQUFDQUFEL2tBT3VBeXdBRHdBM0FCMUFHZ0FBQWdCdkFBSURBbThBQXdFRGJ3QUJBV1lwTERVeUJBVVlLeE0wSmlzQklnWVZFUlFXT3dFeU5qVUJCZ2NHSnlZbkppY21Jd1lIRGdFVkVSUVdOell6RmhjV0Z4WVhGaGNXTnpZM1BnRTFFVFFtclJFTU9Rd1JFUXc1REJFQzVVZzVMeTBiTWpRZk16bEZWd2dMRVFoVVJEY3pIalFtRkNJZ0ppc3dPd2NJRXdNUEN4SVNDL3llQ3hJU0N3TVJKZ1lHRVFvZUlBd1VBUjRDRUFuK1FBb0xCQndCRkF3ZkdBa1BCQVFMRFNFRURnY0J2d29MQUFNQUFQK1BBNGdETFFBWEFDOEFQd0F1UUNzQUJBVUVid0FGQXdWdkFBTUFBZ0VEQW1BQUFRQUFBVlFBQVFFQVdBQUFBUUJNRng4Ykd4c1NCZ1VhS3lVRkJpSW5KU1kwUHdFMk1oOEJGakkvQVRZeUh3RVdGQ2NGQmlJbkpTWTBQd0UyTWg4QkZqSS9BVFl5SHdFV0ZDMEJKalEzSlRZeUZ3VVdGQWNGQmlJRGVmNldEaU1PL3BnTEMxVUVDd1RiSUVzZjNBUUxCRlVMQy82V0RpTU8vcGdMQzFVRUN3VGJJRW9nM0FRTEJGVUwvay8rbHd3TUFXa1BJdzRCYVF3TS9wY09JMmJPQ0FqT0JoY0dNQU1EZlJJU2ZRTURNQVlYNGM0SkNjNEZHQVV3QXdOOUVSRjlBd013QlJnVXpnVVhCczRJQ000R0Z3WE9Cd0FBQUFRQUFBQUFBeUFDTUFBUEFEQUFRQUJRQU5wQUVFbEJBZ1lIT1RFQ0JBVXVBUUlFQTBkTHNCbFFXRUF4QUFjREJnTUhaUUFFQlFJQ0JHVUlBUUFBQXdjQUEyQUFCZ0FGQkFZRllBa0JBZ0VCQWxRSkFRSUNBVmtBQVFJQlRSdExzQnBRV0VBeUFBY0RCZ01IWlFBRUJRSUZCQUp0Q0FFQUFBTUhBQU5nQUFZQUJRUUdCV0FKQVFJQkFRSlVDUUVDQWdGWkFBRUNBVTBiUURNQUJ3TUdBd2NHYlFBRUJRSUZCQUp0Q0FFQUFBTUhBQU5nQUFZQUJRUUdCV0FKQVFJQkFRSlVDUUVDQWdGWkFBRUNBVTFaV1VBYkVoQUNBRTFMUlVNOU96VXpJaUVRTUJJd0NnY0FEd0lQQ2dVVUt3RWhJZ1lWRVJRV015RXlOalVSTkNZQkl5SW1OVFkzTmpjMk56WTFOQ2NtTkRZeUZoVVVCd1lWRkJjV0Z4WVhGZ1kzRkFZckFTSW1QUUUwTmpzQk1oWVZOUlFHS3dFaUpqMEJORFk3QVRJV0ZRTGsvaUFaSXlNWkFlQVpJeVArNmF3T0ZBRVVEaDRRQmdRT0ZTSTZJaFVPQkFZUVFBRUNGTndNQ0ZvSURBd0lXZ2dNREFpV0NBd01DSllJREFJd0l4biszaGtqSXhrQkloa2ovcXdaRUJRUkRBNEhDQVVKRGd3VFBTZ29IaUFTREE0SkJRZ0dHeVVQR2tZSURBd0lIZ2dNREFoUUNBd01DQjRJREF3SUFBTUFBQUFBQXhzQ2RnQWxBQzRBTndCS1FFY0FBZ0FEQUFJRFlBQUJDZ0VBQlFFQVlBQUZBQVFIQlFSZ0NRRUhCZ1lIVkFrQkJ3Y0dXQWdCQmdjR1RBRUFOalV5TVMwc0tTZ2dIUm9YRkJJUERBa0hBQ1VCSlFzRkZDc0JJVEkyUHdFMkppTWhKeTRCS3dFaURnRVdPd0VUSGdFeklUSStBU1lqSVNJbUp6VW1OZ2NVRmpJMk5DWWlCaGNVRmpJMk5DWWlCZ0dvQVNjSEN3RTJBd3dLL2pnSUF4QUtNQXdUQWhJTkhGNERFQW9CWEF3VEFoSU4vczRLRUFJRkVoNGRLaDBkS2gzd0hTb2RIU29kQVY0SUI3NEtEeHdLREJBWkUvN0NDZ3dRR1JNTUNRRU9HT1lWSFIwcUhSMFZGUjBkS2gwZEFBQUNBQUFBQUFNaUFrd0FDd0FnQUNSQUlRQUJBQUZ2QUFBQ0FHOEFBZ01EQWxRQUFnSURXQUFEQWdOTU9CZzBFUVFGR0NzQkZqSTNBVFltSXdVaUJoY0ZOQ1lQQVFZaUx3RW1CaFVSRkJZeklUSTJOU0lCNXdZUEJnRWJCUWNPL2RBTURBZ0NVeElIM0JZL0Y5MEhFaU1aQWVBWkl3RUJMQVVGQVFZSkVRRVJDVzhLQ0FmTUZSWE1Cd2dLL3Z3Wkl5TVpBQUFBQWdBQS81QUR3Z01zQUJRQUxBQTBRREVHQVFBRkFHOEFCUU1GYndBREJBTnZBQVFDQkc4QUFnRUNid0FCQVdZQkFDZ25KQ01nSHhnWEN3b0FGQUVVQndVVUt3RWlCd1lIQmhRWEZoY1dNamMyTnpZMEp5WW5KaE1CQmlJdkFTWTBQd0UyTWg4QkZqSS9BVFl5SHdFV0ZBSDBmbXRwUEQ4L1BHbHIvR3hvUFQ4L1BXaHNoUDdhQ1JrSm9Ra0pLZ2taQ0ZVR0VRYlhDUmtJS3dvRExEODlhR3o4YkdnOVB6ODlhR3o4YkdnOVAvNmwvdFlJQ0tRSUdnZ3FDUWxXQmdiZkNRa3FDUmtBQUFBQkFBRC90UU9kQXdVQVJ3QkRRRUJGQVFNQUFVY0dBUUFEQUc4QUF3UURid0FDQlFFRkFnRnRBQUVCYmdBRUJRVUVWQUFFQkFWWUFBVUVCVXdDQUVJL09qY3hMeUVnR1JjQVJ3SkhCd1VVS3dFaklnWWRBUlFHSnlZbkxnRUhCZ2NPQVFjR0ZoY2VBVE15TmpjK0FTOEJMZ0VIRGdFbkppY3VBamMyTno0Qk16SVdGeFlYRmdZckFTSUdIUUVVRmpNaE1qWTFFUzRCQTM0NURCRU5DZ2tMU01Gb1NqeFlZUUlDT3pjNmxsUkpoemNLQVFrb0NCWUpOSWRHSkNVMlJoWVBDUllvaEV3NmFpZ01Dd1FQRG9jTEVoQUxBV0FLRHdJUkF3VVJESVlPQ0FnTUIwazVGQThwT2JKbFRwVTRQVUF5TGdrWkNTZ0lBUWNzSHhFSkZpRm1lejhrSlVaTUxDZ0xFQXNNRWdzOEN4QVBDZ0ZlREJFQUJBQUEvOG9EbXdMeUFBOEFId0F2QUQ4QU5rQXpBQUFBQVFJQUFXQUFBZ0FEQmdJRFlBQUdBQWNFQmdkZ0FBUUZCUVJVQUFRRUJWZ0FCUVFGVERVMU5UVTFOVFV5Q0FVY0t3RTBKaU1oSWdZZEFSUVdNeUV5TmpVSE5DWWpJU0lHSFFFVUZqTWhNalkxRVRRbUl5RWlCaDBCRkJZeklUSTJOUk0wSmlNaElnWWRBUlFXTXlFeU5qVURteEVNL093TUVSRU1BeFFNRVpvUkRQMkdEQkVSREFKNkRCRVJEUDJHREJFUkRBSjZEQkdhRVF6ODdBd1JFUXdERkF3UkF0VUxFaElMT2dzUkVRdXREQkVSRERrTUVSRU0vbXdMRWhJTE9nc1NFZ3NCSVFzUkVRczZEQkVSREFBQUFBQUJBQUFBQUFOaUFrVUFEQUFZUUJVQ0FRQUJBRzhBQVFGbUFnQUlCd0FNQWd3REJSUXJFeUV5SGdFSEFRWWlKd0VtTnFBQ3FBb09BUWYrc3dnZkNmNnZDZzRDUlE0VUNQNW9EQXdCbUEwZEFBSUFBUCtJQTZzRExRQWVBQzBBQ0xVdEtCUUlBaTByQVFVR0xnRTFFVFFtQnc0QkJ3WVhIZ0VYRmhjV056NEJOelkxTkNjdUFRVWxQZ0VuSmljbUp5WUdGUkVVRmdOci9uWU5HeElYRFdDVkpDWUxDbWRSVW1GZVdGU0RKQ1lHQWh2K25RRjdFUWtMUW1CamNoUWdGUUdRMlFjR0ZRNEIyQTRTQkJxR1hXQm9ZS1F6TlFvS0hSeDNVVk5jSXlJT0RGL0tDQ2NRV3p3K0VnUWJGUDVPRFF3QUFBQUFCQUFBLzdNRHdnTUZBQjBBSmdBdkFEZ0FRVUErQ0FFQUF3QnZCd1VDQXdJRGJ3c0dDZ1FKQlFJQkFtOEFBUUZtTVRBb0p4OGVBUUExTkRBNE1UZ3NLeWN2S0M4akloNG1IeVlVRWdBZEFSME1CUlFyQVNJSEJnY0dGUlFYRmc4QkJoWS9BVFlYRmpNMk56WTNOaVluSmljbUFTSW1ORFl5RmhRR015SW1ORFl5RmhRR015SW1ORFl5RmhRR0FmUithMmc5UGpnS0Jqd0VFUXltRFJSdmdYeHJhRHcvQVQ4K2FHdituQjh1TGo4dExjY2ZMaTQvTFMzSEh5NHVQeTB0QXdVNU9GOWljMlptRHhLakRCQURQd1lLUFFFNk9GOWk2R05nTnpyK0RDNC9MUzFBTFM0L0xTMC9MaTQvTFMwL0xnQUFBQUlBQVArUUE4SURMQUFVQUNZQUprQWpCQUVBQXdCdkFBTUNBMjhBQWdFQ2J3QUJBV1lCQUNNZ0doY0xDZ0FVQVJRRkJSUXJBU0lIQmdjR0ZCY1dGeFl5TnpZM05qUW5KaWNtRXc0Qkl5RWlKaWNtTno0Qk15RXlGaGNXQWZSOWEyazlQejg5YVd2NmJHZytQejgrYUd4b0FoQUwvbkFMRVFFREF3SVFDd0dRQ3hBQ0F3TXNQejVvYlBwc2FENC9QejVvYlBwc2FENC8vaEVLRHc0TEl4OEtEdzhLSWdBQUFBRUFBUC93QXRzQzBBQU1BQXEzQUFBQVpoTUJCUlVyQVJFVURnRW5BU1kwTndFMkZnTGJEaFFJL21nTURBR1lEUjBDc3YxWUNnNEJCd0ZOQ1I4SUFWRUtEZ0FBQXdBQS80NER3Z00wQURjQWJnQ1NBRHhBT1lxQmVBTUZBQUZIQUFJREFtOEFBd1FEYndBRUFRUnZBQUVBQVc4QUFBVUFid0FGQmdWdkFBWUdabzJNaUlkN2VuWjFTRVlqRUFjRkZpc2xJaWNtSnlZR0R3RU9BU1luTGdFMlB3RTJOellXRnhZWEZoY2VBVDhCTmk4QkppY21KeTRCQmdjR0R3RU9BUllYSGdFMlB3RTJKZ0UrQVNZbkxnRUdEd0VHRmhjV0Z4WTJQd0UrQVJZWEhnRUdEd0VHQndZbkppY21KeTRCRHdFT0FSOEJGaGNXRnhZWEZqWTNOamNYTnpZMEx3RW1JZzhCSnlZaUR3RUdGQjhCQndZVUh3RVdNajhCRnhZeVB3RTJOQ2NCemhFU0RoY0ZDd01IR0VCQ0dSd1ZFUnAvR0NJVUtSTVpFZ2dKQlJNSE1Bb0lDZ2tFRFJ3bVVGRWxHUnQ3TENJYUtpeDZleTRxQ0FvQk1DMGZJeTh0ZDNVc0pna0lEQ2dmQmdzREJ4aEFRaGtjRlJFYWZ4VWxLaVlZRXdnSEJSTUhMZ1lCQlFrSUJoSVdJaTBuVWlVZUZ0VlpCZ1kyQmc4R1ZsTUdEd1kyQmdaVFVRWUdOZ1lQQmxGV0JnOEdOZ1lHa2dZQ0NBRUNBd2dZRXdzV0dVVkdHWDhZQ1FVRENBa1VDZzBKQWdjd0RBME1DUVlORkJjUERSUUxHM3NzZG5ZdEx5TWVMaW9JRmdFUUxudDZMQ29hSWl3bUNSWUNBd29CQWdNSEdCTUxGaGxGUmhsK0Znc01FZ2dVQ0E0SUFnY3VCUTRHQ2dzR0VROFdDUWdORkJBVzVsZ0dEd1kyQmdaYlV3WUdOZ1VRQmxKUkJnOEdOZ1lHVVZjRkJUWUdEd1lBQUFBQUJRQUEvNUFEd2dNc0FBOEFId0F2QUVjQVh3QnFRR2NNQVFBQUFRSUFBV0FLRFFJQ0FBTUpBZ05nRUFFSkFBc0VDUXRnQnc0Q0JBQUZCZ1FGWUE4QkJnZ0lCbFFQQVFZR0NGZ0FDQVlJVEVwSU1qQWlJQklRQWdCYVYxSlBTRjlLWDBJL09qY3dSekpIS2ljZ0x5SXZHaGNRSHhJZkNnY0FEd0lQRVFVVUt3RWhJZ1lkQVJRV015RXlOajBCTkNZSElTSUdIUUVVRmpNaE1qWTlBVFFtQXlFaUJoMEJGQll6SVRJMlBRRTBKZ2NoSWlZOUFUUW1Ld0VpQmgwQkZCWXpJVEkyUFFFMEpnTWhJaVk5QVRRbUt3RWlCaDBCRkJZeklUSTJQUUUwSmdPbC9KNExFUkVMQTJJTEVoSUwvVjhNRVJFTUFxRUxFaElML1Y4TUVSRU1BcUVMRWhJTC9SSU1FUklMT2dzUkVRc0RZZ3NTRWd2OUVnd1JFZ3M2Q3hFUkN3TmlDeElTQXl3U0MyQU1FUkVNWUFzUzV4SUxPZ3NTRWdzNkN4TCtmeEVNT1F3UkVRdzVEQkhBRVF5R0RCRVJEUG9MRWhJTE9nc1NBWUVSQzRjTEVoSUwrZ3NTRWdzNkN4SUFBQUlBQUFBQUF1NENpZ0FYQUNVQU1FQXRCUUVEQVJVQkFnQUNSd0FCQXdGdkFBTUFBMjhFQVFBQ0FHOEFBZ0ptQWdBaUlCSVBDZ2NBRndJWEJRVVVLd0VqSWlZOUFUUW1Ld0VpQmhVUkZCWXpJVEkyTlJFMEpqY25KaUlHSFFFVUZqc0JNalkwQXRxTUdTTU1DTWdaSXlNWkFYd1pJd3dJaEFRTUNCZ1FhZ1lJQWE0akdZd0lEQ01aL2lBWkl5TVpBU3dJREZTRUJBZ0dhaEFZQ0F3QUFBQUZBQUFBQUFNV0Fvb0FGd0FuQURjQVJ3QlhBSEJBYlFVQkFRQXdLQUlHQlZCSUFna0tEUUVDQ1VBNEFnY0NCVWNMQVFBQUFRTUFBV0FNQVFNQUJRWURCV0FBQmdBS0NRWUtZQUFKQ0FFQ0J3a0NZQUFIQkFRSFZBQUhCd1JZQUFRSEJFd2FHQUlBVkZKTVNrUkNQRG8wTWl3cUloOFlKeG9uRWc4S0J3QVhBaGNOQlJRckFTRWlCaDBCRkJZeklUSVdGUkVVRmpzQk1qWTFFVFFtQnlFaUJoVVJGQll6SVRJMk5SRTBKZ1UwTmpzQk1oWWRBUlFHS3dFaUpqVVhGQVlyQVNJbVBRRTBOanNCTWhZVk54UUdLd0VpSmowQk5EWTdBVElXRlFMYS9zQVpJd1lFQVNJWkl3WUVDaGtqSTZYK3dCa2pJeGtCUUJrakkvNjdEQWpJQ0F3TUNNZ0lEUEFNQ01nSURBd0l5QWdNS0F3SThBZ01EQWp3Q0F3Q2lpTVpDZ1FHSXhuK3lnUUdJeGtCVkJrampDTVovcXdaSXlNWkFWUVpJMlFJREF3SUZBZ01EQWp3Q0F3TUNCUUlEQXdJWkFnTURBZ1VDQXdNQ0FBSkFBRC9rQVBDQXl3QUR3QWZBQzhBUHdCUEFGOEFid0NIQUo4QWxrQ1RGQUVBQUFFQ0FBRmdFaGNHRmdRVkJnSUhCUUlERVFJRFlCd0JFUUFUQ0JFVFlBOGFEQmtLR0FZSURRc0NDUTRJQ1dBYkFRNFFFQTVVR3dFT0RoQllBQkFPRUV5S2lISndZbUJTVUVKQU1qQWlJQklRQWdDYWw1S1BpSitLbjRKL2VuZHdoM0tIYW1kZ2IySnZXbGRRWDFKZlNrZEFUMEpQT2pjd1B6SS9LaWNnTHlJdkdoY1FIeElmQ2djQUR3SVBIUVVVS3dFaElnWWRBUlFXTXlFeU5qMEJOQ1lGSXlJR0hRRVVGanNCTWpZOUFUUW1JU01pQmgwQkZCWTdBVEkyUFFFMEppRWpJZ1lkQVJRV093RXlOajBCTkNZQkl5SUdIUUVVRmpzQk1qWTlBVFFtSVNNaUJoMEJGQlk3QVRJMlBRRTBKaUVqSWdZZEFSUVdPd0V5TmowQk5DWUhJU0ltUFFFMEppc0JJZ1lkQVJRV015RXlOajBCTkNZRElTSW1QUUUwSmlzQklnWWRBUlFXTXlFeU5qMEJOQ1lEcGZ5ZUN4RVJDd05pQ3hJUy9kcUdEQkVSRElZTUVSRUJBb2NMRWhJTGh3c1JFUUVDaHdzU0VndUhDeElTL2RxR0RCRVJESVlNRVJFQkFvY0xFaElMaHdzUkVRRUNod3NTRWd1SEN4SVNDLzBTREJFU0N6b0xFUkVMQTJJTEVoSUwvUklNRVJJTE9nc1JFUXNEWWdzU0VnTXNFZ3RnREJFUkRHQUxFdWNTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDem9MRWhJTE9nc1NFZ3M2Q3hMK2Z4RU1PUXdSRVF3NURCRVJERGtNRVJFTU9Rd1JFUXc1REJFUkREa01FY0FSRElZTUVSRU0rZ3NTRWdzNkN4SUJnUkVMaHdzU0VndjZDeElTQ3pvTEVnQUFBQUFFQUFEL2tBUEpBeXdBRHdBbkFEOEFUd0JvUUdVQURBWU1id0FOQlFjRkRRZHRBQWNDQlFjQ2F3UUJBZ2dGQWdockN3RUlBd1VJQTJzQUF3QUZBd0JyQUFBSkJRQUphd0FCQ2dGd0FBWUFCUTBHQldBQUNRb0tDVlFBQ1FrS1dBQUtDUXBNVFVwRlFqMDdOalUwTXlRVkVSUWtGQ00xTWc0RkhTc2xOQ1lqSVNJR0hRRVVGak1oTWpZMUF5TWlCaDhCRmpJL0FUWW1Ld0UwTmpjMk16VWlCdzRCQlNZaUR3RUdGanNCRkE0Qkl4VXlOelkzTmpVek1qWW5FelFtSXlFaUJoMEJGQll6SVRJMk5RR0JFZ3YrM3dzUkVRc0JJUXNTNVY0UEN3aWFCZzhHbWdnTERsczNLeTR2VlVkRlVRS0lCZzhHbWdnTERsMHhXRGxWU0VZb0tsNFBDd2dDRWd2KzN3c1NFZ3NCSVFzU2dRc1NFZ3ZVQ3hJU0N3SCtFd2lnQkFTZ0NSSXZXUndjZENrcGpUUUVCS0FJRXpsWE1IUXBLVVZJVlJNSUFlTUxFaElMMUFzU0Vnc0FBQUlBQVArM0E1c0RCUUFQQURvQVBFQTVBQU1BQTI4SEFRQUNBRzhFQ0FJQ0JRSnZBQVVCQlc4QUFRWUJid0FHQm1ZU0VBSUFNakFxS0NNaEdoY1FPaEk2Q2djQUR3SVBDUVVVS3hNaklnWVZFUlFXT3dFeU5qVVJOQ1lGSXlJbVBRRTBKaXNCSWdZZEFSUUdCd1lqSWdZVkVSUVdNeFlYRmhjV0Z4WXpNamMyTnpZOUFUUW15bUFNRVJFTU1DQXRFZ0o1Y3g4dUxTQXdDeElzSkNZdERCRVBEQ2tuR0Nvdkdpd3dWekZESWlndEFiNFJEUDVHQ3hJdUh3R0tEQkVUTGgvQUlDMFJESE16WFJ3ZUVReitnQXdSQWdrRkRROEZDUW9PSlN0UDhDQXRBQUFBQUFJQUFQK1FBOElETEFBZkFFTUFSMEJFTUFFRkJnRkhBQVlGQm04SEFRVUFCVzhDQ0FJQUJBQnZBQVFCQkc4QUFRTURBVlFBQVFFRFdBQURBUU5NQWdBK1BUVXlLaWtpSVJvWEVnOEtCd0FmQWg4SkJSUXJKU01pQmgwQkZBWWpJU0ltUFFFMEppc0JJZ1lWRVJRV015RXlOalVSTkNZRkZqSTNBVFkwTHdFbUlnOEJCaVkxRVM0Qkt3RWlCaFVSRkFZdkFTWWlEd0VHRkJjRHBUb0xFaEVNL1lZTUVSSUxPZ3NSTFI4REFpQXRFdjR4Q0JnSUFRUUlDQ2tJRndsc0NCZ0JGQW82Q3hJWUNHd0pGd2dwQ0FqK0VndkFEQkVSRE1BTEVoSUwvdndnTFM0ZkFRUUxFbjhKQ1FFRUNCY0pLQWtKYXdrSkRRR2FDeElTQy81b0RRa0phd2tKS2drWENBQUFBQUFCQUFBQUFBUERBcVFBRndBa1FDRUFBZ0FDYndBQUFRQnZBQUVEQXdGVUFBRUJBMWdBQXdFRFRCY1RFeFlFQlJnckpRRW1ORDhCTmpJZkFSWXlOd0UyTWg4QkZoUUhBUVlpQVcvK3d3Z0lLZ2taQ2U0R0VRWUIwd2taQ1NvSUNQM2dDUmtoQVQ4SkdRZ3JDQWp4QlFVQjF3a0pLZ2dhQ1AzYUNnQUFBUUFBLzdVQzd3TUZBQmNBRVVBT0FBQUJBRzhBQVFGbUh4WUNCUllyQlFFbU5EY0JOaklmQVJZVUJ3RUdGQmNCRmhRUEFRWWlBcEwrY0FrSkFaQUlHZ2dxQ1FuK3d3Z0lBVG9JQ0NzSEYwTUJpZ2taQ0FHTENBZ3JDQm9JL3NvSUdRbit5Z2dhQ0NvSEFBQUFCQUFBLzVBRHdnTXNBQlVBTEFCQ0FGZ0FUMEJNVVVnT0JRUUJBRHN5SlJ3RUFnUUNSd2NJQWdBQkFHOEFBUVlCYndBR0F3WnZBQU1FQTI4QUJBSUVid1VKQWdJQ1poZ1dBZ0JYVkV0S1FUNDFOQ01pRml3WUxBd0xBQlVDRlFvRkZDc0JJU0lHSHdFSEJoUWZBUll5UHdFWEZqWTFFVFFtQVNFeU5pWXZBVGMyTkM4QkppSVBBU2NtQmhVUkZCWWxFVFFtRHdFbkppSVBBUVlVSHdFSEJoWXpJVEkyQVJFVUZqOEJGeFl5UHdFMk5DOEJOelltSXlFaUJnT3IvdFVPQnd4ZXJRY0hSd2dVQ2E5ZUN4WU8vSThCS1FrS0FnaGVyUWdJUndjVkNhMWdEUmNTQTRrV0MxNnRCeFVKUndjSHIxNE1CdzRCS0FrTi9HVVpDMkN2Q0JZSFJ3Z0lyVjRMQmcvKzJBb1VBeXdXQzE2dEJ4VUpSd2NIcjE0TUJ3NEJLQWtOL0dRTUVnZGdyd2dXQjBjSUNLMWVDd1lQL3RnS0ZSY0JLdzRIREY2dENBaEhCeFVKcjE0TEZnNERjZjdZRHdZTFhxMEhCMGNJRkFtdFlBMFlFd0FBQUFBQ0FBRC9oZ1BMQXpFQU9nQndBQXEzQUFBQVppUUJCUlVySlM4QkppY21CZzhCRGdFbUp5NEJOajhCTmpjMkZ4WVhGaGNlQVQ4Qk5pY21Md0VtSnlZbkpnWUhCZzhCRGdFWEZoY1dGeFkyUHdFMk5DWUJKaWNtQmc4QkJoWVhGaGNXUHdFK0FSWVhIZ0VHRHdFR0J3WW5KaWNtSnk0QkR3RU9BUmNXRnhZWEhnRTJOelkvQVRZM05pWUNDeWdQRVFrRkRnUUpIRWxMSENBWUV4MlNHeWN2TFNBU0Nna0dGZ2MyQ3drR0RnY2RFU1kxTFY0b0l4aU5NaWNQRHpBeVIwU01OREFHREFGYU5FVkRoakVzQ2dvTktTZ09DUW9iU2tvY0lCa1RIcElhSnpBdEhCWUtDUVlXQnpVR0FRVUlFeEljS1Z4ZEtTTVpralVSRWlnd0JnUUVBd0lEQkFvY0ZnNFpHMDVRSHBJWkRnc1JEeElLRHdvQ0NEWU1FUWdQQ0JzSkdRb0lEUllVR0kweWgwSkZNemNVRkNNME1RUVFEUUswTUE4UEtESXFDaHNDQXd3RENRa2NGZzBaRzA5UUhwSWFEQXdTREJRTERnc0NDVFlGRUFnTkVSUVJHaEVPRlJRWmtqUkhSWXNBQUFFQUFQL2JBM1VDM2dBdkFEbEFOaXNCQXdFQlJ3QUFCQUJ2QUFFQ0F3SUJBMjBBQXdOdUJRRUVBZ0lFVkFVQkJBUUNXQUFDQkFKTUFBQUFMd0F2TnhrWEhBWUZHQ3NCSmljbUp5WS9BVFkwTHdFbUlnY0JCaFFYQVJZeVB3RTJOQzhCSmpZM0ZoY1dGeFlYRkJZN0FUSTJKeTRCSnlZQmNRSURCUUlDQldzSkNTZ0pGd2orL0FrSkFRUUlGd2tvQ1FscENRZ0thbHBZTmpnR0VnczZEUTRDQjRod2RRSDJBd01IQmdrRmF3a1hDU29KQ2Y3OENCY0ovdndJQ0NrSUdBaHNDQllEQkRZMVdGdHJDeEFTRFlybFEwVUFEUUFBLzVBRG13TXNBQThBSHdBdkFEOEFUd0JmQUc4QWZ3Q1BBSjhBcndDL0FNOEF3RUM5R2dFQUFBRUNBQUZnSFFZY0JCc0ZBZ2NGQWdNSUFnTmdJQXdmQ2g0RkNBMExBZ2tPQ0FsZ0l4SWlFQ0VGRGhNUkFnOFVEZzlnSmhnbEZpUUZGQlVWRkZRbUdDVVdKQVVVRkJWWUdSY0NGUlFWVE1MQXNyQ2lvSktRZ29CeWNHSmdVbEJDUURJd0lpQVNFQUlBeXNmQXo4TFB1cmV3djdLL3FxZWdyNkt2bXBlUW41S2Zpb2VBajRLUGVuZHdmM0ovYW1kZ2IySnZXbGRRWDFKZlNrZEFUMEpQT2pjd1B6SS9LaWNnTHlJdkdoY1FIeElmQ2djQUR3SVBKd1VVS3dFaElnWWRBUlFXTXlFeU5qMEJOQ1lGSXlJR0hRRVVGanNCTWpZOUFUUW1JU01pQmgwQkZCWTdBVEkyUFFFMEppRWpJZ1lkQVJRV093RXlOajBCTkNZRkl5SUdIUUVVRmpzQk1qWTlBVFFtSVNNaUJoMEJGQlk3QVRJMlBRRTBKaUVqSWdZZEFSUVdPd0V5TmowQk5DWUZJeUlHSFFFVUZqc0JNalk5QVRRbUlTTWlCaDBCRkJZN0FUSTJQUUUwSmlFaklnWWRBUlFXT3dFeU5qMEJOQ1lGSXlJR0hRRVVGanNCTWpZOUFUUW1JU01pQmgwQkZCWTdBVEkyUFFFMEppRWpJZ1lkQVJRV093RXlOajBCTkNZRGZ2enNEQkVSREFNVURCRVIvWTJ0REJFUkRLMExFaElCS2EwTUVSRU1yUXNSRVFFb3JRc1NFZ3V0REJFUi9ZMnREQkVSREswTEVoSUJLYTBNRVJFTXJRc1JFUUVvclFzU0VndXREQkVSL1kydERCRVJESzBMRWhJQkthME1FUkVNclFzUkVRRW9yUXNTRWd1dERCRVIvWTJ0REJFUkRLMExFaElCS2EwTUVSRU1yUXNSRVFFb3JRc1NFZ3V0REJFUkF5d1NDMkFNRVJFTVlBc1M1eElMT2dzU0VnczZDeElTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDem9MRXNBU0N6b0xFaElMT2dzU0VnczZDeElTQ3pvTEVoSUxPZ3NTRWdzNkN4TEJFUXc1REJFUkREa01FUkVNT1F3UkVRdzVEQkVSRERrTUVSRU1PUXdSd0JJTE9nc1NFZ3M2Q3hJU0N6b0xFaElMT2dzU0VnczZDeElTQ3pvTEVnQUFBUUFBQUFBRE5BSlBBREFBT1VBMkpRNENBQUVaQVFRQUFrY3RCUUlCUlFVQkJBQUVjQUlCQVFBQUFWUUNBUUVCQUZnREFRQUJBRXdBQUFBd0FEQTJIaVlvQmdVWUt5VWlKeVluQXdjT0FTc0JJaVk5QVRRMk93RTNQZ0VlQVJjVE56NEJIZ0VmQVRNeUZoMEJGQVlyQVNJbUx3RUhEZ0VCNmdjSERBUk9RUU1QQ1ZvSURBd0lSbHdFRUJRUEFrOW9CQkFTRGdRMFdnZ01EQWh1Q1E4RUlYQUVEb0lFQmhBQk9KVUpDZ3dJRkFnTTFBa0tBZ3dLL3NUbkNRb0NDd2g0REFnVUNBd0tDRTMzQ0FvQUNBQUFBQUFEREFLS0FBOEFId0F2QUQ4QVR3QmZBRzhBandEWVFCeUZBUk1PRFFFRkFHaGdTRUFvSUFZRUJWaFFPREFZRUFZQ0F3UkhTN0FWVUZoQVBSRUJEdzRPRDJNU0VCVUREZ0FUQUE0VFlSUUJBQTBKQWdVRUFBVmdEQWdDQkFzSEFnTUNCQU5nQ2dZQ0FnRUJBbFFLQmdJQ0FnRllBQUVDQVV3YlFEd1JBUThPRDI4U0VCVUREZ0FUQUE0VFlSUUJBQTBKQWdVRUFBVmdEQWdDQkFzSEFnTUNCQU5nQ2dZQ0FnRUJBbFFLQmdJQ0FnRllBQUVDQVV4WlFETnhjQUVBaVllQ2dIMThlWGgxZEhDUGNZOXNhbVJpWEZwVVVreEtSRUk4T2pReUxDb2tJaHdhRkJJS0J3QVBBUThXQlJRckFTRWlCaFVSRkJZeklUSTJOUkUwSmdFVUJpc0JJaVk5QVRRMk93RXlGaFUxRkFZckFTSW1QUUUwTmpzQk1oWVZGeFFHS3dFaUpqMEJORFk3QVRJV0ZUVVVCaXNCSWlZOUFUUTJPd0V5RmhVWEZBWXJBU0ltUFFFME5qc0JNaFlWTlJRR0t3RWlKajBCTkRZN0FUSVdGUk1qTlRRbUlnWWRBU00xTkNZaUJoMEJJeUlHSFFFVUZqTWhNalk5QVRRbUF2ajkrQWdNSXhrQnVCa2pEUDZRREFnb0NBd01DQ2dJREF3SUtBZ01EQWdvQ0F5TURBZ29DQXdNQ0NnSURBd0lLQWdNREFnb0NBeU1EQWdvQ0F3TUNDZ0lEQXdJS0FnTURBZ29DQXdvTWhjaEdMUVhJUmd5R1NNTUNBSUlDQXdqQWE0TUNQN1VHU01qR1FFc0NBeis2QWdNREFnb0NBd01DR1FJREF3SUtBZ01EQWkwQ0F3TUNDZ0lEQXdJWkFnTURBZ29DQXdNQ0xRSURBd0lLQWdNREFoa0NBd01DQ2dJREF3SUFRUVVFUmNYRVJRVUVSY1hFUlFqR1JRSURBd0lGQmtqQUFBR0FBRC90d09iQXdVQUR3QWZBQzhBUHdCUEFGOEFWMEJVRGdRTkFnd0ZBQUVBYndVREFnRUdBVzhSQ2hBSUR3VUdCd1p2Q3drQ0J3ZG1VbEJDUURJd0lpQVNFQUlBV2xkUVgxSmZTa2RBVDBKUE9qY3dQekkvS2ljZ0x5SXZHaGNRSHhJZkNnY0FEd0lQRWdVVUt3RWpJZ1lWRVJRV093RXlOalVSTkNZaEl5SUdGUkVVRmpzQk1qWTFFVFFtSVNNaUJoVVJGQlk3QVRJMk5SRTBKZ0VqSWdZVkVSUVdPd0V5TmpVUk5DWWhJeUlHRlJFVUZqc0JNalkxRVRRbUlTTWlCaFVSRkJZN0FUSTJOUkUwSmdFWHJRd1JFUXl0Q3hJU0FTbXREQkVSREswTEVSRUJLSzBMRWhJTHJRd1JFZjJOclF3UkVReXRDeElTQVNtdERCRVJESzBMRVJFQktLMExFaElMclF3UkVRTUZFUXordVFzUkVRc0JSd3dSRVF6K3VRc1JFUXNCUnd3UkVReit1UXNSRVFzQlJ3d1Ivak1TQy82NURCRVJEQUZIQ3hJU0MvNjVEQkVSREFGSEN4SVNDLzY1REJFUkRBRkhDeElBQUFBQUJnQUFBQUFEd2dLbEFBOEFId0F2QUQ4QVR3QmZBRVJBUVFBQ0FRSnZDd0VKQ0Fsd0FBRUFBQU1CQUdBQUF3WUJCQVVEQkdBSEFRVUlDQVZVQndFRkJRaFlDZ0VJQlFoTVhWcFZVazFLTlRVMU5UVTFOVFV5REFVZEt4TVVCaXNCSWlZOUFUUTJPd0V5RmhVaE5DWWpJU0lHSFFFVUZqTWhNalkxQlRRbUt3RWlCaDBCRkJZN0FUSTJOU1UwSmlNaElnWWRBUlFXTXlFeU5qVUZOQ1lyQVNJR0hRRVVGanNCTWpZMUpUUW1JeUVpQmgwQkZCWXpJVEkyTlpvU0N6b0xFUkVMT2dzU0F5Z1NDLzFmREJFUkRBS2hDeEw4MkJJTE9nc1JFUXM2Q3hJQzJ4SUwvYXdNRVJFTUFsUUxFdjBsRWdzNkN4RVJDem9MRWdNb0VndjlYd3dSRVF3Q29Rc1NBazRMRVJFTE9nd1JFUXdNRVJFTU9nc1JFUXZUQ3hJU0N6b0xFaElMT2dzU0VnczZDeElTQzlNTEVoSUxPZ3NTRWdzNkN4SVNDem9MRWhJTEFBQUFBQVlBQUFBQUE4SUNwUUFQQUI4QUx3QS9BRThBWHdBOFFEa0NBUUFEQVFFRUFBRmdCZ0VFQndFRkNBUUZZQW9CQ0FrSkNGUUtBUWdJQ1ZnTEFRa0lDVXhkV2xWU1RVbzFOVFUxTlRVMU5USU1CUjByRXpRbUt3RWlCaDBCRkJZN0FUSTJOU1UwSmlNaElnWWRBUlFXTXlFeU5qVUZOQ1lyQVNJR0hRRVVGanNCTWpZMUpUUW1JeUVpQmgwQkZCWXpJVEkyTlFVMEppc0JJZ1lkQVJRV093RXlOalVsTkNZaklTSUdIUUVVRmpNaE1qWTFtaElMT2dzUkVRczZDeElES0JJTC9WOE1FUkVNQXFFTEV2ellFZ3M2Q3hFUkN6b0xFZ0xiRWd2OXJBd1JFUXdDVkFzUy9TVVNDem9MRVJFTE9nc1NBeWdTQy8xZkRCRVJEQUtoQ3hJQ2lBd1JFUXc2Q3hFUkN6b01FUkVNT2dzUkVRdlRDeElTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDOU1MRWhJTE9nc1NFZ3M2Q3hJU0N6b0xFaElMQUFBQUFRQUEvNkFEd2dNYkFDc0FFMEFRQWdFQUFRQnZBQUVCWmo0ZU13TUZGeXNCRXg0Qk15RXlGZ1lQQVE0QkZ4TVdEZ0V2QVNZaUR3RUdMZ0UzRXpZbUx3RXVBVFl6SVRJM0V6NEJGZ0lQV0FNUENRRWhEaEFDQytvSUJRTmNCQTBZQytrSEV3anJDeGtOQlZnREJRZnJDd0lSRFFFaEZnVmFCQmNYQXdQKzh3Z0pGUnNJclFZU0NmN3JEUllHQ0tvRkJhb0lCaFlOQVJVSkVnYXRDQnNWRVFFUERRa0xBQUFBQVFBQS83WUM3d01GQUJjQUVVQU9BQUVBQVc4QUFBQm1IeFlDQlJZckNRRVdGQWNCQmlJdkFTWTBOd0UyTkNjQkpqUS9BVFl5QVZnQmpna0ovbklJR1FrcUNRa0JPUWtKL3NrSkNTb0lHQUw5L25ZSUdnaitkZ2tKS2dnYUNBRTJDQm9JQVRZSUdnZ3FDQUFBQVFBQUFBQURtd0paQUJjQUlFQWRBd0VCQWdGdkFBSUFBQUpVQUFJQ0FGZ0FBQUlBVEJNVEZ4SUVCUmdyQ1FFR0lpY0JKalEvQVRZeUZ3RVdNamNCTmpJZkFSWVVBNVArZGdnYUNQNTJDUWtxQ1JrSUFUWUlHZ2dCTmdnYUNDb0lBZnorY2drSkFZNElHZ2dxQ1FuK3h3a0pBVGNKQ1NvSUdBQUFBQVFBQVArMkE5VUN1QUFrQURRQVJBQlVBRXBBUndNQkFBZ0pDQUFKYlFBQ0NRb0pBZ3B0QUFRS0JIQUFCUUFHQVFVR1lBY0JBUUFJQUFFSVlBQUpBZ29KVkFBSkNRcFlBQW9KQ2t4U1QwcEhOVFUxT0JjVEZUZ1JDd1VkS3lVbUlnOEJCaVk5QVRRbUt3RWlCaDBCRkFZaUx3RW1JZzhCQmhRZkFSWXlQd0UyTkNjQk5DWWpJU0lHSFFFVUZqTWhNalkxRlRRbUl5RWlCaDBCRkJZeklUSTJOUlUwSmlNaElnWWRBUlFXTXlFeU5qVUIxUWdZQ0VVSkdCRU1PZ3NSREJBRlJRa1hDU29KQ2QwSkZ3bmZDQWdCMVJJTC9UZ0xFUkVMQXNnTEVoSUwvZmtNRVJFTUFnY0xFaElML3JrTEVoSUxBVWNMRXU4SUNFWUlDUTMrQ3hFUkMvNEpDZ1ZHQ0FnckNCZ0kzUWtKM3dnWUNBSFZEQkVSRERrTUVSRU1yUXNSRVFzNkN4SVNDNjBMRWhJTE9nc1NFZ3NBQVFBQS81RUR3Z01yQUVrQVBFQTVBQUlCQW04REFRRUFBVzhJQVFZRkJ3VUdCMjBBQndkdUJBRUFCUVVBVkFRQkFBQUZXQWtCQlFBRlRFRS9KQlFqTFNNa0ZTTWxDZ1VkS3dFbkpnWWRBU01pSmowQk16SStBUzhCSmlJUEFRWVdPd0VWRkFZckFUVTBKZzhCQmhRZkFSWTJQUUV6TWhZZEFTTWlCaDhCRmpJL0FUWW1Ld0UxTkRZN0FSVVVIZ0UvQVRZMEE3eWdDQlBBQ1FweENRMEJCYTRGRUFXdUNBd09iUW9Kd0JNSW9BUUVvQWdUd0FrS2NRNE1DYTBGRUFhdENBc1BiUW9Kd0FvTkJLQUdBV3l0Q0FzUGJ3b0p3QW9OQktBRkJhQUlFOEFKQ25FT0RBaXVCUkFGcmdnTURtMEtDY0FUQ0tBRUJLQUlFOEFKQ25FSkRRRUdyUWNRQUFBQUJRQUEvN2NENkFNRkFBOEFId0F2QUQ4QVZRQTlRRG9BQmdBR2J3QUhBd2R3QUFBQUFRUUFBV0FJQVFRSkFRVUNCQVZnQUFJREF3SlVBQUlDQTFnQUF3SURURTFMSnpVMU5UVTFOVFV5Q2dVZEt3RTBKaU1oSWdZZEFSUVdNeUV5TmpVRE5DWXJBU0lHSFFFVUZqc0JNalkxRXpRbUl5RWlCaDBCRkJZeklUSTJOUUUwSmlzQklnWVZFUlFXT3dFeU5qVUJKZ1lkQVNNaUJoMEJGQlk3QVJVVUZqOEJOalFuQStnUkRQNjVDeElTQ3dGSERCRk5FUXo2Q3hJU0Mvb01FVTBSRFA2NUN4SVNDd0ZIREJIK014SUxPZ3NTRWdzNkN4TCttZ2tTZlFzU0VndDlFd2lmQlFVQ2RRc1NFZ3M2Q3hJU0MvNXNEQkVSRERrTUVSRU1BU0FNRVJFTU9nc1JFUXNCbEF3UkVRejg3QXdSRVF3Q1dBZ0xEbkFSRERvTEVYSU9EQW10Qmc4R0FBQUFBZ0FBLzdjRGRRSzRBQThBTkFCc1M3QVJVRmhBSkFVQkF3UURid0FFQWdSdkJ3RUNBQUFDWXdZQkFBRUJBRlFHQVFBQUFWa0FBUUFCVFJ0QUl3VUJBd1FEYndBRUFnUnZCd0VDQUFKdkJnRUFBUUVBVkFZQkFBQUJXUUFCQUFGTldVQVhFUkFDQUN3cEl5RWJHQkEwRVRRS0J3QVBBZzhJQlJRckpTRWlCaDBCRkJZeklUSTJQUUUwSmlVbUp5NEJOUkUwTmpzQk1oWVZFUlFlQVJjV1BnRTFFVFEyT3dFeUZoVVJGQWNHQndZRFdQMDRDeElTQ3dMSUN4SVMvb1JIUERsRUZoQW5FQlltUWlndFN5d1dFQ2NRRmljbVFFSXFFUXM2REJFUkREb0xFVTBFSnlaOVJ3RUdFQllXRVA3NEtVY3RBZ01vU1N3QkRSQVdGaEQrODB4QVBpTWtBQUFBQlFBQUFBQUROQUppQUJrQU1RQTZBRU1BVEFCYlFGZ0xBUUVBRVFFQ0F3SkhBQUFCQUc4SkFRRUlCZ0lFQXdFRVlBd0hDd1VLQlFNQ0FnTlVEQWNMQlFvRkF3TUNXQUFDQXdKTVJVUThPek15R3hwSlNFUk1SVXhBUHp0RFBFTTNOakk2TXpvc0tob3hHekVuRFFVVkt3RW1OelkxTkM0Qkl5SUdCeDRDRlJRSE5qYzJId0VXTmljQklnNEJGUlFYRmc4QkJoWS9BVFlYRmpNeVBnRTBMZ0VISWlZME5qSVdGQVl6SWlZME5qSVdGQVl6SWlZME5qSVdGQVlERndJRUd6dGxQQ1pISFQ1ak9SVWVHd2NGUUFnTkF2NWxQR1U3SEFNQkZRTU5DVUFJQkRVL1BHVTdPMlcwRUJnWUlSY1haeEFZR0NFWEYyY1FHQmdoRnhjQkhRZ0VNVFk1WURrWkZnMU5iajgzTHdnUUJBTVhBdzBKQVNNNVlEazNNQWNGUXdrTkF4Y0NBeDg1WUhKZ09mb1lJUmNYSVJnWUlSY1hJUmdZSVJjWElSZ0FBQUFBQmdBQUFBQURBZ0tVQUJJQUtnQTZBRW9BV2dCb0FIVkFjaGdCQmdRekt3SURBQ2dCQ3dOVFN3SUtDME03QWdnSkJVY0FBQVlEQmdBRGJRQUVEQUVHQUFRR1lBY05BZ01BQ3dvREMyQUFDZ0FKQ0FvSllBQUlBQVVDQ0FWZ0FBSUJBUUpVQUFJQ0FWZ0FBUUlCVEJVVFpXTlhWVTlOUjBVL1BUYzFMeTBsSWgwYUV5b1ZLaUkxRVE0RkZ5c2xFU0lHRlJFVUZqTWhNalkxSXlJbkppY21BU01pSmowQk5DWXJBU0lHRlJFVUZqTWhNalk5QVRRbUpUUTJPd0V5RmgwQkZBWXJBU0ltTlJjVUJpc0JJaVk5QVRRMk93RXlGaFUzRkFZckFTSW1QUUUwTmpzQk1oWVZOeWNtSWdZZEFSUVdPd0V5TmpRQkloa2pJeGtCTEJrajhDc1JIZzRRQWN4a0dTTU1DS0FaSXlNWkFTd1pJd3ordUF3SVBBZ01EQWc4Q0F6Y0RBaTBDQXdNQ0xRSURDZ01DTndJREF3STNBZ01URndFREFnWUVFSUdDTndCUUNNWi9vUVpJeU1aQkFnWUhBRThJeGxrQ0F3akdmNkVHU01qR2ZBSURDZ0lEQXdJRkFnTURBandDQXdNQ0JRSURBd0laQWdNREFnVUNBd01DS1JjQkFnR1FoQVlDQXdBQVFBQS83VURud01GQUVFQUprQWpBd0VBQVFCdkFBRUNBZ0ZVQUFFQkFsZ0FBZ0VDVEFJQVBEazBNUUJCQWtFRUJSUXJFek15RmgwQkZCWTNOamMrQVJjV0Z4NEJGeFlHQnc0QkJ5NEJQUUUwTmpjK0FUYzJOell1QVNjbUp5WUdCd1lIQmhZN0FUSVdIUUVVQmlNaElpWTFFVFEyYWpvTEVRMEtDUXRJd1doSlBsZGhBZ0k2TnpTR1NnOFVEd3hGZFNVV0NROFdSemNwSUUyU05nd0xCQThPaHdzUURndituZ29QRVFNRkVReUdEZ2dJREFkSk9SUVBLVG15WlU2Vk9EZEFCZ0lTRFRrTUR3SUdTVDRsSkQ5N1ppRVhDQk1vTmdzUUN3d1NDendMRUE4S0FWNE1FUUFBQUFBR0FBRC90d1BDQXdVQUR3QWZBQzhBUHdCVUFIZ0Eva3V3RVZCWVFGd0FBUW9JQ2dFSWJRQUFDQU1EQUdVQUNRSUxBZ2tMYlFBS0ZBRUlBQW9JWUFBREVRRUNDUU1DWVJVQkN3QU1CUXNNWUJJQkJBQUZEUVFGWUFBTkFCQUdEUkJnQUE4SERnOVVFd0VHQUFjT0JnZGdBQThQRGxnQURnOE9UQnRBWFFBQkNnZ0tBUWh0QUFBSUF3Z0FBMjBBQ1FJTEFna0xiUUFLRkFFSUFBb0lZQUFERVFFQ0NRTUNZUlVCQ3dBTUJRc01ZQklCQkFBRkRRUUZZQUFOQUJBR0RSQmdBQThIRGc5VUV3RUdBQWNPQmdkZ0FBOFBEbGdBRGc4T1RGbEFOMWRWUVVBeU1DSWdFaEJ6Y1hCdWFXWmhYMTVjVlhoWGVFOU1SMFJBVkVGVU9qY3dQekkvS2ljZ0x5SXZHaGNRSHhJZk5UTVdCUllyQVJVVUJpTWhJaVk5QVRRMk15RXlGZ0VoTWpZOUFUUW1JeUVpQmgwQkZCWUZJU0lHSFFFVUZqTWhNalk5QVRRbUJ5RWlCaDBCRkJZeklUSTJQUUUwSmdFekZSUVdPd0V5TmpVUk5DWXJBU0lHSFFFVUZoTWpJZ1lkQVJRV093RVZJeUlHSFFFVUZqc0JNalk5QVRRbUt3RTFNekkyUFFFMEpnUENFZ3Y5K1F3UkVRd0NCd3NTL2R3Qldnc1NFZ3YrcGd3UkVRSVQvZmtNRVJFTUFnY0xFaEs0L3FZTUVSRU1BVm9MRWhMOVFEQVNDeFFMRVJZUVZ3c1JFYStrQ3hFUkMzMXpFQllXRUtNTUVSRU1mWFFRRmhZQzFUb0xFUkVMT2dzU0V2N2VFZ3M2Q3hJU0N6b0xFcTBSRERrTUVSRU1PUXdSd0JJTE9nc1NFZ3M2Q3hJQ1ovQU1FUkVNQVJjUUZoRU1Fd3NTL29BU0N4TU1FVTBYRUpvUUZoRU1Fd3NTVFJZUW1oQVhBQVFBQVArUUEzVURNQUFnQUNJQU1nQkdBRXhBU1I0QkFBRkdPd0lHQkFKSEFnY0NBQUVFQVFBRWJRQUVCZ0VFQm1zQUF3QUJBQU1CWUFBR0JRVUdWQUFHQmdWWUFBVUdCVXdDQURnMU1DMG9KUm9ZRVE0SkNBQWdBaUFJQlJRckV6TXlQUUUwUGdFWEhnSVZOUlE3QVRJOUFUUW5KaWNtQndZSERnRUhIZ0VuRlFVMEppTWhJZ1lWRVJRV015RXlOalVsRmdZckFTSW1Qd0V1QVQ0Q0hnRVZGQVlIMUUwVE9GODNNbEV2RkUwVExDeEpTMWRRUkVGT0FnSUxEUUsxTFNEOW1COHVMaDhDYUNBdC90Z0NEQXFNQ2dzQ0loWVdDaWc3TlNBVkV3SGxFUUkyV3pNRUF6aGFNd1lSRVFKV1NVY29LUU1FTENxTFVRZ0pFUWlqSUMwdElQNlNIeTR1SDBBSkVBNExjdzh4T0NnTEZpMGRGeWdNQUFBQUFRQUEvN2NEd3dNRkFCY0FHRUFWQWdFQUFRQnZBQUVCWmdJQURnc0FGd0lYQXdVVUt3RWhJZzRCRndFV0ZSRVVGanNCTWpZMUVUUTNBVFl1QVFPaC9Lb09FZ0VJQVhVUkV3dzZDeEFWQVhrSUFSSURCUklhQ3Y1TUZCNys2d3dSRVF3QkZSc1hBYlFLR2hJQUFRQUFBQUFEbkFKWEFCY0FJRUFkQXdFQkFnRndBQUFDQWdCVUFBQUFBbGdBQWdBQ1RCTVRGeElFQlJnck53RTJNaGNCRmhRUEFRWWlKd0VtSWdjQkJpSXZBU1kwVlFHS0NCb0lBWW9KQ1NvSUdnait5Z2dhQ1A3S0NCa0pLZ2ZBQVk0SkNmNXlDQmtKS2drSkFUc0pDZjdIQ1FrcUNSY0FBZ0FBLzVBRHdnTXNBQlFBUkFBNlFEY0lBUUFGQUc4SEFRVUdCVzhBQmdNR2J3QURBZ052QkFFQ0FRSnZBQUVCWmdFQVBEczROelF6SkNNZ0h4d2JDd29BRkFFVUNRVVVLd0VpQndZSEJoUVhGaGNXTWpjMk56WTBKeVluSmdNWEZoUVBBUVlpTHdFbUlnOEJCaUl2QVNZMFB3RTJOQzhCSmpRL0FUWXlId0VXTWo4Qk5qSWZBUllVRHdFR0ZBSDBmbXRwUEQ4L1BHbHIvR3hvUFQ4L1BXaHNJSllHQmpZRkVBV1dCaEFGbGdZUUJUWUdCcFlHQnBnR0JqWUZFQWFZQlJBR2xnVVFCVFlHQnBZRUF5dy9QV2hzL0d4b1BUOC9QV2hzL0d4b1BULytJNVlHRUFVMkJnYVdCZ2FXQmdZMkJSQUdsZ1VRQnBnRkVBVTJCZ2FZQlFXV0JnWTFCaEFGbGdZUUFBRUFBUC92QThFQ3pRQWpBQzFBS2dBQ0F3SnZBQUVBQVhBQUF3QUFBMVFBQXdNQVdBUUJBQU1BVEFJQUhoc1RFZ3NLQUNNQ0l3VUZGQ3NUSVRJV0R3RUdGQjhCRmpJM0FUWTBKd0VtSWc4QkJoUWZBUllHSXlFaUJoMEJGQlpCQW44TkNRbTRDUWtxQ1JjSUFWRUpDZjZ2Q0JjSktBa0p1QWtKRGYyQkN4RVBBU1FZQ0xrSUdBZ3JDQWdCVXdnWUNBRlJDQWdwQ0JjSnVRb1lFQXM2REJNQUFBQUFBZ0FBLzVBRHdnTXNBQ01BU2dCS1FFY0FBd1VDQlFNQ2JRQUNCQVVDQkdzSUFRQUFBUVlBQVdBQUJnQUZBd1lGWUFBRUJ3Y0VWQUFFQkFkWUFBY0VCMHdDQUVWQ1BUbzFNaTBxSGhzVEVnb0hBQ01DSXdrRkZDc0JJU0lHSFFFVUZqc0JNaFlIQVFZVUh3RVdNamNCTmhZZEFSUVdPd0V5TmpVUk5DWURCd1lkQVJRR0l5RWlKalVSTkRZN0FUSTJQd0UySmlNaElnWVZFUlFXTXlFeU5qVVJOQ1lEcWY2UURCSVNESmdPQ2dyK3VRa0pLQWtYQ1FGR0NSWVVDemdMRWc3NlFSSVJDLzVzREJFUkROME1GUWRDQ0FrTi9vTWZMUzBmQWhzZ0xSZ0RMQTRMT2d3VkZnbit1Z2tYQ1NnSkNRRkhDQWtObUFzVkZBd0JiZzBPL2p4RUVCamJEQkVSREFHVUN4RUpDVUVKR0MwZy9lVWdMUzRmQVgwTkNRQUFCUUFBLzdjRDZBTUZBQlVBSlFBMUFFVUFWUUJMUUVnQUNBSUlid0FKQlFsd0FBSUFBd0FDQTJBR0NnSUFCd0VCQkFBQllBQUVCUVVFVkFBRUJBVllBQVVFQlV3QkFGTlFTMGhEUURzNE16QXJLQ01nR3hnUURnQVZBUlVMQlJRckFTTTFOQ1lQQVFZVUh3RVdOajBCTXpJMlBRRTBKaVUwSmlNaElnWWRBUlFXTXlFeU5qVUROQ1lyQVNJR0hRRVVGanNCTWpZMUV6UW1JeUVpQmgwQkZCWXpJVEkyTlFFMEppc0JJZ1lWRVJRV093RXlOalVCTzNzVENKOEVCSjhKRW5zTUV4TUNvUkVNL3JrTEVoSUxBVWNNRVUwUkRQb0xFaElMK2d3UlRSRU0vcmtMRWhJTEFVY01FZjR6RWdzNkN4SVNDem9MRWdHcmNROExDSzBHRUFXdENRd09iaEVMT2d3Unlnc1NFZ3M2Q3hJU0MvNXNEQkVSRERrTUVSRU1BU0FNRVJFTU9nc1JFUXNCbEF3UkVRejg3QXdSRVF3QUF3QUEvNUFEZFFNd0FBRUFMQUJBQUVoQVJVQTFBZ1lBQVVjQUFnRUFBUUlBYlFRSEFnQUdBUUFHYXdBREFBRUNBd0ZnQUFZRkJRWlVBQVlHQlZnQUJRWUZUQU1DTWk4bkpCOGVHUmNRRGdrSEFpd0RMQWdGRkNzVEZRVWhOVFErQVRjMkhnRVhIZ0U3QVRJMkp5NEJKeVlIQmdjT0FRY1ZJZ1lWRVJRV015RXlOalVSTkNZREZnWXJBU0ltUHdFdUFUNENIZ0VWRkFZSHdBSm8vZ3d2VWpJdVVUc01BZ29IVHdnTUFROWNRa1JNVUVSQlRnSWZMaTRmQW1nZ0xTMzdBZ3dLakFzTEF5SVhGUXdvT3pVZ0ZSTUI5Z2hXV2pOWU9BTURJa0VxQmdvUENFbHpIeDhEQkN3cWpGQmVMU0Qra2g4dUxoOEJiaUF0L29VSkVBOEtjeEF4TnlnTEZpMGRGeWdNQUFJQUFBQUFBelFDZ0FBUEFFZ0FWRUJSTVJZQ0J3SUJSd0FFQWdSdkJnc0NBZ2tCQndNQ0IyQUZBUU1BQ0FBRENHQUtBUUFCQVFCVUNnRUFBQUZZQUFFQUFVd1JFQUVBUlVSQVBqczZOell2TFNRakdoZ1FTQkZJQ2djQUR3RVBEQVVVS3lVaElnWWRBUlFXTXlFeU5qMEJOQ1lUSWdZVkZCWVhEZ0VuTGdFbk5EYytBVFUwSmlJR0ZSUVdGeFlWRGdFSEJpWW5QZ0UxTkNZaUJoUVdNeGNlQVRNaE1qWS9BVEkyTkNZQ3gvNWFCd3dqR1FGVUdTTUxLUmtqQ3dvTk55SW9PUUlDRVJVak1pTVZFUUlDT1NnaU9Bd0tDeU15SXlNWkhBRUxCd0dxQndvQ0hCa2pJNkFMQ0FFWkl5TVpBUWdMQVpvakdRMFpDQjRqQVFJNUtCRUlCeDRUR1NNakdSSWZCd2dSS0RrQ0FpUWVDQmtOR1NNak1pUFdCd2tKQjlZak1pTUFBQUFBQVFBQUFBQURHUUo2QUJ3QUdFQVZBZ0VBQVFCdkFBRUJaZ0VBRkJJQUhBRWNBd1VVS3dFaUJ3WUhCaFVVRnhZUEFRWVdQd0UyRnhZek1qYzJOell1QVNjbUFleFNSa01vS1NZRkF4d0VFZ3hZQ1FoSVZsSkdReWdwQVZGRVJnSjVKaVZBUVV4SVFRZ0lXUXdSQkI4REJTb21KVUJCbUlFbEpnQUFBQUVBQUFBQUEyWUNSUUFNQUJoQUZRQUJBQUZ2QWdFQUFHWUNBQWdIQUF3Q0RBTUZGQ3NsSVNJdUFUY0JOaklYQVJZR0EwajlXQW9PQVFjQlRRa2ZDQUZSQ2c1M0RoUUpBWmNNRFA1cERoMEFBZ0FBLzQ4RHdnTXpBQjBBS2dBa1FDRUJBUUlCRmdFQUFnSkhBQUVDQVc4QUFnQUNid0FBQUdZb0p5SWhHUmdEQlJRckJRRTJOelluTGdNSERnRUhCaDRDRnhZM05qY0JGakkvQVQ0QkFUUStBVEllQVJRT0FTSXVBUU82L3Y0b0VSTUtDMXVOcFU1TGNSd2NFRmFKVVVoRlFqZ0JBQWtYQ1NnSkFmellRM0tHY2tORGNvWnlReFVCQURoQ1JVaFNpVlVRSEJ4eVNrNm1qRndMQ2hJUktQOEFDQWdvQ1JrQjNrTnlRME55aG5KRFFuSUFBZ0FBLzM4RDBRTTdBQlFBUkFBMVFESTFBUU1FTFFFQUF4MEJBUUFEUndBRUF3UnZCUUVEQUFOdkFnRUFBUUJ2QUFFQlprRS9PVGN5THlvbkloOFpGd1lGRkNzQkppY21CdzRCQndZWEhnRVhGamMrQVRjMkp5WURGQVlyQVNJR0hRRVVCaXNCSWlZOUFUUW1Ld0VpSmowQk5EWTdBVEkyUFFFME5qc0JNaFlkQVJRV093RXlGaFVETzFsNWRYVjVzUjhmSHgreGVYVjFlTEVnSHg4ZmF3c0kxQWNNREFkTkNRc0tDZE1KQ3cwSDB3a0tEUWROQnd3S0NkUUhEQUtsV0I4Zkh4K3hlWFYxZWJJZ0hoNGdzbmwxZFhuKzdBa0xDd2pUQncwTENkTUpDZ3NKVFFjTUNnblVCd3dMQ05RSkNnd0hBQUVBQVArU0E4SURMQUJ6QUlWQWdoNFZBZ0VESnd3Q0FBRmhSZ0lLQ1ZoUEFnd0tCRWNBQkFNRWJ3VUJBd0VEYndjQkFRQUJieEFCQ2drTUNRb01iUTRCREEwSkRBMXJBQTBOYmdnR0FoSUVBQWtKQUZRSUJnSVNCQUFBQ1ZnUkR3c0RDUUFKVEFFQWJteG1aV05pVzFwVlVrMU1SVVJDUVRzNU5ESXNLeWtvSVNBYkdCTVNDd29JQndCekFYTVRCUlFyQVNNM05qUXZBU1lpRHdFak5UYzJOQzhCSmlJUEFUVTBKaXNCSWdZZEFTY21JZzhCQmhRZkFSVWpKeVlpRHdFR0ZCOEJJeUlHSFFFVUZqc0JCd1lVSHdFV01qOEJNeFVIQmhRZkFSWXlQd0VWRkJZN0FUSTJQUUVYRmpJL0FUWTBMd0UxTXhjV01qOEJOalF2QVRNeU5qMEJOQ1lEcFl0VkNBZ2hCeElHbEcyVUJ3Y2hCeElHVkJJTE9nc1NWQWNTQmlFSEI1UnRsQWNTQmlFSEIxV0xDeEVSQzR0VkJ3Y2ZDQkVHbEcrVUJ3Y2ZDQk1HVkJBTE9nc1VWQWdSQmg4SUNKSnRsQWdTQlI4SUNGT0xDeElTQVpoVUNCRUdJUWNIbEcyVUNCSUZJUWdJVllzTEVoSUxpMVVJQ0NFSEVnYVViWlFIQnlFSEVnWlVFZ3M2Q3hKVUJ4SUdId2NIbEd1VUJ4TUZId2NIVllzTUZSWUxpMVVIQng4SEVnYVFiWlFIQng4SUVRWldFZ3M2Q3hJQUFBQUNBQUQvMmdQRkF0MEFIUUE3QUNoQUpRNEJBUUFWQVFJQkFrY0FBQUVBYndNQkFRSUJid0FDQW1ZZkhqSXdIanNmT3lrRUJSVXJKU1kzTmpVMEp5WW5KaU1pQndZSEhnRVhGaFVVQnpZM05oOEJGalluQVNJSEJnY0dGUlFYRmc4QkJoWS9BVFlYRmpNeU56WTNOalFuSmljbUE1Y0RCU2t0SzBwTldENDZOeTFpb2k0d0d4c2pEZ2wxQ1FzQy9hdFlUVWtyTFNnSEJTb0RDd2wxRGdsT1cxbE1TaXN0TFN0S1RQNE5Da2hNVTBoR0tTb1dGU1lMYTFKVllFay9DUklGQXk4Q0N3a0J2Q29wUmtoVFRrWU5DblVKREFNdkF3VXRLaWxHU0tWSVJTa3FBQUFEQUFBQUFBTVJBbllBQlFBWkFFOEFaVUJpTGg4WEZnQUZCQUZMQ3dJQ0FBSkhDUUVCQndRSEFRUnRCZ0VFQUFjRUFHc0FBZ0FGQUFJRmJRQUlCUWh3Q2dFREFBY0JBd2RnQUFBQ0JRQlNBQUFBQlZnQUJRQUZUQnNhQndaSVJqTXhMU3NuSmlJZ0drOGJUeEFQQmhrSEdSSUxCUlVyQVFZVkl6UTNKU01pQmgwQkZCOEJGakkvQVRZMEx3RTFOQ1luSWdjT0FROEJJeUlHSHdFV01qOEJOaVlyQVRVK0FqTXlGaGNXQnc0Q0J3WW1KeVlQQVFZV0Z4NEJOejRDTnpZbkxnRUJHUUU4QVFFbUhnWUpCRlFGREFRVkJRVkdDUlZKUHoxTkJRRXRDZ2dHU3dVT0JFc0dDQW9zQlQxaE9FQnFHeDBIQlRsWEx6VmhJd3dLR0FNQ0JTbHJQRWQ3VEFVR0pTT0ZBWElIRFEwSGVBa0dnd1VHVkFRRUZRVU1CRWR4QmdtTUl5SjNTQW9SQjFzRkJWc0lFQW8zWERWRE9EbEJMMVk1QkFVbEpnNE5IUVFHQlNzdUFRRkdka2RRUmtSU0FBQUFCUUFBLzVBRHdnTXRBQTBBSFFBMUFFMEFaUUJGUUVJQUJRSUZid0FFQWdBQ0JBQnRBQUFEQWdBRGF3QUdBd2NEQmdkdEFBY0JBd2NCYXdBQkFXNEFBZ1FEQWxRQUFnSURXQUFEQWdOTUd4c2JGUmNjRlJFSUJSd3JBU1lpQndFR0ZCWXlOd0UyTkNjL0FUWTBMd0VtSWc4QkJoUWZBUll5SlI0QkZ4WXlOejRCTnpZMEp5NEJKeVlpQnc0QkJ3WVVBUzRCSnlZaUJ3NEJCd1lVRng0QkZ4WXlOejRCTnpZMEF4NEJGeFl5Tno0Qk56WTBKeTRCSnlZaUJ3NEJCd1lVQWg0RkVBYitOUkVpTHhFQnl3WUdVVDRJQ0NrSUdBZytCUVUyQmcvK0tUZFNFUU1SQXhGUk9BZ0lOMUlSQXhFREVWRTRCd0w1TVVjUkFoQURFRWN4QndjeFJ4QURFQUlSUnpFSTRTWTBEQUVOQVFzMUpnWUdKVFlMQVEwQkREVWxCZ0crQmdiK05CRXVJaEVCeXdZUUJUWStDQmdJS1FnSVBnWVBCallGdWhGUk9BZ0lOMUlSQXhFREVWRTRDQWczVWhFREVmNlNFRWN4Q0FneFJ4QURFQU1RUnpFSEJ6RkhFQU1TQWFvTU5DWUdCaVUxREFFTkFRczJKUVlHSmpVTEFRMEFBQVVBQVArbEE5d0RJUUFqQURNQVFBQk5BSmdCVmtBZ0lSTU1DUUlGQ0FBc0FRMEhkVzBDRGcyU1R3SVFEQ1FCQmhBWkFRVUdCa2RMc0JKUVdFQlBDd0VKQUFsdkJBSVJBd0FJQVFCakV3b1NBd2dCQVFoakFBMEhEZ2NORG0wQURnOEhEZzlyQUJBTUJnWVFaUU1CQVFBSERRRUhZUUFQQUF3UUR3eGdBQVlGQlFaVUFBWUdCVmtBQlFZRlRSdExzQnhRV0VCT0N3RUpBQWx2QkFJUkF3QUlBRzhUQ2hJRENBRUJDR01BRFFjT0J3ME9iUUFPRHdjT0Qyc0FFQXdHQmhCbEF3RUJBQWNOQVFkaEFBOEFEQkFQREdBQUJnVUZCbFFBQmdZRldRQUZCZ1ZORzBCUEN3RUpBQWx2QkFJUkF3QUlBRzhUQ2hJRENBRUJDR01BRFFjT0J3ME9iUUFPRHdjT0Qyc0FFQXdHREJBR2JRTUJBUUFIRFFFSFlRQVBBQXdRRHd4Z0FBWUZCUVpVQUFZR0JWa0FCUVlGVFZsWlFERkNRVFUwQVFDV2xJU0NlWGR4YjE1Y1NFZEJUVUpOT3pvMFFEVkFNQzRvSmgwYkZSUVFEd3NLQmdVQUl3RWpGQVVVS3dFakZSWU9BU0l1QVRjMUlSVVdEZ0VpTGdFM05TTWlCaFVSRkJZeklUSTJOUkUwSmdNVUJpTWhJaVkxRVRRMk15RXlGaFVsSWlZOUFUUStBUllkQVJRR0lTSW1QUUUwUGdFV0hRRVVCZ0UxTkNZakppY3VBVDhCUGdFWEZoY3lOalFtSnlZbkpqVTBOamMrQVQwQk5EWTdBVElXSFFFVUZqTVdGeDRCRHdFT0FTY21JeUlIQmhRV0Z4NEJGQVlIRGdFZEFSUUdLd0VpSmdQT1hnSUxHQnNZQ3dMOXdnSUxHQnNZQ3dKZUJnY0lCUU8wQlFnSFNRZ0YvUE1GQ0FnRkF3MEZDUDBjRGhRVUd4UVRBb3dPRXhRYkZCVCtnQWNGSlNJRUJBRUtBUXNHSlNnWUhCc2ZNQmdiTENjRUJnZ0ZHd1VJQndVZEd3VUZBZ2tCQ3dVZkloa01DaDBrTVNvdEtnUUdDQVViQlFnQ3VROE9HUThQR1E0UER3NFpEdzhaRGc4SkJ2MEpCUWdJQlFMM0JnbjlTZ1VJQ0FVQ0NRVUlDQVY3RlE1VkRoTUJGQTVWRGhVVkRsVU9Fd0VVRGxVT0ZmMnFHd1VJQXc4Q0NBVW1CZ1lERVFFU0h4WUxFQlVaSlNNeUNnRUhCUndGQ0FnRkZ3VUlBZ29DQ1FVa0JnVUNEUWtJR2hVTkVUQkpOZ2tCQndVZ0JRZ0lBQUFBQUFZQUFBQUFBeVVDakFBY0FDNEFNUUJEQUVZQVdRQ3ZRQkFYQ2dFREJnSUNBUUFIVFFFS0NRTkhTN0FWVUZoQVBRQUNCZ0p2QUFZQkJtOEFBUU1CYndBRENBTnZBQUFIQkFrQVpRQUlBQWNBQ0FkZ0FBVUFCQWtGQkdBTEFRa0tDZ2xVQ3dFSkNRcFpBQW9KQ2swYlFENEFBZ1lDYndBR0FRWnZBQUVEQVc4QUF3Z0Rid0FBQndRSEFBUnRBQWdBQndBSUIyQUFCUUFFQ1FVRVlBc0JDUW9LQ1ZRTEFRa0pDbGtBQ2drS1RWbEFGRWhIVVU5SFdVaFpGU2tURWlrY0p5VWtEQVVkS3dFSEVSUUdLd0VpSmpVUkJ5TWlMZ0UyUHdFK0FUTXlGemMySGdFR0FUWXZBUzRCSWdZUEFRWVhNUllYRmpNeUp4Y2pKUzRCSWdZUEFRWVhNUllYRmpNeU56WXZBUmNqQnlJR0J3WWRBUlFXTXlFeU5qMEJOQ2N1QVFNRzlBVUZLQVFHN0FRTEVnTVBETG9OTHh3cEhjVU1GUU1QL29vTEIxQUREeElQQkZBR0NBd1NJeWM1Tnl0V0FjTUVEeElQQkZBR0NBd1NJeWM0TVFzSGF5dFdreXBSSGdjTUNBRVlDQXdISGxFQ1RpVCtxQVFHQmdRQlR5TVBGeFVCSEJnZEhSd0NEeGtVL28wUEVMNElDZ29Jdmc0T0VnOGV3R2Y4Q0FvS0NMNE9EaElQSGp3UEVHVm5xaDBaQndnQkNBd01DQUVKQmhrZEFBSUFBQUFBQXlBQ2lnQU9BQzhBSUVBZExRc0VBd0VBQVVjQ0FRQUJBRzhBQVFGbUFRQUlCd0FPQVE0REJSUXJBU0lHRkJjUkZCWXlOalVSTmpRbUJRWUhCaWNtSnlZbkpnY0dGUkVVRmpjMkZ4WVhGaGNXTnpZM1BnRTFFVFFtQVFRWkl4UVlJUmNVSXdIMEp5a2hLQmd1UEI4MExnMFFDaW94SFRndkdTZ2lLaWdFQmdvQ2lpTTBFdjQ1RUJnWUVBSEhFalFqYkJRRkJBY0ZEUkVEQmhFRkR2NytDZ3dERFFZRUVBMEVDQVVGRmdJS0JRRVBCZ1lBQUFBQUFRQUFBQUFEeEFKdkFDWUFMMEFzSEFFREJCc09Cd01BQXdKSEFBUURCRzhBQXdBRGJ3QUFBUUJ2QUFFQ0FXOEFBZ0ptR0JjVkpCUUZCUmtyQVRBeEZBWWlMd0VIQmlNaUppOEJCUVlpTHdFbU5EY1ROaklmQVRjbkpqUTJOeUVlQVIwQkE4UU5GQVpuN3hRYkRSb0lrZjhBQmhRR0N3Y0gvQlEzRkpDU1hnY05DUUU4RWhrQkJna05CMmZORkFzSnBPRUdCZ3dIRVFjQldSUVVrS2hXQnhNTkFnSVpFd0lBQlFBQS8yb0Q2QU5UQUJRQUtRQStBRXNBVkFCZ1FGME1BUVFBQndnRUIyQU9BUWdBQ1FZSUNXQU5BUVlBQlFJR0JXQUFBd01BV0FvQkFBQU1TQXNCQWdJQldBQUJBUTBCU1UxTVFEOHJLaFlWQVFCUlVFeFVUVlJHUlQ5TFFFczFOQ28rS3o0Z0h4VXBGaWtMQ2dBVUFSUVBCUlFyQVNJSEJnY0dFQmNXRnhZZ056WTNOaEFuSmljbUF5SW5KaWNtTkRjMk56WXlGeFlYRmhRSEJnY0dBeUlIQmdjR0ZCY1dGeFl5TnpZM05qUW5KaWNtQXlJdUFUUStBVEllQVJRT0FRTWlCaFFXTWpZMEpnSDBoM1Z4UWtWRlFuRjFBUTUxY1VKRlJVSnhkWWR0WFZzMU56YzFXMTNhWFZzMU56YzFXMTF0VWtaRktDb3FLRVZHcEVkRUtTa3BLVVJIU3pWYk5UVmJhMW8xTlZvMktEbzZVVG82QTFKRlFuRjEvdkoxY1VKRlJVSnhkUUVPZFhGQ1JmeDdOelZiWGRwZFd6VTNOelZiWGRwZFd6VTNBc0FwS1VSSHBFWkZLQ29xS0VWR3BFZEVLU24rRXpWYmExbzFOVnByV3pVQktEcFJPanBST2dBQUFBTUFBQUFBQXdJQ2lnQU9BQjBBTEFBUlFBNEpBUUlBUkFBQUFHWVdGUUVGRkNzQkZSUVdQd0UrQVQwQk5DWVBBUVluTnpZMEx3RW1JZzhCQmhRZkFSWUhKeVlHSFFFVUZoOEJGalk5QVRRQ0Vnb0Z3ZzRSQ2dYWENoVFlCUVhERGlJT3d3VUYyQW9vMXdVS0VRN0NCUW9CUlBRR0JRSnVDQjBRMndZRkFua0hPbmtEQ3dOdkNBaHZBd3NEZVFVdWVRTUdCdG9RSFFodUF3WUc4d29BQUFBQkFBQUFBUUFBZk5zRVlsOFBQUFVBQ3dQb0FBQUFBTmg2ZDZ3QUFBQUEySHAzcmYvKy8yb0Q3Z05UQUFBQUNBQUNBQUFBQUFBQUFBRUFBQU5TLzJvQUFBUG8vLzcvK2dQdUFBRUFBQUFBQUFBQUFBQUFBQUFBQUFDTUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStqLy9nUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQU5yQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBMnNBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStqLy93UG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUFBQUFBQUZ3QXVnRVlBZGdDV0FNQUEyWUQ3QVJ3QlRvRmxnWWFCdm9Ib2dmK0NGUUlkZ2phQ1NnSi9BcktDOG9NYkF6YURZSU9XQThBRUFBUVRCRDBFYjRTTGhMSUUwNFQyaFRVRldnV0hoWnFGc0lYRUJlTUdEZ1l4Qmt1R2VZYWxCdnNITzRkdkI0eUhxSWZOaCtNSUM0Z2dDRHVJVUlob2lJU0lyd2pPaVBvSkdBbEppWVdKcGdudGlnY0tKQXBCaWxzS2dJcVppcmtLOElzUEN5R0xPb3RkaTNzTGhRdVppN2dMelF2VmpCWU1RNHhYaklNTXlZenpEUStOTVExQWpVNE5lbzJvamNNT0hRNDJqbitPcTQ3VWp2eVBFWThmRHk2UFZROTJENXVQdkkvbEVCYVFOQkI3a0o4UXJKQzdrTjBROFpFVmtUeVJYaEdERVpLUm5KR3pFZEdTQ1pJbUVsQ1NnUkxoRXhpVE1CTkZFM0tUaGtBQUFBQkFBQUFqQURRQUEwQUFBQUFBQUlBVGdCZUFITUFBQURSQzNBQUFBQUFBQUFBRWdEZUFBRUFBQUFBQUFBQU5RQUFBQUVBQUFBQUFBRUFDQUExQUFFQUFBQUFBQUlBQndBOUFBRUFBQUFBQUFNQUNBQkVBQUVBQUFBQUFBUUFDQUJNQUFFQUFBQUFBQVVBQ3dCVUFBRUFBQUFBQUFZQUNBQmZBQUVBQUFBQUFBb0FLd0JuQUFFQUFBQUFBQXNBRXdDU0FBTUFBUVFKQUFBQWFnQ2xBQU1BQVFRSkFBRUFFQUVQQUFNQUFRUUpBQUlBRGdFZkFBTUFBUVFKQUFNQUVBRXRBQU1BQVFRSkFBUUFFQUU5QUFNQUFRUUpBQVVBRmdGTkFBTUFBUVFKQUFZQUVBRmpBQU1BQVFRSkFBb0FWZ0Z6QUFNQUFRUUpBQXNBSmdISlEyOXdlWEpwWjJoMElDaERLU0F5TURFNUlHSjVJRzl5YVdkcGJtRnNJR0YxZEdodmNuTWdRQ0JtYjI1MFpXeHNieTVqYjIxelppMXBZMjl1YzFKbFozVnNZWEp6WmkxcFkyOXVjM05tTFdsamIyNXpWbVZ5YzJsdmJpQXhMakJ6WmkxcFkyOXVjMGRsYm1WeVlYUmxaQ0JpZVNCemRtY3lkSFJtSUdaeWIyMGdSbTl1ZEdWc2JHOGdjSEp2YW1WamRDNW9kSFJ3T2k4dlptOXVkR1ZzYkc4dVkyOXRBRU1BYndCd0FIa0FjZ0JwQUdjQWFBQjBBQ0FBS0FCREFDa0FJQUF5QURBQU1RQTVBQ0FBWWdCNUFDQUFid0J5QUdrQVp3QnBBRzRBWVFCc0FDQUFZUUIxQUhRQWFBQnZBSElBY3dBZ0FFQUFJQUJtQUc4QWJnQjBBR1VBYkFCc0FHOEFMZ0JqQUc4QWJRQnpBR1lBTFFCcEFHTUFid0J1QUhNQVVnQmxBR2NBZFFCc0FHRUFjZ0J6QUdZQUxRQnBBR01BYndCdUFITUFjd0JtQUMwQWFRQmpBRzhBYmdCekFGWUFaUUJ5QUhNQWFRQnZBRzRBSUFBeEFDNEFNQUJ6QUdZQUxRQnBBR01BYndCdUFITUFSd0JsQUc0QVpRQnlBR0VBZEFCbEFHUUFJQUJpQUhrQUlBQnpBSFlBWndBeUFIUUFkQUJtQUNBQVpnQnlBRzhBYlFBZ0FFWUFid0J1QUhRQVpRQnNBR3dBYndBZ0FIQUFjZ0J2QUdvQVpRQmpBSFFBTGdCb0FIUUFkQUJ3QURvQUx3QXZBR1lBYndCdUFIUUFaUUJzQUd3QWJ3QXVBR01BYndCdEFBQUFBQUlBQUFBQUFBQUFDZ0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQWpBRUNBUU1CQkFFRkFRWUJCd0VJQVFrQkNnRUxBUXdCRFFFT0FROEJFQUVSQVJJQkV3RVVBUlVCRmdFWEFSZ0JHUUVhQVJzQkhBRWRBUjRCSHdFZ0FTRUJJZ0VqQVNRQkpRRW1BU2NCS0FFcEFTb0JLd0VzQVMwQkxnRXZBVEFCTVFFeUFUTUJOQUUxQVRZQk53RTRBVGtCT2dFN0FUd0JQUUUrQVQ4QlFBRkJBVUlCUXdGRUFVVUJSZ0ZIQVVnQlNRRktBVXNCVEFGTkFVNEJUd0ZRQVZFQlVnRlRBVlFCVlFGV0FWY0JXQUZaQVZvQld3RmNBVjBCWGdGZkFXQUJZUUZpQVdNQlpBRmxBV1lCWndGb0FXa0JhZ0ZyQVd3QmJRRnVBVzhCY0FGeEFYSUJjd0YwQVhVQmRnRjNBWGdCZVFGNkFYc0JmQUY5QVg0QmZ3R0FBWUVCZ2dHREFZUUJoUUdHQVljQmlBR0pBWW9CaXdHTUFZMEFCVE5rYjNSekEyRmtaQVZqYkc5elpRbHdjbWxqWldKdmIyc0VhR1ZzY0FodWIzUmxZbTl2YXdSeWIzZHpCblZ3Ykc5aFpBVmpiRzlqYXdabmNtOTFjSE1MYjNCbGJsOW1iMnhrWlhJUWNtbG5hSFJmWVd4cFoyNWZkR1Y0ZEFkd2NtOWtkV04wRFhGMVpYTjBhVzl1WDJabFpXUUhkMkZ5Ym1sdVp3UjFjMlZ5QlhKcFoyaDBERzV2ZEdsbWFXTmhkR2x2YmdSb2IyMWxDR052Ym5SeVlXTjBCMkZrWkhWelpYSUVZWEJ3Y3dSamIzQjVCV2x0WVdkbEJHOXdaVzRJYzJWMGRHbHVaM01HZW05dmJXbHVCbkpsWTI5eVpBbGhjbkp2ZDJSdmQyNERZM1YwRDJsdWMyVnlkRjkwWlcxd2JHRjBaUTF2Y0dWdVpXUmZabTlzWkdWeUNYTnBaR1ZmYkdsemRBZDZiMjl0YjNWMEJuRjFiM1JsY3d4eVpXeGhkR1ZrWDJ4cGMzUUVaMlJ2WXdkemJtbHdjR1YwQkhCaFoyVUxZM1Z6ZEc5dFgyRndjSE1IWVhKeWIzZDFjQVpoZEhSaFkyZ0haR0Y1ZG1sbGR3UnBibVp2RUdsdWMyVnlkRjkwWVdkZlptbGxiR1FGY0dGemRHVUVjMjl5ZEFOd1pHWUdjbVZ3YjNKMEJIUmhjMnNJWVhCd2NtOTJZV3dMYzI5amFXRnNjMmhoY21VR2NHVnZjR3hsQm1sMFlXeHBZd1prWld4bGRHVUVZbUZqYXdOaVlXNEZaVzFoYVd3RVltOXNaQWR3Y21WMmFXVjNCWE5vWVhKbENXUmhjMmhpYjJGeVpBWjBhR0Z1YTNNRmRHOWtZWGtLWTI5dWRISmhZM1F0TVFkemNHbHVibVZ5QlhCb2IzUnZCV1YyWlc1MEIySjFhV3hrWlhJTWFuVnpkR2xtZVY5MFpYaDBFV05sYm5SbGNsOWhiR2xuYmw5MFpYaDBCR1ZrYVhRR2JHRjViM1YwQ0hCeWFXOXlhWFI1RUhOMFlXNWtZWEprWDI5aWFtVmpkSE1IWTI5dWRHRmpkQWhqZFhOMGIyMDVNd2RsYldGcGJDMHhCM04xWTJObGMzTUhjbVZtY21WemFBOXNaV1owWDJGc2FXZHVYM1JsZUhRRVpHOTNiZ1ZqYUdGeWRBUmphR0YwQldWeWNtOXlCR3hsWm5RTGNtVnRiM1psWDJ4cGJtc0hjM1Z0YldGeWVRaGtiMk4xYldWdWRBWmtjbUZtZEhNTmMzVnRiV0Z5ZVdSbGRHRnBiQWR5WlhCc1lXTmxCR3hwYTJVSVpHOTNibXh2WVdRRlkyaGxZMnNMWTJobGRuSnZibXhsWm5RR1pYaHdZVzVrQkd4cGJtc0ZjbVZ3YkhrRmRHRmliR1VFWm1WbFpBZGxkbVZ1ZEMweERuUnBiR1ZmWTJGeVpGOXNhWE4wRkhKcFkyaDBaWGgwWW5Wc2JHVjBaV1JzYVhOMEJHeHBjM1FJWm1GMmIzSnBkR1VNWTJobGRuSnZibkpwWjJoMEMyTm9aWFp5YjI1a2IzZHVCbVpwYkhSbGNnUnRiM1psRG5KcFkyaDBaWGgwYVc1a1pXNTBDWFZ1WkdWeWJHbHVaUWhtWldWa1ltRmphd1JtYVd4bEJIVnVaRzhVY21samFIUmxlSFJ1ZFcxaVpYSmxaR3hwYzNRRWJHOWphd3BtYVd4MFpYSnNhWE4wQ1dOb1pYWnliMjUxY0FWamJHVmhjZ2RtYjNKM1lYSmtDbTVsZDE5M2FXNWtiM2NQY21samFIUmxlSFJ2ZFhSa1pXNTBCblZ1Ykc5amF3dHZjSEJ2Y25SMWJtbDBlUVJ3YjNOMEFuVndCbk5sWVhKamFBTnVaWGNHWm5KdmVtVnVDR052YlcxbGJuUnpCbkpsWTJWdWRBbHRZV2RwWTNkaGJtUVlaR2x6WTI5MWJuUnpZMmhsWkhWc1pXbGpiMjV6TFRBeUNHTjFjM1J2YlRrd0NHTjFjM1J2YlRJMkNIUnlaVzVrYVc1bkJuUmhjbWRsZEFSamRXSmxBQUFBQUFFQUFmLy9BQThBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQmdBR0FBWUFCZ0RVLzlxQTFQL2FyQUFMQ0N3QUZWWVJWa2dJRXU0QUE1UlM3QUdVMXBZc0RRYnNDaFpZR1lnaWxWWXNBSWxZYmtJQUFnQVkyTWpZaHNoSWJBQVdiQUFReU5Fc2dBQkFFTmdRaTJ3QVN5d0lHQm1MYkFDTENCa0lMREFVTEFFSmxxeUtBRUtRMFZqUlZKYldDRWpJUnVLV0NDd1VGQllJYkJBV1JzZ3NEaFFXQ0d3T0ZsWklMRUJDa05GWTBWaFpMQW9VRmdoc1FFS1EwVmpSU0N3TUZCWUliQXdXUnNnc01CUVdDQm1JSXFLWVNDd0NsQllZQnNnc0NCUVdDR3dDbUFiSUxBMlVGZ2hzRFpnRzJCWldWa2JzQUVyV1ZranNBQlFXR1ZaV1Myd0F5d2dSU0N3QkNWaFpDQ3dCVU5RV0xBRkkwS3dCaU5DR3lFaFdiQUJZQzJ3QkN3aklTTWhJR1N4QldKQ0lMQUdJMEt4QVFwRFJXT3hBUXBEc0FGZ1JXT3dBeW9oSUxBR1F5Q0tJSXF3QVN1eE1BVWxzQVFtVVZoZ1VCdGhVbGxZSTFraElMQkFVMWl3QVNzYkliQkFXU093QUZCWVpWa3RzQVVzc0FkREs3SUFBZ0JEWUVJdHNBWXNzQWNqUWlNZ3NBQWpRbUd3QW1KbXNBRmpzQUZnc0FVcUxiQUhMQ0FnUlNDd0MwTmp1QVFBWWlDd0FGQllzRUJnV1dhd0FXTmdSTEFCWUMyd0NDeXlCd3NBUTBWQ0tpR3lBQUVBUTJCQ0xiQUpMTEFBUXlORXNnQUJBRU5nUWkyd0Npd2dJRVVnc0FFckk3QUFRN0FFSldBZ1JZb2pZU0JrSUxBZ1VGZ2hzQUFic0RCUVdMQWdHN0JBV1ZranNBQlFXR1Zac0FNbEkyRkVSTEFCWUMyd0N5d2dJRVVnc0FFckk3QUFRN0FFSldBZ1JZb2pZU0Jrc0NSUVdMQUFHN0JBV1NPd0FGQllaVm13QXlVallVUkVzQUZnTGJBTUxDQ3dBQ05Dc2dzS0EwVllJUnNqSVZrcUlTMndEU3l4QWdKRnNHUmhSQzJ3RGl5d0FXQWdJTEFNUTBxd0FGQllJTEFNSTBKWnNBMURTckFBVWxnZ3NBMGpRbGt0c0E4c0lMQVFZbWF3QVdNZ3VBUUFZNG9qWWJBT1EyQWdpbUFnc0E0alFpTXRzQkFzUzFSWXNRUmtSRmtrc0ExbEkzZ3RzQkVzUzFGWVMxTllzUVJrUkZrYklWa2tzQk5sSTNndHNCSXNzUUFQUTFWWXNROFBRN0FCWVVLd0R5dFpzQUJEc0FJbFFyRU1BaVZDc1EwQ0pVS3dBUllqSUxBREpWQllzUUVBUTJDd0JDVkNpb29naWlOaHNBNHFJU093QVdFZ2lpTmhzQTRxSVJ1eEFRQkRZTEFDSlVLd0FpVmhzQTRxSVZtd0RFTkhzQTFEUjJDd0FtSWdzQUJRV0xCQVlGbG1zQUZqSUxBTFEyTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlkyQ3hBQUFUSTBTd0FVT3dBRDZ5QVFFQlEyQkNMYkFUTEFDeEFBSkZWRml3RHlOQ0lFV3dDeU5Dc0FvanNBRmdRaUJnc0FGaHRSQVFBUUFPQUVKQ2ltQ3hFZ1lyc0hJckd5SlpMYkFVTExFQUV5c3RzQlVzc1FFVEt5MndGaXl4QWhNckxiQVhMTEVERXlzdHNCZ3NzUVFUS3kyd0dTeXhCUk1yTGJBYUxMRUdFeXN0c0Jzc3NRY1RLeTJ3SEN5eENCTXJMYkFkTExFSkV5c3RzQjRzQUxBTks3RUFBa1ZVV0xBUEkwSWdSYkFMSTBLd0NpT3dBV0JDSUdDd0FXRzFFQkFCQUE0QVFrS0tZTEVTQml1d2Npc2JJbGt0c0I4c3NRQWVLeTJ3SUN5eEFSNHJMYkFoTExFQ0hpc3RzQ0lzc1FNZUt5MndJeXl4QkI0ckxiQWtMTEVGSGlzdHNDVXNzUVllS3kyd0ppeXhCeDRyTGJBbkxMRUlIaXN0c0Nnc3NRa2VLeTJ3S1N3Z1BMQUJZQzJ3S2l3Z1lMQVFZQ0JESTdBQllFT3dBaVZoc0FGZ3NDa3FJUzJ3S3l5d0tpdXdLaW90c0N3c0lDQkhJQ0N3QzBOanVBUUFZaUN3QUZCWXNFQmdXV2F3QVdOZ0kyRTRJeUNLVlZnZ1J5QWdzQXREWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqWUNOaE9Cc2hXUzJ3TFN3QXNRQUNSVlJZc0FFV3NDd3FzQUVWTUJzaVdTMndMaXdBc0EwcnNRQUNSVlJZc0FFV3NDd3FzQUVWTUJzaVdTMndMeXdnTmJBQllDMndNQ3dBc0FGRlk3Z0VBR0lnc0FCUVdMQkFZRmxtc0FGanNBRXJzQXREWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqc0FFcnNBQVd0QUFBQUFBQVJENGpPTEV2QVJVcUxiQXhMQ0E4SUVjZ3NBdERZN2dFQUdJZ3NBQlFXTEJBWUZsbXNBRmpZTEFBUTJFNExiQXlMQzRYUEMyd015d2dQQ0JISUxBTFEyTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlkyQ3dBRU5oc0FGRFl6Z3RzRFFzc1FJQUZpVWdMaUJIc0FBalFyQUNKVW1LaWtjalJ5TmhJRmhpR3lGWnNBRWpRckl6QVFFVkZDb3RzRFVzc0FBV3NBUWxzQVFsUnlOSEkyR3dDVU1yWllvdUl5QWdQSW80TGJBMkxMQUFGckFFSmJBRUpTQXVSeU5ISTJFZ3NBUWpRckFKUXlzZ3NHQlFXQ0N3UUZGWXN3SWdBeUFic3dJbUF4cFpRa0lqSUxBSVF5Q0tJMGNqUnlOaEkwWmdzQVJEc0FKaUlMQUFVRml3UUdCWlpyQUJZMkFnc0FFcklJcUtZU0N3QWtOZ1pDT3dBME5oWkZCWXNBSkRZUnV3QTBOZ1diQURKYkFDWWlDd0FGQllzRUJnV1dhd0FXTmhJeUFnc0FRbUkwWmhPQnNqc0FoRFJyQUNKYkFJUTBjalJ5TmhZQ0N3QkVPd0FtSWdzQUJRV0xCQVlGbG1zQUZqWUNNZ3NBRXJJN0FFUTJDd0FTdXdCU1Zoc0FVbHNBSmlJTEFBVUZpd1FHQlpackFCWTdBRUptRWdzQVFsWUdRanNBTWxZR1JRV0NFYkl5RlpJeUFnc0FRbUkwWmhPRmt0c0Rjc3NBQVdJQ0Fnc0FVbUlDNUhJMGNqWVNNOE9DMndPQ3l3QUJZZ3NBZ2pRaUFnSUVZalI3QUJLeU5oT0Myd09TeXdBQmF3QXlXd0FpVkhJMGNqWWJBQVZGZ3VJRHdqSVJ1d0FpV3dBaVZISTBjallTQ3dCU1d3QkNWSEkwY2pZYkFHSmJBRkpVbXdBaVZodVFnQUNBQmpZeU1nV0dJYklWbGp1QVFBWWlDd0FGQllzRUJnV1dhd0FXTmdJeTRqSUNBOGlqZ2pJVmt0c0Rvc3NBQVdJTEFJUXlBdVJ5TkhJMkVnWUxBZ1lHYXdBbUlnc0FCUVdMQkFZRmxtc0FGakl5QWdQSW80TGJBN0xDTWdMa2F3QWlWR1VsZ2dQRmt1c1NzQkZDc3RzRHdzSXlBdVJyQUNKVVpRV0NBOFdTNnhLd0VVS3kyd1BTd2pJQzVHc0FJbFJsSllJRHhaSXlBdVJyQUNKVVpRV0NBOFdTNnhLd0VVS3kyd1BpeXdOU3NqSUM1R3NBSWxSbEpZSUR4WkxyRXJBUlFyTGJBL0xMQTJLNG9nSUR5d0JDTkNpamdqSUM1R3NBSWxSbEpZSUR4WkxyRXJBUlFyc0FSRExyQXJLeTJ3UUN5d0FCYXdCQ1d3QkNZZ0xrY2pSeU5oc0FsREt5TWdQQ0F1SXppeEt3RVVLeTJ3UVN5eENBUWxRckFBRnJBRUpiQUVKU0F1UnlOSEkyRWdzQVFqUXJBSlF5c2dzR0JRV0NDd1FGRllzd0lnQXlBYnN3SW1BeHBaUWtJaklFZXdCRU93QW1JZ3NBQlFXTEJBWUZsbXNBRmpZQ0N3QVNzZ2lvcGhJTEFDUTJCa0k3QURRMkZrVUZpd0FrTmhHN0FEUTJCWnNBTWxzQUppSUxBQVVGaXdRR0JaWnJBQlkyR3dBaVZHWVRnaklEd2pPQnNoSUNCR0kwZXdBU3NqWVRnaFdiRXJBUlFyTGJCQ0xMQTFLeTZ4S3dFVUt5MndReXl3TmlzaEl5QWdQTEFFSTBJak9MRXJBUlFyc0FSRExyQXJLeTJ3UkN5d0FCVWdSN0FBSTBLeUFBRUJGUlFUTHJBeEtpMndSU3l3QUJVZ1I3QUFJMEt5QUFFQkZSUVRMckF4S2kyd1JpeXhBQUVVRTdBeUtpMndSeXl3TkNvdHNFZ3NzQUFXUlNNZ0xpQkdpaU5oT0xFckFSUXJMYkJKTExBSUkwS3dTQ3N0c0Vvc3NnQUFRU3N0c0Vzc3NnQUJRU3N0c0V3c3NnRUFRU3N0c0Uwc3NnRUJRU3N0c0U0c3NnQUFRaXN0c0U4c3NnQUJRaXN0c0ZBc3NnRUFRaXN0c0ZFc3NnRUJRaXN0c0ZJc3NnQUFQaXN0c0ZNc3NnQUJQaXN0c0ZRc3NnRUFQaXN0c0ZVc3NnRUJQaXN0c0ZZc3NnQUFRQ3N0c0Zjc3NnQUJRQ3N0c0Znc3NnRUFRQ3N0c0Zrc3NnRUJRQ3N0c0Zvc3NnQUFReXN0c0Zzc3NnQUJReXN0c0Z3c3NnRUFReXN0c0Ywc3NnRUJReXN0c0Y0c3NnQUFQeXN0c0Y4c3NnQUJQeXN0c0dBc3NnRUFQeXN0c0dFc3NnRUJQeXN0c0dJc3NEY3JMckVyQVJRckxiQmpMTEEzSzdBN0t5MndaQ3l3Tnl1d1BDc3RzR1Vzc0FBV3NEY3JzRDByTGJCbUxMQTRLeTZ4S3dFVUt5MndaeXl3T0N1d095c3RzR2dzc0RncnNEd3JMYkJwTExBNEs3QTlLeTJ3YWl5d09Tc3VzU3NCRkNzdHNHc3NzRGtyc0RzckxiQnNMTEE1SzdBOEt5MndiU3l3T1N1d1BTc3RzRzRzc0RvckxyRXJBUlFyTGJCdkxMQTZLN0E3S3kyd2NDeXdPaXV3UENzdHNIRXNzRG9yc0QwckxiQnlMTE1KQkFJRFJWZ2hHeU1oV1VJcnNBaGxzQU1rVUhpd0FSVXdMUUJMdUFESVVsaXhBUUdPV2JBQnVRZ0FDQUJqY0xFQUJVS3lBQUVBS3JFQUJVS3pDZ0lCQ0NxeEFBVkNzdzRBQVFncXNRQUdRcm9Dd0FBQkFBa3FzUUFIUXJvQVFBQUJBQWtxc1FNQVJMRWtBWWhSV0xCQWlGaXhBMlJFc1NZQmlGRll1Z2lBQUFFRVFJaGpWRml4QXdCRVdWbFpXYk1NQWdFTUtyZ0IvNFd3QkkyeEFnQkVBQUE9JykgZm9ybWF0KCd0cnVldHlwZScpO1xufVxuLyogQ2hyb21lIGhhY2s6IFNWRyBpcyByZW5kZXJlZCBtb3JlIHNtb290aCBpbiBXaW5kb3p6ZS4gMTAwJSBtYWdpYywgdW5jb21tZW50IGlmIHlvdSBuZWVkIGl0LiAqL1xuLyogTm90ZSwgdGhhdCB3aWxsIGJyZWFrIGhpbnRpbmchIEluIG90aGVyIE9TLWVzIGZvbnQgd2lsbCBiZSBub3QgYXMgc2hhcnAgYXMgaXQgY291bGQgYmUgKi9cbi8qXG5AbWVkaWEgc2NyZWVuIGFuZCAoLXdlYmtpdC1taW4tZGV2aWNlLXBpeGVsLXJhdGlvOjApIHtcbiAgQGZvbnQtZmFjZSB7XG4gICAgZm9udC1mYW1pbHk6ICdzZi1pY29ucyc7XG4gICAgc3JjOiB1cmwoJy4uL2ZvbnQvc2YtaWNvbnMuc3ZnPzg3NzQyNDQ2I3NmLWljb25zJykgZm9ybWF0KCdzdmcnKTtcbiAgfVxufVxuKi9cblxuW2NsYXNzXj1cInNmLWljb24tXCJdOmJlZm9yZSwgW2NsYXNzKj1cIiBzZi1pY29uLVwiXTpiZWZvcmUge1xuXHRmb250LWZhbWlseTogXCJzZi1pY29uc1wiO1xuXHRmb250LXN0eWxlOiBub3JtYWw7XG5cdGZvbnQtd2VpZ2h0OiBub3JtYWw7XG5cdHNwZWFrOiBub25lO1xuXG5cdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0dGV4dC1kZWNvcmF0aW9uOiBpbmhlcml0O1xuXHR3aWR0aDogMWVtO1xuXHRtYXJnaW4tcmlnaHQ6IC4yZW07XG5cdHRleHQtYWxpZ246IGNlbnRlcjtcblx0Lyogb3BhY2l0eTogLjg7ICovXG5cblx0LyogRm9yIHNhZmV0eSAtIHJlc2V0IHBhcmVudCBzdHlsZXMsIHRoYXQgY2FuIGJyZWFrIGdseXBoIGNvZGVzKi9cblx0Zm9udC12YXJpYW50OiBub3JtYWw7XG5cdHRleHQtdHJhbnNmb3JtOiBub25lO1xuXG5cdC8qIGZpeCBidXR0b25zIGhlaWdodCwgZm9yIHR3aXR0ZXIgYm9vdHN0cmFwICovXG5cdGxpbmUtaGVpZ2h0OiAxZW07XG5cblx0LyogQW5pbWF0aW9uIGNlbnRlciBjb21wZW5zYXRpb24gLSBtYXJnaW5zIHNob3VsZCBiZSBzeW1tZXRyaWMgKi9cblx0LyogcmVtb3ZlIGlmIG5vdCBuZWVkZWQgKi9cblx0bWFyZ2luLWxlZnQ6IC4yZW07XG5cblx0LyogeW91IGNhbiBiZSBtb3JlIGNvbWZvcnRhYmxlIHdpdGggaW5jcmVhc2VkIGljb25zIHNpemUgKi9cblx0LyogZm9udC1zaXplOiAxMjAlOyAqL1xuXG5cdC8qIFVuY29tbWVudCBmb3IgM0QgZWZmZWN0ICovXG5cdC8qIHRleHQtc2hhZG93OiAxcHggMXB4IDFweCByZ2JhKDEyNywgMTI3LCAxMjcsIDAuMyk7ICovXG59XG4uc2YtaWNvbi0zZG90czpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAwJzsgfSAvKiAn7qCAJyAqL1xuLnNmLWljb24tYWRkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDEnOyB9IC8qICfuoIEnICovXG4uc2YtaWNvbi1jbG9zZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAyJzsgfSAvKiAn7qCCJyAqL1xuLnNmLWljb24tcHJpY2Vib29rOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDMnOyB9IC8qICfuoIMnICovXG4uc2YtaWNvbi1oZWxwOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDQnOyB9IC8qICfuoIQnICovXG4uc2YtaWNvbi1ub3RlYm9vazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA1JzsgfSAvKiAn7qCFJyAqL1xuLnNmLWljb24tcm93czpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA2JzsgfSAvKiAn7qCGJyAqL1xuLnNmLWljb24tdXBsb2FkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDcnOyB9IC8qICfuoIcnICovXG4uc2YtaWNvbi1jbG9jazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA4JzsgfSAvKiAn7qCIJyAqL1xuLnNmLWljb24tZ3JvdXBzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDknOyB9IC8qICfuoIknICovXG4uc2YtaWNvbi1vcGVuX2ZvbGRlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBhJzsgfSAvKiAn7qCKJyAqL1xuLnNmLWljb24tcmlnaHRfYWxpZ25fdGV4dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBiJzsgfSAvKiAn7qCLJyAqL1xuLnNmLWljb24tcHJvZHVjdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBjJzsgfSAvKiAn7qCMJyAqL1xuLnNmLWljb24tcXVlc3Rpb25fZmVlZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBkJzsgfSAvKiAn7qCNJyAqL1xuLnNmLWljb24td2FybmluZzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBlJzsgfSAvKiAn7qCOJyAqL1xuLnNmLWljb24tdXNlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBmJzsgfSAvKiAn7qCPJyAqL1xuLnNmLWljb24tcmlnaHQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMCc7IH0gLyogJ+6gkCcgKi9cbi5zZi1pY29uLW5vdGlmaWNhdGlvbjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODExJzsgfSAvKiAn7qCRJyAqL1xuLnNmLWljb24taG9tZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODEyJzsgfSAvKiAn7qCSJyAqL1xuLnNmLWljb24tY29udHJhY3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMyc7IH0gLyogJ+6gkycgKi9cbi5zZi1pY29uLWFkZHVzZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNCc7IH0gLyogJ+6glCcgKi9cbi5zZi1pY29uLWFwcHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNSc7IH0gLyogJ+6glScgKi9cbi5zZi1pY29uLWNvcHk6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNic7IH0gLyogJ+6glicgKi9cbi5zZi1pY29uLWltYWdlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTcnOyB9IC8qICfuoJcnICovXG4uc2YtaWNvbi1vcGVuOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTgnOyB9IC8qICfuoJgnICovXG4uc2YtaWNvbi1zZXR0aW5nczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE5JzsgfSAvKiAn7qCZJyAqL1xuLnNmLWljb24tem9vbWluOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWEnOyB9IC8qICfuoJonICovXG4uc2YtaWNvbi1yZWNvcmQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxYic7IH0gLyogJ+6gmycgKi9cbi5zZi1pY29uLWFycm93ZG93bjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFjJzsgfSAvKiAn7qCcJyAqL1xuLnNmLWljb24tY3V0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWQnOyB9IC8qICfuoJ0nICovXG4uc2YtaWNvbi1pbnNlcnRfdGVtcGxhdGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxZSc7IH0gLyogJ+6gnicgKi9cbi5zZi1pY29uLW9wZW5lZF9mb2xkZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxZic7IH0gLyogJ+6gnycgKi9cbi5zZi1pY29uLXNpZGVfbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIwJzsgfSAvKiAn7qCgJyAqL1xuLnNmLWljb24tem9vbW91dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIxJzsgfSAvKiAn7qChJyAqL1xuLnNmLWljb24tcXVvdGVzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjInOyB9IC8qICfuoKInICovXG4uc2YtaWNvbi1yZWxhdGVkX2xpc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMyc7IH0gLyogJ+6goycgKi9cbi5zZi1pY29uLWdkb2M6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyNCc7IH0gLyogJ+6gpCcgKi9cbi5zZi1pY29uLXNuaXBwZXQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyNSc7IH0gLyogJ+6gpScgKi9cbi5zZi1pY29uLXBhZ2U6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyNic7IH0gLyogJ+6gpicgKi9cbi5zZi1pY29uLWN1c3RvbV9hcHBzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjcnOyB9IC8qICfuoKcnICovXG4uc2YtaWNvbi1hcnJvd3VwOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjgnOyB9IC8qICfuoKgnICovXG4uc2YtaWNvbi1hdHRhY2g6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyOSc7IH0gLyogJ+6gqScgKi9cbi5zZi1pY29uLWRheXZpZXc6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyYSc7IH0gLyogJ+6gqicgKi9cbi5zZi1pY29uLWluZm86YmVmb3JlIHsgY29udGVudDogJ1xcZTgyYic7IH0gLyogJ+6gqycgKi9cbi5zZi1pY29uLWluc2VydF90YWdfZmllbGQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyYyc7IH0gLyogJ+6grCcgKi9cbi5zZi1pY29uLXBhc3RlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MmQnOyB9IC8qICfuoK0nICovXG4uc2YtaWNvbi1zb3J0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MmUnOyB9IC8qICfuoK4nICovXG4uc2YtaWNvbi1wZGY6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyZic7IH0gLyogJ+6grycgKi9cbi5zZi1pY29uLXJlcG9ydDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODMwJzsgfSAvKiAn7qCwJyAqL1xuLnNmLWljb24tdGFzazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODMxJzsgfSAvKiAn7qCxJyAqL1xuLnNmLWljb24tYXBwcm92YWw6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzMic7IH0gLyogJ+6gsicgKi9cbi5zZi1pY29uLXNvY2lhbHNoYXJlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzMnOyB9IC8qICfuoLMnICovXG4uc2YtaWNvbi1wZW9wbGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzNCc7IH0gLyogJ+6gtCcgKi9cbi5zZi1pY29uLWl0YWxpYzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODM1JzsgfSAvKiAn7qC1JyAqL1xuLnNmLWljb24tZGVsZXRlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzYnOyB9IC8qICfuoLYnICovXG4uc2YtaWNvbi1iYWNrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzcnOyB9IC8qICfuoLcnICovXG4uc2YtaWNvbi1iYW46YmVmb3JlIHsgY29udGVudDogJ1xcZTgzOCc7IH0gLyogJ+6guCcgKi9cbi5zZi1pY29uLWVtYWlsOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzknOyB9IC8qICfuoLknICovXG4uc2YtaWNvbi1ib2xkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4M2EnOyB9IC8qICfuoLonICovXG4uc2YtaWNvbi1wcmV2aWV3OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4M2InOyB9IC8qICfuoLsnICovXG4uc2YtaWNvbi1zaGFyZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODNjJzsgfSAvKiAn7qC8JyAqL1xuLnNmLWljb24tZGFzaGJvYXJkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4M2QnOyB9IC8qICfuoL0nICovXG4uc2YtaWNvbi10aGFua3M6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzZSc7IH0gLyogJ+6gvicgKi9cbi5zZi1pY29uLXRvZGF5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4M2YnOyB9IC8qICfuoL8nICovXG4uc2YtaWNvbi1jb250cmFjdC0xOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDAnOyB9IC8qICfuoYAnICovXG4uc2YtaWNvbi1zcGlubmVyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDEnOyB9IC8qICfuoYEnICovXG4uc2YtaWNvbi1waG90bzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQyJzsgfSAvKiAn7qGCJyAqL1xuLnNmLWljb24tZXZlbnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Myc7IH0gLyogJ+6hgycgKi9cbi5zZi1pY29uLWJ1aWxkZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0NCc7IH0gLyogJ+6hhCcgKi9cbi5zZi1pY29uLWp1c3RpZnlfdGV4dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQ1JzsgfSAvKiAn7qGFJyAqL1xuLnNmLWljb24tY2VudGVyX2FsaWduX3RleHQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Nic7IH0gLyogJ+6hhicgKi9cbi5zZi1pY29uLWVkaXQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Nyc7IH0gLyogJ+6hhycgKi9cbi5zZi1pY29uLWxheW91dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQ4JzsgfSAvKiAn7qGIJyAqL1xuLnNmLWljb24tcHJpb3JpdHk6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0OSc7IH0gLyogJ+6hiScgKi9cbi5zZi1pY29uLXN0YW5kYXJkX29iamVjdHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0YSc7IH0gLyogJ+6hiicgKi9cbi5zZi1pY29uLWNvbnRhY3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Yic7IH0gLyogJ+6hiycgKi9cbi5zZi1pY29uLWN1c3RvbTkzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NGMnOyB9IC8qICfuoYwnICovXG4uc2YtaWNvbi1lbWFpbC0xOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NGQnOyB9IC8qICfuoY0nICovXG4uc2YtaWNvbi1zdWNjZXNzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NGUnOyB9IC8qICfuoY4nICovXG4uc2YtaWNvbi1yZWZyZXNoOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NGYnOyB9IC8qICfuoY8nICovXG4uc2YtaWNvbi1sZWZ0X2FsaWduX3RleHQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1MCc7IH0gLyogJ+6hkCcgKi9cbi5zZi1pY29uLWRvd246YmVmb3JlIHsgY29udGVudDogJ1xcZTg1MSc7IH0gLyogJ+6hkScgKi9cbi5zZi1pY29uLWNoYXJ0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTInOyB9IC8qICfuoZInICovXG4uc2YtaWNvbi1jaGF0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTMnOyB9IC8qICfuoZMnICovXG4uc2YtaWNvbi1lcnJvcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODU0JzsgfSAvKiAn7qGUJyAqL1xuLnNmLWljb24tbGVmdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODU1JzsgfSAvKiAn7qGVJyAqL1xuLnNmLWljb24tcmVtb3ZlX2xpbms6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Nic7IH0gLyogJ+6hlicgKi9cbi5zZi1pY29uLXN1bW1hcnk6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Nyc7IH0gLyogJ+6hlycgKi9cbi5zZi1pY29uLWRvY3VtZW50OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTgnOyB9IC8qICfuoZgnICovXG4uc2YtaWNvbi1kcmFmdHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1OSc7IH0gLyogJ+6hmScgKi9cbi5zZi1pY29uLXN1bW1hcnlkZXRhaWw6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1YSc7IH0gLyogJ+6hmicgKi9cbi5zZi1pY29uLXJlcGxhY2U6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Yic7IH0gLyogJ+6hmycgKi9cbi5zZi1pY29uLWxpa2U6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Yyc7IH0gLyogJ+6hnCcgKi9cbi5zZi1pY29uLWRvd25sb2FkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NWQnOyB9IC8qICfuoZ0nICovXG4uc2YtaWNvbi1jaGVjazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODVlJzsgfSAvKiAn7qGeJyAqL1xuLnNmLWljb24tY2hldnJvbmxlZnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Zic7IH0gLyogJ+6hnycgKi9cbi5zZi1pY29uLWV4cGFuZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODYwJzsgfSAvKiAn7qGgJyAqL1xuLnNmLWljb24tbGluazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODYxJzsgfSAvKiAn7qGhJyAqL1xuLnNmLWljb24tcmVwbHk6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Mic7IH0gLyogJ+6hoicgKi9cbi5zZi1pY29uLXRhYmxlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjMnOyB9IC8qICfuoaMnICovXG4uc2YtaWNvbi1mZWVkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjQnOyB9IC8qICfuoaQnICovXG4uc2YtaWNvbi1ldmVudC0xOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjUnOyB9IC8qICfuoaUnICovXG4uc2YtaWNvbi10aWxlX2NhcmRfbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODY2JzsgfSAvKiAn7qGmJyAqL1xuLnNmLWljb24tcmljaHRleHRidWxsZXRlZGxpc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Nyc7IH0gLyogJ+6hpycgKi9cbi5zZi1pY29uLWxpc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2OCc7IH0gLyogJ+6hqCcgKi9cbi5zZi1pY29uLWZhdm9yaXRlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjknOyB9IC8qICfuoaknICovXG4uc2YtaWNvbi1jaGV2cm9ucmlnaHQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2YSc7IH0gLyogJ+6hqicgKi9cbi5zZi1pY29uLWNoZXZyb25kb3duOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NmInOyB9IC8qICfuoasnICovXG4uc2YtaWNvbi1maWx0ZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Yyc7IH0gLyogJ+6hrCcgKi9cbi5zZi1pY29uLW1vdmU6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2ZCc7IH0gLyogJ+6hrScgKi9cbi5zZi1pY29uLXJpY2h0ZXh0aW5kZW50OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NmUnOyB9IC8qICfuoa4nICovXG4uc2YtaWNvbi11bmRlcmxpbmU6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Zic7IH0gLyogJ+6hrycgKi9cbi5zZi1pY29uLWZlZWRiYWNrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzAnOyB9IC8qICfuobAnICovXG4uc2YtaWNvbi1maWxlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzEnOyB9IC8qICfuobEnICovXG4uc2YtaWNvbi11bmRvOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzInOyB9IC8qICfuobInICovXG4uc2YtaWNvbi1yaWNodGV4dG51bWJlcmVkbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODczJzsgfSAvKiAn7qGzJyAqL1xuLnNmLWljb24tbG9jazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODc0JzsgfSAvKiAn7qG0JyAqL1xuLnNmLWljb24tZmlsdGVybGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODc1JzsgfSAvKiAn7qG1JyAqL1xuLnNmLWljb24tY2hldnJvbnVwOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzYnOyB9IC8qICfuobYnICovXG4uc2YtaWNvbi1jbGVhcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODc3JzsgfSAvKiAn7qG3JyAqL1xuLnNmLWljb24tZm9yd2FyZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODc4JzsgfSAvKiAn7qG4JyAqL1xuLnNmLWljb24tbmV3X3dpbmRvdzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODc5JzsgfSAvKiAn7qG5JyAqL1xuLnNmLWljb24tcmljaHRleHRvdXRkZW50OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4N2EnOyB9IC8qICfuobonICovXG4uc2YtaWNvbi11bmxvY2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3Yic7IH0gLyogJ+6huycgKi9cbi5zZi1pY29uLW9wcG9ydHVuaXR5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4N2MnOyB9IC8qICfuobwnICovXG4uc2YtaWNvbi1wb3N0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4N2QnOyB9IC8qICfuob0nICovXG4uc2YtaWNvbi11cDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODdlJzsgfSAvKiAn7qG+JyAqL1xuLnNmLWljb24tc2VhcmNoOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4N2YnOyB9IC8qICfuob8nICovXG4uc2YtaWNvbi1uZXc6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4MCc7IH0gLyogJ+6igCcgKi9cbi5zZi1pY29uLWZyb3plbjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODgxJzsgfSAvKiAn7qKBJyAqL1xuLnNmLWljb24tY29tbWVudHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4Mic7IH0gLyogJ+6igicgKi9cbi5zZi1pY29uLXJlY2VudDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODgzJzsgfSAvKiAn7qKDJyAqL1xuLnNmLWljb24tbWFnaWN3YW5kOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODQnOyB9IC8qICfuooQnICovXG4uc2YtaWNvbi1kaXNjb3VudHNjaGVkdWxlaWNvbnMtMDI6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4NSc7IH0gLyogJ+6ihScgKi9cbi5zZi1pY29uLWN1c3RvbTkwOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODYnOyB9IC8qICfuooYnICovXG4uc2YtaWNvbi1jYW5jZWwtY2lyY2xlZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODg2JzsgfSAvKiAn7qKGJyAqL1xuLnNmLWljb24tY3VzdG9tMjY6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4Nyc7IH0gLyogJ+6ihycgKi9cbi5zZi1pY29uLXRyZW5kaW5nOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODgnOyB9IC8qICfuoognICovXG4uc2YtaWNvbi10YXJnZXQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4OSc7IH0gLyogJ+6iiScgKi9cbi5zZi1pY29uLWN1YmU6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4Yic7IH0gLyogJ+6iiycgKi9cbi5zZi1pY29uLXBhaXJlZC1saW5lczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODhjJzsgfSAvKiAn7qKMJyAqL1xuXG4vKiBUaGUgZm9sbG93aW5nIGlzIGNvcGllZCBmcm9tIGljb25zL2Nzcy9zYi1lbWJlZGRlZC5jc3MgYXMgbGVzcy1wbHVnaW4tY2xlYW4tY3NzIGNvdWxkIGhhbmRsZSBhIEBpbXBvcnQgKi9cbkBmb250LWZhY2Uge1xuICBmb250LWZhbWlseTogJ3NiJztcbiAgc3JjOiB1cmwoJy4uL2ZvbnQvc2IuZW90PzQ5MzQwMjQ4Jyk7XG4gIHNyYzogdXJsKCcuLi9mb250L3NiLmVvdD80OTM0MDI0OCNpZWZpeCcpIGZvcm1hdCgnZW1iZWRkZWQtb3BlbnR5cGUnKSxcbiAgICAgICB1cmwoJy4uL2ZvbnQvc2Iuc3ZnPzQ5MzQwMjQ4I3NiJykgZm9ybWF0KCdzdmcnKTtcbiAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xufVxuQGZvbnQtZmFjZSB7XG4gIGZvbnQtZmFtaWx5OiAnc2InO1xuICBzcmM6IHVybCgnZGF0YTphcHBsaWNhdGlvbi9vY3RldC1zdHJlYW07YmFzZTY0LGQwOUdSZ0FCQUFBQUFCWDBBQTRBQUFBQUpCZ0FBUUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFCUFV5OHlBQUFCUkFBQUFFUUFBQUJXUGlsSkVtTnRZWEFBQUFHSUFBQUFPZ0FBQVVyUU5obTNZM1owSUFBQUFjUUFBQUFLQUFBQUNnQUFBQUJtY0dkdEFBQUIwQUFBQlpRQUFBdHdpSkNRV1dkaGMzQUFBQWRrQUFBQUNBQUFBQWdBQUFBUVoyeDVaZ0FBQjJ3QUFBcUNBQUFQM000NCtPMW9aV0ZrQUFBUjhBQUFBRFVBQUFBMkNCdXNCR2hvWldFQUFCSW9BQUFBSGdBQUFDUUhsd054YUcxMGVBQUFFa2dBQUFBL0FBQUFuSU5IQUFCc2IyTmhBQUFTaUFBQUFGQUFBQUJRU1pSTmxtMWhlSEFBQUJMWUFBQUFJQUFBQUNBQXpBdlNibUZ0WlFBQUV2Z0FBQUZ6QUFBQ2hmL0VqRzV3YjNOMEFBQVViQUFBQVNBQUFBRzZBUmkybDNCeVpYQUFBQldNQUFBQVpRQUFBSHZkYXdPRmVKeGpZR1NPWTV6QXdNckF3VlRGdEllQmdhRUhRak0rWURCa1pHSmdZR0pnWldiQUNnTFNYRk1ZSEY0d3ZGQmxEdnFmeFJERkhNUXdIU2pNQ0pJREFPTFFDN2w0bkdOZ1lHQm1nR0FaQmtZR0VIQUI4aGpCZkJZR0RTRE5CcVFaR1pnWUdGNm8vdjhQVXZDQ0FVUkxNRUxWQXdFakc4T0lCd0NNK0FiVEFBQUFBQUFBQUFBQUFBQUFBQUI0bksxV2FYTVRSeENkMVdITE5qNkNEeEkyZ1ZuR2NveDJWcGpMQ0JERzdFb1c0Qnp5bGV4Q2psMUxkdTZMVC93Ry9acGVrVlNSYi95MHZCNGQyR0FuVlZRb1N2Mm05KzFNOSt1ZVhwUFFrc1JlV0krazNId3BwclkyYVdUblNVZzNiRnFPNGtQWjJRc3BVMHorTG9pQ2FMWFV2dTA0SkNJU2dhcDFoU1dDMlBmSTBpVGpRNDh5V3JZbHZXcFNidWxKZDlrYUQrcXQrdmJUMEZHTzNRa2xOWnVoUSt1UkxhbkNxQkpGTXUyUmtqWXR3OVZmU1ZyaDV5dk1mTlVNSllMb0pKTEdtMkVNaitSbjQ0eFdHYTNHZGh4RmtVMldHMFdLUkRNOGlDS1BzbHBpbjF3eFFVRDVvQmxTWHZrMG9ueUVINUVWZTVUVENuSEpkcHJmOXlVLzZSM092eVRpZW91eUpRZitRSFprQjN1bksva2kwdG9LNDZhZGJFZWhpdkIwZlNmRUk1dVQ2cC9zVVY3VGFPQjJSYVluelFpV3lsZVFXUGtKWmZZUHlXcmhmTXFYUEJyVmtvT2NDRm92YzJKZjhnNjBIa2RNaVdzbXlJTHVqazZJb082WG5LSFlZL3E0K09POVhTd1hJUVRJT0piMWprcTRFRVlwWWJPYUpHMEVPWWlTc2tXVjFIcEhUSnp5T2kzaUxXRy9UdTNvUzJlMFNhZzdNWjZ0aDQ2dG5LamtlRFNwMDB5bVR1Mms1dEdVQmxGS09oTTg1dGNCbEIvUkpLKzJzWnJFeXFOcGJETmpKSkZRb0lWemFTcUlaU2VXTkFYUlBKclJtN3RobW12WG9rV2FQRkRQUFhwUGIyNkZtenM5cCszQVAydjhaM1VxcG9POU1KMmVEc2hLZkpwMnVVblJ1bjU2aG44bThVUFdBaXFSTFRiRGxNVkR0bjRINWVWalM0N0Nhd05zOTU3eksraDk5a1RJcElINEcvQWVMOVVwQlV5Rm1GVlFDOTIwMXJVc3k5UnFWb3RVWk9xN0lVMHJYOVpwQWswNURuMWpYOFk0L3ErWkdVdE1DZC92eE9uWkVaZWV1ZllseURTSDNHWmRqK1oxYXJGZGdNNXN6K2sweS9aOW5lYllmcURUUE52ek9oMWhhK3QwbE8ySE9pMncvVWluWTJ3dmFFR1Q3anNFY2hHQlhNQUdFb0d3ZFJBSTIwc0loSzFDSUd3WEVRamJJZ0podTRSQTJINk1RTmd1SXhDMmw3V3NtbjRxYVJ3N0U4c0FSWWdEb3pudXlHVnVLbGRUeWFVU3JvdEdwemJrS1hLcnBLSjRWdjByQS8zaWtUZXNnYlZBdWtUVy9JcEpybnhVbGVPUHJtaDUwOFM1QW81VmYzdHpYSjhURDJXL1dQaFQ4TC9hbXFxa1Y2eDVaSElWZVNQUWsrTkUxeVlWajY3cDhybXFSOWYvaTRvT2E0RitBNlVRQzBWWmxnMittWkR3VWFmVFVBMWM1UkF6R3pNUDEvVzZaYzNQNGZ5YkdDRUw2SDc4TnhRYUM5eURUbGxKV2UxZ3I5WFhqMlc1dHdmbHNDZFlrbUsrek90YjRZdU16RXI3UldZcGV6N3llY0FWTUNxVllhc05YSzNnelhzUzg1RHBUZkpNRUxjVlpZT2tqY2VaSUxHQll4NHdiNzZUSUNSTVhiV0IyaW1jc0lHOFlNd3AyTytFUTFSdmxPVndlNkY5SG8yVWYydFg3TWdaRlUwUStHMzJSdGpyczFEeVc2eUJoQ2UvMU5kQVZTRk54YmlwZ0VzajVZWnE4R0ZjcmR0R01rNmdyNmpZRGN1eWlnOGZSOXgzU281bElQbElFYXRIUnordHZVS2QxTG45eWlodTN6djlDSUpCYVdMKzlyNlo0cUNVZDdXU1pWWnRBMU8zR3BWVDE1ckR4YXNPM2MyajdudkgyU2R5MWpUZGRFL2M5TDZtVmJlRGc3bFpFTzNiSEpTbFRDNm82OE1PRzZqTHphWFE2bVZja3Q1MkR6QXNNS0Rmb1JVYi8xZjNjZmc4VjZvS28rTkl2WjJvSDZQUFlnenlEemgvUi9VRjZPY3hUTG1HbE9kN2x4T2ZidHpEMlRKZHhWMnNuK0xmd0t5MTVtYnBHbkJEMHcyWWg2eGFIYnJLRFh5bkJqbzkwdHlPOUJEd3NlNEs4UUJnRThCaThJbnVXc2J6S1lEeGZNWWNIK0J6NWpCb01vZkJGbk1ZYkRObkRXQ0hPUXgybWNOZ2p6a012bURPT3NDWHpHRVFNb2RCeEJ3R1Q1Z1RBRHhsRG9Pdm1NUGdhK1l3K0lZNTl3RytaUTZEbURrTUV1WXcyTmQwYXloeml4ZDBGNmh0VUJYb3dQUVRGdmV3T05SVUdiSy80NFZoZjI4UXMzOHdpS2svYXJvOXBQN0VDMFA5MlNDbS9tSVFVMy9WZEdkSS9ZMFhodnE3UVV6OXd5Q21QdE12eG5LWndWOUd2a3VGQThvdU5wL3o5OFQ3QjhJYVFMWUFBUUFCLy84QUQzaWNoVmQ3Y0ZUbEZiL251Ni9kbStUdTNuM2NtMnlTVFhZMzJadEhDYmhQbXNRUVl3U0dCcHFKR1lUZ0FHV3MwUEF3T2p3c2I4TVVYMmxDSGJ1aVJsU0dKb3pWak9VaGp1UEkxRnExQ0U1MUt0Z09GdG95YWNJZk5DUFlPcFQ5MHZQZHpVSVFNdDNrbnYxZTkzem5kOTdMQWNlTmQvSWpmQnNuY3RKaGdZTnAxVm9BTkZIalIrZ0FQY20zSVYxM2pmUnkrQkd1bitVNW1jdmhIRnhlbzVLWGE3ZUpBbkRDdEdxdkZ0QUFIL2ZFTjd4RjU4RmIyK0FvL1FFY1RiRVppYkpKK3RTTk1lTnJ2NFd2bXpPNFFxNkVDM0ZHb3lkUVdseFVrTy8xYU03c1hYYThLeDcxOGhPUGU0cnhWZmJaTm9tbXJsNkZUWmtuN2JyOW1Na2ozVlllclZHZExJUDBYUmtDWHBoNHJMdCtUbjZVZmpuelRIRXRjdWZHSCtiL3lyZHdCTzkwYzhveHB5SWhheDVadTRHMzh3MmtCSFNWVElkd003aE93UUR3ZEFrNFNHMnJiMWVCUlF2NzRENzZMMmlDQVhxTmRwQ3Z6WHBTMk8xcnJTVUZ1d281N29adGM5QzJkaDV0RzdkRDBnNkdIV1E3Z0VGSHZ3SURqSy9vcUVYbzZKeWJwMSt4STdmbmcrYk4vc0ZLOE1GSytqd2QvaXc3b00vRFNnNVJaZDh6dVJtYzdXaE5sVjhoNkYveFpDSnBKbzNFTElnYXVwRTBaTDBFdkxJa0c3SXBPU0JraGszWlRJYk5wRWVQSkdKaEZWSnEvdksxR3lxbk8vdWQwNm8zckYyZXI2WXlTOVhUY0dsNnBiVjBxbjF6Ty83RHhLRmxCanRrTEx2NVVDckxhbWw5ZS91akMwbWI1ZE9ES0tNK2xVK2pQY3NuUGZ6SXRmd2J6K0wrL3JIKy9xK1J2dlJTUmsvdklpL21RZEpoa2VsSlM2SkN3ZHcvQU5jT3BKZnZCMkgvQWFBNE9zRDhMS09mUGFnZkI1ZVArdEdkTWtkWUdFWER5UVpJUm5SREw0YW9Cb0Y0RFpoaFNYNmFGSm92M0wrMHY5eVhTaDhDanN4TnhtYUxLZEkwY05laUIySE52WFd6MXFiZkkwMWRzYm1FekszTjhPYzR2bys4Z2ZMa0lmOWNSU0RJdnp6Z05aUGVBS0tKRzNLYzcwdXZPSGVPN0x1MmkrdzdkMjdIUXdjSHU4NTFQVFJ3OEtFTW5wL3dkL0F1em90NDNEYUdKNWFJbEFDanVsZExJdldnSTRYTFlzNHJaWkd5eTY1SW1ZdHVwajkxUVdGQm1lc3k2UzRvS3l0SWI3L3NLb3U0NldiWTdjbndYSTA4UFJiUFBFdEhNWFJKM1NNRnA0T0dOSnpVWktRdWVCeDI0NHV1eTJYUk1yaUNyR0dGendXNzZXWlhMT1M2bk43T2VKUHV5NjRReDQrbngzL0RMK09aOVpKY004YlJYWFhWN2h3ZTQ2ZzhIZ3RYUTFBcUJvOWVCNUdFTzFZRG9hQXNZVnhGSTZoa2hPR1JaQlVNYjJZL2hrN1p3QnNlRllJMUJMZjlBRmNVMjJxYllwRytodnZ2ZUdLT1BXK2VJTmxGZi9uTUtyMHdWQS9XVnI2clNQRjdjczg4OHVISXgrdWt6ZTllZVdkN1cvWTFCWGJjMFY2elNWV1NnaHd1OUx1OHZseG5ZOWlERzY1Z2psUHlGVlcwYmZoZy9mb1BMakxDVEhZZGo1K3I0ZW9Rejh4SVZkQm51NDVIbXd6S0c3b0JqLzhPWEhFU0VGS255QW5GZG9nSkZZOHplbFZXNXR3QUJ6K2VMUHRpWFBDekhSd2N0cWdDMXhaUExDam5iNUkzVXhkZVJqOVd1Q0RYd0MxZ01kVFNHQ2tyY0lnc2hpQ0tHU3dlY29Ba2d3Y3BHanFjcUdOZVZNY01vRVVqdXVnTnhOMm8rM2hJcWtaRUxOQXdGWGlUZUNMdXhublVETWxSOXUyT3VzbnpLeW9rUWdpQVFQOGlIUkpWK1pETmxyZmFBc0Z3ZkU3ZitWUVdKWnVrZE44TmQzNHEyQ1NibVBQMGhsZXJmRS80cWw0eGQzWThSdFp0OXRsSmpxSkk2ZG1TZkVnVUQ5dTlQTWZBcFRsbFhuY0VURVVTZ1RUdWpOQXZCVVVHSUUzd1RYMTlhMnQ5UFR4TSs3aGJNRWU0SHpMTXpiRVpXY3psTnpDTFUySytHUmVmMVlFc21kZTFrRlhDL3dGTmhFbndjaklLRUhpWVVFR3VwWUZvQnJSZDNuRUw1bC9VMWJXMjF0WEJJN1NYZEhkSEViOG80bFVaRmZ6WkllR3d5WXBkSkNkSm1OV3J3OEI2QmNnQk9EazhUTUswQy9aWTI3ZWVpUmZDOEhBSzl0QXVwcmZ4OGZISCtWL3pTYzdHYVZ3cFZualVXeWhRNE5aVXdmS1ZvT1RVU3hQT3NCbmhYS2hsRnljbWRKbEhMWVl3TTdnVFNUNXB3aGZQblQ0Tk5hZFBQL2MrdUFpOVNIZlNpd1JjMEszcWZJZWcwaE5Tcmt2b0VQS3EvM3VFZkhLYWZtNGRYa1V2WVdvYUV5QWZ0b1B2VzBISGM2clE0Y21EaE1yVEwrY2N5Y3EraHpSYnNoT3JGOG9ESmpocEhoNys3bjRHdjFhZTJhZXhZZXlnc3ZXdUJIMmluSXR5OVp5ak1UY2VtMTVSRmdxVUdyS0lMMkJXeHl3bkI0SmhNODZJWnFVY1lGNWhlQk5SQjBSQmpockplQWdUa3huU0F2RllBclNKQ1gvSThFT3BuaDdGTC9vWkV0MTV3WkhRUjNBVURzd1pIS1F2RGc2dWZmTzAzeGdGdjA3Q1ovekdDTm1LNXp1czExNHAxV0dUbm5CY1FBWHJ4NHhOZzdCdDhQMDNSMGYxVXFBdjl1a0p1b0RzR21HVEYxanR1SjZEY3JrQ3F6WkpyRFpCVUNWK2lEUkFEWUhKU2ZLTmUzdGFTZnNUcisxZUtDem9oU1dUTWducGJlczUwTk5tRWZySEtmS2NEYXRCRVBOY1NZSERMaEhNYzRDRm9BYXd2cGkzdjVEVXRUM2FSaGF1WDdobnlvdGhhVjE3KzhiMjltK212TitxajJRUjZjYTY3MEdNemx4RlpCaXhxSWxTT0k2V01jb2pYczBUeENIMHF5cE42VVZGT3B5ZGw0S05pays1b0xwODhJN1BwVmJVMHByYVd2aTg5aWFldVJaUGwyb1hrS2M3bGl4UFlOaWpHY3ZEWml6RGRVaUZOWjZpSWc5OVZoMUtwV0NwYXJHa3M1SGxCZVhmdFJaWDdub2Q3eUpiVVU2RDJVSzdSVTU1MHBoZmdhTDI2SDYvM29hRHZaN1NVZy9LVzJUN1ZuVVd3ZCtMbk9xM2t5YzM4Wit3dFdiSnJFMld1WHp5UklXTmpDdDlTb1VQVlZobGpmZXFEQUJqUy8zc0RwdDYwOHdLblhHSzlsNk05cDZCOFZNWllQR0RqbzFPRlo0RjRSQ3pOQitOSkxBc2w0QWZzQ3JMek55NGhFMWlRdWNYZTV4WERiYzJ2NjJydHJObGhsRFJ2cUtoYVdPbG9Fa3RJcEhxaDViZDkwclhYS0h4MGIxTDJ2YmVPZGM1amZ6dXFxcFBjODZmWDlQU3ViNnpwYVkyTG9FNFgxQ2xlYTNRdkg3ZjBMNzF6UTNmbit0eVQ4UTFHU0ZQV2YydElxQmN5U0RxTXFwWkhkSURWYlU5c0daczdPUDZDbGhLVDZUT25rMHgzeDBmL3ozL1MvSWZ6R0plakhmbFdLSHVkcWtpcTlFNkV6MkFQVnNzQ2F6Rk1HUmt4ZU9hbjNVWVlmN0pYSUJvT0kwZEdPUkJWMjVGcERLMzcyZE5wVlVBVlkxVmxmTjFveUtDQjB4REo5dTgrZm5lWDlFdm9KcjJRV1d3dExMeXJxcHMzQ3kyWXJNSU93VGxXRldnQU9PVHhRM0dSalpNM0JQTmdJeTlqWUY2TmQweGt5M0lrdGVkYVEvZ2pmVWZQcElObWQ4cU1xdWV1ZkpxV1FHc2Y3WXRObEZTRlB0S204TG5UQVFOa3ZUY1RsWTBPdG5SajZCRDVrV1JsK21BWkxOaHpoakgvUGNxajcwbUYwQS9Lc2lSZU9hbjJITkpmdFFFV0QyZUZHTFNDWDVpZUdTRXVPdlpreW1oOTA4OUVQeGVyZWY0QTF0YW4xblZTT3JYOUI3bzZackozM1BjQzkwcm55R3BFM3VsSHZwQ2NaWDMrRDBOblh2Mjk2NnJGWm9lVE0zZjhzQnhiNmFuZkoxL25aekg2Smo0RFl0YWQrSkZaaExiUEN3bXFJU29iRVliZ0hoZXUzVHB0ZDUxczl0WGJEOXk1T29SMHZ2MjIxdkpHRGsvUmw4Zld6U3YvZ2h3UjRhMm5qdzVjREZUeThaM1lENi9FMytoU29jbHd1cUJXSWcyYzVlTGJ0aXliUU5zb1orc282Zm9pVTF3aHNBcStxenRMSDNtYjJkZ1ZhYTMzMm05cTJGbXN4MHRMVkNzbUlxSzdxVGhSaGJHZEhCQTBtMldFQWZNQXNPY0JkT3gyQytGNHVYRnhZc1k0N2FpbG4rT0xDanUrTWZEQnoyMnBqZTE5KzUyRFozUmJZMnpiZXd5dGVOK09vYlhYVm95OCtEK2VBZW9RN2JIVk84blczS2VPcTl1RTRqM0R4OTUvd2U2b3RCRUFBQjRuR05nWkdCZ0FPSkRUcllOOGZ3Mlh4bTRtVjhBUlJndWRaLzBndER6cGY3Ly9aL0ovSUk1Q01qbFlHQUNpUUlBYkNvTmpRQUFBSGljWTJCa1lHQU8rcC9GRU1YOGdvSGgvM2NnQ1JSQkFlb0FrTVlHRGdBQWVKeGpmc0hBd0l5TzcySVJBK0VKUUx3QWlBMmhPQktLRjBBdzR4a0labDRGcENkQU1GZ2ZWQjFUQkFRekYwQXhTQXdrUHdYSm5EVUkrd0NQWlJteUFBQUFBQUFBRmdCQ0FJb0F2Z0R1QVJJQkxnR0FBYVlCdmdIdUFnNENPQUppQXNvRElnT2NCQllFS0FRNEJJWUVsZ1NtQlF3RlBnVitCYWdGMGdZQ0JqWUdnZ2FjQnRvSEpnZGlCNDRIckFmdUFBRUFBQUFuQUZBQUNRQUFBQUFBQWdBQUFCQUFjd0FBQUNnTGNBQUFBQUI0bkhXUXkwckRRQmlGVDNwUjJxS2dndXQvcFMyRjlBSkZjQ0hGUXJzU29ZdnVrelpOVXRKTW1aa0tkZWNEK0lxK2hnczNucVNEaUdEQ0pOODUvMjFtQUZ6aUF4Nk96NGpyeUI0cVZFZXU0QlIzanF0VUQ0NXI1TEhqT2xwNGRIeEMvOGx4RTEwOE8yN2hDcS9zNE5VYVZCdThPL2JZNmROeEJlZjRjbHhGeldzNHJwSFBITmR4N1YwNFBxRi82N2lKaGRkMTNNS045elpSdTROTzQ4UktlOUtSWVg4d2t2QWdpbGFhQjVrRWU1c29iV1FzYTVYYktNdVV2MVJiRTg2amVKOEYyb1FtWEVUYXBDcVhnZDgzNFN6S0l4M1lhRlYwTVMveDBOcTFyTFhheXRUVnkwNnJUYlMwZm1MdDdyN1grOTBYRXlqc2NJQkdpaGdKTEFSdHVoMytoK2hqd0FzWGhNd1FaaDZ6VXVRSWtORUpzR2RGVWtZTTlaaHJUWlhUalppUmtYMHMrZDB5SG1KT04yWk54a3BkT3NWYTBDMVVXbFlLWi9xY1hFUm1qT1JsTkNnN3JuNzJZdkRDVGtPNmxoT0xxYnFjSXBqK21TODhYeEhiMEZuUzk4dFRXcnIzNlBIOVo3L2Z4bmR2ZHdCNG5HMU8yWExDTUJDTFFocENDTFQwdnUrV0ozK1U2emlKaTdFOTlxYVV2eStHS1gycEhyVFN6cXkwU1pyc1VDYi9ZNTRrU0RGQWhnUGtHS0xBQ0NYR3FEREJGSWM0d2d6SE9NRXB6bkNPQzF6aUN0ZTR3UzN1Y0k4SFBPSUp6M2pCSzk3d2pubmVLRTNTRjlReHpYMHJVK3FHVWF0QXVaTkdLSjBMYm9UVW1kTjlHQWpiVHJoV3JXR2ZmU0RWckZPN3lMUVZpMEoraTQ2YlZtYTFYWm0wZDFVbnRXTkNlYUZsWFNuVDJMMEoxaE16ZkNsWjc2Wi9KaDRXa1ZpdGZONjdPSWJDTGgwUFllUlYyMUhjRkZvMlc3RXBFcUhhWlRLNWRMUWUxNVorUzNLeVRKcTYySXhBM0ZQVjhFQ3NzWDdGZlQzWm1nOHVGdEdsWWxWcStTWDE5b01SSjVLR2xEV3p2ZHFIQnNtOTZBWkNyTEtZV2tiYWRTZkpEMllJZVF4NG5HUHczc0Z3SWloaUl5TmpYK1FHeHAwY0RCd015UVViR1ZpZE5qSXdhRUZvRGhSNkp3TURBeWN5aTVuQlphTUtZMGRneEFhSGpvaU56Q2t1RzlWQXZGMGNEUXlNTEE0ZHlTRVJJQ1dSUUxDUmdVZHJCK1AvMWcwc3ZSdVpHRndBQjlNaXVBQUFBQT09JykgZm9ybWF0KCd3b2ZmJyksXG4gICAgICAgdXJsKCdkYXRhOmFwcGxpY2F0aW9uL29jdGV0LXN0cmVhbTtiYXNlNjQsQUFFQUFBQU9BSUFBQXdCZ1QxTXZNajRwU1JJQUFBRHNBQUFBVm1OdFlYRFFOaG0zQUFBQlJBQUFBVXBqZG5RZ0FBQUFBQUFBR0NBQUFBQUtabkJuYllpUWtGa0FBQmdzQUFBTGNHZGhjM0FBQUFBUUFBQVlHQUFBQUFobmJIbG16amo0N1FBQUFwQUFBQS9jYUdWaFpBZ2JyQVFBQUJKc0FBQUFObWhvWldFSGx3TnhBQUFTcEFBQUFDUm9iWFI0ZzBjQUFBQUFFc2dBQUFDY2JHOWpZVW1VVFpZQUFCTmtBQUFBVUcxaGVIQUF6QXZTQUFBVHRBQUFBQ0J1WVcxbC84U01iZ0FBRTlRQUFBS0ZjRzl6ZEFFWXRwY0FBQlpjQUFBQnVuQnlaWERkYXdPRkFBQWpuQUFBQUhzQUFRTmVBWkFBQlFBSUFub0N2QUFBQUl3Q2VnSzhBQUFCNEFBeEFRSUFBQUlBQlFNQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFVR1pGWkFCQTZBRG9KUU5TLzJvQVdnTlNBSmNBQUFBQkFBQUFBQUFBQUFBQUF3QUFBQU1BQUFBY0FBRUFBQUFBQUVRQUF3QUJBQUFBSEFBRUFDZ0FBQUFHQUFRQUFRQUNBQURvSmYvL0FBQUFBT2dBLy84QUFCZ0JBQUVBQUFBQUFBQUFBQUVHQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQS8yb0Q2QU5TQUFVQUJyTUVBQUV0S3hFaEFSRUZFUVBvL3FiK3pBTlMvcWIrYnZ3Q2pnQUFBQUFFQUFEL2FnUG9BMUlBQXdBSEFBc0FEd0FOUUFvTkRBa0lCUVFCQUFRdEt4VVJJUkVCRVNFUkV4RWhFUUVSSVJFQnR2NUtBYlo5QWJYK1N3RzFsZ0cyL2tvQ013RzEva3Y5elFHMi9rb0NNd0cxL2tzQUFBQUFDUUFBLzJvRDZBTlNBQU1BQndBTEFBOEFFd0FYQUJzQUh3QWpBQmRBRkNFZ0hSd1pHQlVVRVJBTkRBa0lCUVFCQUFrdEt4VTFNeFVETlRNVkF6VXpGUk0xTXhVRE5UTVZBelV6RlJNMU14VUROVE1WQXpVekZmcjYrdnI2ZmZyNit2cjZmZnI2K3ZyNmx2cjZBWGY2K2dGMyt2cjlFdnI2QVhmNitnRjMrdnI5RXZyNkFYZjYrZ0YzK3ZvQUFBQUFCZ0FBLzJvRDZBTlNBQU1BQndBTEFBOEFFd0FYQUJGQURoVVVFUkFOREFrSUJRUUJBQVl0S3hVMU14VUROVE1WQXpVekZSTTFJUlVCTlNFVkFUVWhGZnI2K3ZyNmpRSmgvWjhDWWYyZkFtR1crdm9CZC9yNkFYZjYrdjBTK3ZvQmQvcjZBWGY2K2dBREFBRC9jUVBlQTB3QUFnQUdBQk1BQ3JjUUNnWUVBUUFETFNzVkV3RURDUU0rQWg4QkZnNENMd0VtUkFFU3pRR21BUVArV3dFUEFqcFFHb01aQWpwUUdvTWJqd0ZYL3U4QlFnR20vdnorV2dMeUp6d0NHNElhVURvQ0dZTWJBQUFCQUFEL2FnUG9BMUlBQ3dBR3N3a0RBUzByTlFrQk53a0JGd2tCQndrQkFSZis2ZDBCRndFWDNmN3BBUmZkL3VuKzZVY0JGd0VYM2Y3cEFSZmQvdW4rNmQwQkYvN3BBQUFCQUFEL2FnUG9BMUlBQ3dBR3N3a0RBUzByTlJFaEVTRVJJUkVoRVNFUkFXY0JHZ0ZuL3BuKzV0RUJHZ0ZuL3BuKzV2NlpBV2NBQUFJQUFQOXFBK2dEVWdBbkFEQUFDTFV1S2g0S0FpMHJFVFUzTmpjbk54YzJQd0V6RnhZWE54Y0hGaDhCRlFjR0J4Y0hKd1lQQVNNbkppY0hKemNtSnpjVUZqSTJOQ1lPQVpZT0dHQnRkU2t2RUp3UUxTdDFiV0FZRHBhV0RoaGdiWFVyTFJDY0VDOHBkVzFnR0E3TlZIcFVWSHBVQVJDY0VDMHJkVzFmRnc2V2xnNFhYMjExS3kwUW5CQXZLWFZ0WUJnT2xwWU9HR0J0ZFNrdlhqeFVWSGhXQWxJQUJBQUEvNmNENkFNV0FBTUFCd0FMQUE4QURVQUtEUXdKQ0FVRUFRQUVMU3NWTlNFVkpUVWhGU1UxSVJVbE5TRVZBK2o4R0FQby9CZ0Q2UHdZQStoWm5KenduSnp5bkp6d25aMEFBQUVBQVArOEErZ0RBQUFHQUFhekJRTUJMU3NSTnhjQkZ3RW5vcVlCL0tUOVlLSUJCS0trQWY2ay9XQ2tBQUFBQUFJQUFQOXFBNUFEVWdBUEFCZ0FDTFVXRUFjQUFpMHJGUkV6SmpjK0FUY3lGaGNXSFFFekVRRWhOUzRCSnlZR0I0c0NHeWVhWEY2Y0pScVcvYklCQUFKSU56UkdCWllDUXFaQldHWUJiRk03UDIzOXZnSkNjRFJJQWdKSU9nQUFBQUlBQUFBQUE0OENyUUFHQUEwQUNMVU1DZ1FDQWkwckpTRVZKemNWSVNVMUlUVVhCelVEai8xaTM5OENudnlEQXA3ZjMzOXZxS2R3MzNCdnBxaHZBQUFCQUFEL2FRTXhBeElBRlFBR3N4TUlBUzByRVRRMk1oOEJFVFEyTWhZVkVUYzJNaFlVQndrQkppUTBFUFFrTWlUekVqSWtFdjU2L25rU0FSc1pKQkx6QW9JWkpDUVovWDd6RWlReUUvNTZBWVlVQUFBQkFBRC9hd014QXhRQUZRQUdzdzBEQVMwckVUUTNDUUVXRkFZaUx3RVJGQVlpSmpjUkJ3WWlKaElCaHdHR0VpUXlFdk1rTXlRQjlCSXlKQUZpR2hJQmh2NTZFalFqRXZQOWZoa2tKQmtDZ3ZNU0l3QUQvLzMvc1FOZkF3c0FEd0EzQUVRQUNyZEJPeXNUQ3dNRExTc2xOVFFtS3dFaUJoMEJGQlk3QVRJMkV6UXVBU01pQndZZkFSWXpNamMrQVRJV0ZSUUdCdzRCRnhVVUZqc0JNalkwTmo4QlBnTVhGQTRCSWk0Q1BnRXlIZ0VCOUFvSWF3Z0tDZ2hyQ0FxUFBsd3hpRWNKRFVvRUJna0ZIaVU0S2hZYkl6d0JDZ2hyQ0FvWUVod0tIaFFNMTNMRzZNaHVCbnE4OUxwK1Vtc0lDZ29JYXdnS0NnRi9NVlF1ZHc0S053UUhKaHNlRWhVYURCQkFKaFFJQ2dvU0lnc1FCaG9jS0ZKMXhIUjB4T3JFZEhURUFBQUFBLy85LzdFRFh3TUxBQjRBTGdBN0FBcTNPRElxSWhvSUF5MHJKVFUwSmlzQkVUUW1Ld0VpQmgwQkZCWTdBUlVqSWdZZEFSUVdPd0V5TmdNMU5DWXJBU0lHSFFFVUZqc0JNallGRkE0QklpNENQZ0V5SGdFQ093b0hOZ29Jc2dnS0NnZzFOUWdLQ2dqNkJ3cEhDZ2hyQ0FvS0NHc0lDZ0ZsY3Nib3lHNEdlcnowdW41U1dRZ0tBUjRJQ2dvSVdRZ0tzd29JV1FnS0NnSDhXUWdLQ2doWkNBb0s0SFhFZEhURTZzUjBkTVFBQUFBRUFBRC9hZ09mQTFJQUNnQWlBRDRBVGdBTlFBcE1RRElrR1E4RkFBUXRLd0V6THdFbU5TTVBBUVlIQVJRUEFRWWlMd0VtTmpzQkVUUTJPd0V5RmhVUk16SVdCUlVoTlJNMlB3RTFJd1lyQVJVak5TRVZBd1lQQVJVM05qc0JOUk1WSXpVekp5TUhNeFVqTlRNVE14TUNtV0lvQmdJQ0FnRUJCUDdhQnJJRkRnZXlDQWdOYXdvSWF3Z0thd2dLQWRMK3VzNEhCUVlJQmdxQ1F3RTl6Z1FJQmdnRkM0dDFvU29haUJvcW9DZUFXb0VDYm5vYUNRSUxDZ29HL1VZR0I3SUZCYk1KRlFNQUNBb0tDUDBBQ2txQ01nRW5DZ1lGQVFKQWdETCsyQVFLQndFQkFrSUI5VHc4VUZBOFBBRngvbzhBQUFBQUJBQUEvMm9EbndOU0FBb0FJZ0F5QUU4QURVQUtSRFF3SkJrUEJRQUVMU3NsTXk4QkpqVWpEd0VHQndVVUR3RUdJaThCSmpZN0FSRTBOanNCTWhZVkVUTXlGZ1VWSXpVekp5TUhNeFVqTlRNVE14TURGU0UxRXpZL0FUVUhCaWNHS3dFVkl6VWhGUU1QQVJVM05qc0JOUUtaWWlnR0FnSUNBUUVFL3RvR3NnVU9CN0lJQ0ExckNnaHJDQXByQ0FvQ0JLRXFHb2dhS3FBbmdGcUJDLzY2emdjRkJnUURBUVlLZ2tNQlBjNE1CZ2dGQzRzemVob0pBZ3NLQ1FkL0JnZXlCUVd6Q1JVREFBZ0tDZ2o5QUFxUk96dFFVRHM3QVhMK2pnS0Nnak1CSndvRkJRSUJBUUVDUUlBeS90a1BCZ0VCQVVJQUFBRUFBQUFBQWN3Q0pnQUNBQWF6QVFBQkxTc0JDd0VCek9ibUFpYitjQUdRQUFBQUFBRUFBQUFBQWN3Q0pnQUNBQWF6QVFBQkxTczFHd0htNXBZQmtQNXdBQUFBQlAvLy80Y0Rxd00zQUFnQUVRQWdBQ01BRFVBS0l5RVpFeEVPQkFBRUxTc0JJZ1lRRmlBMkVDWW5NZ0FTQUFRQUVnQUZOaFlIQXdZSEJTTWlKamNUTmpjRE55Y0IxWmZXMWdFdTF0YVh3Z0VTQXY3cS9vRCs2Z0lCRWdHQ0RoWURXZ1FPL3NvR0RCSUVXZ1FOSy91MEFzdlcvdExXMWdFdTFtais3djU2L3ZBRUFSZ0JmZ0VhK0FRV0R2N0tEZ1JhRkEwQk5nNEQvdGhIdEFBQUFRQUFBQUFCa0FKRUFBSUFCck1DQUFFdEt4RU5BUUdRL25BQ1JPYm1BQUFCQUFBQUFBR1FBa1FBQWdBR3N3RUFBUzByQVJFbEFaRCtjQUpFL2pUbUFBVUFBUDlxQStnRFVnQWZBQ0lBSlFBekFEd0FEMEFNTlRRdktDUWpJU0FYQndVdEt3RXlGaGNSRkFZSElTSW1KelVoSWlZbkVUUTJQd0UrQVRzQk1oWVhGVFl6RHdFekFRY3pGemMxSXhVVUJpY2pFU0UxTkRZQkVTTVZGQVluSXhFRHNoY2VBU0FXL2VrWEhnSCswUmNlQVJZUTVBODJGdWdYSGdFbUlVZW5wLzZicDZkdHNOWWVGK2tCSGhZQ0p0Y2VGK2dDZkNBVy9Wb1hIZ0VnRnFBZ0ZnRjNGallQNUJBV0lCYTNGM2VuQVgybndyRHA2UllnQWY2Ymp4WTIvazRDZytnV0lBSCttZ0FBQUFMLy9mK3hBMThEQ3dBTUFCa0FDTFVXRUFZQUFpMHJBU0lPQWg0Qk1qNEJMZ0lCRkE0QklpNENQZ0V5SGdFQnJWT01VQUpVaUtxR1ZnUk9qZ0ZiY3Nib3lHNEdlcnowdW40Q2psS01wSXhTVW95a2pGTCswSFhFZEhURTZzUjBkTVFBQUFBRC8vMy9zUU5mQXdzQUNBQVZBQ0lBQ3JjZkdROEpCZ0lETFNzQkZBWWlMZ0UyTWhZbklnNENIZ0V5UGdFdUFnRVVEZ0VpTGdJK0FUSWVBUUk3VW5oU0FsWjBWcEJUakZBQ1ZJaXFobFlFVG80QlczTEc2TWh1Qm5xODlMcCtBVjQ3VkZSMlZGVDFVb3lrakZKU2pLU01VdjdRZGNSMGRNVHF4SFIweEFBQUFBSUFBQUFBQWxnQ2dnQUxBQlFBQ0xVUURBb0ZBaTByQVJZVUJ3VUdKalVSTkRZWEpUSVZFUlFpTlJFMEFad09EdjZXRmh3Y0ZnSGNTcFlCZGdvYUN1UU9FaG9CdWhvU0RpZzYvaTQ2T2dIU09nQUFBQUlBQUFBQUFsZ0NnZ0FNQUJRQUNMVVNEZ2tFQWkwckV6UTNKVFlXRlJFVUJpY2xKaWMwTWhVUkZDSTFyZzRCYkJRY0hCVCtsQTZ1bHBZQlhnNEs1QTRTR3Y1R0doSU81QXIyT2pyK0xqbzZBQUFBQUFJQUFBQUFBM0FDZkFBTEFCY0FDTFVXRVFvRkFpMHJBUllVQndVR0pqVVJORFlYQnhZVUJ3VUdKalVSTkRZWEEySU9EdjZNRmg0ZUZsSU9EdjZZRkNBZ0ZBRjJDaHdJK0E0UUhBSGlIQkFPK0FvY0NQZ09FQndCNGh3UURnQUFBQUlBQUFBQUEzQUNmQUFNQUJrQUNMVVdFUWtFQWkwckVUUTNKVFlXRlJFVUJpY2xKaVUwTnlVMkZoVVJGQVluSlNZT0FYWVVJQ0FVL29vT0FjWU9BV2dVSUNBVS9wZ09BVjRPQ3ZnT0VCeitIaHdRRHZnSURnNEsrQTRRSFA0ZUhCQU8rQWdBQUFBQUFmLysvN0VEV1FNTEFEQUFCck1wSVFFdEt3RVZGQVlyQVNJbVB3RW1JeUlPQWg0RE16STJOejRCSHdFZUFRY09BUWNpTGdJK0F6TXlGaGMzTmhZRFdSUVEraGNURVUxU2NEcHFUREFFS0ZSaVBrSjJLUVFSQmt3RkFnWThybDlYb0hCSUJFQjRtRnRTbUQxSUVDMEN3L29PRmkwUVRVMHVUR3AwYWt3dU9qVUdBUVZOQkE0R1NsQUJSSFNlcnA1MFJENDVTQklUQUFBQkFBQUFBQUxvQW9vQUN3QUdzd29FQVMwck55SW1OUkV6RVNFMUZ3YzFaQ282akFGczhQRElQQ2dCWHY3S2x0emNsZ0FBQS8vLy84VURsUUwzQUJFQUZRQWZBQXEzR3hZVEVnNEZBeTBySlJZSERnRUhJUzRCSnpRM0FUNEJNaFlYQnhFekVRTU9BUWNlQVRJMk5DWURpUXdCQVRNbS9TRWxOUUVOQVhBTUtESXBESStGUWlBcUFRRXFRQ29wVFJZWEtESUJBVE1uRnhZQ2ZSVVlHQldsL3RVQksvNlBBU2tpSUNrcFFTb0FBQVAvL2YreEExa0RDd0FNQUJ3QUxnQUt0eW9oR1JBR0FBTXRLd0V5SGdFVURnRWlMZ0krQVJNMU5DWXJBU0lHQnhVVUZoY3pNalluRXpRbkppc0JJZ2NHRlJNVUZqc0JNallCclhUR2NuTEc2TWh1Qm5xOHdRb0hhd2dLQVF3SGF3Y0tBUW9HQlFoN0NBVUdDZ29KWndnS0F3dDB4T3JFZEhURTZzUjAvVWhxQ0FvS0NHb0lDZ0VNeHdGYUJ3TUZCUU1IL3FZR0NBZ0FBdi8vLzJvRG9RTU5BQWdBSVFBSXRSa0xCZ01DTFNzQk5DNEJCaDRCUGdFQkZBWWlMd0VHSXlJdUFqNEVIZ0lYRkFjWEZnS0RsTXlXQkk3VWpBRWlMRG9VdjJSN1VKSm9RQUk4Ykk2a2pIQTRBMFcvRlFHQ1o1SUNsc3FZQm96K21oMHFGYjlGUG1xUW9vNXVPZ1JDWnBaTmUyUy9GUUFBQVFBQS82d0RyQUxnQUJjQUJyTUVBQUV0S3dFeUZoQUdJeUluTnhZek1qWVFKaUlHQnpNSEp6TStBUUlVcXU3dXFvNXVSbFJpZnJTMCtyUUNqcmk0ZkFMd0F1RHcvcXp3V0VvOHRBRUF0SzU4ek15bTZnQUFBQUVBQVA5L0ErZ0RQUUFKQUFhekJnSUJMU3NSQlJzQkRRRVRKUVVUQVh0OWRRRjcvc3R1L3MzK3luY0Ixd0lCYVA2VUNOeitrdUhYQVdnQUFBSUFBUCtBQStnRFBRQVJBQ0lBQ0xVZ0dRb0VBaTByRVRNRkV6Y1hFdzBCRXhjdkFROEJOeE1uSHdJUEFUOEJGeWMvQVM4RER3RmVBUjFnSFIxWUFYdit5MUljVE9mb1RoMWE0M0dvRkFoQ3NCRytReEt1MXhZSVFFWUlBZGNDQVE1YVhQN3dDTnorN2xzNHFLSTFXZ0VPcmdpQkRoWExld3VLNEE1OUJBSVZ5Y2NWQUFFQUFBQUJBQURDUWoyQVh3ODg5UUFMQStnQUFBQUEwb3ZKU2dBQUFBRFNpNThhLy8zL2FRUG9BMUlBQUFBSUFBSUFBQUFBQUFBQUFRQUFBMUwvYWdCYUErZ0FBUC8zQStnQUFRQUFBQUFBQUFBQUFBQUFBQUFBQUNjRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUGRBQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFPUUFBQURvQUFBQXpFQUFBTXhBQUFEV1FBQUExa0FBQU9nQUFBRG9BQUFBY3dBQUFITUFBQURxZ0FBQVpBQUFBR1FBQUFENkFBQUExa0FBQU5aQUFBQ1dBQUFBbGdBQUFOd0FBQURjQUFBQTFrQUFBTG9BQUFEbEFBQUExa0FBQU9nQUFBRHJBQUFBK2dBQUFQb0FBQUFBQUFBQUJZQVFnQ0tBTDRBN2dFU0FTNEJnQUdtQWI0QjdnSU9BamdDWWdMS0F5SURuQVFXQkNnRU9BU0dCSllFcGdVTUJUNEZmZ1dvQmRJR0FnWTJCb0lHbkFiYUJ5WUhZZ2VPQjZ3SDdnQUJBQUFBSndCUUFBa0FBQUFBQUFJQUFBQVFBSE1BQUFBb0MzQUFBQUFBQUFBQUVnRGVBQUVBQUFBQUFBQUFOUUFBQUFFQUFBQUFBQUVBQWdBMUFBRUFBQUFBQUFJQUJ3QTNBQUVBQUFBQUFBTUFBZ0ErQUFFQUFBQUFBQVFBQWdCQUFBRUFBQUFBQUFVQUN3QkNBQUVBQUFBQUFBWUFBZ0JOQUFFQUFBQUFBQW9BS3dCUEFBRUFBQUFBQUFzQUV3QjZBQU1BQVFRSkFBQUFhZ0NOQUFNQUFRUUpBQUVBQkFEM0FBTUFBUVFKQUFJQURnRDdBQU1BQVFRSkFBTUFCQUVKQUFNQUFRUUpBQVFBQkFFTkFBTUFBUVFKQUFVQUZnRVJBQU1BQVFRSkFBWUFCQUVuQUFNQUFRUUpBQW9BVmdFckFBTUFBUVFKQUFzQUpnR0JRMjl3ZVhKcFoyaDBJQ2hES1NBeU1ERTFJR0o1SUc5eWFXZHBibUZzSUdGMWRHaHZjbk1nUUNCbWIyNTBaV3hzYnk1amIyMXpZbEpsWjNWc1lYSnpZbk5pVm1WeWMybHZiaUF4TGpCellrZGxibVZ5WVhSbFpDQmllU0J6ZG1jeWRIUm1JR1p5YjIwZ1JtOXVkR1ZzYkc4Z2NISnZhbVZqZEM1b2RIUndPaTh2Wm05dWRHVnNiRzh1WTI5dEFFTUFid0J3QUhrQWNnQnBBR2NBYUFCMEFDQUFLQUJEQUNrQUlBQXlBREFBTVFBMUFDQUFZZ0I1QUNBQWJ3QnlBR2tBWndCcEFHNEFZUUJzQUNBQVlRQjFBSFFBYUFCdkFISUFjd0FnQUVBQUlBQm1BRzhBYmdCMEFHVUFiQUJzQUc4QUxnQmpBRzhBYlFCekFHSUFVZ0JsQUdjQWRRQnNBR0VBY2dCekFHSUFjd0JpQUZZQVpRQnlBSE1BYVFCdkFHNEFJQUF4QUM0QU1BQnpBR0lBUndCbEFHNEFaUUJ5QUdFQWRBQmxBR1FBSUFCaUFIa0FJQUJ6QUhZQVp3QXlBSFFBZEFCbUFDQUFaZ0J5QUc4QWJRQWdBRVlBYndCdUFIUUFaUUJzQUd3QWJ3QWdBSEFBY2dCdkFHb0FaUUJqQUhRQUxnQm9BSFFBZEFCd0FEb0FMd0F2QUdZQWJ3QnVBSFFBWlFCc0FHd0Fid0F1QUdNQWJ3QnRBQUFBQUFJQUFBQUFBQUFBQ2dBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFKd0FBQVFJQkF3RUVBUVVCQmdFSEFRZ0JDUUVLQVFzQkRBRU5BUTRCRHdFUUFSRUJFZ0VUQVJRQkZRRVdBUmNCR0FFWkFSb0JHd0VjQVIwQkhnRWZBU0FCSVFFaUFTTUJKQUVsQVNZQkp3Wm1hV3gwWlhJSWRHZ3RiR0Z5WjJVQ2RHZ0hkR2d0YkdsemRBWndaVzVqYVd3R1kyRnVZMlZzQkhCc2RYTURZMjluRFdGc2FXZHVMV3AxYzNScFpua0NiMnNFYkc5amF3aGxlR05vWVc1blpRUmtiM2R1QW5Wd0RHaGxiSEF0WTJseVkyeGxaQXhwYm1adkxXTnBjbU5zWldRTWMyOXlkQzF1WVcxbExYVndEbk52Y25RdGJtRnRaUzFrYjNkdUNHUnZkMjR0WkdseUJuVndMV1JwY2dkamIyMXdZWE56Q1hKcFoyaDBMV1JwY2doc1pXWjBMV1JwY2dSa2IyTnpER05wY21Oc1pTMWxiWEIwZVF0a2IzUXRZMmx5WTJ4bFpBWjBieTFsYm1RSWRHOHRjM1JoY25RTVptRnpkQzFtYjNKM1lYSmtEV1poYzNRdFltRmphM2RoY21RQ1kzY0tiR1YyWld3dFpHOTNiZ2xoZEhSbGJuUnBiMjRSWVhSMFpXNTBhVzl1TFdOcGNtTnNaV1FHYzJWaGNtTm9BMk5qZHdSemRHRnlDbk4wWVhJdFpXMXdkSGtBQUFBQUFBRUFBZi8vQUE4QUFBQUFBQUFBQUFBQUFBQ3dBQ3dnc0FCVldFVlpJQ0JMdUFBT1VVdXdCbE5hV0xBMEc3QW9XV0JtSUlwVldMQUNKV0c1Q0FBSUFHTmpJMkliSVNHd0FGbXdBRU1qUkxJQUFRQkRZRUl0c0FFc3NDQmdaaTJ3QWl3Z1pDQ3d3RkN3QkNaYXNpZ0JDa05GWTBWU1cxZ2hJeUViaWxnZ3NGQlFXQ0d3UUZrYklMQTRVRmdoc0RoWldTQ3hBUXBEUldORllXU3dLRkJZSWJFQkNrTkZZMFVnc0RCUVdDR3dNRmtiSUxEQVVGZ2daaUNLaW1FZ3NBcFFXR0FiSUxBZ1VGZ2hzQXBnR3lDd05sQllJYkEyWUJ0Z1dWbFpHN0FCSzFsWkk3QUFVRmhsV1ZrdHNBTXNJRVVnc0FRbFlXUWdzQVZEVUZpd0JTTkNzQVlqUWhzaElWbXdBV0F0c0FRc0l5RWpJU0Jrc1FWaVFpQ3dCaU5Dc1FFS1EwVmpzUUVLUTdBQVlFVmpzQU1xSVNDd0JrTWdpaUNLc0FFcnNUQUZKYkFFSmxGWVlGQWJZVkpaV0NOWklTQ3dRRk5Zc0FFckd5R3dRRmtqc0FCUVdHVlpMYkFGTExBSFF5dXlBQUlBUTJCQ0xiQUdMTEFISTBJaklMQUFJMEpoc0FKaVpyQUJZN0FCWUxBRktpMndCeXdnSUVVZ3NBdERZN2dFQUdJZ3NBQlFXTEJBWUZsbXNBRmpZRVN3QVdBdHNBZ3NzZ2NMQUVORlFpb2hzZ0FCQUVOZ1FpMndDU3l3QUVNalJMSUFBUUJEWUVJdHNBb3NJQ0JGSUxBQkt5T3dBRU93QkNWZ0lFV0tJMkVnWkNDd0lGQllJYkFBRzdBd1VGaXdJQnV3UUZsWkk3QUFVRmhsV2JBREpTTmhSRVN3QVdBdHNBc3NJQ0JGSUxBQkt5T3dBRU93QkNWZ0lFV0tJMkVnWkxBa1VGaXdBQnV3UUZranNBQlFXR1Zac0FNbEkyRkVSTEFCWUMyd0RDd2dzQUFqUXJJTENnTkZXQ0ViSXlGWktpRXRzQTBzc1FJQ1JiQmtZVVF0c0E0c3NBRmdJQ0N3REVOS3NBQlFXQ0N3RENOQ1diQU5RMHF3QUZKWUlMQU5JMEpaTGJBUExDQ3dFR0ptc0FGaklMZ0VBR09LSTJHd0RrTmdJSXBnSUxBT0kwSWpMYkFRTEV0VVdMRUVaRVJaSkxBTlpTTjRMYkFSTEV0UldFdFRXTEVFWkVSWkd5RlpKTEFUWlNONExiQVNMTEVBRDBOVldMRVBEME93QVdGQ3NBOHJXYkFBUTdBQ0pVS3hEQUlsUXJFTkFpVkNzQUVXSXlDd0F5VlFXTEVCQUVOZ3NBUWxRb3FLSUlvalliQU9LaUVqc0FGaElJb2pZYkFPS2lFYnNRRUFRMkN3QWlWQ3NBSWxZYkFPS2lGWnNBeERSN0FOUTBkZ3NBSmlJTEFBVUZpd1FHQlpackFCWXlDd0MwTmp1QVFBWWlDd0FGQllzRUJnV1dhd0FXTmdzUUFBRXlORXNBRkRzQUErc2dFQkFVTmdRaTJ3RXl3QXNRQUNSVlJZc0E4alFpQkZzQXNqUXJBS0k3QUFZRUlnWUxBQlliVVFFQUVBRGdCQ1FvcGdzUklHSzdCeUt4c2lXUzJ3RkN5eEFCTXJMYkFWTExFQkV5c3RzQllzc1FJVEt5MndGeXl4QXhNckxiQVlMTEVFRXlzdHNCa3NzUVVUS3kyd0dpeXhCaE1yTGJBYkxMRUhFeXN0c0J3c3NRZ1RLeTJ3SFN5eENSTXJMYkFlTEFDd0RTdXhBQUpGVkZpd0R5TkNJRVd3Q3lOQ3NBb2pzQUJnUWlCZ3NBRmh0UkFRQVFBT0FFSkNpbUN4RWdZcnNISXJHeUpaTGJBZkxMRUFIaXN0c0NBc3NRRWVLeTJ3SVN5eEFoNHJMYkFpTExFREhpc3RzQ01zc1FRZUt5MndKQ3l4QlI0ckxiQWxMTEVHSGlzdHNDWXNzUWNlS3kyd0p5eXhDQjRyTGJBb0xMRUpIaXN0c0Nrc0lEeXdBV0F0c0Nvc0lHQ3dFR0FnUXlPd0FXQkRzQUlsWWJBQllMQXBLaUV0c0Nzc3NDb3JzQ29xTGJBc0xDQWdSeUFnc0F0RFk3Z0VBR0lnc0FCUVdMQkFZRmxtc0FGallDTmhPQ01naWxWWUlFY2dJTEFMUTJPNEJBQmlJTEFBVUZpd1FHQlpackFCWTJBallUZ2JJVmt0c0Mwc0FMRUFBa1ZVV0xBQkZyQXNLckFCRlRBYklsa3RzQzRzQUxBTks3RUFBa1ZVV0xBQkZyQXNLckFCRlRBYklsa3RzQzhzSURXd0FXQXRzREFzQUxBQlJXTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlk3QUJLN0FMUTJPNEJBQmlJTEFBVUZpd1FHQlpackFCWTdBQks3QUFGclFBQUFBQUFFUStJeml4THdFVktpMndNU3dnUENCSElMQUxRMk80QkFCaUlMQUFVRml3UUdCWlpyQUJZMkN3QUVOaE9DMndNaXd1Rnp3dHNETXNJRHdnUnlDd0MwTmp1QVFBWWlDd0FGQllzRUJnV1dhd0FXTmdzQUJEWWJBQlEyTTRMYkEwTExFQ0FCWWxJQzRnUjdBQUkwS3dBaVZKaW9wSEkwY2pZU0JZWWhzaFdiQUJJMEt5TXdFQkZSUXFMYkExTExBQUZyQUVKYkFFSlVjalJ5TmhzQWxESzJXS0xpTWdJRHlLT0Myd05peXdBQmF3QkNXd0JDVWdMa2NqUnlOaElMQUVJMEt3Q1VNcklMQmdVRmdnc0VCUldMTUNJQU1nRzdNQ0pnTWFXVUpDSXlDd0NFTWdpaU5ISTBjallTTkdZTEFFUTdBQ1lpQ3dBRkJZc0VCZ1dXYXdBV05nSUxBQkt5Q0tpbUVnc0FKRFlHUWpzQU5EWVdSUVdMQUNRMkVic0FORFlGbXdBeVd3QW1JZ3NBQlFXTEJBWUZsbXNBRmpZU01nSUxBRUppTkdZVGdiSTdBSVEwYXdBaVd3Q0VOSEkwY2pZV0Fnc0FSRHNBSmlJTEFBVUZpd1FHQlpackFCWTJBaklMQUJLeU93QkVOZ3NBRXJzQVVsWWJBRkpiQUNZaUN3QUZCWXNFQmdXV2F3QVdPd0JDWmhJTEFFSldCa0k3QURKV0JrVUZnaEd5TWhXU01nSUxBRUppTkdZVGhaTGJBM0xMQUFGaUFnSUxBRkppQXVSeU5ISTJFalBEZ3RzRGdzc0FBV0lMQUlJMElnSUNCR0kwZXdBU3NqWVRndHNEa3NzQUFXc0FNbHNBSWxSeU5ISTJHd0FGUllMaUE4SXlFYnNBSWxzQUlsUnlOSEkyRWdzQVVsc0FRbFJ5TkhJMkd3QmlXd0JTVkpzQUlsWWJrSUFBZ0FZMk1qSUZoaUd5RlpZN2dFQUdJZ3NBQlFXTEJBWUZsbXNBRmpZQ011SXlBZ1BJbzRJeUZaTGJBNkxMQUFGaUN3Q0VNZ0xrY2pSeU5oSUdDd0lHQm1zQUppSUxBQVVGaXdRR0JaWnJBQll5TWdJRHlLT0Myd095d2pJQzVHc0FJbFJsSllJRHhaTHJFckFSUXJMYkE4TENNZ0xrYXdBaVZHVUZnZ1BGa3VzU3NCRkNzdHNEMHNJeUF1UnJBQ0pVWlNXQ0E4V1NNZ0xrYXdBaVZHVUZnZ1BGa3VzU3NCRkNzdHNENHNzRFVySXlBdVJyQUNKVVpTV0NBOFdTNnhLd0VVS3kyd1B5eXdOaXVLSUNBOHNBUWpRb280SXlBdVJyQUNKVVpTV0NBOFdTNnhLd0VVSzdBRVF5NndLeXN0c0VBc3NBQVdzQVFsc0FRbUlDNUhJMGNqWWJBSlF5c2pJRHdnTGlNNHNTc0JGQ3N0c0VFc3NRZ0VKVUt3QUJhd0JDV3dCQ1VnTGtjalJ5TmhJTEFFSTBLd0NVTXJJTEJnVUZnZ3NFQlJXTE1DSUFNZ0c3TUNKZ01hV1VKQ0l5QkhzQVJEc0FKaUlMQUFVRml3UUdCWlpyQUJZMkFnc0FFcklJcUtZU0N3QWtOZ1pDT3dBME5oWkZCWXNBSkRZUnV3QTBOZ1diQURKYkFDWWlDd0FGQllzRUJnV1dhd0FXTmhzQUlsUm1FNEl5QThJemdiSVNBZ1JpTkhzQUVySTJFNElWbXhLd0VVS3kyd1FpeXdOU3N1c1NzQkZDc3RzRU1zc0RZcklTTWdJRHl3QkNOQ0l6aXhLd0VVSzdBRVF5NndLeXN0c0VRc3NBQVZJRWV3QUNOQ3NnQUJBUlVVRXk2d01Tb3RzRVVzc0FBVklFZXdBQ05Dc2dBQkFSVVVFeTZ3TVNvdHNFWXNzUUFCRkJPd01pb3RzRWNzc0RRcUxiQklMTEFBRmtVaklDNGdSb29qWVRpeEt3RVVLeTJ3U1N5d0NDTkNzRWdyTGJCS0xMSUFBRUVyTGJCTExMSUFBVUVyTGJCTUxMSUJBRUVyTGJCTkxMSUJBVUVyTGJCT0xMSUFBRUlyTGJCUExMSUFBVUlyTGJCUUxMSUJBRUlyTGJCUkxMSUJBVUlyTGJCU0xMSUFBRDRyTGJCVExMSUFBVDRyTGJCVUxMSUJBRDRyTGJCVkxMSUJBVDRyTGJCV0xMSUFBRUFyTGJCWExMSUFBVUFyTGJCWUxMSUJBRUFyTGJCWkxMSUJBVUFyTGJCYUxMSUFBRU1yTGJCYkxMSUFBVU1yTGJCY0xMSUJBRU1yTGJCZExMSUJBVU1yTGJCZUxMSUFBRDhyTGJCZkxMSUFBVDhyTGJCZ0xMSUJBRDhyTGJCaExMSUJBVDhyTGJCaUxMQTNLeTZ4S3dFVUt5MndZeXl3Tnl1d095c3RzR1Fzc0RjcnNEd3JMYkJsTExBQUZyQTNLN0E5S3kyd1ppeXdPQ3N1c1NzQkZDc3RzR2Nzc0RncnNEc3JMYkJvTExBNEs3QThLeTJ3YVN5d09DdXdQU3N0c0dvc3NEa3JMckVyQVJRckxiQnJMTEE1SzdBN0t5MndiQ3l3T1N1d1BDc3RzRzBzc0RrcnNEMHJMYkJ1TExBNkt5NnhLd0VVS3kyd2J5eXdPaXV3T3lzdHNIQXNzRG9yc0R3ckxiQnhMTEE2SzdBOUt5MndjaXl6Q1FRQ0EwVllJUnNqSVZsQ0s3QUlaYkFESkZCNHNBRVZNQzBBUzdnQXlGSllzUUVCamxtd0Fia0lBQWdBWTNDeEFBVkNzUUFBS3JFQUJVS3hBQWdxc1FBRlFyRUFDQ3F4QUFWQ3VRQUFBQWtxc1FBRlFya0FBQUFKS3JFREFFU3hKQUdJVVZpd1FJaFlzUU5rUkxFbUFZaFJXTG9JZ0FBQkJFQ0lZMVJZc1FNQVJGbFpXVm14QUF3cXVBSC9oYkFFamJFQ0FFUUEnKSBmb3JtYXQoJ3RydWV0eXBlJyk7XG59XG4vKiBDaHJvbWUgaGFjazogU1ZHIGlzIHJlbmRlcmVkIG1vcmUgc21vb3RoIGluIFdpbmRvenplLiAxMDAlIG1hZ2ljLCB1bmNvbW1lbnQgaWYgeW91IG5lZWQgaXQuICovXG4vKiBOb3RlLCB0aGF0IHdpbGwgYnJlYWsgaGludGluZyEgSW4gb3RoZXIgT1MtZXMgZm9udCB3aWxsIGJlIG5vdCBhcyBzaGFycCBhcyBpdCBjb3VsZCBiZSAqL1xuLypcbkBtZWRpYSBzY3JlZW4gYW5kICgtd2Via2l0LW1pbi1kZXZpY2UtcGl4ZWwtcmF0aW86MCkge1xuICBAZm9udC1mYWNlIHtcbiAgICBmb250LWZhbWlseTogJ3NiJztcbiAgICBzcmM6IHVybCgnLi4vZm9udC9zYi5zdmc/NDkzNDAyNDgjc2InKSBmb3JtYXQoJ3N2ZycpO1xuICB9XG59XG4qL1xuIFxuIFtjbGFzc149XCJzYi1pY29uLVwiXTpiZWZvcmUsIFtjbGFzcyo9XCIgc2ItaWNvbi1cIl06YmVmb3JlIHtcbiAgZm9udC1mYW1pbHk6IFwic2JcIjtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xuICBmb250LXdlaWdodDogbm9ybWFsO1xuICBzcGVhazogbm9uZTtcbiBcbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICB0ZXh0LWRlY29yYXRpb246IGluaGVyaXQ7XG4gIHdpZHRoOiAxZW07XG4gIG1hcmdpbi1yaWdodDogLjJlbTtcbiAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAvKiBvcGFjaXR5OiAuODsgKi9cbiBcbiAgLyogRm9yIHNhZmV0eSAtIHJlc2V0IHBhcmVudCBzdHlsZXMsIHRoYXQgY2FuIGJyZWFrIGdseXBoIGNvZGVzKi9cbiAgZm9udC12YXJpYW50OiBub3JtYWw7XG4gIHRleHQtdHJhbnNmb3JtOiBub25lO1xuICAgICBcbiAgLyogZml4IGJ1dHRvbnMgaGVpZ2h0LCBmb3IgdHdpdHRlciBib290c3RyYXAgKi9cbiAgbGluZS1oZWlnaHQ6IDFlbTtcbiBcbiAgLyogQW5pbWF0aW9uIGNlbnRlciBjb21wZW5zYXRpb24gLSBtYXJnaW5zIHNob3VsZCBiZSBzeW1tZXRyaWMgKi9cbiAgLyogcmVtb3ZlIGlmIG5vdCBuZWVkZWQgKi9cbiAgbWFyZ2luLWxlZnQ6IC4yZW07XG4gXG4gIC8qIHlvdSBjYW4gYmUgbW9yZSBjb21mb3J0YWJsZSB3aXRoIGluY3JlYXNlZCBpY29ucyBzaXplICovXG4gIC8qIGZvbnQtc2l6ZTogMTIwJTsgKi9cbiBcbiAgLyogVW5jb21tZW50IGZvciAzRCBlZmZlY3QgKi9cbiAgLyogdGV4dC1zaGFkb3c6IDFweCAxcHggMXB4IHJnYmEoMTI3LCAxMjcsIDEyNywgMC4zKTsgKi9cbn1cbi5zYi1pY29uLWZpbHRlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAwJzsgfSAvKiAn7qCAJyAqL1xuLnNiLWljb24tdGgtbGFyZ2U6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMSc7IH0gLyogJ+6ggScgKi9cbi5zYi1pY29uLXRoOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDInOyB9IC8qICfuoIInICovXG4uc2ItaWNvbi10aC1saXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDMnOyB9IC8qICfuoIMnICovXG4uc2ItaWNvbi1wZW5jaWw6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNCc7IH0gLyogJ+6ghCcgKi9cbi5zYi1pY29uLWNhbmNlbDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA1JzsgfSAvKiAn7qCFJyAqL1xuLnNiLWljb24tcGx1czpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA2JzsgfSAvKiAn7qCGJyAqL1xuLnNiLWljb24tY29nOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDcnOyB9IC8qICfuoIcnICovXG4uc2ItaWNvbi1hbGlnbi1qdXN0aWZ5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDgnOyB9IC8qICfuoIgnICovXG4uc2ItaWNvbi1vazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA5JzsgfSAvKiAn7qCJJyAqL1xuLnNiLWljb24tbG9jazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBhJzsgfSAvKiAn7qCKJyAqL1xuLnNiLWljb24tZXhjaGFuZ2U6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwYic7IH0gLyogJ+6giycgKi9cbi5zYi1pY29uLWRvd246YmVmb3JlIHsgY29udGVudDogJ1xcZTgwYyc7IH0gLyogJ+6gjCcgKi9cbi5zYi1pY29uLXVwOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGQnOyB9IC8qICfuoI0nICovXG4uc2ItaWNvbi1oZWxwLWNpcmNsZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwZSc7IH0gLyogJ+6gjicgKi9cbi5zYi1pY29uLWluZm8tY2lyY2xlZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBmJzsgfSAvKiAn7qCPJyAqL1xuLnNiLWljb24tc29ydC1uYW1lLXVwOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTAnOyB9IC8qICfuoJAnICovXG4uc2ItaWNvbi1zb3J0LW5hbWUtZG93bjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODExJzsgfSAvKiAn7qCRJyAqL1xuLnNiLWljb24tZG93bi1kaXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMic7IH0gLyogJ+6gkicgKi9cbi5zYi1pY29uLXVwLWRpcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODEzJzsgfSAvKiAn7qCTJyAqL1xuLnNiLWljb24tY29tcGFzczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE0JzsgfSAvKiAn7qCUJyAqL1xuLnNiLWljb24tcmlnaHQtZGlyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTUnOyB9IC8qICfuoJUnICovXG4uc2ItaWNvbi1sZWZ0LWRpcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE2JzsgfSAvKiAn7qCWJyAqL1xuLnNiLWljb24tZG9jczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE3JzsgfSAvKiAn7qCXJyAqL1xuLnNiLWljb24tY2lyY2xlLWVtcHR5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTgnOyB9IC8qICfuoJgnICovXG4uc2ItaWNvbi1kb3QtY2lyY2xlZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE5JzsgfSAvKiAn7qCZJyAqL1xuLnNiLWljb24tdG8tZW5kOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWEnOyB9IC8qICfuoJonICovXG4uc2ItaWNvbi10by1zdGFydDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFiJzsgfSAvKiAn7qCbJyAqL1xuLnNiLWljb24tZmFzdC1mb3J3YXJkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWMnOyB9IC8qICfuoJwnICovXG4uc2ItaWNvbi1mYXN0LWJhY2t3YXJkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWQnOyB9IC8qICfuoJ0nICovXG4uc2ItaWNvbi1jdzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFlJzsgfSAvKiAn7qCeJyAqL1xuLnNiLWljb24tbGV2ZWwtZG93bjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFmJzsgfSAvKiAn7qCfJyAqL1xuLnNiLWljb24tYXR0ZW50aW9uOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjAnOyB9IC8qICfuoKAnICovXG4uc2ItaWNvbi1hdHRlbnRpb24tY2lyY2xlZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIxJzsgfSAvKiAn7qChJyAqL1xuLnNiLWljb24tc2VhcmNoOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjInOyB9IC8qICfuoKInICovXG4uc2ItaWNvbi1jY3c6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMyc7IH0gLyogJ+6goycgKi9cbi5zYi1pY29uLXN0YXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyNCc7IH0gLyogJ+6gpCcgKi9cbi5zYi1pY29uLXN0YXItZW1wdHk6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyNSc7IH0gLyogJ+6gpScgKi9cbi8qIGVuZCBvZiBpbXBvcnQgZnJvbSBzYi1lbWJlZGRlZC5jc3MgKi9cblxuXG4uc2IgKltjbGFzc149XCJzYi1pY29uLVwiXTpiZWZvcmUsIC5zYiAqW2NsYXNzKj1cIiBzYi1pY29uLVwiXTpiZWZvcmUge1xuICBmb250LWZhbWlseTogJ3NiJztcbiAgY29sb3I6IGluaGVyaXQ7XG4gIC8qIEJldHRlciBGb250IFJlbmRlcmluZyA9PT09PT09PT09PSAqL1xuICAtd2Via2l0LWZvbnQtc21vb3RoaW5nOiBhbnRpYWxpYXNlZDtcbiAgLW1vei1vc3gtZm9udC1zbW9vdGhpbmc6IGdyYXlzY2FsZTtcbn1cblxuLy8gZml4IGZvciBpY29uIGZvbnQgdGhhdCBkaWRuJ3QgaGF2ZSB2ZXJ0aWNhbCBzb3J0IGFycm93c1xuLnNiLWljb24tZXhjaGFuZ2U6YmVmb3JlIHtcbiAgLnJvdGF0ZSg5MGRlZyk7XG59XG5cbi8vIFRoZSBsb2FkaW5nIHNwaW5uZXIuICBUaGlzIGlzIGFuIGFuaW1hdGVkIGdpZiwgZm91bmQgYXQgXCJpY29ucy9sb2FkZXIuZ2lmXCJcbi5zYi1pY29uLWxvYWRpbmcge1xuICB3aWR0aDogMTQ4cHg7XG4gIHRleHQtYWxpZ246IGNlbnRlcjtcbn1cblxuLnNiLWljb24tbG9hZGluZyA+IGRpdiB7XG4gIHdpZHRoOiAzNnB4O1xuICBoZWlnaHQ6IDE4cHg7XG4gIG1hcmdpbjogMnB4O1xuICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JIaWdobGlnaHRDb2xvcjtcblxuICBib3JkZXItcmFkaXVzOiAxMCU7XG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgLXdlYmtpdC1hbmltYXRpb246IGJvdW5jZWRlbGF5IDEuNHMgaW5maW5pdGUgZWFzZS1pbi1vdXQ7XG4gIGFuaW1hdGlvbjogYm91bmNlZGVsYXkgMS40cyBpbmZpbml0ZSBlYXNlLWluLW91dDtcbiAgLyogUHJldmVudCBmaXJzdCBmcmFtZSBmcm9tIGZsaWNrZXJpbmcgd2hlbiBhbmltYXRpb24gc3RhcnRzICovXG4gIC13ZWJraXQtYW5pbWF0aW9uLWZpbGwtbW9kZTogYm90aDtcbiAgYW5pbWF0aW9uLWZpbGwtbW9kZTogYm90aDtcbn1cblxuLnNiLWljb24tbG9hZGluZyAuc2ItaWNvbi1ib3VuY2UxIHtcbiAgLXdlYmtpdC1hbmltYXRpb24tZGVsYXk6IC0wLjMycztcbiAgYW5pbWF0aW9uLWRlbGF5OiAtMC4zMnM7XG59XG5cbi5zYi1pY29uLWxvYWRpbmcgLnNiLWljb24tYm91bmNlMiB7XG4gIC13ZWJraXQtYW5pbWF0aW9uLWRlbGF5OiAtMC4xNnM7XG4gIGFuaW1hdGlvbi1kZWxheTogLTAuMTZzO1xufVxuXG4vLyBIZWFkZXIgaWNvbiBiYWNrZ3JvdW5kIGNvbG9yc1xuLnNiUGFnZVRpdGxlIHtcblx0LnNmLWljb24tY3VzdG9tOTAge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICM1QTlDREQ7XG5cdH1cblx0LnNmLWljb24tY3VzdG9tOTMge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICM5MDRENEM7XG5cdH1cblx0LnNmLWljb24tcHJvZHVjdCB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogI0I3ODFEMztcblx0fVx0XG5cdC5zZi1pY29uLXNldHRpbmdzIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjRURCNTY2O1xuXHR9XG5cdC5zZi1pY29uLWRvd25sb2FkIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNTQ2OThEO1xuXHR9XG5cdC5zZi1pY29uLWNvbnRyYWN0LTEge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICM2RUMwNkU7XG5cdH1cblx0LnNmLWljb24tYXBwcm92YWwge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICMwMEM2Qjc7XG5cdH1cbiAgICAuc2YtaWNvbi1wb3N0IHtcbiAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogIzY1Q0FFNDtcbiAgICB9XG5cdC5zZi1pY29uLWdkb2Mge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICM1NDY5OEQ7XG5cdH1cblx0LnNmLWljb24tZG9jdW1lbnQge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICNiYWFjOTM7XG5cdH1cblx0LnNmLWljb24tcmVjZW50IHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNkNBMUU5O1xuXHR9XG5cdC5zZi1pY29uLWNvcHkge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICM2Q0EwRTk7XG5cdH1cblx0LnNmLWljb24tZmF2b3JpdGUge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICNGRjdCODQ7XG5cdH1cblx0LnNmLWljb24tcmVmcmVzaCB7XG5cdFx0Ji5yZXNpemUge1xuXHRcdFx0YmFja2dyb3VuZC1jb2xvcjogIzZDQTBFOTtcblx0XHR9XG5cdH1cblxuXHQuc2YtaWNvbi1yZXBsYWNlIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNTQ2OThEO1xuXHR9XG59XG5cbkAtd2Via2l0LWtleWZyYW1lcyBib3VuY2VkZWxheSB7XG4gIDAlLCA4MCUsIDEwMCUgeyAtd2Via2l0LXRyYW5zZm9ybTogc2NhbGUoMC4wKSB9XG4gIDQwJSB7IC13ZWJraXQtdHJhbnNmb3JtOiBzY2FsZSgxLjApIH1cbn1cblxuQGtleWZyYW1lcyBib3VuY2VkZWxheSB7XG4gIDAlLCA4MCUsIDEwMCUge1xuICAgIHRyYW5zZm9ybTogc2NhbGUoMC4wKTtcbiAgICAtd2Via2l0LXRyYW5zZm9ybTogc2NhbGUoMC4wKTtcbiAgfSA0MCUge1xuICAgICAgdHJhbnNmb3JtOiBzY2FsZSgxLjApO1xuICAgICAgLXdlYmtpdC10cmFuc2Zvcm06IHNjYWxlKDEuMCk7XG4gICAgfVxufVxuIiwiLypcblJvdGF0ZXMgYW4gZWxlbWVudFxuXG4kciAtIHRoZSByb3RhdGUgZnVuY3Rpb24gcGFyYW10ZXIsIGUuZy4gOTBkZWdcbiAqL1xuLnJvdGF0ZShAcikge1xuICAtd2Via2l0LXRyYW5zZm9ybTogcm90YXRlKEByKTtcbiAgLW1vei10cmFuc2Zvcm06IHJvdGF0ZShAcik7XG4gIC1tcy10cmFuc2Zvcm06IHJvdGF0ZShAcik7XG4gIHRyYW5zZm9ybTogcm90YXRlKEByKTtcbn1cbiIsIkBpbXBvcnQgXCJ2YXJpYWJsZXMubGVzc1wiO1xuQGltcG9ydCBcIm1peGlucy5sZXNzXCI7XG5AaW1wb3J0IFwiaWNvbnMubGVzc1wiO1xuXG5AcGFkZGluZ01vYmlsZTogMTVweDtcbkBmb250U2l6ZU1vYmlsZTogMTRweDtcblxuLy8gT3ZlcnJpZGluZyBwYlN1YnNlY3Rpb24gc3R5bGluZyBmb3IgbGluZSBlZGl0b3IgLSBjYW5ub3QgdXBkYXRlIHRoZSBwYWdlQmxvY2tTZWN0aW9uIGNvbXBvbmVudCB5ZXQgYXMgd2UgYXJlIHJlc2tpbm5pbmcgb25seSBsaW5lIGVkaXRvciByaWdodCBub3dcbi5wYlN1YnNlY3Rpb24gaGVhZGVyIHtcblx0Knpvb206IDE7XG5cdG1hcmdpbjogMDtcblx0cGFkZGluZzogMDtcblx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0Ym9yZGVyOiBub25lO1xuXG59XG5cbi8qYSB0YWJsZSB0aGF0IGRpc3BsYXlzIGEgbGlzdCBvZiBlbnRpdGllcy9yb3dzL2V0YywgYSBsYSBhIFwibGlzdCBwYWdlXCIqL1xuLnNiVGFibGUge1xuXHRib3JkZXItY29sbGFwc2U6IGNvbGxhcHNlO1xuXHRib3JkZXItc3BhY2luZzogMDtcblx0d2lkdGg6IDEwMCU7XG5cdHRib2R5IHtcbiAgICBcdC5zYkFjdGlvbnMge1xuICAgICAgXHRcdFtjbGFzc149XCJzZi1pY29uLVwiXTpiZWZvcmUsIFtjbGFzcyo9XCIgc2YtaWNvbi1cIl06YmVmb3Jle1xuICAgICAgICBcdFx0Y29sb3I6IEBzYkxpbmtDb2xvcjtcbiAgICAgICAgXHRcdGZvbnQtc2l6ZToyMHB4O1xuICAgICAgICBcdFx0Jjpob3ZlciB7XG4gICAgICAgIFx0XHRcdGNvbG9yOiBAc2JGb250Q29sb3I7XG4gICAgICAgICAgXHRcdFx0Y3Vyc29yOiBwb2ludGVyO1xuICAgICAgICBcdFx0fVxuICAgICAgXHRcdH1cbiAgIFx0XHR9XG4gICBcdH1cblx0PiB0aCxcblx0PiB0ciA+IHRkIHtcblx0XHRoZWlnaHQ6IDQ2cHg7XG5cdH1cblx0LypjZW50ZXIgYWxpZ25lZCBjZWxscyovXG5cdD4gdGJvZHkgPiB0ciA+IHRkLmNlbnRlcixcblx0PiB0Ym9keSA+IHRyID4gdGQuc2JBY3Rpb25zLFxuXHQ+IHRoZWFkID4gdHIgPiB0aC5zYkFjdGlvbnMsXG5cdD4gdGhlYWQgPiB0ciA+IHRoLmNlbnRlcixcblx0PiB0Zm9vdCA+IHRyID4gdGQuY2VudGVyIHtcblx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdH1cblx0LypyaWdodCBhbGlnbmVkIGNlbGxzKi9cblx0PiB0aGVhZCA+IHRyID4gdGgucmlnaHQsXG5cdD4gdGJvZHkgPiB0ciA+IHRkLnJpZ2h0LFxuXHQ+IHRmb290ID4gdHIgPiB0ZC5yaWdodCB7XG5cdFx0dGV4dC1hbGlnbjogcmlnaHQ7XG5cdH1cblx0PiBhIHtcblx0XHRjb2xvcjogaW5oZXJpdDtcblx0fVxuXHQ+IGlucHV0LFxuXHRzZWxlY3Qge1xuXHRcdGZvbnQtc2l6ZTogaW5oZXJpdDtcblxuXHR9XG5cblx0LyphIHN0YW5kYXJkIHRhYmxlIGhlYWRlciBjZWxsKi9cblx0PiB0aGVhZCA+IHRyID4gdGgge1xuXHRcdGJvcmRlci1ib3R0b206IDFweCBzb2xpZCAjYzBjMGMwO1xuXHRcdHBhZGRpbmc6IDhweCA2cHggNnB4O1xuXHRcdGZvbnQtd2VpZ2h0OiBub3JtYWw7XG5cdFx0dGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtcblx0XHRjb2xvcjogIzc3Nztcblx0XHR0ZXh0LWFsaWduOiBsZWZ0O1xuXHRcdHdoaXRlLXNwYWNlOiBub3dyYXA7XG5cdH1cblx0LyphIHN0YW5kYXJkIHRhYmxlIGJvZHkgY2VsbCovXG5cdD4gdGJvZHkgPiB0ciA+IHRkIHtcblx0XHRib3JkZXItYm90dG9tOiAxcHggc29saWQgI2QwZDBkMDtcblx0XHRwYWRkaW5nOiA4cHggNnB4IDZweDtcblx0XHRjb2xvcjogIzIyMjtcblxuXHRcdCYucmlnaHQgaW5wdXR7XG5cdFx0XHR0ZXh0LWFsaWduOiByaWdodDtcblx0XHR9XG5cblx0XHRpbnB1dDpkaXNhYmxlZCB7XG5cdFx0XHRiYWNrZ3JvdW5kLWNvbG9yOiBAc2JDb250ZW50QmdDb2xvcjtcblx0XHR9XG5cdH1cblx0Lyp0YWJsZSBmb290ZXIgY2VsbHMqL1xuXHQ+IHRmb290ID4gdHIgPiB0ZCB7XG5cdFx0cGFkZGluZzogOHB4IDZweCA2cHg7XG5cdFx0Y29sb3I6ICMyMjI7XG5cdH1cbn1cblxuLypBIGNvbnRhaW5lci9yb3cgb2YgYnV0dG9ucywgYSBsYSBhIGJ1dHRvbiBcImJhclwiKi9cbi5zYkJ1dHRvbnMge1xuXHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdGRpc3BsYXk6IGlubGluZS1ibG9jaztcbn1cblxuLnNiTW9kYWxGb290ZXIgPiAuc2JCdXR0b25zIHtcbiAgcGFkZGluZzogMTBweCAwO1xufVxuXG4vKkEgc3RhbmRhcmQsIHN0YW5kYWxvbmUgYnV0dG9uKi9cbi5zYkJ0biB7XG5cdGJhY2tncm91bmQ6ICNmZmY7XG5cdGNvbG9yOiAjMTY2YmJmO1xuXHRib3JkZXI6IDFweCBzb2xpZCAjYzBjMGMwO1xuXHRib3JkZXItcmFkaXVzOiAzcHg7XG5cdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICBoZWlnaHQ6IDQwcHg7XG5cdGZvbnQtc2l6ZTogMTZweDtcblx0bWFyZ2luOiAwIDAgMCA0cHg7XG5cblx0PiBzcGFuIHtcblx0XHRjb2xvcjogQHNiTGlua0NvbG9yO1xuXHR9XG59XG5cblxuXG4uc2JNb2JpbGVUYWJzIHtcblx0Zm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cdG1hcmdpbjogMThweCAwO1xuXHR0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlO1xuXHRib3JkZXItYm90dG9tOiBAc2JDb250ZW50Qm9yZGVyO1xuXHRtYXJnaW4tYm90dG9tOiAxMHB4O1xuXG5cdD4gYSB7XG5cdFx0Y29sb3I6IGluaGVyaXQ7XG5cdFx0cGFkZGluZzogNnB4IDE2cHggNnB4O1xuXHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblxuXHRcdCYuY3VzdG9tIHtcblx0XHRcdHBvc2l0aW9uOiByZWxhdGl2ZTtcblx0XHR9XG5cblx0XHQ+IC5zZi1pY29uLWVkaXQge1xuXHRcdFx0dmlzaWJpbGl0eTogaGlkZGVuO1xuXHRcdFx0Y29sb3I6ICMwMDcwZDI7XG5cdFx0XHRwb3NpdGlvbjogYWJzb2x1dGU7XG5cdFx0XHR0b3A6IDZweDtcblx0XHRcdHJpZ2h0OiAtNnB4O1xuXG5cdFx0XHQmLnZpc2libGUge1xuXHRcdFx0XHR2aXNpYmlsaXR5OiB2aXNpYmxlO1xuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdD4gYS5zZWxlY3RlZCB7XG5cdFx0Ym9yZGVyLWJvdHRvbTogNHB4IHNvbGlkICMxNjZiYmY7XG5cdH1cbn1cblxuLnNiUGFnZVRpdGxlTW9iaWxlIHtcblx0cG9zaXRpb246IGZpeGVkO1xuXHR0b3A6IDA7XG5cdGxlZnQ6IDA7XG5cdHJpZ2h0OiAwO1xuXHRoZWlnaHQ6IDc1cHg7XG5cdHotaW5kZXg6IDU7XG5cdGJhY2tncm91bmQtY29sb3I6IEBzYkNvbnRlbnRCZ0NvbG9yO1xuXHRib3JkZXItYm90dG9tOiBAc2JDb250ZW50Qm9yZGVyO1xuXG5cdD4gLnNiUGFnZVRpdGxlVGFibGUge1xuXHRcdD4gZGl2IHtcblx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdFx0XHRtYXJnaW4tdG9wOiAyMXB4O1xuXHRcdH1cblxuXHRcdD4gLmljb24ge1xuXHRcdFx0bWFyZ2luLXJpZ2h0OiAxMHB4O1xuXHRcdH1cblxuXHRcdD4gLnNiUGFnZVRpdGxlTGVmdCB7XG5cdFx0XHRoMSwgaDIge1xuXHRcdFx0XHRmb250LXNpemU6IEBzYkZvbnRTaXplICogMS4yO1xuXHRcdFx0XHRmb250LXdlaWdodDogbm9ybWFsO1xuXHRcdFx0XHRtYXJnaW46IDA7XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0PiAuc2JQYWdlVGl0bGVSaWdodCB7XG5cdFx0XHRtYXJnaW46IDdweDtcblx0XHRcdGZsb2F0OiByaWdodDtcblxuXHRcdFx0PiAuc2JQYWdlQnV0dG9ucyB7XG5cdFx0XHRcdG1hcmdpbi10b3A6IDdweDtcblx0XHRcdFx0bWFyZ2luLWJvdHRvbTogN3B4O1xuXHRcdFx0fVxuXHRcdH1cblx0fVxufVxuXG4vLyBBcGV4IFBhZ2VNZXNzYWdlcyA8YXBleDpwYWdlTWVzc2FnZXM+XG5kaXYubWVzc2FnZSB7XG5cdGJvcmRlci1yYWRpdXM6IDNweDtcblx0bWFyZ2luOiAxMHB4IDA7XG5cdHBhZGRpbmc6IDEycHg7XG5cdGZvbnQtc2l6ZTogQGZvbnRTaXplTW9iaWxlO1xuXHRjb2xvcjogQHNiRm9udENvbG9yO1xuXHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdGJhY2tncm91bmQ6IG5vbmU7XG5cblx0Ji50b3Age1xuXHRcdG1hcmdpbjogNzVweCAwIC02MHB4IDQwcHg7XG5cdH1cblxuXHQubXNnSWNvbiB7XG5cdCAgICBiYWNrZ3JvdW5kOiBub25lO1xuXHQgICAgd2lkdGg6IDA7XG5cdCAgICBoZWlnaHQ6IDA7XG5cdH1cblxuXHQubWVzc2FnZVRleHQge1xuXHRcdG1hcmdpbjogMCAwIDAgMzBweDtcblxuXHRcdD4gaDQsID4gZGl2IHtcblx0XHRcdGNvbG9yOiAjYzAwO1xuXHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdFx0dmVydGljYWwtYWxpZ246IHRvcDtcblx0XHRcdGxpbmUtaGVpZ2h0OiBAc2JGb250U2l6ZSAqIDIuMDtcblx0XHR9XG5cblx0XHRoNCB7XG5cdFx0XHRtYXJnaW4tbGVmdDogMTBweDtcblx0XHRcdG1hcmdpbi1yaWdodDogNnB4O1xuXHRcdH1cblxuXHRcdD4gZGl2Om5vdCg6Zmlyc3Qtb2YtdHlwZSkge1xuXHRcdFx0ZGlzcGxheTogYmxvY2s7XG5cdFx0fVxuXG5cdFx0JjpiZWZvcmUge1xuXHRcdFx0Zm9udC1mYW1pbHk6IFwic2JcIjtcblx0XHRcdGZvbnQtc3R5bGU6IG5vcm1hbDtcblx0XHRcdGZvbnQtd2VpZ2h0OiBub3JtYWw7XG5cdFx0XHRmb250LXNpemU6IEBzYkZvbnRTaXplICogMi4wO1xuXHRcdFx0c3BlYWs6IG5vbmU7XG5cdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0XHR0ZXh0LWRlY29yYXRpb246IGluaGVyaXQ7XG5cdFx0XHR3aWR0aDogMWVtO1xuXHRcdFx0bWFyZ2luLWxlZnQ6IC0zMHB4O1xuXHRcdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHRcdFx0Zm9udC12YXJpYW50OiBub3JtYWw7XG5cdFx0XHR0ZXh0LXRyYW5zZm9ybTogbm9uZTtcblx0XHRcdGxpbmUtaGVpZ2h0OiAxZW07XG5cdFx0fVxuXHR9XG5cblx0Ji5lcnJvck0yLFxuXHQmLmVycm9yTTMsXG5cdCYuZXJyb3JNNCxcblx0Ji5lcnJvck01LFxuXHQmLmVycm9yTTYge1xuXHRcdGJvcmRlci1jb2xvcjogI2MwMDtcblxuXHRcdC5tZXNzYWdlVGV4dCB7XG5cdFx0XHRjb2xvcjogI2MwMDtcblx0XHRcdCY6YmVmb3JlIHtcblx0XHRcdFx0Y29udGVudDogJ1xcZTgyMSc7ICAvL3NiLWljb24tYXR0ZW50aW9uLWNpcmNsZWRcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHQmLndhcm5pbmdNMixcblx0Ji53YXJuaW5nTTMsXG5cdCYud2FybmluZ000LFxuXHQmLndhcm5pbmdNNSxcblx0Ji53YXJuaW5nTTYge1xuXHRcdC5tZXNzYWdlVGV4dCB7XG5cdFx0XHRjb2xvcjogI2Q5ODYzMztcblx0XHRcdCY6YmVmb3JlIHtcblx0XHRcdFx0Y29udGVudDogJ1xcZTgyMCc7ICAvL3NiLWljb24tYXR0ZW50aW9uXG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblxuXHQmLmluZm9NMixcblx0Ji5pbmZvTTMsXG5cdCYuaW5mb000LFxuXHQmLmluZm9NNSxcblx0Ji5pbmZvTTYge1xuXHRcdC5tZXNzYWdlVGV4dCB7XG5cdFx0XHRjb2xvcjogIzAwMDBjYztcblx0XHRcdCY6YmVmb3JlIHtcblx0XHRcdFx0Y29udGVudDogJ1xcZTgwZic7ICAvL3NiLWljb24taW5mby1jaXJjbGVkXG5cdFx0XHR9XG5cdFx0fVxuXHR9XG59XG5cblxuLyoqIEN1c3RvbSBMb29rdXAgKi9cblxuc3Bhbi5sb29rdXBJbnB1dCB7XG4gICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbn1cblxuI2N1c3RvbUxvb2t1cENvbXBvbmVudCB7XG4gICAgZGl2Lmxvb2t1cFJlc3VsdHtcbiAgICAgICAgcGFkZGluZy10b3A6MTBweDtcbiAgICAgICAgY3Vyc29yOnBvaW50ZXI7XG4gICAgICAgIGNvbG9yOmJsdWU7XG4gICAgICAgIHRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7XG4gICAgfVxuICAgIGRpdi5sb29rdXBSZXN1bHQ6aG92ZXJ7XG4gICAgICAgIHRleHQtZGVjb3JhdGlvbjpub25lO1xuICAgICAgICB0ZXh0LXNoYWRvdzogMXB4IDFweCAxcHggIzU1NTtcbiAgICB9XG4gICAgc3Bhbi5yZXN1bHRIZWFkZXJ7XG4gICAgICAgIGRpc3BsYXk6YmxvY2s7XG4gICAgICAgIHBhZGRpbmctdG9wOiAyMHB4ICFpbXBvcnRhbnQ7XG4gICAgICAgIHBhZGRpbmctYm90dG9tOiA0cHggIWltcG9ydGFudDtcbiAgICAgICAgZm9udC1zdHlsZTppdGFsaWM7XG4gICAgfVxuICAgIGRpdi5ib2R5e1xuICAgICAgICBwYWRkaW5nLWJvdHRvbToyMHB4O1xuICAgIH1cbiAgICBpbnB1dHtcbiAgICAgICAgd2lkdGg6IDg1JSAhaW1wb3J0YW50O1xuICAgIH1cbiAgICAuc2ItaWNvbi1zZWFyY2h7XG4gICAgICAgIHBhZGRpbmctbGVmdDo3cHg7XG4gICAgfVxufVxuLyoqIE1vZGFsIGZvciBhZGRpdGlvbmFsIGJ1dHRvbiBvcHRpb25zIGluIGxpbmUgZWRpdG9yICovXG5cbi5tb2RhbERpYWxvZ1dyYXBwZXIge1xuXHRpbnB1dC5zYkJ0bixcblx0YnV0dG9uLnNiQnRuIHtcblx0XHRtYXJnaW4tYm90dG9tOiAxNXB4O1xuXHRcdG1hcmdpbi1sZWZ0OiAwcHg7XG5cblx0XHQmOmZpcnN0LW9mLXR5cGUge1xuXHRcdFx0bWFyZ2luLXRvcDogMTVweDtcblx0XHR9XG5cblx0XHQmOmxhc3Qtb2YtdHlwZSB7XG5cdFx0XHRtYXJnaW4tYm90dG9tOiAxNXB4O1xuXHRcdH1cblx0fVxufVxuXG5cbi8qKiBQaG9uZSBTdHlsZXMgKi9cblxuQG1lZGlhIG9ubHkgc2NyZWVuIGFuZCAobWluLWRldmljZS13aWR0aCA6IDMyMHB4KSBhbmQgKG1heC1kZXZpY2Utd2lkdGggOiA2NDBweCkge1xuXHQuc2JCdG4ge1xuXHRcdGZvbnQtc2l6ZTogQGZvbnRTaXplTW9iaWxlO1xuXHRcdHBhZGRpbmc6IDVweCAxMHB4O1xuXHR9XG5cblx0LnNiQnRuID4gc3BhbltjbGFzc149XCJzYi1pY29uLVwiXSxcblx0LnNiQnRuID4gc3BhbltjbGFzc149XCJpY29uLXV0aWxpdHktXCJdLFxuXHQuaWNvbi11dGlsaXR5LWRvd24ge1xuXHRcdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdH1cblxuXHQuc2JQYWdlVGl0bGVNb2JpbGUge1xuXG5cdFx0PiAuc2JQYWdlVGl0bGVUYWJsZSB7XG5cdFx0XHQ+IC5pY29uIHtcblx0XHRcdFx0ZmxvYXQ6IGxlZnQ7XG5cdFx0XHRcdG1hcmdpbi1sZWZ0OiAxMHB4O1xuXHRcdFx0XHRtYXJnaW4tcmlnaHQ6IDVweDtcblx0XHRcdH1cblxuXHRcdFx0PiAuc2JQYWdlVGl0bGVMZWZ0IHtcblx0XHRcdFx0ZmxvYXQ6IGxlZnQ7XG5cdFx0XHR9XG5cblx0XHRcdD4gZGl2IHtcblx0XHRcdFx0bWFyZ2luLXRvcDogMTVweDtcblx0XHRcdH1cblxuXHRcdFx0PiAuc2JQYWdlVGl0bGVSaWdodCB7XG5cdFx0XHRcdGRpc3BsYXk6IGJsb2NrO1xuXHRcdFx0XHRmbG9hdDogcmlnaHQ7XG5cblx0XHRcdFx0LnNiQmFjayB7XG5cdFx0XHRcdFx0ZmxvYXQ6IGxlZnQ7XG5cdFx0XHRcdFx0bWFyZ2luLWxlZnQ6IDA7XG5cdFx0XHRcdH1cblxuXHRcdFx0XHQuc2JDbG9zZSB7XG5cdFx0XHRcdFx0ZmxvYXQ6IHJpZ2h0O1xuXG5cdFx0XHRcdFx0PiAuc2YtaWNvbi1jbG9zZSB7XG5cdFx0XHRcdFx0XHRmb250LXNpemU6IEBmb250U2l6ZU1vYmlsZSAqIDEuMjtcblx0XHRcdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdFx0XHRcdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cblx0XHRcdFx0Lm1vZGFsRGlhbG9nV3JhcHBlciB7XG5cdFx0XHRcdFx0bWFyZ2luOiAwIGF1dG87XG5cdFx0XHRcdH1cblxuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdGRpdi5tZXNzYWdlIHtcblxuXHRcdCYudG9wIHtcblx0XHRcdG1hcmdpbjogMTE1cHggMCAtMTAwcHggMDtcblx0XHR9XG5cblx0XHQubWVzc2FnZVRleHQge1xuXHRcdFx0PiBkaXYge1xuXHRcdFx0XHRkaXNwbGF5OiBpbmxpbmU7XG5cdFx0XHRcdG1hcmdpbi1sZWZ0OiAtMTVweDtcblx0XHRcdH1cblx0XHR9XG5cdH1cbn1cblxuXG4jZWFzeVhETV9TQlFRX3Byb3ZpZGVyIHtcbiAgd2lkdGg6IDEwMCU7XG4gIG1pbi1oZWlnaHQ6IDIwMHB4O1xufVxuXG4uc2YtaWNvbi1jbG9zZSB7XG4gIGNvbG9yOiAjZmZmO1xuICBmb250LWZhbWlseTogQXJpYWw7XG4gIGZvbnQtd2VpZ2h0OiA2MDA7XG4gIGZvbnQtc2l6ZTogMjVweDtcbiAgZGlzcGxheTogYmxvY2s7XG4gIHRleHQtYWxpZ246IHJpZ2h0O1xuICB6LWluZGV4OiAyMjtcbiAgcmlnaHQ6IDA7XG4gIG1hcmdpbjogYXV0bztcbiAgd2lkdGg6IDEwMCU7XG4gIGxlZnQ6IDA7XG59XG4iLCIjc2JMaW5lRWRpdG9yIHtcblx0cGFkZGluZzogQHBhZGRpbmdNb2JpbGU7XG5cdGZvbnQtc2l6ZTogQGZvbnRTaXplTW9iaWxlO1xuXG5cdC5zYkVtcHR5UXVvdGVNc2csXG5cdC5zYkVtcHR5R3JvdXBNc2csXG5cdC5lbXB0eU1TVGFibGVNZXNzYWdlLFxuXHQuZW1wdHlTdGFuZGFyZFRhYmxlTWVzc2FnZSB7XG5cdFx0cGFkZGluZzogMjVweCAwO1xuXHR9XG5cblx0LnNiUXVvdGVGaWVsZHMge1xuXHRcdG1hcmdpbjogMCAxNXB4O1xuXG5cdFx0aGVhZGVyIHtcblx0XHRcdGJvcmRlcjogbm9uZTtcblxuXHRcdFx0PiBoMSB7XG5cdFx0XHRcdGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuXHRcdFx0fVxuXHRcdH1cblxuXHRcdC5zYlRhYmxlIHtcblx0XHRcdD4gdGJvZHkgPiB0ciB7XG5cblx0XHRcdFx0LnNiTGFiZWwgbGFiZWx7XG5cdFx0XHRcdFx0dGV4dC1hbGlnbjogcmlnaHQ7XG5cdFx0XHRcdFx0Zm9udC1zaXplOiBAZm9udFNpemVNb2JpbGU7XG5cdFx0XHRcdH1cblxuXHRcdFx0XHQ+IHRkIHtcblx0XHRcdFx0XHRib3JkZXI6IG5vbmU7XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHQuc2JRdW90ZUFjdGlvbnMsXG5cdC5zYkdyb3VwQWN0aW9ucyB7XG5cblx0XHQvLyBpbml0aWFsbHkgaGlkZSB0aGUgY3VzdG9tIGFjdGlvbnMgdGhhdCBhcmUgcmVuZGVyZWQgY29uZGl0aW9uYWxseVxuXHRcdC5yZW5ld1N1YnNjcmlwdGlvbnNCdG4sXG5cdFx0LnVwZ3JhZGVBc3NldHNCdG4sXG5cdFx0LnJlc2V0RGlzY0J0bixcblx0XHQub3B0aW9uYWxBbGxCdG4sXG5cdFx0Lm9wdGlvbmFsTm9uZUJ0bixcblx0XHQuZGVsZXRlTGluZXNCdG4sXG5cdFx0LmFkZEdyb3VwQnRuLFxuXHRcdC51bmdyb3VwQnRuIHtcblx0XHRcdGRpc3BsYXk6IG5vbmU7XG5cdFx0fVxuXG5cdFx0dWwge1xuXHRcdFx0bWFyZ2luOiAwO1xuXHRcdFx0cGFkZGluZzogMDtcblx0XHRcdGxpc3Qtc3R5bGUtdHlwZTogbm9uZTtcblxuXHRcdFx0dWwge1xuXHRcdFx0XHRkaXNwbGF5OiBub25lO1xuXHRcdFx0fVxuXG5cdFx0XHRsaSB7XG5cdFx0XHRcdHNwYW4uc2YtaWNvbi1kb3duIHtcblx0XHRcdFx0XHRwYWRkaW5nOiAxMHB4O1xuXHRcdFx0XHRcdGZvbnQtc2l6ZTogMThweDtcblxuXHRcdFx0XHRcdCYub3BlbiArIHVsIHtcblx0XHRcdFx0XHRcdGRpc3BsYXk6IGJsb2NrO1xuXHRcdFx0XHRcdH1cblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdH1cblxuXHRcdGxpIHtcblx0XHRcdG1hcmdpbjogMTBweCAwO1xuXHRcdFx0cGFkZGluZzogMTBweDtcblx0XHRcdGRpc3BsYXk6IGJsb2NrO1xuXG5cdFx0XHQmLnNiQnRuIHtcblx0XHRcdFx0aGVpZ2h0OiBhdXRvO1xuXHRcdFx0fVxuXG5cdFx0XHQmLm1lbnUge1xuXHRcdFx0XHRib3JkZXI6IDFweCBzb2xpZCAjYzBjMGMwO1xuXG5cdFx0XHRcdGxpIHtcblx0XHRcdFx0XHRib3JkZXI6IG5vbmU7XG5cdFx0XHRcdFx0bWFyZ2luOiAwO1xuXG5cdFx0XHRcdFx0JjpmaXJzdC1vZi10eXBlIHtcblx0XHRcdFx0XHRcdG1hcmdpbi10b3A6IDEwcHg7XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0LnNiVG9vbFNlcGFyYXRvciB7XG5cdFx0XHRoZWlnaHQ6IDA7XG5cdFx0XHRwYWRkaW5nOiAwO1xuXHRcdFx0Ym9yZGVyOiBub25lO1xuXHRcdH1cblx0fVxuXG5cdCYudXBncmFkYWJsZSBsaS51cGdyYWRlQXNzZXRzQnRuIHtcblx0XHRkaXNwbGF5OiBibG9jaztcblx0fVxuXHQmLnJlbmV3YWJsZSBsaS5yZW5ld1N1YnNjcmlwdGlvbnNCdG4ge1xuXHRcdGRpc3BsYXk6IGJsb2NrO1xuXHR9XG5cdCYuZGlzY291bnRhYmxlIGxpLnJlc2V0RGlzY0J0biB7XG5cdFx0ZGlzcGxheTogYmxvY2s7XG5cdH1cblx0Ji5vcHRpb25hbCBsaS5vcHRpb25hbEFsbEJ0bixcblx0Ji5vcHRpb25hbCBsaS5vcHRpb25hbE5vbmVCdG4ge1xuXHRcdGRpc3BsYXk6IGJsb2NrO1xuXHR9XG5cdCYubXVsdGlEZWxldGUgLnNiUXVvdGVBY3Rpb25zIC5kZWxldGVMaW5lc0J0biB7XG5cdFx0ZGlzcGxheTogYmxvY2s7XG5cdH1cblx0Ji5ncm91cGFibGUgbGkuYWRkR3JvdXBCdG4ge1xuXHRcdGRpc3BsYXk6IGJsb2NrO1xuXHR9XG5cdCYudW5ncm91cGFibGUgbGkge1xuXG5cdFx0Ji5hZGRHcm91cEJ0biB7XG5cdFx0XHRkaXNwbGF5OiBub25lO1xuXHRcdH1cblxuXHRcdCYuYWRkR3JvdXBCdG4sXG5cdFx0Ji51bmdyb3VwQnRuIHtcblx0XHRcdGRpc3BsYXk6IGJsb2NrO1xuXHRcdH1cblx0fVxuXG5cdC5zYkdyb3Vwcyxcblx0LnNiTGluZUl0ZW1zLFxuXHQuc2JDdXN0b21TZWdtZW50c0VkaXRvcixcblx0LnNiRGlzY291bnRTY2hlZHVsZU1vZGFsLFxuXHQjc2JQcmljZWJvb2tNb2RhbCxcblx0I3NiRmF2b3JpdGVzTW9kYWwsXG5cdC5zYlByb2R1Y3RSdWxlQWxlcnRQb3B1cCxcblx0LnJlY29yZEVkaXRvckZvcm0ge1xuXHRcdHBhZGRpbmctdG9wOiA3NXB4O1xuXHR9XG5cblx0LnNiRGlzY291bnRTY2hlZHVsZU1vZGFsIHtcblx0XHQubWVzc2FnZSB7XG5cdFx0XHRtYXJnaW4tdG9wOiA1cHg7XG5cdFx0XHRtYXJnaW4tYm90dG9tOiA1cHg7XG5cdFx0fVxuXHR9XG5cblx0LnNiUXVvdGVGaWVsZHMsXG5cdC5tc1N0YW5kYXJkVGFibGVDb250YWluZXIsXG5cdC5zYk11bHRpU2VnbWVudFRhYmxlQ29udGFpbmVyLFxuXHQuc2JHcm91cEZpZWxkc0NvbnRhaW5lcixcblx0LnNiQ3VzdG9tU2VnbWVudHNDb250YWluZXIge1xuXHRcdG92ZXJmbG93LXg6IGF1dG87XG5cdH1cblxuXHQuc2JNb2RhbENvbnRlbnRDb250YWluZXIge1xuXHRcdG92ZXJmbG93LXg6IGF1dG87XG5cdH1cblxuXHQgLmRpc2NvdW50U2NoZWR1bGVMb2FkZXIge1xuXHRcdG1hcmdpbi1sZWZ0OiBhdXRvO1xuXHRcdG1hcmdpbi1yaWdodDogYXV0bztcblx0XHRtYXJnaW4tdG9wOiAyMHB4O1xuXHQgfVxuXG5cdC5kaXNjb3VudFNjaGVkdWxlUHJvcGVydHkge1xuXHRcdHdoaXRlLXNwYWNlOiBub3dyYXA7XG5cdH1cblxuXHQuaGlkZUlucHV0Qm9yZGVycyB7XG5cdFx0Ym9yZGVyOiAwcHg7XG5cdH1cblxuXHQuc2JHcm91cE5hbWVzIHtcblx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdFx0bWFyZ2luOiBAcGFkZGluZ01vYmlsZSAqIDI7XG5cblx0XHQ+IGRpdiB7XG5cdFx0XHR0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlO1xuXHRcdFx0cGFkZGluZzogQHBhZGRpbmdNb2JpbGU7XG5cdFx0XHRtYXJnaW4tYm90dG9tOiAxMHB4O1xuXG5cdFx0XHQ+IHNwYW4ge1xuXHRcdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0XHRcdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdFx0XHRcdGZvbnQtd2VpZ2h0OiAgbm9ybWFsO1xuXHRcdFx0XHRmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblx0XHRcdH1cblxuXHRcdFx0PiBzcGFuOmxhc3Qtb2YtdHlwZSB7XG5cdFx0XHRcdHBhZGRpbmctbGVmdDogQHBhZGRpbmdNb2JpbGUgKiAyO1xuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdC5zYlF1b3RlVG90YWxDb250YWluZXIsXG5cdC5zYkdyb3VwVG90YWxDb250YWluZXIge1xuXHRcdG1hcmdpbi10b3A6IDI1cHg7XG5cdFx0dGV4dC1hbGlnbjogcmlnaHQ7XG5cblx0XHRoZWFkZXIge1xuXHRcdFx0Ym9yZGVyLWJvdHRvbTogbm9uZTtcblx0XHRcdGJvcmRlci10b3A6IEBzYkNvbnRlbnRCb3JkZXI7XG5cblx0XHRcdD4gaDEge1xuXHRcdFx0XHRmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblx0XHRcdFx0bWFyZ2luLXRvcDogMTVweDtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHQuc2JHcm91cFRvdGFsQ29udGFpbmVyIHtcblx0XHRtYXJnaW4tdG9wOiA1MHB4O1xuXHR9XG5cblx0LnNiR3JvdXAge1xuXHRcdG1hcmdpbi10b3A6IDEwcHg7XG5cblx0XHQuc2JHcm91cEhlYWRlciB7XG5cdFx0XHRoZWlnaHQ6IDUwcHg7XG5cdFx0XHRmbG9hdDogbGVmdDtcblxuXHRcdFx0PiBoMiwgPiBpbnB1dCB7XG5cdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdFx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0XHRcdH1cblxuXHRcdFx0PiBoMiB7XG5cdFx0XHRcdG1hcmdpbjogMDtcblx0XHRcdFx0Zm9udC1zaXplOiAyMXB4O1xuXHRcdFx0fVxuXG5cdFx0XHQ+IGlucHV0IHtcblx0XHRcdFx0ZGlzcGxheTogbm9uZTtcblx0XHRcdFx0aGVpZ2h0OiA0MHB4O1xuXHRcdFx0XHR3aWR0aDogMjAwcHg7XG5cdFx0XHRcdHBhZGRpbmc6IDVweDtcblx0XHRcdH1cblxuXHRcdFx0PiBzcGFuIHtcblx0XHRcdFx0Zm9udC1zaXplOiAxLjNlbTtcblx0XHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdFx0XHR2ZXJ0aWNhbC1hbGlnbjogYm90dG9tO1xuXHRcdFx0fVxuXHRcdH1cblxuXHRcdC5zYkdyb3VwQnV0dG9ucyB7XG5cdFx0XHRmbG9hdDogcmlnaHQ7XG5cdFx0fVxuXG5cdFx0LnNiRGVzY3JpcHRpb25GaWVsZCB7XG5cdFx0XHRtYXJnaW46IDIwcHggMCA0MHB4O1xuXHRcdFx0Zm9udC1zaXplOiBAZm9udFNpemVNb2JpbGU7XG5cdFx0fVxuXG5cdFx0LnNiR3JvdXBGaWVsZHNDb250YWluZXIge1xuXHRcdFx0cGFkZGluZzogNXB4O1xuXG5cdFx0XHQuc2JHcm91cEZpZWxkcyB7XG5cdFx0XHRcdC5zYkdyb3VwRmllbGQge1xuXHRcdFx0XHRcdGRpc3BsYXk6IGJsb2NrO1xuXHRcdFx0XHRcdHdoaXRlLXNwYWNlOiBub3dyYXA7XG5cdFx0XHRcdFx0bWFyZ2luLWJvdHRvbTogMTVweDtcblxuXHRcdFx0XHRcdGxhYmVsIHtcblx0XHRcdFx0XHRcdGRpc3BsYXk6IGlubGluZTtcblx0XHRcdFx0XHRcdGZvbnQtc2l6ZTogQGZvbnRTaXplTW9iaWxlO1xuXHRcdFx0XHRcdFx0Y29sb3I6IEBzYkZvbnRDb2xvcjtcblx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHRpbnB1dFt0eXBlPSdjaGVja2JveCddIHtcblx0XHRcdFx0XHRcdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0Lm11bHRpU2VnbWVudC5zYlRhYmxlLFxuXHRcdC5zdGFuZGFyZC5zYlRhYmxlIHtcblx0XHRcdG1hcmdpbi10b3A6IDMwcHg7XG5cblx0XHRcdD4gdGhlYWQgPiB0aCB7XG5cdFx0XHRcdHNwYW4ge1xuXHRcdFx0XHRcdGNvbG9yOiBAc2JGb250Q29sb3I7XG5cdFx0XHRcdH1cblxuXHRcdFx0fVxuXG5cdFx0XHQ+IHRib2R5ID4gdHIgPiB0ZCB7XG5cdFx0XHRcdGhlaWdodDogNTVweDtcblxuXHRcdFx0XHQmLnNiQWN0aW9ucyB7XG5cdFx0XHRcdFx0d2hpdGUtc3BhY2U6IG5vd3JhcDtcblx0XHRcdFx0XHR0ZXh0LWFsaWduOiBsZWZ0O1xuXG5cdFx0XHRcdFx0Lmljb24tdXRpbGl0eS1jaGV2cm9ucmlnaHQsXG5cdFx0XHRcdFx0Lmljb24tdXRpbGl0eS1kb3duIHtcblx0XHRcdFx0XHRcdHdpZHRoOiAzMHB4O1xuXHRcdFx0XHRcdFx0Zm9udC1zaXplOiAxN3B4O1xuXHRcdFx0XHRcdFx0Y29sb3I6IEBzYkxpbmtDb2xvcjtcblx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHR1bCB7XG5cdFx0XHRcdFx0XHRtYXJnaW46IDA7XG5cdFx0XHRcdFx0XHRwYWRkaW5nOiAwO1xuXHRcdFx0XHRcdFx0bGlzdC1zdHlsZS10eXBlOiBub25lO1xuXG5cdFx0XHRcdFx0XHR1bCB7XG5cdFx0XHRcdFx0XHRcdGRpc3BsYXk6IG5vbmU7XG5cdFx0XHRcdFx0XHRcdHRvcDogMTAwJTtcblx0XHRcdFx0XHRcdFx0bGVmdCA6IDA7XG5cdFx0XHRcdFx0XHRcdHdpZHRoOjEwMCU7XG5cdFx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHRcdGxpIHtcblx0XHRcdFx0XHRcdFx0c3Bhbi5zZi1pY29uLWRvd24ub3BlbiArIHVsIHtcblx0XHRcdFx0XHRcdFx0XHRkaXNwbGF5OiBibG9jaztcblx0XHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdGxpIHtcblx0XHRcdFx0XHRcdG1hcmdpbjogMTBweCAwO1xuXHRcdFx0XHRcdFx0cGFkZGluZzogMTBweDtcblx0XHRcdFx0XHRcdGRpc3BsYXk6IGJsb2NrO1xuXG5cdFx0XHRcdFx0XHQmLnNiQnRuIHtcblx0XHRcdFx0XHRcdFx0aGVpZ2h0OiBhdXRvO1xuXHRcdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0XHQmLm1lbnUge1xuXHRcdFx0XHRcdFx0XHRib3JkZXI6IDFweCBzb2xpZCAjYzBjMGMwO1xuXG5cdFx0XHRcdFx0XHRcdGxpIHtcblx0XHRcdFx0XHRcdFx0XHRib3JkZXI6IG5vbmU7XG5cdFx0XHRcdFx0XHRcdFx0bWFyZ2luOiAwO1xuXG5cdFx0XHRcdFx0XHRcdFx0JjpmaXJzdC1vZi10eXBlIHtcblx0XHRcdFx0XHRcdFx0XHRcdG1hcmdpbi10b3A6IDEwcHg7XG5cdFx0XHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0Ly8gaW5pdGlhbGx5IGhpZGUgYWxsIGN1c3RvbSBhY3Rpb25zIHRoYXQgZG9lcyBoYXZlIGFuIGFjdGlvbiBzZWxlY3RlZCAobWVudSB0eXBlIG9yIHVybCBjdXN0b20gYWN0aW9ucyBzaG91bGQgYmUgZGlzcGxheWVkIGF0IGFsbCB0aW1lcylcblx0XHRcdFx0XHQuc2JBY3Rpb24uYWN0aW9uIHtcblx0XHRcdFx0XHRcdGRpc3BsYXk6IG5vbmU7XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0Ly8gSWYgbGluZSBpcyBkZWxldGFibGUgZnJvbSB0aGUgcXVvdGUsIGRpc3BsYXkgQWRkIFRvIEZhdm9yaXRlcywgUmVtb3ZlIEZyb20gRmF2b3JpdGVzLCBEZWxldGUgYW5kIENsb25lIGFjdGlvbnNcblx0XHRcdFx0XHQmLnJlbW92YWJsZSB7XG5cdFx0XHRcdFx0XHQuYWRkVG9GYXZCdG4sXG5cdFx0XHRcdFx0XHQucmVtb3ZlRnJvbUZhdkJ0bixcblx0XHRcdFx0XHRcdC5kZWxldGVCdG4sXG5cdFx0XHRcdFx0XHQuY2xvbmVCdG4ge1xuXHRcdFx0XHRcdFx0XHRkaXNwbGF5OiBibG9jaztcblx0XHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdFx0Ly8gRGlzcGxheSBlaXRoZXIgQWRkIFRvIEZhdm9yaXRlcyBvciBSZW1vdmUgRnJvbSBGYXZvcml0ZXMgYnV0dG9uIGRlcGVuZGluZyBvbiB3aGV0aGVyIHRoZSBsaW5lIGlzIGZhdm9yaXRlXG5cdFx0XHRcdFx0XHQmLmZhdm9yaXRlIC5hZGRUb0ZhdkJ0bixcblx0XHRcdFx0XHRcdCY6bm90KC5mYXZvcml0ZSkgLnJlbW92ZUZyb21GYXZCdG4ge1xuXHRcdFx0XHRcdFx0XHRkaXNwbGF5OiBub25lO1xuXHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdC8vIElmIHRoZSBsaW5lIGlzIGEgc3RhbmRhbG9uZSBsaW5lLCBkaXNwbGF5IENMb25lIGljb24gKGJvdGggZm9yIGV4aXN0aW5nIGFuZCBuZXcgbGluZXMpXG5cdFx0XHRcdFx0Jjpub3QoLmNvbXBvbmVudCkge1xuXHRcdFx0XHRcdFx0LmNsb25lQnRuIHtcblx0XHRcdFx0XHRcdFx0ZGlzcGxheTogYmxvY2s7XG5cdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0Ly8gSWYgbGluZSBpcyBidW5kbGUgcGFyZW50LCBkaXNwbGF5IHRoZSBSZWNvbmZpZ3VyZSBMaW5lIGFjdGlvblxuXHRcdFx0XHRcdCYuY29uZmlndXJhYmxlIHtcblx0XHRcdFx0XHRcdC5yZWNvbmZpZ3VyZUJ0biB7XG5cdFx0XHRcdFx0XHRcdGRpc3BsYXk6IGJsb2NrO1xuXHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdC8vIElmIGxpbmUgY2FuIGJlIGRpc3BsYXllZCBpbiBlaXRoZXIgdGFibGUsIGRpc3BsYXkgRGVzZWdtZW50IG9yIFJlc2VnbWVudCBMaW5lIGFjdGlvbnNcblx0XHRcdFx0XHQmLmNvbnZlcnRhYmxlIHtcblx0XHRcdFx0XHRcdC5kZXNlZ21lbnRCdG4sXG5cdFx0XHRcdFx0XHQucmVzZWdtZW50QnRuIHtcblx0XHRcdFx0XHRcdFx0ZGlzcGxheTogYmxvY2s7XG5cdFx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHRcdC8vIERpc3BsYXkgZWl0aGVyIERlc2VnbWVudCBvciBSZXNlZ21lbnQgZGVwZW5kaW5nIG9uIHdoZXRoZXIgdGhlIGxpbmUgaXMgYSBzdGFuZGFyZCBvciBzZWdtZW50ZWQgbGluZSBpdGVtXG5cdFx0XHRcdFx0XHQmLnNlZ21lbnRlZCAucmVzZWdtZW50QnRuLFxuXHRcdFx0XHRcdFx0Jjpub3QoLnNlZ21lbnRlZCkgLmRlc2VnbWVudEJ0biB7XG5cdFx0XHRcdFx0XHRcdGRpc3BsYXk6IG5vbmU7XG5cdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0Ly8gSWYgbGluZSBoYXMgYSBkaXNjb3VudCBzY2hlZHVsZSwgZGlzcGxheSBFZGl0IERpc2NvdW50IFNjaGVkdWxlIGJ1dHRvblxuXHRcdFx0XHRcdCYuZHNFZGl0YWJsZSB7XG5cdFx0XHRcdFx0XHQudmlld0RTQnRuIHtcblx0XHRcdFx0XHRcdFx0ZGlzcGxheTogYmxvY2s7XG5cdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cblx0XHRcdFx0LnNiLWljb24tbGV2ZWwtZG93biB7XG5cdFx0XHRcdFx0Y29sb3I6IEBzYkljb25Db2xvcjtcblx0XHRcdFx0fVxuXHRcdFx0fVxuXG5cdFx0XHQ+IHRmb290ID4gdHIuc2JUb3RhbFJvdyA+IHRkIHtcblx0XHRcdFx0Zm9udC13ZWlnaHQ6IGJvbGQ7XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0Ly8gQ2xhc3NlcyBmb3IgcHJvZHVjdCBoaWVyYXJjaHkgdmlzdWFsaXphdGlvblxuICAgIC5zYkJ1bmRsZU9wdGlvbiB7XG4gICAgICBjb2xvcjogIzY5Njk2OTtcbiAgICB9XG4gICAgLnNiSW5kZW50MiB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBwYWRkaW5nTW9iaWxlICogMTtcbiAgICB9XG4gICAgLnNiSW5kZW50MyB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBwYWRkaW5nTW9iaWxlICogMjtcbiAgICB9XG4gICAgLnNiSW5kZW50NCB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBwYWRkaW5nTW9iaWxlICogMztcbiAgICB9XG4gICAgLnNiSW5kZW50NSB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBwYWRkaW5nTW9iaWxlICogNDtcbiAgICB9XG4gICAgLnNiSW5kZW50NiB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBwYWRkaW5nTW9iaWxlICogNTtcbiAgICB9XG4gICAgLnNiSW5kZW50NyB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBwYWRkaW5nTW9iaWxlICogNjtcbiAgICB9XG4gICAgLnNiSW5kZW50OCB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBwYWRkaW5nTW9iaWxlICogNztcbiAgICB9XG4gICAgLnNiSW5kZW50OSB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBwYWRkaW5nTW9iaWxlICogODtcbiAgICB9XG4gICAgLnNiSW5kZW50MTAge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAcGFkZGluZ01vYmlsZSAqIDk7XG4gICAgfVxuXG5cdC5zYkN1c3RvbVNlZ21lbnRzRWRpdG9yLCAuc2JQcm9kdWN0UnVsZUFsZXJ0UG9wdXAge1xuXHRcdCNzYlNlZ21lbnRzTW9kYWwge1xuXHRcdFx0b3ZlcmZsb3c6IGF1dG87XG5cdFx0XHRtYXJnaW46IDA7XG5cblx0XHRcdGhlYWRlciB7XG5cdFx0XHRcdG1hcmdpbi1ib3R0b206IDI1cHg7XG5cblx0XHRcdFx0PiBoMyB7XG5cdFx0XHRcdFx0Zm9udC1zaXplOiAyMXB4O1xuXHRcdFx0XHRcdHdpZHRoOiAxMDAlO1xuXHRcdFx0XHR9XG5cblx0XHRcdFx0LnNiQnV0dG9ucyB7XG5cdFx0XHRcdFx0d2lkdGg6IDEwMCU7XG5cblx0XHRcdFx0XHQ+IC5zYkJ0biB7XG5cdFx0XHRcdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cblx0XHRcdFx0XHRcdCY6bm90KDpmaXJzdC1vZi10eXBlKXtcblx0XHRcdFx0XHRcdFx0bWFyZ2luLXRvcDogMDtcblx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHR9XG5cdFx0XHRcdH1cblx0XHRcdH1cblxuXG5cdFx0XHQuc2JWYWxpZGF0aW9uRXJyb3JzIHtcblx0XHRcdFx0bWFyZ2luLWJvdHRvbTogMjVweDtcblxuXHRcdFx0XHQ+IGRpdiB7XG5cdFx0XHRcdFx0cGFkZGluZy10b3A6IDEwcHg7XG5cblx0XHRcdFx0XHQ+IHNwYW4sXG5cdFx0XHRcdFx0PiBkaXYge1xuXHRcdFx0XHRcdFx0ZGlzcGxheTogaW5saW5lO1xuXHRcdFx0XHRcdFx0Y29sb3I6ICNjMDA7XG5cdFx0XHRcdFx0XHRmb250LXNpemU6IDE0cHg7XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cdFx0XHR9XG5cblx0XHRcdC5zYlRhYmxlIHtcblxuXHRcdFx0XHRpIHtcblx0XHRcdFx0XHRwYWRkaW5nLXJpZ2h0OiAxMHB4O1xuXHRcdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdFx0XHR2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0I3NiRmF2b3JpdGVzTW9kYWwge1xuXG5cdFx0aGVhZGVyIHtcblx0XHRcdG1hcmdpbi1ib3R0b206IDI1cHg7XG5cdFx0fVxuXG5cdFx0LnNiVmFsaWRhdGlvbkVycm9ycyB7XG5cdFx0XHRtYXJnaW4tYm90dG9tOiAyNXB4O1xuXG5cdFx0XHQ+IGRpdiB7XG5cdFx0XHRcdHBhZGRpbmctdG9wOiAxMHB4O1xuXG5cdFx0XHRcdD4gc3Bhbixcblx0XHRcdFx0PiBkaXYge1xuXHRcdFx0XHRcdGRpc3BsYXk6IGlubGluZTtcblx0XHRcdFx0XHRjb2xvcjogI2MwMDtcblx0XHRcdFx0XHRmb250LXNpemU6IDE0cHg7XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cdFx0LnNiVGFibGUge1xuXHRcdFx0PiB0Ym9keSA+IHRyID4gdGQge1xuXHRcdFx0XHRib3JkZXItYm90dG9tOiBub25lO1xuXG5cdFx0XHRcdCY6Zmlyc3Qtb2YtdHlwZSB7XG5cdFx0XHRcdFx0d2lkdGg6IDE1JTtcblx0XHRcdFx0XHRwYWRkaW5nLWxlZnQ6IDE1cHg7XG5cdFx0XHRcdH1cblxuXHRcdFx0XHQjc2JGYXZvcml0ZU5hbWUge1xuXHRcdFx0XHRcdHdpZHRoOiAzMDBweDtcblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdC5lZGl0ZWRNU0xpbmUuc2JUYWJsZSB7XG5cdFx0d2lkdGg6IDc1JTtcblx0XHRtYXJnaW46IDMwcHggYXV0byAwO1xuXG5cdFx0dGJvZHkgPiB0ciA+IHRkIHtcblx0XHRcdGhlaWdodDogNTVweDtcblx0XHR9XG5cblx0XHQ+IHRoZWFkID4gdHIgPiB0aDpmaXJzdC1vZi10eXBlLFxuXHRcdD4gdGJvZHkgPiB0ciA+IHRkOmZpcnN0LW9mLXR5cGUge1xuXHRcdFx0cGFkZGluZy1sZWZ0OiAxNTBweDtcblx0XHR9XG5cblx0XHQ+IHRib2R5ID4gdHIge1xuXG5cdFx0XHQmLm1zU3VtbWFyeVJvdyB7XG5cdFx0XHRcdGkge1xuXHRcdFx0XHRcdHBhZGRpbmctbGVmdDogMjVweDtcblx0XHRcdFx0XHRmb250LXNpemU6IDIxcHg7XG5cdFx0XHRcdFx0dmVydGljYWwtYWxpZ246IHRleHQtYm90dG9tO1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cblx0XHRcdCYubXNEZXRhaWxSb3cgPiB0ZCB7XG5cdFx0XHRcdGJhY2tncm91bmQtY29sb3I6ICNmN2Y3Zjc7XG5cdFx0XHRcdGJvcmRlcjogbm9uZTtcblxuXHRcdFx0XHRzZWxlY3Qge1xuXHRcdFx0XHRcdHdpZHRoOiBpbmhlcml0O1xuXHRcdFx0XHRcdG1hcmdpbi1sZWZ0OiA1cHg7XG5cdFx0XHRcdH1cblxuXHRcdFx0XHQmLmxhYmVsIHtcblx0XHRcdFx0XHRwYWRkaW5nLWxlZnQ6IDE1MHB4O1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cblx0XHRcdCYuc2JUb3RhbFJvdyA+IHRkIHtcblx0XHRcdFx0cGFkZGluZy10b3A6IDEwcHg7XG5cdFx0XHRcdHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7XG5cdFx0XHRcdGZvbnQtd2VpZ2h0OiBib2xkO1xuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdC5yZWNvcmRFZGl0b3JGb3JtIHtcblx0XHQ+IGhlYWRlciB7XG5cdFx0XHQ+IGgzIHtcblx0XHRcdFx0Zm9udC1zaXplOiAyMXB4O1xuXHRcdFx0fVxuXHRcdH1cblxuXHRcdC5zYkxpbmVBY3Rpb25zIHtcblx0XHRcdGRpc3BsYXk6IGlubGluZTtcblx0XHR9XG5cblx0XHQ+IC5idXR0b25Db250YWluZXIge1xuXHRcdFx0bWFyZ2luOiAwO1xuXHRcdH1cblx0fVxuXG5cdC5zYkxpbmVOdW1iZXIuZGF0YUNlbGwge1xuXHRcdHdoaXRlLXNwYWNlOiBub3dyYXA7XG5cblx0XHRzcGFuIHtcblx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdFx0fVxuXG5cdFx0LnNiTGluZUVycm9yIHtcblx0XHRcdHNwYW4ge1xuXHRcdFx0XHR3aGl0ZS1zcGFjZTogaW5pdGlhbDtcblx0XHRcdFx0bWFyZ2luOiAyMHB4IDVweDtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHQjc2JQcmljZWJvb2tNb2RhbCB7XG5cdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXG5cdFx0c2VsZWN0IHtcblx0XHRcdHdpZHRoOiAyNTBweDtcblx0XHRcdG1hcmdpbjogMjVweCAwO1xuXHRcdH1cblx0fVxufVxuXG4vKiogUGhvbmUgU3R5bGVzICovXG5cbkBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1pbi1kZXZpY2Utd2lkdGggOiAzMjBweCkgYW5kIChtYXgtZGV2aWNlLXdpZHRoIDogNjQwcHgpIHtcblxuXHQjc2JMaW5lRWRpdG9yIHtcblx0XHRwYWRkaW5nOiA1cHg7XG5cblx0XHQuc2JNb2JpbGVUYWJzIHtcblx0XHRcdGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG5cdFx0XHRtYXJnaW46IDEwcHggMDtcblx0XHR9XG5cblx0XHQuc2JQaG9uZVRhYi5zYkJ0biB7XG5cdFx0XHRwYWRkaW5nOiAxMHB4O1xuXHRcdFx0bWFyZ2luOiAwIDAgMTVweCAwO1xuXG5cdFx0XHQmLnNlbGVjdGVkIHtcblx0XHRcdFx0YmFja2dyb3VuZC1jb2xvcjogQHNiQ29udGVudEJnQ29sb3I7XG5cdFx0XHR9XG5cblx0XHRcdD4gc3BhbiB7XG5cdFx0XHRcdHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7XG5cdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdFx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblxuXHRcdFx0XHQmLnNmLWljb24tZWRpdCB7XG5cdFx0XHRcdFx0cG9zaXRpb246IGFic29sdXRlO1xuXHRcdFx0XHRcdHJpZ2h0OiAxNXB4O1xuXHRcdFx0XHRcdHZpc2liaWxpdHk6IGhpZGRlbjtcblxuXHRcdFx0XHRcdCYudmlzaWJsZSB7XG5cdFx0XHRcdFx0XHR2aXNpYmlsaXR5OiB2aXNpYmxlO1xuXHRcdFx0XHRcdH1cblx0XHRcdFx0fVxuXHRcdFx0fVxuXG5cdFx0fVxuXG5cdFx0LnNiR3JvdXBOYW1lcyA+IGRpdiB7XG5cdFx0XHRwYWRkaW5nOiAxMHB4O1xuXHRcdH1cblxuXHRcdC5zYkdyb3VwIHtcblx0XHRcdC5zYkdyb3VwSGVhZGVyLFxuXHRcdFx0LnNiR3JvdXBCdXR0b25zIHtcblx0XHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdFx0fVxuXG5cdFx0XHQuc2JHcm91cEhlYWRlciB7XG5cdFx0XHRcdGZsb2F0OiBsZWZ0O1xuXG5cdFx0XHRcdD4gaDIge1xuXHRcdFx0XHRcdHBhZGRpbmctdG9wOiA1cHg7XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cblx0XHQucmVjb3JkRWRpdG9yRm9ybSB7XG5cdFx0XHQ+IGhlYWRlciB7XG5cdFx0XHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblx0XHRcdH1cblx0XHR9XG5cblx0XHQubXVsdGlTZWdtZW50LnNiVGFibGUsXG5cdFx0LnN0YW5kYXJkLnNiVGFibGUge1xuXHRcdFx0bWFyZ2luLWJvdHRvbTogMTVweDtcblx0XHR9XG5cblx0XHQuZWRpdGVkTVNMaW5lLnNiVGFibGUge1xuXHRcdFx0d2lkdGg6IDkwJTtcblxuXHRcdFx0PiB0aGVhZCA+IHRyID4gdGg6Zmlyc3Qtb2YtdHlwZSxcblx0XHRcdD4gdGJvZHkgPiB0ciA+IHRkOmZpcnN0LW9mLXR5cGUge1xuXHRcdFx0XHRwYWRkaW5nLWxlZnQ6IDE1cHg7XG5cdFx0XHR9XG5cblx0XHRcdD4gdGJvZHkgPiB0ciB7XG5cblx0XHRcdFx0Ji5tc0RldGFpbFJvdyA+IHRkLmxhYmVsIHtcblx0XHRcdFx0XHRwYWRkaW5nLWxlZnQ6IDE1cHg7XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cblx0XHQuc2JEaXNjb3VudFNjaGVkdWxlTW9kYWwge1xuXHRcdFx0LnNiQnV0dG9ucyB7XG5cdFx0XHRcdHdpZHRoOiAxMDAlO1xuXHRcdFx0fVxuXG5cdFx0XHQubWVzc2FnZSB7XG5cdFx0XHRcdG1hcmdpbi10b3A6IDVweDtcblx0XHRcdFx0bWFyZ2luLWJvdHRvbTogNXB4O1xuXHRcdFx0fVxuXHRcdH1cblxuXHRcdCNzYkZhdm9yaXRlc01vZGFsIHtcblx0XHRcdC5zYlRhYmxlIHtcblx0XHRcdFx0PiB0Ym9keSA+IHRyID4gdGQge1xuXG5cdFx0XHRcdFx0JjpmaXJzdC1vZi10eXBlIHtcblx0XHRcdFx0XHRcdHdoaXRlLXNwYWNlOiBub3dyYXA7XG5cdFx0XHRcdFx0XHRwYWRkaW5nLWxlZnQ6IDA7XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0I3NiRmF2b3JpdGVOYW1lIHtcblx0XHRcdFx0XHRcdHdpZHRoOiAyMDBweDtcblx0XHRcdFx0XHR9XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cdH1cbn1cbiIsIiNzYlByb2R1Y3RTZWFyY2gge1xuXHRwYWRkaW5nOiBAcGFkZGluZ01vYmlsZTtcblx0Zm9udC1zaXplOiBAZm9udFNpemVNb2JpbGU7XG5cblx0LnNiUGFnZUJsb2NrIHtcblx0XHRwYWRkaW5nLXRvcDogODVweDtcblx0fVxuXG5cdFxuXHQuc2JQcm9kdWN0RmlsdGVycyB7XG5cblx0XHQ+IGJ1dHRvbixcblx0XHQ+IC5zYlRhYmxlIHtcblx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHR9XG5cblx0XHQ+IGJ1dHRvbiB7XG5cdFx0XHR2ZXJ0aWNhbC1hbGlnbjogYm90dG9tO1xuXHRcdFx0bWFyZ2luLWJvdHRvbTogM3B4O1xuXHRcdH1cblxuXHRcdD4gLnNiVGFibGUge1xuXHRcdFx0d2lkdGg6IGluaGVyaXQ7XG5cblx0XHRcdD4gdGhlYWQgPiB0ciA+IHRkIHtcblx0XHRcdFx0cGFkZGluZzogMCA1cHg7XG5cdFx0XHR9XG5cdFx0XHQ+IHRib2R5ID4gdHIgPiB0ZCB7XG5cdFx0XHRcdGJvcmRlcjogbm9uZTtcblx0XHRcdFx0cGFkZGluZzogMCA1cHg7XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0LnNiR3VpZGVkU2VsbGluZyB7XG5cblx0XHQ+IGJ1dHRvbixcblx0XHQ+IC5zYlRhYmxlIHtcblx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHR9XG5cblx0XHQ+IGJ1dHRvbiB7XG5cdFx0XHR2ZXJ0aWNhbC1hbGlnbjogYm90dG9tO1xuXHRcdFx0bWFyZ2luLWJvdHRvbTogM3B4O1xuXHRcdH1cblxuXHRcdD4gLnNiVGFibGUge1xuXHRcdFx0d2lkdGg6IGluaGVyaXQ7XG5cblx0XHRcdD4gdGJvZHkgPiB0ciA+IHRkIHtcblx0XHRcdFx0Ym9yZGVyOiBub25lO1xuXHRcdFx0XHRwYWRkaW5nOiAwIDVweDtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHQuc2JQcm9kdWN0c1RhYmxlQ29udGFpbmVyIHtcblx0XHRvdmVyZmxvdy14OiBhdXRvO1xuXG5cdFx0LnNiUHJvZHVjdHMge1xuXHRcdFx0bWFyZ2luLXRvcDogMjBweDtcblxuXHRcdFx0PiB0Zm9vdCA+IHRyLnNiUHJvZHVjdFBhZ2VzIHtcblxuXHRcdFx0XHQ+IHRkIHtcblx0XHRcdFx0XHRib3JkZXItYm90dG9tOiBub25lO1xuXG5cdFx0XHRcdFx0LnNiUGFnZXMge1xuXHRcdFx0XHRcdFx0bWFyZ2luLXRvcDogMjVweDtcblx0XHRcdFx0XHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblxuXHRcdFx0XHRcdFx0PiAuc2JCdG4ge1xuXHRcdFx0XHRcdFx0XHRmb250LXNpemU6IDEuNGVtO1xuXHRcdFx0XHRcdFx0XHRwYWRkaW5nOiA5cHggMTBweCAxMXB4O1xuXHRcdFx0XHRcdFx0XHRjb2xvcjogQHNiTGlua0NvbG9yO1xuXG5cdFx0XHRcdFx0XHRcdCYuc2ItaWNvbi1sZWZ0LWRpcixcblx0XHRcdCAgICAgICAgICAgICAgICAmLnNiLWljb24tcmlnaHQtZGlyIHtcblx0XHRcdCAgICAgICAgICAgICAgICAgIGZvbnQtc2l6ZTogMS42ZW07XG5cdFx0XHQgICAgICAgICAgICAgICAgICBwYWRkaW5nOiA4cHggOHB4IDlweDtcblx0XHRcdCAgICAgICAgICAgICAgICB9XG5cblx0XHRcdFx0XHRcdFx0Ji5kaXNhYmxlZCB7XG5cdFx0XHRcdFx0XHRcdFx0YmFja2dyb3VuZC1jb2xvcjogQHNiUGFnZUJnQ29sb3I7XG5cdFx0XHRcdFx0XHRcdFx0Y29sb3I6IEBzYkljb25Db2xvcjtcblx0XHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0XHQuc2JQYWdlU2VsZWN0b3Ige1xuXHRcdFx0XHRcdFx0XHRwYWRkaW5nOiAwIDEwcHg7XG5cdFx0XHRcdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdFx0XHRcdFx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblxuXHRcdFx0XHRcdFx0XHQ+IGlucHV0IHtcblx0XHRcdFx0XHRcdFx0XHR3aWR0aDogNDVweDtcblx0XHRcdFx0XHRcdFx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdFx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHR9XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cdH1cbn1cblxuXG4vKiogUGhvbmUgU3R5bGVzICovXG5cbkBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1pbi1kZXZpY2Utd2lkdGggOiAzMjBweCkgYW5kIChtYXgtZGV2aWNlLXdpZHRoIDogNjQwcHgpIHtcblxuXHQjc2JQcm9kdWN0U2VhcmNoIHtcblx0XHQuc2JQcm9kdWN0RmlsdGVycyB7XG5cdFx0XHRtYXJnaW4tdG9wOiAzMHB4O1xuXG5cdFx0XHRsYWJlbCB7XG5cdFx0XHRcdG1hcmdpbi10b3A6IDVweDtcblx0XHRcdH1cblxuXHRcdFx0YnV0dG9uIHtcblx0XHRcdFx0bWFyZ2luOiAyMHB4IDAgMCAwO1xuXHRcdFx0fVxuXG5cdFx0fVxuXHR9XG5cblx0I3NiUHJvZHVjdFNlYXJjaCB7XG5cdFx0LnNiR3VpZGVkU2VsbGluZyB7XG5cdFx0XHRtYXJnaW4tdG9wOiAzMHB4O1xuXG5cdFx0XHRsYWJlbCB7XG5cdFx0XHRcdG1hcmdpbi10b3A6IDVweDtcblx0XHRcdH1cblxuXHRcdFx0YnV0dG9uIHtcblx0XHRcdFx0bWFyZ2luOiAyMHB4IDAgMCAwO1xuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdCNzYlByb2R1Y3RTZWFyY2gge1xuXHRcdC5zYlByb2R1Y3RzVGFibGVDb250YWluZXIge1xuXHRcdFx0dGFibGUuc2JQcm9kdWN0cyA+IHRmb290ID4gdHIuc2JQcm9kdWN0UGFnZXMgPiB0ZCB7XG5cdFx0XHRcdHBhZGRpbmctbGVmdDogMDtcblxuXHRcdFx0XHQuc2JQYWdlcyB7XG5cdFx0XHRcdFx0dGV4dC1hbGlnbjogbGVmdDtcblxuXHRcdFx0XHRcdC5zYkJ0bjpmaXJzdC1vZi10eXBlIHtcblx0XHRcdFx0XHRcdG1hcmdpbi1sZWZ0OiAwO1xuXHRcdFx0XHRcdH1cblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG59IiwiI3NiUHJvZHVjdENvbmZpZ3VyYXRvciB7XG5cdHBhZGRpbmc6IEBwYWRkaW5nTW9iaWxlO1xuXHRmb250LXNpemU6IEBmb250U2l6ZU1vYmlsZTtcblxuXHQuc2JQYWdlVGl0bGVUYWJsZSA+IC5zYlBhZ2VUaXRsZVJpZ2h0IHtcblx0XHRtYXJnaW4tdG9wOiA3cHg7XG5cdH1cblxuXHQuc2JQYWdlVGl0bGVUYWJsZSA+IC5zYlBhZ2VUaXRsZUxlZnQgLnNmLWljb24tY3VzdG9tX2FwcHMge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICM4MTk5YWY7XG5cdH1cblxuXHQuc2JGZWF0dXJlcyxcblx0LnNiQWRkT3B0aW9uRGlhbG9nIHtcblx0XHRtYXJnaW4tdG9wOiA3NXB4O1xuXHR9XG5cblxuXHQuc2JGZWF0dXJlcyB7XG5cblx0XHQuc2JDb25maWd1cmVkUHJvZHVjdCB7XG5cblx0XHRcdC5zYkNvbmZpZ1Byb2R1Y3ROYW1lIHtcblx0XHRcdFx0bWFyZ2luLWJvdHRvbTogMDtcblx0XHRcdH1cblxuXHRcdFx0Jjpub3QoOmZpcnN0LW9mLXR5cGUpIC5zYkNvbmZpZ1Byb2R1Y3ROYW1lIHtcblx0XHRcdFx0bWFyZ2luLXRvcDogNDVweDtcblx0XHRcdH1cblxuXHRcdFx0Lmdyb3VwIHtcblxuXHRcdFx0XHRoMyB7XG5cdFx0XHRcdFx0bWFyZ2luLXRvcDogMjVweDtcblx0XHRcdFx0XHRtYXJnaW4tYm90dG9tOiAzcHg7XG5cdFx0XHRcdH1cblxuXHRcdFx0XHQuZmVhdHVyZUluc3RydWN0aW9ucyB7XG5cdFx0XHRcdFx0cGFkZGluZy1ib3R0b206IDE1cHg7XG5cdFx0XHRcdH1cblxuXHRcdFx0XHQuc2JGZWF0dXJlT3B0aW9ucyB7XG5cdFx0XHRcdFx0b3ZlcmZsb3cteDogYXV0bztcblxuXHRcdFx0XHR9XG5cblx0XHRcdFx0LnNiQWRkT3B0aW9uQ29udGFpbmVyIHtcblx0XHRcdFx0XHRtYXJnaW4tdG9wOiAxNXB4O1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0LnJlcXVpcmVzQ29uZmlndXJhdGlvbiB7XG5cdFx0ICAgIGJvcmRlci1sZWZ0OiAjYzAwIHNvbGlkO1xuXHRcdH1cblx0fVxuXG5cdC5zYkFkZE9wdGlvbkRpYWxvZyB7XG5cdFx0PiAuc2JUaXRsZUNvbnRhaW5lciB7XG5cdFx0XHQ+IGgyIHtcblx0XHRcdFx0bWFyZ2luLWJvdHRvbTogNXB4O1xuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdC5zYkRhdGFDb2wge1xuXHQgIHBhZGRpbmc6IDVweCAwO1xuXHR9XG5cblx0LmNvbmZpZ1RhYmxlLnNiVGFibGUge1xuXHRcdG1hcmdpbi10b3A6IDE1cHg7XG5cblx0XHR0ZCB7XG5cdFx0XHRwYWRkaW5nOiAxNXB4O1xuXHRcdFx0Ym9yZGVyLWJvdHRvbTogbm9uZTtcblxuXHRcdFx0Ji5zYkxhYmVsQ29sIHtcblx0XHRcdFx0dGV4dC1hbGlnbjogcmlnaHQ7XG5cblx0XHRcdFx0PiBsYWJlbCB7XG5cdFx0XHRcdFx0cGFkZGluZy1ib3R0b206IDA7XG5cdFx0XHRcdH1cblx0XHRcdH1cblxuXHRcdFx0Ji5zYkRhdGFDb2wgc2VsZWN0IHtcblx0XHRcdFx0d2lkdGg6IDE1MHB4O1xuXHRcdFx0fVxuXHRcdH1cblx0fVxufVxuXG4vKiogUGhvbmUgU3R5bGVzICovXG5cbkBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1pbi1kZXZpY2Utd2lkdGggOiAzMjBweCkgYW5kIChtYXgtZGV2aWNlLXdpZHRoIDogNjQwcHgpIHtcblx0I3NiUHJvZHVjdENvbmZpZ3VyYXRvciB7XG5cblx0XHQuc2JGZWF0dXJlcyxcblx0XHQuc2JBZGRPcHRpb25EaWFsb2cge1xuXHRcdFx0bWFyZ2luLXRvcDogMTE1cHg7XG5cdFx0fVxuXHR9XG59XG4iLCIjc2JBc3NldFNlYXJjaCB7XG5cblx0LnNiUGFnZUJsb2NrIHtcblx0ICAgIHBhZGRpbmctdG9wOiAxMDBweDtcblx0fVxuXG5cdC5zYlByb2R1Y3RGaWx0ZXJzID4gLnNiVGFibGUge1xuXHQgICAgd2lkdGg6IGluaGVyaXQ7XG5cdH1cblxuXHQuc2JBc3NldHMge1xuXHQgICAgbWFyZ2luLXRvcDogMjBweDtcblx0fVxuXG5cdC5zYlByb2R1Y3RGaWx0ZXJzIHtcblxuXHRcdD4gLnNiVGFibGUge1xuXG5cdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cblx0XHRcdD4gdGJvZHkgPiB0ciA+IHRkIHtcblx0XHRcdCAgICBib3JkZXI6IG5vbmU7XG5cdFx0XHQgICAgcGFkZGluZzogMCA1cHg7XG5cdFx0XHR9XG5cblx0XHR9XG5cblx0XHQ+IGJ1dHRvbiB7XG5cdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0ICAgIG1hcmdpbi1ib3R0b206IDVweDtcblx0XHRcdHZlcnRpY2FsLWFsaWduOiBib3R0b207XG5cdFx0fVxuXG5cdH1cblxufVxuXG5cbi8qKiBQaG9uZSBTdHlsZXMgKi9cblxuQG1lZGlhIG9ubHkgc2NyZWVuIGFuZCAobWluLWRldmljZS13aWR0aCA6IDMyMHB4KSBhbmQgKG1heC1kZXZpY2Utd2lkdGggOiA2NDBweCkge1xuXG5cdCNzYkFzc2V0U2VhcmNoIHtcblx0XHQuc2JBc3NldEZpbHRlciB7XG5cdFx0XHRtYXJnaW4tdG9wOiAzMHB4O1xuXG5cdFx0XHRsYWJlbCB7XG5cdFx0XHRcdG1hcmdpbi10b3A6IDVweDtcblx0XHRcdH1cblxuXHRcdFx0YnV0dG9uIHtcblx0XHRcdFx0bWFyZ2luOiAyMHB4IDAgMCAwO1xuXHRcdFx0fVxuXG5cdFx0fVxuXHR9XG5cbn0iLCIjc2JTdWJzY3JpcHRpb25TZWFyY2gge1xuXG5cdC5zYlBhZ2VCbG9jayB7XG5cdCAgICBwYWRkaW5nLXRvcDogMTAwcHg7XG5cdH1cblxuXHQuc2JQcm9kdWN0RmlsdGVycyA+IC5zYlRhYmxlIHtcblx0ICAgIHdpZHRoOiBpbmhlcml0O1xuXHR9XG5cblx0LnNiU3Vic2NyaXB0aW9ucyB7XG5cdCAgICBtYXJnaW4tdG9wOiAyMHB4O1xuXHR9XG5cblx0LnNiUHJvZHVjdEZpbHRlcnMge1xuXG5cdFx0PiAuc2JUYWJsZSB7XG5cblx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblxuXHRcdFx0PiB0Ym9keSA+IHRyID4gdGQge1xuXHRcdFx0ICAgIGJvcmRlcjogbm9uZTtcblx0XHRcdCAgICBwYWRkaW5nOiAwIDVweDtcblx0XHRcdH1cblxuXHRcdH1cblxuXHRcdD4gYnV0dG9uIHtcblx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHQgICAgbWFyZ2luLWJvdHRvbTogNXB4O1xuXHRcdFx0dmVydGljYWwtYWxpZ246IGJvdHRvbTtcblx0XHR9XG5cblx0fVxuXG59XG5cblxuLyoqIFBob25lIFN0eWxlcyAqL1xuXG5AbWVkaWEgb25seSBzY3JlZW4gYW5kIChtaW4tZGV2aWNlLXdpZHRoIDogMzIwcHgpIGFuZCAobWF4LWRldmljZS13aWR0aCA6IDY0MHB4KSB7XG5cblx0I3NiU3Vic2NyaXB0aW9uU2VhcmNoIHtcblx0XHQuc2JTdWJzY3JpcHRpb25GaWx0ZXIge1xuXHRcdFx0bWFyZ2luLXRvcDogMzBweDtcblxuXHRcdFx0bGFiZWwge1xuXHRcdFx0XHRtYXJnaW4tdG9wOiA1cHg7XG5cdFx0XHR9XG5cblx0XHRcdGJ1dHRvbiB7XG5cdFx0XHRcdG1hcmdpbjogMjBweCAwIDAgMDtcblx0XHRcdH1cblxuXHRcdH1cblx0fVxuXG59IiwiLypcbkRvY3VtZW50IEdlbmVyYXRpb24gUHJldmlldyBwYWdlXG5cblByZXZpZXdzIGEgZG9jdW1lbnQgaW4gdGhlIGJyb3dzZXIgd2l0aCBjaG9zZW4gdGVtcGxhdGUsIGFkZGl0aW9uYWwgZG9jcywgZXRjLlxuKi9cbiNzYkRvY0dlblByZXZpZXcsICNzYkRvY0dlbk9wdGlvbnMge1xuXHRwYWRkaW5nOiBAcGFkZGluZ01vYmlsZTtcblx0Zm9udC1zaXplOiBAZm9udFNpemVNb2JpbGU7XG5cblx0LnNiUHJldmlldyB7XG5cdFx0bWFyZ2luLXRvcDogNzVweDtcblxuXHRcdFtjbGFzc149c2YtaWNvbl0ge1xuXHRcdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNztcblx0XHRcdHBhZGRpbmc6IDVweDtcblx0XHR9XG5cblx0XHQ+IC5idXR0b25Db250YWluZXIsIC5zZi1pY29uLXpvb21vdXQge1xuXHRcdFx0cGFkZGluZy1sZWZ0OiAxNXB4O1xuXHRcdH1cblxuXHRcdD4gLmRvY3VtZW50UHJldmlld0NvbnRhaW5lciB7XG5cdFx0XHRtYXJnaW4tbGVmdDogLTE1cHg7XG5cdFx0XHR0b3A6IDE0NXB4O1xuXHRcdH1cblx0fVxuXG5cdC5zYkRvY09wdGlvbnNDb250YWluZXIge1xuXHRcdG1hcmdpbi10b3A6IDc1cHg7XG5cblx0XHQucGJTdWJzZWN0aW9uIHtcblx0XHRcdG1hcmdpbi10b3A6IDE1cHg7XG5cblx0XHRcdD4gaGVhZGVyID4gaDEge1xuXHRcdFx0XHRmb250LXNpemU6IDI4cHg7XG5cdFx0XHRcdG1hcmdpbi1ib3R0b206IDE1cHg7XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0LnNiRHVhbExpc3RCb3gge1xuXHRcdFx0cGFkZGluZzogMTVweDtcblx0XHRcdD4gdGhlYWQgPiB0ciA+IHRoIHtcblx0XHRcdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHRcdFx0fVxuXG5cdFx0XHQ+IHRib2R5ID4gdHIgPiB0ZCB7XG5cdFx0XHRcdCY6bnRoLWNoaWxkKDEpLFxuXHRcdFx0XHQmOm50aC1jaGlsZCgzKSB7XG5cdFx0XHRcdFx0Ym9yZGVyOiAxcHggc29saWQgQHNiQm9yZGVyQ29sb3I7XG5cdFx0XHRcdFx0Ym9yZGVyLXJhZGl1czogM3B4O1xuXHRcdFx0XHR9XG5cblx0XHRcdFx0dWwge1xuXHRcdFx0XHRcdHdpZHRoOiAyNTBweDtcblx0XHRcdFx0XHRtaW4taGVpZ2h0OiAzMDBweDtcblx0XHRcdFx0XHRvdmVyZmxvdzogYXV0bztcblx0XHRcdFx0XHRwYWRkaW5nLWxlZnQ6IDhweDtcblxuXHRcdFx0XHRcdD4gbGkge1xuXHRcdFx0XHRcdFx0cGFkZGluZzogOHB4O1xuXHRcdFx0XHRcdFx0d2hpdGUtc3BhY2U6IG5vd3JhcDtcblx0XHRcdFx0XHRcdGxpc3Qtc3R5bGUtdHlwZTogbm9uZTtcblxuXHRcdFx0XHRcdFx0Ji5yZXF1aXJlZCB7XG5cdFx0XHRcdFx0XHRcdGNvbG9yOiAjYWYyNjI2O1xuXHRcdFx0XHRcdFx0XHRmb250LXdlaWdodDogYm9sZDtcblx0XHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdFx0Ji5zZWxlY3RlZCB7XG5cdFx0XHRcdFx0XHRcdGNvbG9yOiAjZmZmO1xuXHRcdFx0XHRcdFx0XHRiYWNrZ3JvdW5kLWNvbG9yOiBAc2JMaW5rQ29sb3I7XG5cdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cblxuXHRcdFx0XHRhIHtcblx0XHRcdFx0XHRjb2xvcjogaW5oZXJpdDtcblx0XHRcdFx0XHRwYWRkaW5nOiA1cHg7XG5cdFx0XHRcdFx0bWFyZ2luOiAwIDhweDtcblx0XHRcdFx0XHRkaXNwbGF5OiBibG9jaztcblx0XHRcdFx0XHRib3JkZXI6IDFweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcblx0XHRcdFx0XHRib3JkZXItYm90dG9tOiAwcHg7XG5cdFx0XHRcdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXG5cdFx0XHRcdFx0W2NsYXNzXj1zZi1pY29uXSB7XG5cdFx0XHRcdFx0XHRmb250LXNpemU6IEBzYkZvbnRTaXplICogMS43O1xuXHRcdFx0XHRcdFx0cGFkZGluZzogNXB4O1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdFtjbGFzc149c2ItaWNvbl0ge1xuXHRcdFx0XHRcdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDIuMjtcblx0XHRcdFx0XHRcdHBhZGRpbmc6IDVweDtcblx0XHRcdFx0XHRcdGNvbG9yOiAjM2QzZTNmO1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdFtjbGFzc149c2ItaWNvbi10by1lbmRdOmJlZm9yZSB7XG5cdFx0XHRcdFx0XHQucm90YXRlKC05MGRlZyk7XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0JjpudGgtY2hpbGQoNCkgW2NsYXNzXj1zYi1pY29uLXRvLWVuZF06YmVmb3JlIHtcblx0XHRcdFx0XHRcdC5yb3RhdGUoOTBkZWcpO1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdCY6Zmlyc3Qtb2YtdHlwZSB7XG5cdFx0XHRcdFx0XHRib3JkZXItdG9wLXJpZ2h0LXJhZGl1czogM3B4O1xuXHRcdFx0XHRcdFx0Ym9yZGVyLXRvcC1sZWZ0LXJhZGl1czogM3B4O1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdCY6bGFzdC1vZi10eXBlIHtcblx0XHRcdFx0XHRcdGJvcmRlci1ib3R0b206IDFweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcblx0XHRcdFx0XHRcdGJvcmRlci1ib3R0b20tcmlnaHQtcmFkaXVzOiAzcHg7XG5cdFx0XHRcdFx0XHRib3JkZXItYm90dG9tLWxlZnQtcmFkaXVzOiAzcHg7XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXG5cdH1cblxuXG5cdC8qKiBQaG9uZSBTdHlsZXMgKi9cblx0QG1lZGlhIG9ubHkgc2NyZWVuIGFuZCAobWluLWRldmljZS13aWR0aCA6IDMyMHB4KSBhbmQgKG1heC1kZXZpY2Utd2lkdGggOiA2NDBweCkge1xuXHRcdC5zYlByZXZpZXcsIC5zYkRvY09wdGlvbnNDb250YWluZXIge1xuXHRcdFx0bWFyZ2luLXRvcDogMTE1cHg7XG5cblx0XHRcdD4gLmRvY3VtZW50UHJldmlld0NvbnRhaW5lciB7XG5cdFx0XHRcdHRvcDogMTg1cHg7XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0LnNiRG9jT3B0aW9uc0NvbnRhaW5lciB7XG5cblx0XHRcdC5wYlN1YnNlY3Rpb24ge1xuXHRcdFx0XHQ+IGhlYWRlciA+IGgxIHtcblx0XHRcdFx0XHRmb250LXNpemU6IDI0cHg7XG5cdFx0XHRcdFx0bWFyZ2luLWJvdHRvbTogMDtcblx0XHRcdFx0fVxuXHRcdFx0fVxuXG5cblx0XHRcdC5zYkR1YWxMaXN0Qm94IHtcblx0XHRcdFx0cGFkZGluZy10b3A6IDVweDtcblx0XHRcdFx0PiB0Ym9keSA+IHRyID4gdGQge1xuXHRcdFx0XHRcdGRpc3BsYXk6IGJsb2NrO1xuXHRcdFx0XHRcdHBhZGRpbmc6IDEwcHg7XG5cblx0XHRcdFx0XHQmOm50aC1jaGlsZCgxKSxcblx0XHRcdFx0XHQmOm50aC1jaGlsZCgzKSB7XG5cdFx0XHRcdFx0XHRib3JkZXI6IG5vbmU7XG5cdFx0XHRcdFx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0JjpudGgtY2hpbGQoMSksXG5cdFx0XHRcdFx0JjpudGgtY2hpbGQoNCkge1xuXHRcdFx0XHRcdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHRcdFx0XHRcdFx0Zm9udC13ZWlnaHQ6IGJvbGQ7XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0JjpudGgtY2hpbGQoMiksXG5cdFx0XHRcdFx0JjpudGgtY2hpbGQoNSkge1xuXHRcdFx0XHRcdFx0Ym9yZGVyOiAxcHggc29saWQgQHNiQm9yZGVyQ29sb3I7XG5cdFx0XHRcdFx0XHRib3JkZXItcmFkaXVzOiAzcHg7XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0dWwge1xuXHRcdFx0XHRcdFx0bWFyZ2luOiAwO1xuXHRcdFx0XHRcdFx0dGV4dC1hbGlnbjogbGVmdDtcblx0XHRcdFx0XHRcdGhlaWdodDogMTIwcHg7XG5cdFx0XHRcdFx0XHRtaW4taGVpZ2h0OiAxMjBweDtcblx0XHRcdFx0XHRcdG92ZXJmbG93OiBhdXRvO1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdGEge1xuXHRcdFx0XHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdFx0XHRcdFx0bWFyZ2luOiAwIDJweDtcblx0XHRcdFx0XHRcdGJvcmRlcjogMXB4IHNvbGlkIEBzYkJvcmRlckNvbG9yO1xuXG5cdFx0XHRcdFx0XHRbY2xhc3NePXNiLWljb25dIHtcblx0XHRcdFx0XHRcdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNztcblx0XHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdCY6bnRoLWNoaWxkKDIpLFxuXHRcdFx0XHRcdCY6bnRoLWNoaWxkKDQpIHtcblx0XHRcdFx0XHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHQmOmxhc3QtY2hpbGQge1xuXHRcdFx0XHRcdFx0YSB7XG5cdFx0XHRcdFx0XHRcdCY6bnRoLWNoaWxkKDEpLFxuXHRcdFx0XHRcdFx0XHQmOm50aC1jaGlsZCg0KSB7XG5cdFx0XHRcdFx0XHRcdFx0cGFkZGluZy1ib3R0b206IDdweDtcblx0XHRcdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG59XG5cbi8qXG5Eb2N1bWVudCBHZW5lcmF0aW9uIG9wdGlvbnNcblxuQ2hvaWNlcyBmb3IgZG9jdW1lbnQgZ2VuZXJhdGlvbiBzdWNoIGFzIHRlbXBsYXRlLCBvdXRwdXQgZm9ybWF0LCBldGMuXG4qL1xuI3NiRG9jR2VuT3B0aW9ucyB7XG5cdHRkIHtcblx0XHRwYWRkaW5nLWJvdHRvbTogNXB4O1xuXG5cdFx0PiBsYWJlbCB7XG5cdFx0XHRwYWRkaW5nLWJvdHRvbTogMDtcblx0XHR9XG5cdH1cbn1cbiIsIiNzYk5ld1JlbGF0ZWRDb250ZW50IHtcblxuXHQuc2JCb2R5IHtcblx0XHRtYXJnaW4tdG9wOiA4NXB4O1xuXG5cdFx0ZmllbGRzZXQge1xuXHRcdFx0Ym9yZGVyOiBub25lOyBcblx0XHR9XG5cdH1cblxufVxuXG5cbi8qKiBQaG9uZSBTdHlsZXMgKi9cblxuQG1lZGlhIG9ubHkgc2NyZWVuIGFuZCAobWluLWRldmljZS13aWR0aCA6IDMyMHB4KSBhbmQgKG1heC1kZXZpY2Utd2lkdGggOiA2NDBweCkge1xuXG5cdCNzYk5ld1JlbGF0ZWRDb250ZW50IHtcblx0XHQuc2JCb2R5IHtcblx0XHRcdG1hcmdpbi10b3A6IDEyNXB4O1xuXG5cdFx0XHQvLyBsYWJlbCB7XG5cdFx0XHQvLyBcdG1hcmdpbi10b3A6IDVweDtcblx0XHRcdC8vIH1cblxuXHRcdFx0Ly8gYnV0dG9uIHtcblx0XHRcdC8vIFx0bWFyZ2luOiAyMHB4IDAgMCAwO1xuXHRcdFx0Ly8gfVxuXG5cdFx0fVxuXHR9XG5cbn0iLCIjc2JGYXZvcml0ZXNNYW5hZ2VyIHtcblx0cGFkZGluZzogQHBhZGRpbmdNb2JpbGU7XG5cdGZvbnQtc2l6ZTogQGZvbnRTaXplTW9iaWxlO1xuXG5cdC5zYlBhZ2VCbG9jayB7XG5cdFx0cGFkZGluZy10b3A6IDg1cHg7XG5cdH1cblxuXHQudG9wTXNnIHtcblx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdCAgICBkaXNwbGF5OiBibG9jaztcblx0ICAgIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG5cdCAgICBwYWRkaW5nOiAzMnB4XG5cdH1cblxuXHQuYm90TXNnIHtcblx0ICAgIHRleHQtYWxpZ246IGNlbnRlcjtcblx0ICAgIGRpc3BsYXk6IGJsb2NrO1xuXHQgICAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcblx0ICAgIHBhZGRpbmc6IDAgMzJweFxuXHR9XG5cblx0LnNiRmF2b3JpdGVzVGFibGVDb250YWluZXIge1xuXHRcdG92ZXJmbG93LXg6IGF1dG87XG5cblx0XHQuc2JGYXZvcml0ZXMge1xuXHRcdFx0bWFyZ2luLXRvcDogMjBweDtcblx0XHR9XG5cdH1cblxuXHQubW9kYWxEaWFsb2cge1xuXHRcdHRvcDogMTAwcHg7XG5cdFx0bWF4LXdpZHRoOiA0NDBweDtcblx0XHRvdmVyZmxvdzogdmlzaWJsZTtcblxuXHRcdGhlYWRlciB7XG5cdFx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdFx0XHRib3JkZXItYm90dG9tOiAycHggc29saWQgQHNiQm9yZGVyQ29sb3I7XG5cblx0XHRcdC5zYi1pY29uLXN0YXIge1xuXHRcdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0XHRcdGNvbG9yOiBibGFjaztcblx0XHRcdFx0bWFyZ2luOiAwIDA7XG5cdFx0XHR9XG5cblx0XHRcdGgyIHtcblx0XHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdFx0fVxuXHRcdH1cblxuXG5cdFx0LnNiTW9kYWxDb250ZW50Q29udGFpbmVyIHtcblx0XHRcdHBhZGRpbmc6IDFweCAxNHB4O1xuXG5cdFx0XHRpbnB1dCB7IFxuXHRcdFx0XHRtYXJnaW46IDAgMDtcblx0XHRcdH1cblxuXHRcdFx0LnNiVGFibGUge1xuXHRcdFx0XHQ+dGJvZHk+dHI+dGQge1xuXHRcdFx0XHRcdGJvcmRlcjogMDtcblx0XHRcdFx0fVxuXHRcdCAgICAgICAgLnNiQWN0aW9ucyB7XG5cdFx0XHQgICAgICAgIHdpZHRoOiAxJTtcblx0XHRcdCAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcblx0XHRcdCAgICAgICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcblxuXHRcdCAgICAgICAgfVxuXHRcdCAgICB9XG5cdFx0fVxuXG5cdFx0LnNiTW9kYWxGb290ZXIge1xuXHRcdFx0Ym9yZGVyLXRvcDogMnB4IHNvbGlkIEBzYkJvcmRlckNvbG9yO1xuXHRcdFx0YmFja2dyb3VuZC1jb2xvcjogI0Y0RjZGOTtcblx0XHRcdHBhZGRpbmc6IDEycHggMTZweDtcblx0XHRcdHRleHQtYWxpZ246IHJpZ2h0O1xuXG5cdFx0XHQuc2JCdXR0b25zIHtcblx0XHRcdCAgICBwYWRkaW5nOiAwIDJweDtcblx0XHRcdH1cblx0XHRcdGlucHV0IHtcblx0XHRcdFx0bWFyZ2luOiAwO1xuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdC5mb3JtLWNvbnRyb2wge1xuXHRcdGRpc3BsYXk6IGJsb2NrO1xuXHQgICAgd2lkdGg6IDEwMCU7XG5cdCAgICBoZWlnaHQ6IDM0cHg7XG5cdCAgICBwYWRkaW5nOiA2cHggMTJweDtcblx0ICAgIGZvbnQtc2l6ZTogMTRweDtcblx0ICAgIGxpbmUtaGVpZ2h0OiAxLjQyODU3MTQzO1xuXHQgICAgY29sb3I6ICM1NTU7XG5cdCAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjZmZmO1xuXHQgICAgYmFja2dyb3VuZC1pbWFnZTogbm9uZTtcblx0ICAgIGJvcmRlcjogMXB4IHNvbGlkICNjY2M7XG5cdCAgICBib3JkZXItcmFkaXVzOiA0cHg7XG5cdCAgfVxuXG4gIC5zYlZhbGlkYXRpb25FcnJvcnMge1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIHBhZGRpbmc6IDVweCAxNXB4O1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgc3BhbiB7XG4gICAgXHRjb2xvcjogI2MwMDtcbiAgICB9XG4gIH1cblxuICAuaW52YWxpZCB7XG4gICAgYm9yZGVyLWNvbG9yOiAjYzAwO1xuICB9XG5cbiAgLmRyb3Bkb3duLW1lbnUge1xuICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICB0b3A6IDEwMCU7XG4gICAgbGVmdDogMDtcbiAgICB6LWluZGV4OiAxMDAwO1xuICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgZmxvYXQ6IGxlZnQ7XG4gICAgbWluLXdpZHRoOiAxNjBweDtcbiAgICBwYWRkaW5nOiA1cHggMDtcbiAgICBtYXJnaW46IDJweCAwIDA7XG4gICAgZm9udC1zaXplOiAxNHB4O1xuICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgbGlzdC1zdHlsZTogbm9uZTtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjZmZmO1xuICAgIGJvcmRlcjogMXB4IHNvbGlkIHJnYmEoMCwwLDAsLjE1KTtcbiAgICBib3JkZXItcmFkaXVzOiA0cHg7XG4gICAgYm94LXNoYWRvdzogMCA2cHggMTJweCByZ2JhKDAsMCwwLC4xNzUpO1xuICAgIGJhY2tncm91bmQtY2xpcDogcGFkZGluZy1ib3g7XG4gIH1cblxuICAuZHJvcGRvd24tbWVudSA+IGxpID4gYSB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gICAgcGFkZGluZzogM3B4IDIwcHg7XG4gICAgY2xlYXI6IGJvdGg7XG4gICAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgICBsaW5lLWhlaWdodDogMS40Mjg1NzE0MztcbiAgICBjb2xvcjogIzMzMztcbiAgICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuICB9XG4gIC5kcm9wZG93bi1tZW51ID4gbGkgPiBhOmhvdmVyLFxuICAuZHJvcGRvd24tbWVudSA+IGxpID4gYTpmb2N1cyB7XG4gICAgY29sb3I6ICMyNjI2MjY7XG4gICAgdGV4dC1kZWNvcmF0aW9uOiBub25lO1xuICAgIGJhY2tncm91bmQtY29sb3I6ICNmNWY1ZjU7XG4gIH1cblxuICAuZHJvcGRvd24tbWVudSA+IC5hY3RpdmUgPiBhLFxuICAuZHJvcGRvd24tbWVudSA+IC5hY3RpdmUgPiBhOmhvdmVyLFxuICAuZHJvcGRvd24tbWVudSA+IC5hY3RpdmUgPiBhOmZvY3VzIHtcbiAgICBjb2xvcjogI2ZmZjtcbiAgICB0ZXh0LWRlY29yYXRpb246IG5vbmU7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogIzMzN2FiNztcbiAgICBvdXRsaW5lOiAwO1xuICB9XG59XG5cblxuLyoqIFBob25lIFN0eWxlcyAqL1xuXG5AbWVkaWEgb25seSBzY3JlZW4gYW5kIChtaW4tZGV2aWNlLXdpZHRoIDogMzIwcHgpIGFuZCAobWF4LWRldmljZS13aWR0aCA6IDY0MHB4KSB7XG5cblx0I3NiRmF2b3JpdGVzTWFuYWdlciB7XG5cdH1cblxufSJdLCJmaWxlIjoibW9iaWxlLmNzcyJ9 */
