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
echo pausing for 5secs...
ping -n 5 localhost > nul
echo.
echo Checking if the unlocked driver is installed.
powershell get-netadapter | findstr /c:"RTK Killer Wi-Fi 5 8822CE Xtreme"
if ERRORLEVEL 1 goto :driver_error
echo.
echo Unlocked driver is successfully installed!
echo Applying Steam Deck Advanced WiFi Driver Settings by ryanrudolf
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "11n Adhoc" -DisplayValue "Disabled" > settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "802.11d" -DisplayValue "Disabled" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "802.11n channel width for 2.4GHz" -DisplayValue "Auto" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "802.11n channel width for 5.2GHz" -DisplayValue "Auto" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "Bandwidth" -DisplayValue "80+40+20Mhz" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "Beacon Interval" -DisplayValue "100" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "Classroom mode" -DisplayValue "Enabled" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "Concurrent Operation Preference"-DisplayValue "No Preference" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "HT mode" -DisplayValue "VHT mode" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "MAC Randomization" -DisplayValue "Enabled" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "Mixed mode protection" -DisplayValue "CTS-to-self Enabled" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "Multi-Channel Concurrent" -DisplayValue "Enabled" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "Preamble Mode" -DisplayValue "Short & long" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "Preferred Band" -DisplayValue "3. 5G first" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "Roaming Aggressiveness" -DisplayValue "1. Disable" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "Runtime D3" -DisplayValue "Disabled" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "TPCEnable" -DisplayValue "TPC Disable" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "Transmit Power" -DisplayValue "3. Medium" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "TxPowerControl" -DisplayValue "50%%" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "VHT 2.4G IOT" -DisplayValue "Disable" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "Wake on Magic Packet" -DisplayValue "Disabled" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "Wake on Pattern Match" -DisplayValue "Disabled" >> settings.ps1
echo Set-NetAdapterAdvancedProperty -InterfaceDescription "RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E" -DisplayName "Wireless Mode" -DisplayValue "Auto" >> settings.ps1
powershell -executionpolicy bypass -file settings.ps1
echo pausing for 5secs...
ping -n 5 localhost > nul
del /q settings.ps1
echo.
echo.
echo *********************************************************
echo Wi-Fi driver install and Wi-Fi settings import completed!
echo *********************************************************
echo.
echo If there are a bunch of RED text error messages then something went wrong!
echo 1. Make sure language / locale is set as English.
echo 2. Right-click setup.bat and run as administrator.
goto end

:driver_error
echo ****************************
echo Wi-Fi driver install failed!
echo ****************************
echo Manually install the driver using Device Manager.

:end
echo.
pause
exit