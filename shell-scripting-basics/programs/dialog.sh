#!/bin/sh


#Syntax:
#
#        dialog --title {title} --backtitle {backtitle} {Box options}
#        where Box options can be any one of following
#        --yesno      {text}  {height} {width}
#        --msgbox     {text}  {height} {width}
#        --infobox    {text}  {height} {width}
#        --inputbox   {text}  {height} {width} [{init}]
#        --textbox    {file}  {height} {width}
#        --menu       {text}  {height} {width} {menu} {height} {tag1} item1}...



dialog --title "Linux Dialog Utility Infobox" --backtitle "Linux Shell Script\
Tutorial" --infobox "This is dialog box called infobox, which is used \
to show some information on screen, Thanks to Savio Lam and\
Stuart Herbert to give us this utility. Press any key. . . " 7 50 ; read



