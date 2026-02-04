*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open computing Website
    ${options}=    Evaluate    __import__('selenium.webdriver').webdriver.ChromeOptions()
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Open Browser    https://www.google.com    chrome    options=${options}
    Close Browser
