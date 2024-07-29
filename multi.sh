#!/bin/bash

chcp 65001
title="Killer Tool"
echo -e "\033]0;$title\007"
clear
echo -e "\033[0;34m"

menu() {
    clear
    echo -e "\033[96m                ╔══════════════════════════╗"
    echo "                ║   1  Port scanner        ║"
    echo -e "\033[96m                ║   2  Ip lookup           ║"
    echo -e "\033[96m                ║   3  Dos ip              ║"
    echo -e "\033[96m                ║   4  User look           ║"
    echo -e "\033[96m                ╚══════════════════════════╝"

    read -p "(!) " choice

    case "$choice" in
        1)
            scanIPRange
            ;;
        2)
            ipGeoLookup
            ;;
        3)
            dos_ip
            ;;
        4)
            username_lookup
            ;;
        *)
            menu
            ;;
    esac
}

username_lookup() {
    read -p "Enter the username you want to lookup: " username

    echo -e "\033[94m╔═══════════════════════════════════════════════════════════════════════════════════════════════════╗"
    echo -e "\033[94m║ .dP\"Y8 888888    db    88\"\"Yb  dP\"\"b8 88  88     88\"\"Yb 888888 .dP\"Y8 88   88 88     888888 .dP\"Y8║"
    echo -e "\033[94m║ `Ybo.\" 88__     dPYb   88__dP dP   \"\" 88  88     88__dP 88__   `Ybo.\" 88   88 88       88   `Ybo.\"║"
    echo -e "\033[94m║ o.`Y8b 88\"\"    dP__Yb  88\"Yb  Yb      888888     88\"Yb  88\"\"   o.`Y8b Y8   8P 88  .o   88   o.`Y8b║"
    echo -e "\033[94m║ 8bodP' 888888 dP\"\"\"\"Yb 88  Yb  YboodP 88  88     88  Yb 888888 8bodP' `YbodP' 88ood8   88   8bodP'║"
    echo -e "\033[94m╚═══════════════════════════════════════════════════════════════════════════════════════════════════╝"
    echo
    echo "                ╔════════════════════════════════════════════════════════════"
    echo "                ║ TikTok: https://www.tiktok.com/@$username"
    echo "                ║════════════════════════════════════════════════════════════"
    echo "                ║ Instagram: https://www.instagram.com/$username"
    echo "                ║════════════════════════════════════════════════════════════"
    echo "                ║ Facebook: https://www.facebook.com/$username"
    echo "                ║════════════════════════════════════════════════════════════"
    echo "                ║ Twitter: https://www.twitter.com/$username"
    echo "                ║════════════════════════════════════════════════════════════"
    echo "                ║ Steam: https://steamcommunity.com/id/$username"
    echo "                ║════════════════════════════════════════════════════════════"
    echo "                ║ YouTube: https://www.youtube.com/user/$username"
    echo "                ║════════════════════════════════════════════════════════════"
    echo "                ║ GitHub: https://www.github.com/$username"
    echo "                ║════════════════════════════════════════════════════════════"
    echo "                ║ Reddit: https://www.reddit.com/user/$username"
    echo "                ║════════════════════════════════════════════════════════════"
    echo "                ║ Discord: https://www.discord.com/$username"
    echo "                ║════════════════════════════════════════════════════════════"
    echo "                ║ SoundCloud: https://soundcloud.com/$username"
    echo "                ║════════════════════════════════════════════════════════════"
    echo "                ║ Twitch: https://www.twitch.tv/$username"
    echo "                ║════════════════════════════════════════════════════════════"
    echo "                ║ Snapchat: https://www.snapchat.com/add/$username"
    echo "                ║════════════════════════════════════════════════════════════"
    echo "                ║ Pinterest: https://www.pinterest.com/$username"
    echo "                ╚════════════════════════════════════════════════════════════"
    read -p "Press any key to return to the menu..."
    menu
}

scanIPRange() {
    clear
    echo -e "\033[96m                                    (   .      )"
    echo -e "\033[96m                                    .; )  ' (( ("
    echo -e "\033[96m                                    _\"., ,._'_"
    echo -e "\033[96m                           ; )  ' (╔══════════╗ ; )  ' ("
    echo -e "\033[96m                          \"., ,._' ║  Pscan   ║ \"., ,._'"
    echo -e "\033[96m                          ╔════════╚══════════╝════════╗"
    echo -e "\033[96m                          ║         Ip Address         ║"
    echo -e "\033[96m                          ╚════════════════════════════╝"

    echo "                     .  ; )  ' (( (\" )    ;(.; )  ' (( (\" )"
    echo "                          _\"., ,._'_.,)__\"., ,_\"., ,._'_.,)__"
    echo "                         ┌─┐┌─┐┬─┐┌┬┐  ┌─┐┌─┐┌─┐┌┐┌┌┐┌┌─┐┬─┐"
    echo "                         ├─┘│ │├┬┘ │   └─┐│  ├─┤││││││├┤ ├┬┘"
    echo "                         ┴  └─┘┴└─ ┴   └─┘└─┘┴ ┴┘└┘┘└┘└─┘┴└─"
    read -p "Enter the IP range: " ipRange

    if [[ $ipRange =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
        nmap -p- -T4 -Pn $ipRange
    else
        nmap --top-ports 100 -T4 -Pn $ipRange
    fi

    if [ $? -ne 0 ]; then
        echo "An error occurred while scanning the IP range. Please check the input and try again."
        read -p "Press any key to return to the menu..."
        scanIPRange
    else
        read -p "Press any key to return to the menu..."
        menu
    fi
}

dos_ip() {
    clear
    echo -e "\033[33m...                                
              ;::::;                              
            ;::::; :;                              
          ;:::::'   :;                             
         ;:::::;     ;.                           
        ,:::::'       ;           .OOO\\           
        ::::::;       ;          .OOOOO\\            
        ;:::::;       ;         .OOOOOOOO           
       ,;::::::;     ;'         ./ OOOOOOO          
     ;:::::::::\` . ,,,;.        ./  /  DOOOOOO        
   .';:::::::::::::::::;,     ./  /     DOOOO     
  ,::::::;::::::;;;;::::;,   /  /        DOOO     
 ;\`::::::\`'::::::;;;::::: ,#/  /          DOOO   
 :\`:::::::\` ;::::::;;::: ;::#  /            DOOO   
::\`:::::::\` ;:::::::: ;::::# /              DOO   
\`::\`:::::::\` ;:::::: ;::::::# /               DOO
 :::\`:::::::\` ;; ;:::::::::##                OO
::::\`:::::::\` ;::::::::;:::#                OO
\`:::::\`::::::::::::;'`:;::#                O
 \`:::::\`::::::::;' /  / `:#
  :::::\`:::::;' /  /   `#  
╔╦╗╔═╗╔═╗  ╔═╗╔╦╗╔╦╗╔═╗╔═╗╦╔═
 ║║║ ║╚═╗  ╠═╣ ║  ║ ╠═╣║  ╠╩╗
═╩╝╚═╝╚═╝  ╩ ╩ ╩  ╩ ╩ ╩╚═╝╩ ╩"

    read -p "Enter Local IP address: " ip_address
    read -p "Enter the number of requests to send: " num_requests
    echo "Sending $num_requests requests to $ip_address!"
    
    for ((i=1; i<=num_requests; i++))
    do
        echo "Request $i sent to $ip_address!"
        ping -c 1 $ip_address > /dev/null
    done
    sleep 5
    menu
}

ipGeoLookup() {
    clear
    echo -e "\033[37m╔═══════════════════════════════╗"
    echo "║    \033[94m╦\033[37m╔═╗  \033[94m╦  \033[37m╔═╗\033[94m╔═╗\033[37m╦╔═\033[94m╦ ╦\033[37m╔═╗\033[37m   ║"
    echo "║    \033[94m║\033[37m╠═╝  \033[94m║  \033[37m║ ║\033[94m║ ║\033[37m╠╩╗\033[94m║ ║\033[37m╠═╝\033[37m   ║"
    echo "║    \033[94m╩\033[37m╩    \033[94m╩═╝\033[37m╚═╝\033[94m╚═╝\033[37m╩ ╩\033[94m╚═╝\033[37m╩  \033[37m   ║"
    echo -e "\033[37m╚═══════════════════════════════╝"

    read -p $'\033[94mEnter an IP address: \033[37m' ip
    echo
    curl -s ipinfo.io/$ip | grep -E '"city":|"postal":|"country":|"loc":|"timezone":'
    echo
    echo -e "\033[94m╚═════════════════════════════════════════════"
    read -p "Press any key to return to the menu..."
    menu
}

menu
