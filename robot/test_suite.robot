*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    XML


*** Variables ***
${ISBN}       9780884271956
${API_URL}    /books/v1/volumes?q=isbn:${ISBN}


*** Test Cases ***
Get Book Title By ISBN
    Create Session    google_books    https://www.googleapis.com    verify=True
    ${response}=    GET On Session    google_books    ${API_URL}
    Should Be Equal As Strings    ${response.status_code}    200
    ${response_json}=    Set Variable    ${response.json()}
    ${exists}=    Run Keyword And Return Status    Dictionary Should Contain Key    ${response_json['items'][0]['volumeInfo']}    title
    ${title}=    Set Variable    Title Not Found  # Initialize ${title} with a default value
    Run Keyword If    ${exists}    Set Test Variable    ${title}    ${response_json['items'][0]['volumeInfo']['title']}
    Log    Title: ${title}
    Log    ISBN: ${ISBN}
