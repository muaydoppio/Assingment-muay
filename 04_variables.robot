*** Settings ***
Library         SeleniumLibrary



*** Variables ***
${URL}                  http://125.26.15.143:13132/
${Browser}              gc
${user}                 id=username
${pass}                 id=password  
${login_button}         id=loginbtn   
${pic_homepage}         xpath=//*[@id="head"]/div[2]/div/div[1]/a/img
${Search_box}           id=keyword
${Search_btn}           id=searchbtn
${All_prod}             xpath=//*[@id="product-card"]
${1sr_prod}             xpath=(//*[@id="product-card"])[1]
${add_to_cart}          xpath=//*[@id="product-detail"]/div[3]/div/div/div/div[2]/div[3]/button[1]
${cart}                 xpath=//*[@id="head"]/div[2]/div/div[2]/div/div[3]/div/div[1]/a/i





