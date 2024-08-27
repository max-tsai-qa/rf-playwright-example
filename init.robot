*** Settings ***
# Robot Framework Libarary
Library   Browser

# Setting
Variables    ./setting.py

# Integration
Library       ./library/integration/fake_data.py

# Location
Variables     ./resource/location/element-common.py

# Keywords
Resource    ./library/keywords/keywords-common.robot