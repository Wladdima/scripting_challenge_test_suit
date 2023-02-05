*** Settings ***
Documentation      Talk about what this suite of tests does
Library            SeleniumLibrary
Resource           ../Resources/common.robot
Resource           ../Resources/officeApp.robot
Test Setup         Begin Web Test
Test Teardown      End Web Test

*** Variables ***
${BROWSER} =          chrome
${HOME_PAGE_URL} =    https://automationplayground.com/front-office/

*** Test Cases ***
#User should see "Home" page
#    [Documentation]        This is test 1
#    [Tags]                 test1
#    officeApp.Go To Home Page    ${HOME_PAGE_URL}

#User should see "Team" page
 #   [Documentation]        This is test 2
 #   [Tags]                 test2
 #   officeApp.Go To Home Page    ${HOME_PAGE_URL}
 #   officeApp.Go To Team Page

"Team" page should match requierments
    [Documentation]        This is test 3
    [Tags]                 test3
    officeApp.Go To Home Page    ${HOME_PAGE_URL}
    officeApp.Go To Team Page
    officeApp.Validate "Team" Page

*** Keywords ***

