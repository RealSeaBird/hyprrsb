#!/bin/bash

echo "Haiii >:3"
sleep 1
echo "Wanna Install my theme? Y/N"
read instconf

if [[ $instconf == "Y" ]]; then
	echo "Did you run with sudo? Y/N"
	read sudoconf
	if [[ $sudoconf == "Y" ]]; then
		echo "Please dont run this script with sudo <3"
		exit 1
	elif [[ $sudoconf == "N" ]]; then
		echo "Ooookaaay so il ask ya a few questions"
		sleep 1
		echo "First! is arch installed or are you on the install usb? INSTALLUSB/ARCH"
		read archconf
		if [[ $archconf == "INSTALLUSB" ]]; then
			echo "Please install arch sorry I dont trust myself to make an Install script"
			exit 1
		elif [[ $archconf == "ARCH" ]]; then
			echo "Alr now uhh thats really it lets get to it!"
			sleep 1
			echo "Are you sure you wanna install Y/N?"
			read finconf
			if [[ $finconf == "Y" ]]; then
				echo "STARTING INSTALL"
				sleep 1
				echo "DOING MAGIC LINUX STUFF"
				echo "****#"
				sleep 1
				echo "***##"
				sleep 1
				echo "**###"
				sleep 1
				echo "*####"
				sleep 1
				echo "#####"
				sleep 2
				echo "Okay im gonna do it!!!!!"
				echo "Installing dependencies"
				sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
				sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
				sudo pacman -S --needed --noconfirm git base-devel alacritty hyprland sddm fastfetch rofi hyprpaper flatpak hyprlock pavucontrol pipewire btop cava neovim waybar noto-fonts-cjk papirus-icon-theme zsh
				yay -S --noconfirm ttf-firacode-nerd hyfetch eww-bin
				echo "Done installing shit time for dot files"
				mkdir ~/backup
				mv .config ~/backup -r
				mkdir ~/.config
				cp dotfiles/alacritty ~/.config -r
				cp dotfiles/cava ~/.config -r
				cp dotfiles/eww ~/.config -r
				cp dotfiles/fastfetch ~/.config -r
				cp dotfiles/hypr ~/.config -r
				cp dotfiles/nvim ~/.config -r
				cp dotfiles/rofi ~/.config -r
				cp dotfiles/waybar ~/.config -r
				mkdir ~/Doc
				cp assets/sysp ~/Doc -r
				cp assets/Wallpapers ~ -r
				cp assets/windows11-list-dark.rasi ~/.local/share/rofi/themes/windows11-list-dark.rasi
				eww daemon
				sudo systemctl enable sddm
				echo "Its done dude want me to reboot for you? Y/N"
				read rebootconf
				if [[ $rebootconf == "Y" ]]; then
					echo "Oke have fun I guess"
					reboot
				elif [[ $rebootconf == "N" ]]; then
					echo "No? okay then bye bye!"
					exit 1
				else 
					echo "??? umm idk what the hell you just said il take that as a no then"
					exit 1
				fi

				
				
			else 
				echo "Oke bye bye <3"
				exit 1
			fi
		fi
	fi

			
fi
