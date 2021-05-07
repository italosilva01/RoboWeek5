* Settings *
Documentation       Arquivos base do projeto
Library     Browser
Resource    actions/search.robot

*Keywords*
Start Session    
    New Browser     chromium    False
    New Page    http://parodifood.qaninja.academy/
    # Chekpoint
    Get Text    span  contains    Nunca foi tão engraçado pedir comida