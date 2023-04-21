*** Settings ***
Resource        ${CURDIR}/03-Robot Assingment_Variable.robot



*** Keywords ***
Open Browser test
    Open Browser    http://testphp.vulnweb.com/login.php       chrome
    maximize Browser window
    Input text      ${Username}         test
    Input text      ${passworf}         test
    Click Element   ${submit}
    Click Element   xpath=//*[@id="sectionLinks"]/ul/li[1]/a
    Wait Until Element Is Visible           id=pageName
Click Product
    Click Element   xpath=//*[@id="content"]/div[1]/a/h3
    Wait Until Element Is Visible           id=pageName
    Page Should Contain    Trees
    Page Should Contain    Blad3 
    Set Focus To Element                    xpath=//*[@id="content"]/div[6]/a/h3
    Click Element                           xpath=//*[@id="content"]/div[6]/a/h3
    Click Element                           xpath=//*[@id="content"]/div[2]/form/input[3]
    Wait Until Element Is Visible           xpath=//*[@id="content"]/div[1]/table/tbody/tr[1]/td[1]/strong
Check price of Product
    ${cart_total}    Get Text       xpath=//*[@id="content"]/div[2]/h3
    Should Be Equal     ${cart_total}   Total: $15000