*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/RegistrationKeywords.robot

*** Variables ***
${url}      https://demo.guru99.com/test/newtours/login.php
${browser}      chrome


*** Test Cases ***
Registration Test Case
        Open my browser    ${url}       ${browser}
        Click Register Link
        Enter First Name        Konda
        Enter Last Name      Reddy
        Enter Phone Number      9676350534
        Enter Email Add     reddy@gmail.com
        Enter Address       Singhania colony Yavatmal
        Enter City      Yavatmal
        Enter State     Maharashtra
        Enter Postal Code       445001
        Enter DD Counrty        INDIA
        Enter Username Register     kondareddy@gmail.com
        Enter Password Register         Boss@007
        Enter Confirm Password         Boss@007
        capture page screenshot     D:/CREDENCE CLASS/AUTOMATION/Page_Object_Model_Base_Demo_Project/ScreenShots/register.png
        Click On Submit Button
        capture page screenshot     D:/CREDENCE CLASS/AUTOMATION/Page_Object_Model_Base_Demo_Project/ScreenShots/register_success.png
        Verify Successfull Registering
        Close My Browser

###                                  robot TestCase/Registration_TestCase.robot
###             robot TestCase\                         ### will exicute all the test cases in folder Test Cases
###             robot TestCase\* .robot         ### will exicute all the test cases in folder Test Cases
###             robot TestCase\Reg*.robot       ### will exicute only registration test *** test cases ***
###             pip install robotframework-pabot        ## will install packeg for parllel run test cases
###             pabot --processes 2 TestCase \*.robot       ### here,  processes 2 => two test cases run
###             pabot --processes 2 --outputdir Results TestCase \*.robot      ### output of this test cases will be store in Results folder

###             run.bat command


