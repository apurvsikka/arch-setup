#arch-setup.sh
# Description: This script will install all the necessary packages for my arch linux build    
# asking the user to choose a AUR helper
read -p "which AUR helper do you use? [yay/paru/pamac]"
if [ $REPLY = "yay" ]; then
    #installing yay
    sudo pacman -S --needed base-devel git
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    echo "yay installed successfully"

elif [ $REPLY = "paru" ]; then
    #installing paru
    sudo pacman -S --needed base-devel git
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si
    echo "paru installed successfully"

elif [ $REPLY = "pamac" ]; then 
    #installing pamac
    sudo pacman -S pamac-all
    echo "pamac installed successfully"

else
    echo "option not found"
fi

echo "Installing packages..."
#install browsers
read -p "install browser package(chromium and brave)? [y/n]"
if [ $REPLY = "y" ]; then
    sudo pacman -S chromium --noconfirm --needed
    sudo pacman -S brave-bin --noconfirm --needed
else
    echo "Skipping browser installation"
fi
#install terminal
read -p "install terminal package(alacritty)? [y/n]"
if [ $REPLY = "y" ]; then
    sudo pacman -S alacritty --noconfirm --needed
else
    echo "Skipping terminal installation"
fi
#install telegram
read -p "install telegram? [y/n]"
if [ $REPLY = "y" ]; then
    sudo pacman -S telegram-desktop --noconfirm --needed
else
    echo "Skipping telegram installation"
fi
#install vs code
read -p "install vs code? [y/n]"
if [ $REPLY = "y" ]; then
    sudo pacman -S visual-studio-code-bin --noconfirm --needed
else
    echo "Skipping vs code installation"
fi
#install git
# installing git
echo "Installing git..."
sudo pacman -S git --noconfirm --neededdo 
sudo pacman -S curl --noconfirm --needed
#installing zsh
echo "Installing zsh..."
sudo pacman -S zsh --noconfirm --needed

#installing oh-my-zsh
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#asking user about the window manager
read -p "which window manager/desktop environmet do you use? [y/n]"
if [ $REPLY = "gnome" ]; then
    # install themes for gnome
    echo "Installing themes for gnome..."
    sudo pacman -S gnome-themes-extra --noconfirm --needed
    sudo pacman -S arc-gtk-theme --noconfirm --needed
    sudo pacman -S arc-icon-theme --noconfirm --needed
    sudo pacman -S papirus-icon-theme --noconfirm --needed
    sudo pacman -S adapta-gtk-theme --noconfirm --needed
elif [ $REPLY = "kde" ]; then
    # install themes for kde
    echo "Installing themes for kde..."
    sudo pacman -S arc-kde --noconfirm --needed
    sudo pacman -S papirus-icon-theme --noconfirm --needed
    sudo pacman -S adapta-kde --noconfirm --needed
elif [ $REPLY = "i3" ]; then
    # install themes for i3
    echo "Installing themes for i3..."
    sudo pacman -S arc-gtk-theme --noconfirm --needed
    sudo pacman -S arc-icon-theme --noconfirm --needed
    sudo pacman -S papirus-icon-theme --noconfirm --needed
    sudo pacman -S adapta-gtk-theme --noconfirm --needed
elif [ $REPLY = "xfce" ]; then
    # install themes for xfce
    echo "Installing themes for xfce..."
    sudo pacman -S arc-gtk-theme --noconfirm --needed
    sudo pacman -S arc-icon-theme --noconfirm --needed
    sudo pacman -S papirus-icon-theme --noconfirm --needed
    sudo pacman -S adapta-gtk-theme --noconfirm --needed
else
    echo "option not found"
fi
#installing neofetch
sudo pacman -S neofetch --noconfirm --needed
#installing vim
sudo pacman -S vim --noconfirm --needed
#installing ranger
sudo pacman -S ranger --noconfirm --needed
#installing htop
sudo pacman -S htop --noconfirm --needed
#instaling discord
sudo pacman -S discord --noconfirm --needed
#installing spotify
sudo pacman -S spotify --noconfirm --needed
#asking the user for gaming packages
read -p "install gaming packages? [y/n]"
if [ $REPLY = "y" ]; then
    #installing steam
    sudo pacman -S steam --noconfirm --needed
    #installing lutris
    sudo pacman -S lutris --noconfirm --needed
    #installing wine
    sudo pacman -S wine --noconfirm --needed
    #installing wine tricks
    sudo pacman -S winetricks --noconfirm --needed
    #installing dxvk
    sudo pacman -S dxvk-bin --noconfirm --needed
    #installing gamemode
    sudo pacman -S gamemode --noconfirm --needed
    #installing mangohud
    sudo pacman -S mangohud --noconfirm --needed
    #installing lib32-mangohud
    sudo pacman -S lib32-mangohud --noconfirm --needed
    #installing lib32-gamemode
    sudo pacman -S lib32-gamemode --noconfirm --needed
    #installing lib32-vulkan-icd-loader
    sudo pacman -S lib32-vulkan-icd-loader --noconfirm --needed
    #installing lib32-vulkan-intel
    sudo pacman -S lib32-vulkan-intel --noconfirm --needed

    #installing lib32-vulkan-radeon
    sudo pacman -S lib32-vulkan-radeon --noconfirm --needed
    #installing lib32-vulkan-mesa-layers
    sudo pacman -S lib32-vulkan-mesa-layers --noconfirm --needed
    #installing lib32-vulkan-mesa-git
    sudo pacman -S lib32-vulkan-mesa-git --noconfirm --needed
    #installing lib32-vulkan-icd-loader-git
    sudo pacman -S lib32-vulkan-icd-loader-git --noconfirm --needed
    #installing lib32-vulkan-intel-git
    sudo pacman -S lib32-vulkan-intel-git --noconfirm --needed
    #installing lib32-vulkan-radeon-git
    sudo pacman -S lib32-vulkan-radeon-git --noconfirm --needed
    #installing lib32-vulkan-mesa-layers-git
    sudo pacman -S lib32-vulkan-mesa-layers-git --noconfirm --needed
    #installing lib32-vulkan-headers
    sudo pacman -S lib32-vulkan-headers --noconfirm --needed

else
    echo "Skipping gaming packages installation"
fi

   # ask to install wine
read -p "install wine? [y/n]"
 if [ $REPLY = "y" ]; then
      #installing wine
      sudo pacman -S wine --noconfirm --needed
      #installing wine tricks
      sudo pacman -S winetricks --noconfirm --needed
      #installing dxvk
      sudo pacman -S dxvk-bin --noconfirm --needed
      #installing gamemode
      sudo pacman -S gamemode --noconfirm --needed
      #installing mangohud
      sudo pacman -S mangohud --noconfirm --needed
      #installing lib32-mangohud
      sudo pacman -S lib32-mangohud --noconfirm --needed
      #installing lib32-gamemode
      sudo pacman -S lib32-gamemode --noconfirm --needed
      #installing lib32-vulkan-icd-loader
      sudo pacman -S lib32-vulkan-icd-loader --noconfirm --needed
      #installing lib32-vulkan-intel
      sudo pacman -S lib32-vulkan-intel --noconfirm --needed
      #installing lib32-vulkan-radeon
      sudo pacman -S lib32-vulkan-radeon --noconfirm --needed
      #installing lib32-vulkan-mesa-layers
      sudo pacman -S lib32-vulkan-mesa-layers --noconfirm --needed
      #installing lib32-vulkan-mesa-git
      sudo pacman -S lib32-vulkan-mesa-git --noconfirm --needed
      #installing lib32-vulkan-icd-loader-git
      sudo pacman -S lib32-vulkan-icd-loader-git --noconfirm --needed
      #installing lib32-vulkan-intel-git
      sudo pacman -S lib32-vulkan-intel-git --noconfirm --needed
      #installing lib32-vulkan-radeon-git
      sudo pacman -S lib32-vulkan-radeon-git --noconfirm --needed
      #installing lib32-vulkan-mesa-layers-git
      sudo pacman -S lib32-vulkan-mesa-layers-git --noconfirm --needed
      #installing lib32-vulkan-headers
      sudo pacman -S lib32-vulkan-headers --noconfirm --needed
else
      echo "Skipping wine installation"
fi
  #installing lutris
  sudo pacman -S lutris --noconfirm --needed

# cleaning up
echo "Cleaning up..."
sudo pacman -Scc --noconfirm
sudo pacman -Rns $(pacman -Qtdq) --noconfirm
sudo pacman -Syyu --noconfirm
echo "Done!"
