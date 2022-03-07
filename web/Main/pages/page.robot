*** Keywords ***
Click jadilah Mitra
    Set Selenium Speed        0.8
    Click Element                        ${JADILAH_MITRA_BTN}

System display page jadilah mitra
    Set Selenium Speed        0.8
    Wait Until Element Is Visible       ${VRFY_JADILAH_MITRA_PAGE}