*** Settings ***
Library        SeleniumLibrary
Resource       ../Resources/Page Object/TopNav.robot
Resource       ../Resources/Page Object/TeamPage.robot
Resource       ../Resources/Page Object/HomePage.robot

*** Variables ***



*** Keywords ***
Go To Home Page
    [Arguments]    ${HOME_PAGE_URL}
    HomePage.Load    ${HOME_PAGE_URL}
    HomePage.Verify Page Loaded

Go To Team Page
    TopNav.Open Team
    TeamPage.Verify Page Loaded

Validate "Team" Page
    TeamPage.Validate Page Contents



    