*** Settings ***
Resource    ../pages/home/login.robot
Resource    ../config/Resource.robot


Suite Setup      Start tests
Suite Teardown    End tests   


*** Test Cases ***

ct001 - logar portal 
    Given Access portal
    When efetuar login    admin@admin.com    123456
    Then direcionado para a pagina de bem vindo