*** Settings ***
    # we dont add any library because all
    # keywords that we use in this demo test script
    # are built in Robot Frameowrk

*** Test Cases ***
Test case 1
    # test cases do not refer directly to any import library
    # they only refer to keywords
    # keywords are reference to certain steps which would be
    # involving reference to built-in or additional libraries
    User Defined Keyword a
    User Defined Keyword b

Test case 2
    # note we can use the same keyword multiple times
    User Defined Keyword a
    User Defined Keyword b

*** Keywords ***
User Defined Keyword a
    Log     this is user defined function a
User Defined Keyword b
    Log     this is user defined function b