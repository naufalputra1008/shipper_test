*** Settings ***
Resource                    ../resources/importer.robot

*** Keywords ***
### Python Robot Framework with Headless Chrome Setup and Robot Files ###
Open Local Apps
    [Arguments]                    ${url}
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --enable-precise-memory-info
    Call Method    ${chrome_options}    add_argument    --disable-default-apps
    Open Browser                    ${url}          Chrome
    Maximize Browser Window

Close Browser Applications
    Close Browser