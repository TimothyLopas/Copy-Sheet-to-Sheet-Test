*** Settings ***
Library     OperatingSystem
Library     RPA.Excel.Application

Task Setup    Open Application    visible=${TRUE}
Task Teardown    Quit Application


*** Tasks ***
Minimal task
    Copy File    example.xlsx    wip.xlsx
    Open Workbook    wip.xlsx
    Set Active Worksheet    Sheet1
    ${source}=    Get Range    B5:C7
    Log To Console    Source: ${source}
    Set Active Worksheet    Sheet2
    ${destination}=    Get Range    B5:C7
    Log To Console    Destination: ${destination}
    Call Method    ${source}    Copy    ${destination}
    Call method    ${source}    Clear
    Save Excel
    Log    Done.