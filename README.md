# Steam Deck WiFi Fix for Windows

## About
This repository contains the instructions on how to fix the WiFi issue for Steam Deck running Windows.

Steam Deck running Windows 10 / Windows 11 has the dreaded issue of "ping spikes / ping latency / ping lag" when running on battery / unplugged. This makes online game unplayable when running on battery.

The issue is non-existent if Steam Deck is plugged in to charger. I've tried several power management settings, changing WiFi settings and several driver versions but this doesnt seem to fix the issue.

However after several testing I was able to find the optimal combination that works OK for my environment. I am now able to play and enjoy online games without getting tied up to the charger.

## Disclaimer
Troubleshooting WiFi issues can be cumbersome as there are a lot of factors involved. The steps I have outlined here worked for my environment - it may / may not work for your environment but it is worth to try and see if there is a noticeable difference. On my end it is night and day difference - I am now able to enjoy online games on my Steam Deck running Windows without getting tied up to the charger.

## What's new?
[Updated the document to simplify the install process.](https://github.com/ryanrudolfoba/SteamDeckWindowsFixForWiFi/issues/1)

## Requirement
1. Realtek 8822CE Unlocked Drivers - [more info here](https://www.techpowerup.com/forums/threads/realtek-8822ce-modded-wireless-drivers-with-enabled-advanced-features.283920/)

## Downloading and Installing the Unlocked Drivers
### 1. Download the archive containing the unlocked drivers [here](https://www.techpowerup.com/forums/threads/realtek-8822ce-modded-wireless-drivers-with-enabled-advanced-features.283920/) (click the link on post#2).
![image](https://user-images.githubusercontent.com/98122529/205451596-4e4d533d-6000-480a-abca-db3f0dccb8bb.png)

### 2. Extract the archive.
![image](https://user-images.githubusercontent.com/98122529/205451672-c5250ec8-00ad-4771-bb54-b6eadeda4700.png)

### 3.Go to the folder where the archive was extracted. Right-click setup.bat and select "Run as Administrator".
![image](https://user-images.githubusercontent.com/98122529/211196355-33d65494-8208-49de-8905-b29859a08397.png)

### 4. The UAC prompt will appear - press YES.

### 5. This will open up a command prompt window and automatically install the certiticate needed and the unlocked WiFi driver. Close the window / press any key when it's completed.
![image](https://user-images.githubusercontent.com/98122529/211196534-49944fe2-2159-421a-852c-1a2e79d09732.png)

### 6. Driver install complete! Go to Device Manager to verify - Expand Network Adapters and it will show RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E.
![image](https://user-images.githubusercontent.com/98122529/205451909-e57b9415-8068-44ca-b118-49cae914617f.png)

## Changing WiFi Driver Settings
### 1. Go to Device Manager. Expand Network Adapters then double click RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E. If it  shows up as Realtek 8822CE Wireless LAN 802.11ac PCI-E NIC then the unlocked drivers are not yet installed. Follow the steps Downloading and Installing the Unlocked Drivers
![image](https://user-images.githubusercontent.com/98122529/205452113-0802dca7-5f0a-44a8-8b71-7feebe68cc60.png)

### 2. Click the Advanced tab and modify the settings
![image](https://user-images.githubusercontent.com/98122529/205452280-d7138e6f-7c06-4104-b1f4-7cd581e6c805.png)

  802.11n channel width for 2.4GHz - 20MHz (this will decrease throughput / download speeds, leaving this to Auto doesnt affect throughput / download speeds)

  802.11n channel width for 5.2GHz - 20MHz (this will decrease throughput / download speeds, leaving this to Auto doesnt affect throughput / download speeds)

  Classroom Mode - Enabled (this might be the only option you need to change. However toggling this to ENABLED the Steam Deck won't be able to connect to 2.4GHz networks.)

  Roaming Aggresiveness - Disabled (this setting reduced ping spikes / lag when Steam Deck is on a different floor than the WiFi AP. I dont have roaming on my WiFI AP. If you do use roaming, you might want to toggle this to least aggressive

  Transmit Power - Medium

  Wireless Mode - 802.11ac

### 3. Press OK to apply the settings.

## Before and After
The image on the left is a simple ping test using stock drivers.

The image on the right is a simple ping test after using the unlocked drivers and changing the WiFi settings.

Both tests are performed in the same spot - Steam Deck is on 2nd floor while WiFi AP is in a different floor.

Signal strength is at 100% for both test. Using the stock drivers there are random ping spikes, while using the unlocked drivers and changing the WiFi settings its a clean1-2ms. This helped alot in online games making it playable and enjoyable.

![image](https://user-images.githubusercontent.com/98122529/205453768-301b9e22-57ef-4574-bd78-a002a61bb9ac.png)
