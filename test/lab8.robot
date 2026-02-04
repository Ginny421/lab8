*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open computing Website
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu

    Open Browser
    ...    https://www.google.com
    ...    chrome
    ...    options=${options}
    ...    executable_path=/usr/bin/chromedriver

    Close Browser
