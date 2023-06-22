# Steam Deck WiFi Fix for Windows

## About
All credits goes to THEBOSS619 for this unlocked driver! [Check the on-going discussion here.](https://www.techpowerup.com/forums/threads/realtek-8822ce-modded-wireless-drivers-with-enabled-advanced-features.283920/)

I've added a simple script that automates the configuration of the Wi-Fi settings that works good in my environment. This may / may not work for your environment!

## Disclaimer
1. Do this at your own risk! \
2. This is for educational and research purposes only! \

I've been using this unlocked driver since December 2022 and a lot of users are reporting success too. Just a standard disclaimer to protect myself from any liability.

## Video Tutorial
**[If you prefer a video tutorial then click here.](https://youtu.be/ZquAgs4M2ik)**

## What's new?
1. Uploaded the unlocked driver from [here](https://www.techpowerup.com/forums/threads/realtek-8822ce-modded-wireless-drivers-with-enabled-advanced-features.283920/) to this github repo for easy installation. Unlocked driver is based from the Windows Update Catalog dated Apr18 2023.
2. Edited the setup.bat to include the configuration settings that works good in my environment. I am now getting a consistent ~1ms ping using the unlocked driver.

## Installation Steps
1. Click the green code button and press Download Zip. \
   ![image](https://github.com/ryanrudolfoba/SteamDeckWindowsFixForWiFi/assets/98122529/fe5c5d36-33d9-409c-8cb8-fa62d667d5b1)

2. Go to the downloads folder and extract the zip. \
   ![image](https://github.com/ryanrudolfoba/SteamDeckWindowsFixForWiFi/assets/98122529/ca6ca7e7-37a2-426a-a11d-4da0d7854fda)

3. Go to the extracted folder. Right click Setup, then select Run-As Administrator. \
   ![image](https://github.com/ryanrudolfoba/SteamDeckWindowsFixForWiFi/assets/98122529/98a356ff-4bb2-4070-884a-90e8712b006d)

4. Wait for the install to finish. This will take several minutes! \
   ![image](https://github.com/ryanrudolfoba/SteamDeckWindowsFixForWiFi/assets/98122529/f77787b8-e5bd-4827-b414-bf489335b2a4)

5. Once done, verify in Device Manager it will show up as RTK Killer Wifi. Driver date Apr18 2023. \
   ![image](https://github.com/ryanrudolfoba/SteamDeckWindowsFixForWiFi/assets/98122529/e8081a83-c2fe-4b9e-b4df-79a738811ce5)


## Before and After
The image on the left is a simple ping test using stock drivers.

The image on the right is a simple ping test after using the unlocked drivers and changing the WiFi settings.

Both tests are performed in the same spot - Steam Deck is on 2nd floor while WiFi AP is in a different floor.

Signal strength is at 100% for both test. Using the stock drivers there are random ping spikes, while using the unlocked drivers and changing the WiFi settings its a clean1-2ms. This helped alot in online games making it playable and enjoyable.

![image](https://user-images.githubusercontent.com/98122529/205453768-301b9e22-57ef-4574-bd78-a002a61bb9ac.png)
