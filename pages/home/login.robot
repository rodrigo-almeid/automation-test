*** Settings ***
Library     SeleniumLibrary
Resource    ../../components/components.robot

*** Keywords ***
efetuar login
    Wait Until Element Is Visible   id=user_email
    [Arguments]    ${Email}    ${Password}
    Input Text    ${user_email}   ${Email}
    Input Text    ${user_senha}    ${Password}
    clica login
clica login
    Click Element    ${sign_in}

direcionado para a pagina de bem vindo
    ${url_atual}    Get Location
    IF  "${url_atual}" == "https://pilotgames-head-rc.portableslots.com/welcomes"
        Log    url de bem vindo
    END
    Element Should Be Visible    xpath=//h1[contains(.,'Welcome')]
    Log    icone de bem vindo exibido na tela 
    Capture Page Screenshot
    