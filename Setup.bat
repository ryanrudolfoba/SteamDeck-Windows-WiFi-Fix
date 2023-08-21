@echo off &TITLE Installer Batch
echo All credits goes to AAF Optimus for helping and signing this driver.
cd /d %~dp0
echo Installing Root Authority Certificate...
certutil -f -addstore "Root" "Certs\THEBOSS619.sst"
certutil -f -addstore "Root" "Certs\THEBOSS619-DER.cer"
certutil -f -addstore "Root" "Certs\THEBOSS619-Base.cer"
echo Done!
echo Installing CA Authority Certificate...
certutil -f -addstore "CA" "Certs\THEBOSS619-Base.cer"
certutil -f -addstore "CA" "Certs\THEBOSS619.sst"
certutil -f -addstore "CA" "Certs\THEBOSS619-DER.cer"
echo Done!
echo Installing Publisher Certificate...
certutil -f -addstore "TrustedPublisher" "Certs\THEBOSS619.sst"
certutil -f -addstore "TrustedPublisher" "Certs\THEBOSS619-DER.cer"
certutil -f -addstore "TrustedPublisher" "Certs\THEBOSS619-Base.cer"
echo Done!

echo Installing Realtek Killer Driver...
pnputil /add-driver "Driver\netrtwlane.inf" /install
echo.
echo pausing for 10secs...
ping -n 10 localhost > nul
echo.
echo Applying Steam Deck Advanced WiFi Driver Settings by ryanrudolf
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "11n Adhoc" -DisplayValue "Disabled" > settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "802.11d" -DisplayValue "Disabled" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "802.11n channel width for 2.4GHz" -DisplayValue "Auto" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "802.11n channel width for 5.2GHz" -DisplayValue "Auto" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "Bandwidth" -DisplayValue "80+40+20Mhz" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "Beacon Interval" -DisplayValue "100" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "Classroom mode" -DisplayValue "Enabled" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "Concurrent Operation Preference"-DisplayValue "No Preference" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "HT mode" -DisplayValue "VHT mode" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "MAC Randomization" -DisplayValue "Enabled" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "Mixed mode protection" -DisplayValue "CTS-to-self Enabled" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "Multi-Channel Concurrent" -DisplayValue "Enabled" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "Preamble Mode" -DisplayValue "Short & long" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "Preferred Band" -DisplayValue "3. 5G first" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "Roaming Aggressiveness" -DisplayValue "1. Disable" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "Runtime D3" -DisplayValue "Disabled" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "TPCEnable" -DisplayValue "TPC Disable" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "Transmit Power" -DisplayValue "3. Medium" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "TxPowerControl" -DisplayValue "50%%" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "VHT 2.4G IOT" -DisplayValue "Disable" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "Wake on Magic Packet" -DisplayValue "Disabled" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "Wake on Pattern Match" -DisplayValue "Disabled" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -Name "Wi-Fi" -DisplayName "Wireless Mode" -DisplayValue "Auto" >> settings.ps1
powershell -executionpolicy bypass -file settings.ps1
echo.
echo.
echo *********************************************************
echo Wi-Fi driver install and Wi-Fi settings import completed!
echo *********************************************************
echo.
echo If there are a bunch of RED text error messages then something went wrong!
echo 1. Make sure language / locale is set as English.
echo 2. Make sure that the Wi-Fi interface name is set as Wi-Fi. 
echo 3. Make sure that in Device Manager - Network Adapters it shows up as RTK Killer Wi-Fi.
echo 4. Right-click setup.bat and run as administrator.
goto end

:end
del /q settings.ps1
echo.
pause
exit