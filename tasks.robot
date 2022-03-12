*** Settings ***
Documentation   Orders robots from RobotSpareBin Industries Inc.
...             Saves the order HTML receipt as a PDF file.
...             Saves the screenshot of the ordered robot.
...             Embeds the screenshot of the robot to the PDF receipt.
...             Creates ZIP archive of the receipts and the images.

# Library     SeleniumLibrary
Library    SeleniumLibrary


*** Keywords ***
Open the robot order website
    # ${website}=    Get Secret    credentials

    Open Available Browser  https://robotsparebinindustries.com/#/robot-order
    Maximize Browser Window

Open the robot order website2
    Create Webdriver    chrome    executable_path=/usr/bin/google-chrome

    Open Browser  https:/google.com    Chrome
    
    # Maximize Browser Window

Get orders
    ${csv_file}=  Download  https://robotsparebinindustries.com/orders.csv    overwrite=True
    Sleep  2 seconds
    ${data}=    Read Table From Csv    orders.csv    dialect=excel  header=True
    FOR     ${row}  IN  @{data}
        Log     ${row}
    END
    [Return]    ${data}

Close the annoying modal
    Wait Until Page Contains Element    //button[contains(text(),'OK')]
    Click Button    //button[contains(text(),'OK')]

Fill the form
    [Arguments]    ${row}
    ${head}=    Convert To Integer    ${row}[Head]
    ${body}=    Convert To Integer    ${row}[Body]
    ${legs}=    Convert To Integer    ${row}[Legs]
    ${address}=    Convert To String    ${row}[Address]
    Select From List By Value    //select[@name="head"]   ${head}
    Click Element   //input[@value="${Body}"]
    Input Text  //input[@placeholder="Enter the part number for the legs"]    ${legs}
    Input Text  //input[@placeholder="Shipping address"]    ${address}

Preview the robot
    Click Button  //button[@id="preview"]
    Wait Until Page Contains Element  //div[@id="robot-preview-image"]
    Sleep    2 seconds

Submit the order
    Click Button    //button[@id="order"]
    Sleep    2 seconds
    FOR  ${i}  IN RANGE  ${5}
        ${alert}=  Is Element Visible  //div[@class="alert alert-danger"]  
        Run Keyword If  '${alert}'=='True'  Click Button  //button[@id="order"] 
        Exit For Loop If  '${alert}'=='False'       
    END

Export Pdf file and take screenshot
    [Arguments]    ${row}
    Sleep  2 seconds   
    ${receipt_data}=    Get Element Attribute    //div[@id='receipt']    outerHTML
    Html To Pdf    ${receipt_data}    ${CURDIR}${/}output${/}receipt${/}${row}[Order number].pdf
    Screenshot     //div[@id="robot-preview-image"]   ${CURDIR}${/}output${/}screenshot${/}${row}[Order number].png
    Add Watermark Image To Pdf    ${CURDIR}${/}output${/}screenshot${/}${row}[Order number].png    ${CURDIR}${/}output${/}receipt${/}${row}[Order number].pdf   ${CURDIR}${/}output${/}receipt${/}${row}[Order number].pdf

Create a ZIP file of the receipts
    Archive Folder With Zip    ${CURDIR}${/}output${/}receipt    receipt.zip    

Go to order another robot
    Click Button    //button[@id='order-another']

*** Tasks ***
# Order robots from RobotSpareBin Industries Inc
#     Open the robot order website
#     ${orders}=    Get orders
#     FOR    ${row}    IN    @{orders}
#         Close the annoying modal
#         Fill the form    ${row}
#         Preview the robot
#         Submit the order
#         Export Pdf file and take screenshot    ${row}    
#         Go to order another robot
#     END
#     Create a ZIP file of the receipts
#     [Teardown]      Close Browser

Case 2 Open Web for Testing 
    Open the robot order website2

   
Auto Pass 
    ${head}=    Convert To Integer    12
    Log    Hello World!
    Log    ${CURDIR}
    Log    Hello


    FOR     ${i}  IN  ${head}
        Log     ${i}
    END


