*** Settings ***
Library         SeleniumLibrary
Resource        ${CURDIR}/04_variables.robot


*** Keywords ***

Open website and login 
    [Arguments]        ${Username}            ${password}           
    Open Browser            ${URL}      ${Browser}
    Input Text              ${user}     ${Username} 
    Input Text              ${pass}     ${password}
    Click Element           ${login_button} 

verify Alert Should Be Present
    Alert Should Be Present     login failed   

verify user can login   
    Wait Until Element Is Visible       ${pic_homepage}  

Input Search Keyword
    [Arguments]              ${SEARCH_KEYWORD}
    Input Text              ${Search_box}     ${SEARCH_KEYWORD}
    Click Element           ${Search_btn} 

verify that website not show search result
    Wait Until Element Is Visible        xpath=//*[@id="notFound"]
    ${text1}=    Get Text                xpath=//*[@id="notFound"]
    Should Be Equal    ${text1}     No results found.

verify that website show search result
    Wait Until Element Is Visible    xpath=//*[@id="home"]/div[3]/div/div/div[2]/a/div/div[2]
    ${product_names}=    Get Text    xpath=//*[@id="home"]/div[3]/div/div/div[2]/a/div/div[2] 
    Should Contain    ${product_names}    Shirt  

Add Product to cart
    Set Selenium Speed          0.5S
    Wait Until Element Is Visible            ${All_prod}   
    Click Element           ${1sr_prod}  
    Wait Until Element Is Visible       ${add_to_cart} 
    Click Element           ${add_to_cart}
    Wait Until Element Is Visible       id=lblCartCount 
    ${cart_quantity}=    Get Text       id=lblCartCount    
    Should Be Equal    ${cart_quantity}  1

Add more product to cart
    Set Selenium Speed          0.5S
    Click Element           id=add
    Click Element           id=qty 
    Input text              id=qty          5
    click Element           ${add_to_cart}
    ${cart_quantity}=    Get Text    id=lblCartCount    
    Should Be Equal    ${cart_quantity}    6 

Remove product from cart
    Set Selenium Speed          0.5S
    Mouse Over           ${cart}  
    Click Element           xpath=//*[@id="dropdown-menu4"]/div/div/button
    ${cart_quantity}=    Get Text    id=lblCartCount    
    Should Be Equal    ${cart_quantity}    0 