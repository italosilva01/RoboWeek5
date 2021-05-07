* Settings *
Resource        ${EXECDIR}/resources/base.robot
Test Teardown   Take Screenshot

* Test Cases *
Deve buscar um unico restaurant
    Start Session
    Go To Restaurants
    Search By  Debuger
    Restaurants Should Be visible  DEBUGER KING
    Get Element Count   css=.place-info-box     equal   1

Deve buscar por categoria
    Start Session
    Go To Restaurants
    Search By  cafe
    Restaurants Should Be visible  STARBUGS COFFEE
    Restaurants Count Should Be  1

Deve buscar por todos os ambientes       
    Start Session
    Go To Restaurants
    Search By  a
    Restaurants Count Should Be  5
