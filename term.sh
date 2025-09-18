#!/bin/bash

random_number=$(($RANDOM % (8 - 1 + 1) + 1))

case $random_number in

	1)
		fastfetch ;;
	2)
		figlet Haiii :3 | lolcat
		cat ~/Doc/mtf.txt
		;;
	3)
		cowsay -f tux Haiii | lolcat ;;
	4)
		fastfetch ;;
	5)
		fastfetch ;;
	6)
		mplayer -vo caca ~/Doc/Caramel.mp4 ;;
	7)
		mplayer -vo caca ~/Doc/baka.mp4 ;;
	8)
		mplayer -vo caca ~/Doc/tetoris.mp4
esac
