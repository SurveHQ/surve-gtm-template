___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Surve",
  "brand": {
    "id": "brand_dummy",
    "displayName": "",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAMAAACdt4HsAAAAAXNSR0IB2cksfwAAAAlwSFlzAAALEwAACxMBAJqcGAAAASNQTFRFAAAAJK5bJK5bJK5bJK1cJa9cJ61eJK5bJK5bI65bJ61YI65aI65bI69cI61cJLFeI61aJK5bJK5bKapRJKxZJK5bJa9bHa9cJa5bJqxZAKpRJK1cJK5bJK5bJKxbJa5aJK5bJK1cHZ9dJK5bJK5bJa9cJa1aJK5bJK5dJK1cI65bJLFeI65bJK5bJa1cJK9bJK5bIbZXJK9bI61cKrFhJK5bJK5bJK5bJK5bJK5bJa9bJK5bI65dH6pjJK5aI65aJK5bI6pbJK1dJK9cJK5bJa5bAP4AJa5aJK5bJK5bI7BcJa9bJK5bJa5aJK5bJK5aJK5bJK1cJK1cIa9bILBdI61dJ61dJK5bJK1cJa9bIapeJK5aJK5dJK1cJK9bIK5ZKapRex8wFwAAAGF0Uk5TAHvRz68gMtn/fhmt6FCGJ1Htoww0+3kQp0cDg/7GLkzrnAjJvkBn5UhOsw3U8nN28w6PmRfEkfdh5Ea8oA/gPN8bcLiX1QE51sM9U+lf+HdulokjHV04zDtmFYqI9FYWBlxFxN8AAAGnSURBVHic7ZXZUsIwFIYDiESpiIiyC4ig7CogKCIuLAoqoiju+v5PYaFtgtOF5jCON/2vkpP5vqZpkyBkxMifx2S2zFnh+LwNj7IAxBftWAy3BOEdeCLmZVbcuYJ/x7XKgrstWJa1dd24xyvHx0vh04X7A0Flnk9oYzofjqjio0Q3tXFrTInaiofoUiQ0H6+Eb+/wI0mO9FNpdUFGjmdN4liOlPLqgl25gP6Ee9LH2WcS4AJdtmJpXDlgE+ByhYz7IDPgc3g0owDjahEoiB6LjWwNIjiJI1Q/Fdpn7ILguVDMAQUXpOppgAQc/XrI2oS8Ao5QRcvcBggwviT7/6oDEvBHobj1QnWgAOMOTGDv2sRWBSK4TiJyMdywC257Qi/thQnK9Baaz4Bm0HTSShffyQQaB4p0pMfold6/lwkc6gJ6oRY8qgKurS5AAWKQ9qJMkHnQ4BEaVInCqyQoP2riozyJJwguyQVhl38qj1BPXdBq6eC1BPqiKBg+zybwv7yyCxKTM2CJILDXhF7jDSQYuqVe/x0g+PikvcEXsyCf+mZmjBj59/wAWuNLWMDNmzMAAAAASUVORK5CYII\u003d"
  },
  "description": "Managed tag for Surve website feedback and analytics tools.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "surveid",
    "displayName": "Surve ID",
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const queryPermission = require('queryPermission');
const injectScript = require('injectScript');
const logToConsole = require('logToConsole');

logToConsole('data =', data);

const url = "https://static.surve.nl/request/" + data.surveid;
logToConsole('url =', url);

injectScript(url, data.gtmOnSuccess, data.gtmOnFailure);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://static.surve.nl/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 5-12-2022 10:28:11


