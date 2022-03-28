## Arch
> **Required**
```bash
xorg xorg-server xorg-xinit dialog mtools os-prober wpa_supplicant networkmanager dosfstools wireless_tools
```
## i3wm
> **Required**
```bash
i3-gaps i3lock imagemagick scrot rofi pulseaudio pulseaudio-alsa alsa-utils brightnessctl qt5ct lxsession lxappearance xsettingsd dunst libnotify feh gtk-engine-murrine xclip rxvt-unicode w3m
```
> app
```bash
firefox nautilus ffmpegthumbnailer geany git htop mpd ncmpcpp neofetch ranger thermald tlp tlp-rdw upower vim
```
> **Using yay**
```bash
polybar-git
picom-git
networkmanager-dmenu-git
```
## Installing
```bash
git clone https://github.com/matobodol/arch-i3.git
```
```bash
cd arch-i3
```
```bash
rm -r .git
```
```bash
cp -rf (.*,*) ~/
```
```bash
fc-cache -rv 
```
## Tap To Click
vim /etc/X11/xorg.conf.d/30-touchpad.conf
```bash
  Section "InputClass"
	Identifier "touchpad"
	MatchIsTouchpad "on"
	Driver "libinput"
	Option "Tapping" "on"
	Option "NaturalScrolling" "on"
	Option "ScrollMethod" "twofinger"
EndSection
```
## Keybind

| Key                                                                   | Action                                  |
| --------------------------------------------------------------------- | --------------------------------------- |
| <kbd>Mod + Shift + Return                                             | App launcher                            |
| <kbd>Mod + Return                                                     | Open terminal                           |
| <kbd>Mod + Q                                                          | Close Windows                           |
| <kbd>Mod + :arrow_up: :arrow_down: :arrow_left: :arrow_right:         | Focus to window - Tiling                |
| <kbd>Mod + Ctrl + :arrow_up: :arrow_down: :arrow_left: :arrow_right:  | Resize Windows - Tiling                 |
| <kbd>Mod + Shift + :arrow_up: :arrow_down: :arrow_left: :arrow_right: | Move Windows - Tiling                   |
| <kbd>Mod + Shift + Space                                              | Switch between tiling/floating          |
| <kbd>Mod + Space                                                      | Focus - Tiling/Floating (toggle)        |
| <kbd>Mod + Left Click (hold)                                          | Move Windows - Floating                 |
| <kbd>Mod + Right Click (hold)                                         | Resize Windows - Floating               |
| <kbd>Mod + 1/2/3/4/5/6/7/8/9                                          | Change Workspace                        |
| <kbd>Mod + Shift + 1/2/3/4/5/6/7/8/9                                  | Move active windows to workspace number |
| <kbd>Mod + T                                                          | Open file manager                       |
| <kbd>Mod + Shift + M                                                  | Switch theme light/dark (Toggle)        |
| <kbd>Mod + Shift + P                                                  | Musik play or stop (Toggle)             |
| <kbd>Mod + Shift + Del                                                | Power Menu                              |
| <kbd>Mod + Del                                                        | Lock Screen                             |
| <kbd>Mod + Shift + R                                                  | WM Restart                              |
| <kbd>Mod + Shift + Z                                                  | Scratchpad - hide                       |
| <kbd>Mod + Z                                                          | Scratchpad - Show                       |
| <kbd>Mod + Print                                                      | Screenshot Menu                         |
| <kbd>Mod + H                                                          | Change Tiling direction (Horizontal)    |
| <kbd>Mod + V                                                          | Change Tiling Direction (Vertical)      |
| <kbd>F12                                                              | Networkmanager     |
| <kbd>Mod + Alt                                                        | Battery info                            |
