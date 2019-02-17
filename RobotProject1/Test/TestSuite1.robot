*** Settings ***
Library    SeleniumLibrary  

Suite Setup    Log  I am inside Test Suite Setup
Suite Teardown    Log    I am inside Test Suite Teardown
Test Setup    Log    I am inside Test Setup
Test Teardown    Log    I am inside Test Teardown

Default Tags    Sanity

*** Test Cases ***
MyFirstTest
    [Tags]    Smoke
    Log    Hello World...
    
MySecondTest
    [Tags]    Regression
    Log    This is 2nd Test
    
MyThirdTest
    Log    This is 3rd Test
    
    
MyFourthTest
    Log    This is 4th Test    
    
    
# FirstSeleniumTest
    # Open Browser    https://google.com    chrome
    # Set Browser Implicit Wait    5
    # Input Text    name=q    Automation step by step
    # Press Keys    name=q    ENTER
    # # Click Button    name=btnk    
    # Sleep    3    
    # Close Browser
    # Log    Test Completed  
    
    
    
# SampleLoginTest
    # [Documentation]    This is a sample login test
    # Open Browser    https://opensource-demo.orangehrmlive.com/    Chrome
    # Set Browser Implicit Wait    5
    # Input Text    id=txtUsername    Admin
    # Input Password    id=txtPassword    admin123
    # Click Button    id=btnLogin
    # Click Element    id=welcome
    # Click Element    link=Logout
    # Close Browser
# #    Log    Test Completed          
    

# SampleLoginTest_Variables
    # [Documentation]    This is a sample login test for testing Variables
    # Open Browser    ${URL}    Chrome
    # Set Browser Implicit Wait    5
    # Input Text    id=txtUsername    @{CREDENTIALS}[0]
    # Input Password    id=txtPassword    &{LoginDetails}[Password]
    # Click Button    id=btnLogin
    # Click Element    id=welcome
    # Click Element    link=Logout
    # Close Browser
    # Log    Test Completed 
    # Log    This tested was executed by %{username} on %{OS}   
    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LoginDetails}    Username=Admin    Password=admin123
    
    
    