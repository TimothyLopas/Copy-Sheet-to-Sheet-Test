*** Settings ***
Library     OperatingSystem
Library     RPA.Excel.Application


*** Tasks ***
Minimal task
    Copy File    example.xlsx    wip.xlsx
    Open Workbook    wip.xlsx
    ${source}=    Get Range    B5:C7
    Set Active Worksheet    Sheet2
    ${destination}=    Get Range    B5:C7
    Call Method    ${source}    Copy    ${destination}
    Call method    ${source}    Clear
    Save Excel
    Log    Done.