# Steam Deck WiFi Fix for Windows

## About
This repository contains the instructions on how to fix the WiFi issue for Steam Deck running Windows.

Steam Deck running Windows 10 / Windows 11 has the dreaded issue of "ping spikes / ping latency / ping lag" when running on battery / unplugged. This makes online game unplayable when running on battery.

The issue is non-existent if Steam Deck is plugged in to charger. I've tried several power management settings, changing WiFi settings and several driver versions but this doesnt seem to fix the issue.

However after several testing I was able to find the optimal combination that works OK for my environment. I am now able to play and enjoy online games.


## Requirement
1. Realtek 8822CE Unlocked Drivers - ![more info here](https://www.techpowerup.com/forums/threads/realtek-8822ce-modded-wireless-drivers-with-enabled-advanced-features.283920/)

## Instructions
1. Download the archive containing the drivers ![here](https://www.techpowerup.com/forums/threads/realtek-8822ce-modded-wireless-drivers-with-enabled-advanced-features.283920/) (click the link on post#2).
![image](https://user-images.githubusercontent.com/98122529/205451596-4e4d533d-6000-480a-abca-db3f0dccb8bb.png)

2. Extract the archive.
![image](https://user-images.githubusercontent.com/98122529/205451672-c5250ec8-00ad-4771-bb54-b6eadeda4700.png)

3. Go to Device Manager. Expand Network Adapters then double click Realtek 8822CE Wireless LAN 802.11ac PCI-E NIC.
![image](https://user-images.githubusercontent.com/98122529/205451702-42416cb4-ce91-46fd-84ff-7d2b6c1f3f29.png)

4. Go to the Driver tab, then click Update Driver.
![image](https://user-images.githubusercontent.com/98122529/205451753-10da05bf-162a-40d6-b553-3915770d7b13.png)

5. Select Browse my computer for drivers.
![image](https://user-images.githubusercontent.com/98122529/205451782-7966cc04-21ee-4aa6-baea-4cc3c412a8e7.png)

6. Navigate to where the drivers were extracted and press Next
![image](https://user-images.githubusercontent.com/98122529/205451810-16def79c-0fa3-42e5-b39f-db1001ed751d.png)

7. Wait unitl driver install is finished.
![image](https://user-images.githubusercontent.com/98122529/205451824-08e80f37-1266-42f3-ab78-f76d420b5eb7.png)

8. Once the install is done it will show up as RTK Killer Wi-Fi 5 8822CE Xtreme 802.11ac PCI-E
![image](https://user-images.githubusercontent.com/98122529/205451898-8096d0ca-b365-4238-b08f-9b0f05e89aba.png)
![image](https://user-images.githubusercontent.com/98122529/205451909-e57b9415-8068-44ca-b118-49cae914617f.png)

If it doesnt, then driver signing need to be disabled in Windows.

