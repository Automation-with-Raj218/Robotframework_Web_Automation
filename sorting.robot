*** Settings ***
Library    SeleniumLibrary

#*** Test Cases ***
#sorted list
    
 #   ${numbers}    Create List    2    1    4    6    3    5
  #  ${sort_list}    Evaluate    sorted(${numbers})
   # Should Be Equal     ${sort_list}

*** Test Cases ***
Sort List Test
    ${my_list}=    Create List          2    1    4    6    3    5
   
    ${sorted_list}=    Evaluate    sorted(${my_list})
    
    Log To Console    ${sorted_list}
    ${Again_sort}=    Evaluate    sorted(${sorted_list},reverse=True)
    Log To Console    ${Again_sort}
    
    Should Be Equal As Strings        ${sorted_list}    ['1', '2', '3', '4', '5', '6']

    Should Be Equal As Strings        ${Again_sort}       ['6', '5', '4', '3', '2', '1']
    Get List Items


