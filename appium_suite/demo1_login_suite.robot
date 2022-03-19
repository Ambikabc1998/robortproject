*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=ambikachinmalli_lVmOUy
    ...     browserstack.key=1xJDT4oy6Mp6WxuE7nqM
    ...     app=bs://7cc709e3fb8e6976e330f7ea8a716450284873a5
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=LT5 Appium Concept
    ...     build=LT5 Appium Build
    ...     name=khan academy

    Sleep    2s

    Close Application