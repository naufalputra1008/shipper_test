*** Settings ***
Resource                  ../Main/resources/importer.robot
Test Setup                Open Local Apps                ${base_url_shipper}
Test Teardown             Close Browser Applications

*** Test Cases ***
User Able See Page Jadilah Mitra 
    Given Click jadilah Mitra
    Then System display page jadilah mitra
