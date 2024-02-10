#arch-setup.sh
# Description: This script will install all the necessary packages for my arch linux build    
# asking the user to choose a AUR helper
# Installing yay
echo "Installing yay..."
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# Installing packages
echo "Installing packages..."
# installing utility tools
echo "installing utility tools"
yay  -S --noconfirm --needed alacritty
yay  -S --noconfirm --needed neovim
yay  -S --noconfirm --needed zsh
yay -S --noconfirm --needed zsh-syntax-highlighting
# spectacle
yay -S --noconfirm --needed spectacle
# installing fonts
echo "installing fonts"
yay -S --noconfirm --needed ttf-fira-code
yay -S --noconfirm --needed ttf-roboto
yay -S --noconfirm --needed ttf-roboto-mono
yay -S --noconfirm --needed ttf-nerd-fonts-symbols
# noto fonts
yay -S --noconfirm --needed noto-fonts
yay -S --noconfirm --needed noto-fonts-emoji
yay -S --noconfirm --needed noto-fonts-cjk
# installing development tools
echo "installing development tools"
yay -S --noconfirm --needed nodejs
yay -S --noconfirm --needed npm
yay -S --noconfirm --needed python 
yay -S --noconfirm --needed python-pip
yay -S --noconfirm --needed go
yay -S --noconfirm --needed rust

# installing apps
echo "installing apps"
# asking user to choose a browser
echo "Choose a browser to install:"
echo "1) Firefox"
echo "2) Brave"
echo "3) Google Chrome"
echo "4) Microsoft Edge"
echo "5) Opera"
echo "6) Vivaldi"
echo "7) qutebrowser"
echo "8) Tor Browser"
echo "9) Falkon"
echo "10) Midori"
echo "11) Epiphany"
echo "12) chromium"
echo "13) luakit"
# read the user input
read browser
# checking input and installing browser
case $browser in
    1) yay -S --noconfirm --needed firefox ;;
    2) yay -S --noconfirm --needed brave ;;
    3) yay -S --noconfirm --needed google-chrome ;;
    4) yay -S --noconfirm --needed microsoft-edge-dev-bin ;;
    5) yay -S --noconfirm --needed opera ;;
    6) yay -S --noconfirm --needed vivaldi ;;
    7) yay -S --noconfirm --needed qutebrowser ;;
    8) yay -S --noconfirm --needed tor-browser ;;
    9) yay -S --noconfirm --needed falkon ;;
    10) yay -S --noconfirm --needed midori ;;
    11) yay -S --noconfirm --needed epiphany ;;
    12) yay -S --noconfirm --needed chromium ;;
    13) yay -S --noconfirm --needed luakit ;;
    *) echo "Invalid option" ;;
esac

# asking user to choose a terminal emulator
echo "Choose a terminal emulator to install:"
echo "1) alacritty"
echo "2) gnome-terminal"
echo "3) konsole"
echo "4) terminator"
echo "5) xfce4-terminal"
echo "6) urxvt"
echo "7) st"
echo "8) kitty"
echo "9) tilda"
echo "10) guake"
echo "11) sakura"
echo "12) lxterminal"
echo "13) cool-retro-term"

# read the user input
read terminal
# checking input and installing terminal
case $terminal in
    1) yay -S --noconfirm --needed alacritty ;;
    2) yay -S --noconfirm --needed gnome-terminal ;;
    3) yay -S --noconfirm --needed konsole ;;
    4) yay -S --noconfirm --needed terminator ;;
    5) yay -S --noconfirm --needed xfce4-terminal ;;
    6) yay -S --noconfirm --needed rxvt-unicode ;;
    7) yay -S --noconfirm --needed st ;;
    8) yay -S --noconfirm --needed kitty ;;
    9) yay -S --noconfirm --needed tilda ;;
    10) yay -S --noconfirm --needed guake ;;
    11) yay -S --noconfirm --needed sakura ;;
    12) yay -S --noconfirm --needed lxterminal ;;
    13) yay -S --noconfirm --needed cool-retro-term ;;
    *) echo "Invalid option" ;;
esac

# asking user to installing development apps
echo "Choose a development app to install:"
echo "1) Visual Studio Code"
echo "2) Atom"
echo "3) Sublime Text"
echo "4) IntelliJ IDEA"
echo "5) PyCharm"
echo "6) WebStorm"
echo "7) CLion"
echo "8) GoLand"
echo "9) Rider"
echo "10) DataGrip"

# read the user input
read devapp
# checking input and installing development app
case $devapp in
    1) yay -S --noconfirm --needed visual-studio-code-bin ;;
    2) yay -S --noconfirm --needed atom ;;
    3) yay -S --noconfirm --needed sublime-text ;;
    4) yay -S --noconfirm --needed intellij-idea-ultimate-edition ;;
    5) yay -S --noconfirm --needed pycharm-professional ;;
    6) yay -S --noconfirm --needed webstorm ;;
    7) yay -S --noconfirm --needed clion ;;
    8) yay -S --noconfirm --needed goland ;;
    9) yay -S --noconfirm --needed rider ;;
    10) yay -S --noconfirm --needed datagrip ;;
    *) echo "Invalid option" ;;
esac

# installing spotify,discord,signal,telegram
echo "installing spotify,discord,signal and telegram"
yay -S --noconfirm --needed spotify
yay -S --noconfirm --needed discord
yay -S --noconfirm --needed signal-desktop
yay -S --noconfirm --needed telegram-desktop

# installing multimedia apps
echo "installing multimedia apps"
yay -S --noconfirm --needed vlc
yay -S --noconfirm --needed kdenlive
# asking user for any other multimedia app
echo "Do you want to install any other multimedia app? [y/N]"
read multimedia
if [[ $multimedia == "y" || $multimedia == "Y" ]]; then
    echo "choose the name of the multimedia app to install:"
    echo "1) audacity"
    echo "2) obs-studio"
    echo "3) shotcut"
    echo "4) handbrake"
    echo "5) simplescreenrecorder"
    echo "6) flowblade"
    echo "7) openshot"
    echo "8) pitivi"
    echo "9) cinelerra"
    echo "10) lightworks"
    echo "11) davinci-resolve"
    echo "12) olive"
    echo "13) natron"
    read multimediaapp
    case $multimediaapp in
        1) yay -S --noconfirm --needed audacity ;;
        2) yay -S --noconfirm --needed obs-studio ;;
        3) yay -S --noconfirm --needed shotcut ;;
        4) yay -S --noconfirm --needed handbrake ;;
        5) yay -S --noconfirm --needed simplescreenrecorder ;;
        6) yay -S --noconfirm --needed flowblade ;;
        7) yay -S --noconfirm --needed openshot ;;
        8) yay -S --noconfirm --needed pitivi ;;
        9) yay -S --noconfirm --needed cinelerra ;;
        10) yay -S --noconfirm --needed lightworks ;;
        11) yay -S --noconfirm --needed davinci-resolve ;;
        12) yay -S --noconfirm --needed olive ;;
        13) yay -S --noconfirm --needed natron ;;
        *) echo "Invalid option" ;;
       esac
fi

# text editors
echo "installing text editors"
yay -S --noconfirm --needed gedit
yay -S --noconfirm --needed kate
yay -S --noconfirm --needed mousepad
yay -S --noconfirm --needed leafpad

# installing office apps
echo "installing office apps"
yay -S --noconfirm --needed onlyoffice-desktopeditors

# asking to install gaming apps
echo "Do you want to install gaming apps? [y/N]"
read gaming
if $gaming == "y" || $gaming == "Y"|| $gaming == "yes" || $gaming == "ya"; then
    echo "choose the name of the gaming app to install:"
    echo "1) steam"
    echo "2) lutris"
    echo "3) epic-games-store"
    echo "4) gog-galaxy"
    echo "5) itch"
    echo "6) playonlinux"
    echo "7) wine"

    case $gamingapp in
        1) yay -S --noconfirm --needed steam ;;
        2) yay -S --noconfirm --needed lutris ;;
        3) yay -S --noconfirm --needed epic-games-store ;;
        4) yay -S --noconfirm --needed gog-galaxy ;;
        5) yay -S --noconfirm --needed itch ;;
        6) yay -S --noconfirm --needed playonlinux ;;
        7) yay -S --noconfirm --needed wine ;;
        *) echo "Invalid option" ;;
    esac
fi
# programming software
echo "do you want to install programming software"
read programming
if $programming == "y" || $programming == "Y"|| $programming == "yes" || $programming == "ya"; then
    yay -S --noconfirm --needed visual-studio-code
    yay -S --noconfirm --needed codeblocks
    yay -S --noconfirm --needed gitkraken
fi
# installing spicetify 
echo "installing spicetify"
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
spicetify backup apply enable-devtool
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh

# cleaning up
echo "Cleaning up..."
yay -Scc --noconfirm
yay -Rns $(pacman -Qtdq) --noconfirm
yay -Syyu --noconfirm
echo "Done! you are all set!"
