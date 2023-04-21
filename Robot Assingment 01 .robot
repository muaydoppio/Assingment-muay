*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${Username}     name=uname
${passworf}     name=pass
${submit}       xpath=//input[@type='submit']


*** Test Cases ***
TC-001
    Open Browser    http://testphp.vulnweb.com/login.php       chrome
    Input text      ${Username}         test
    Input text      ${passworf}         test
    Click Element   ${submit}
    Click Element   xpath=//*[@id="sectionLinks"]/ul/li[1]/a
    Wait Until Element Is Visible           id=pageName
    Page Should Contain    Posters
    Page Should Contain    Paintings
    Page Should Contain    Stickers
    Page Should Contain    Graffity