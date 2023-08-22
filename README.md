# Steam Deck WiFi Fix for Windows

## About
All credits goes to THEBOSS619 [(GitHub profile here)](https://github.com/THEBOSS619?tab=repositories) for this unlocked driver! [Check the on-going discussion here.](https://www.techpowerup.com/forums/threads/realtek-8822ce-modded-wireless-drivers-with-enabled-advanced-features.283920/)

I've added a simple script that automates the configuration of the Wi-Fi settings that works good in my environment. This may / may not work for your environment!

> **NOTE**\
> If you are going to use this script for a video tutorial, PLEASE reference on your video where you got the script! This will make the support process easier!
> And don't forget to give a shoutout to [@10MinuteSteamDeckGamer](https://www.youtube.com/@10MinuteSteamDeckGamer/) / ryanrudolf from the Philippines!
>

<b> If you like my work please show support by subscribing to my [YouTube channel @10MinuteSteamDeckGamer.](https://www.youtube.com/@10MinuteSteamDeckGamer/) </b> <br>
<b> I'm just passionate about Linux, Windows, how stuff works, and playing retro and modern video games on my Steam Deck! </b>
<p align="center">
<a href="https://www.youtube.com/@10MinuteSteamDeckGamer/"> <img src="https://github.com/ryanrudolfoba/SteamDeck-Clover-dualboot/blob/main/10minute.png"/> </a>
</p>

<b>Monetary donations are also encouraged if you find this project helpful. Your donation inspires me to continue research on the Steam Deck! Clover script, 70Hz mod, SteamOS microSD, Secure Boot, etc.</b>

<b>Scan the QR code or click the image below to visit my donation page.</b>

<p align="center">
<a href="https://www.paypal.com/donate/?business=VSMP49KYGADT4&no_recurring=0&item_name=Your+donation+inspires+me+to+continue+research+on+the+Steam+Deck%21%0AClover+script%2C+70Hz+mod%2C+SteamOS+microSD%2C+Secure+Boot%2C+etc.%0A%0A&currency_code=CAD"> <img src="https://github.com/ryanrudolfoba/SteamDeck-Clover-dualboot/blob/main/QRCode.png"/> </a>
</p>

## Disclaimer
1. Do this at your own risk!
2. This is for educational and research purposes only!

I've been using this unlocked driver since December 2022 and a lot of users are reporting success too. Just a standard disclaimer to protect myself from any liability.

## Video Tutorial
**[If you prefer a video tutorial then click here.](https://youtu.be/ZquAgs4M2ik)**

## What's new as of Aug 21 2023?
1. Uploaded the unlocked driver from [here](https://www.techpowerup.com/forums/threads/realtek-8822ce-modded-wireless-drivers-with-enabled-advanced-features.283920/) to this github repo for easy installation. Unlocked driver is based from the Windows Update Catalog dated Jun 26 2023. \
![image](https://github.com/ryanrudolfoba/SteamDeck-Windows-WiFi-Fix/assets/98122529/9b8120c3-df9d-4cc8-870e-c1e111dcce91)

2. Edited the setup.bat so that both 2.4GHz and 5GHz networks will be available after installation.
3. Added simple logic in setup.bat. Change from InterfaceName to InterfaceDescription.


## What's new as of Jun 22 2023?
1. Uploaded the unlocked driver from [here](https://www.techpowerup.com/forums/threads/realtek-8822ce-modded-wireless-drivers-with-enabled-advanced-features.283920/) to this github repo for easy installation. Unlocked driver is based from the Windows Update Catalog dated Apr18 2023.
2. Edited the setup.bat to include the configuration settings that works good in my environment. I am now getting a consistent ~1ms ping using the unlocked driver.

## Installation Steps
1. Open a web browser and go to the url - https://github.com/ryanrudolfoba/SteamDeckWindowsFixForWiFi 
2. Click the green code button and press Download Zip. \
   ![image](https://github.com/ryanrudolfoba/SteamDeckWindowsFixForWiFi/assets/98122529/fe5c5d36-33d9-409c-8cb8-fa62d667d5b1)

3. Go to the downloads folder and extract the zip. \
   ![image](https://github.com/ryanrudolfoba/SteamDeckWindowsFixForWiFi/assets/98122529/ca6ca7e7-37a2-426a-a11d-4da0d7854fda)

4. Go to the extracted folder. Right click Setup, then select Run-As Administrator. \
   ![image](https://github.com/ryanrudolfoba/SteamDeckWindowsFixForWiFi/assets/98122529/f6303939-b732-42fb-83bd-4513675b49f2)

5. Wait for the install to finish. This will take several minutes! \
   ![image](https://github.com/ryanrudolfoba/SteamDeckWindowsFixForWiFi/assets/98122529/36d2e762-e3a9-441f-922e-34de698a1d00)

6. Once done, verify in Device Manager it will show up as RTK Killer Wifi. Driver date Apr18 2023. \
   ![image](https://github.com/ryanrudolfoba/SteamDeckWindowsFixForWiFi/assets/98122529/e8081a83-c2fe-4b9e-b4df-79a738811ce5)


## Before and After
The image on the left is a simple ping test using stock drivers.

The image on the right is a simple ping test after using the unlocked drivers and changing the WiFi settings.

Both tests are performed in the same spot - Steam Deck is on 2nd floor while WiFi AP is in a different floor.

Signal strength is at 100% for both test. Using the stock drivers there are random ping spikes, while using the unlocked drivers and changing the WiFi settings its a clean1-2ms. This helped alot in online games making it playable and enjoyable.

![image](https://user-images.githubusercontent.com/98122529/205453768-301b9e22-57ef-4574-bd78-a002a61bb9ac.png)
