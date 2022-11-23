*** Settings ***
Library  SeleniumLibrary
# robot zomato\Demo.robot
Test Setup      commonsetup
Test Teardown   commonteardown

*** Variables ***

*** Test Cases ***
TC01
    [Documentation]  This test case is to test the zomato page
    This is to test the zomato page


*** Keywords ***
commonsetup
    OpenBrowser      https://www.zomato.com/    gc
    Sleep   5s
    Maximize Browser window
    Sleep   5s
commonteardown
    sleep   5s
    Close Browser
This is to test the zomato page
    input text  //*[@id="root"]/div/div[3]/div[2]/div[2]/div/div[3]/input   icecream
    Sleep   5s
    press keys  //*[@id="root"]/div/div[3]/div[2]/div[2]/div/div[3]/input   CTRL+ENTER
    Sleep   5s
    click element   //*[@id="root"]/div/div[3]/div[2]/div[2]/div/div[3]/div[2]/div[1]/div[2]/p[1]
    Sleep   5s

