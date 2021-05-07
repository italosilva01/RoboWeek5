* Variables *
${DIV_BOX_RESTAURANT}       css=div[class="place-info-box"][style="opacity: 1;"]
* Keywords *


Go To Restaurants
    Click   text=Estou com fome!   
    Get Text    h1 strong   contains    Ta na hora de matar a fome!
Search By
    [Arguments]     ${value}
    Click   .search-link
    Fill Text   input[formcontrolname="searchControl"]  ${value}

Restaurants Should Be visible
    [Arguments]     ${name}
    Wait For Elements State     ${DIV_BOX_RESTAURANT}    visible     10
    Get Text  css=.place-info-box   contains    ${name}
Restaurants Count Should Be
    [Arguments]     ${qtd}
    Wait For Elements State     ${DIV_BOX_RESTAURANT}    visible     10
    Get Element Count   css=.place-info-box     equal   ${qtd}