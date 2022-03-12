*** Settings ***
Documentation   Orders robots from RobotSpareBin Industries Inc.
...             Saves the order HTML receipt as a PDF file.
...             Saves the screenshot of the ordered robot.
...             Embeds the screenshot of the robot to the PDF receipt.
...             Creates ZIP archive of the receipts and the images.

Library     SeleniumLibrary

Library         Browser


*** Keywords ***
Open the robot order website
    # ${website}=    Get Secret    credentials
    Open Available Browser  https://robotsparebinindustries.com/#/robot-order
    Maximize Browser Window

Open the robot order website2
    New Page  https:/google.com
    

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


