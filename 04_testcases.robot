*** Settings ***
Library         SeleniumLibrary
Resource        ${CURDIR}/04_keyword.robot


*** Test Cases ***
    
Testcase 01 - Verify that user cannot login with wrong username
    [Tags]   TC001
    Open website and login          helloworld       1234  
    verify Alert Should Be Present

  
Testcase 02 - Verify that user can login to the system when username are correct
    [Tags]   TC002
    Open website and login          oz4899          1234
    verify user can login

Testcase 03 - Verify that search function are working correctly
    [Tags]   TC003
    Open website and login          oz4899          1234
    verify user can login
    Input Search Keyword            abcd
    verify that website not show search result
    Input Search Keyword            Shirt
    verify that website show search result


Testcase 04 - Verify that add to cart function are working correctly
    [Tags]   TC004
    Open website and login          oz4899          1234
    Add Product to cart
    Add more product to cart
    Remove product from cart
