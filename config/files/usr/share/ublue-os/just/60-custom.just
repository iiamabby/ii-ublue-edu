!include /usr/share/ublue-os/just/100-bling.just

# Include some of your custom scripts here!
# Install typical GNOME apps
install-apps-gnome:
  flatpak install --noninteractive --system flathub \\
    org.gnome.Calculator \\
    org.gnome.Calendar \\
    org.gnome.Characters \\
    org.gnome.Connections \\
    org.gnome.Contacts \\
    org.gnome.Evince \\
    org.gnome.Logs \\
    org.gnome.Loupe \\
    org.gnome.Maps \\
    org.gnome.NautilusPreviewer \\
    org.gnome.TextEditor \\
    org.gnome.Weather \\
    org.gnome.baobab \\
    org.gnome.clocks \\
    org.gnome.font-viewer \\
    org.gnome.SimpleScan \\
    org.gnome.SoundRecorder \\
    org.fedoraproject.MediaWriter \\
    org.mozilla.firefox \\
    com.github.tchx84.Flatseal \\
    com.mattjakeman.ExtensionManager \\
    io.github.celluloid_player.Celluloid \\
    it.mijorus.gearlever \\
    io.missioncenter.MissionCenter \\
    org.gustavoperedo.FontDownloader \\
    net.sonic_pi.SonicPi

# Install Productivity and Communications apps
install-apps-productivity:
  flatpak install -y --system \\
    com.google.Chrome \\
    com.seafile.Client \\
    com.simplenote.Simplenote \\
    org.signal.Signal \\

# Install Creative Media Apps
install-apps-creative:
  flatpak install -y --system \\
    nl.hjdskes.gcolor3 \\
    org.audacityteam.Audacity \\
    org.gimp.GIMP \\
    org.inkscape.Inkscape \\
    org.kde.kdenlive \\
    org.kde.krita

# Install Other misc apps for my home users
install-apps-misc:
  flatpak install -y --system \\
    com.skype.Client \\
    com.slack.Slack \\
    org.gnome.Firmware \\
    org.gnome.seahorse.Application \\
  

# Give browsers permission to create PWAs (Progressive Web Apps)
install-pwa-flatpak-overrides:
  flatpak override --system --filesystem=~/.local/share/applications --filesystem=~/.local/share/icons com.google.Chrome
  flatpak override --system --filesystem=~/.local/share/applications --filesystem=~/.local/share/icons com.brave.Browser
  flatpak override --system --filesystem=~/.local/share/applications --filesystem=~/.local/share/icons com.microsoft.Edge

# Install educational games
install-games-educational:
  flatpak install -y --system \\
    org.kde.kturtle \\
    edu.mit.Scratch \\
    com.tux4kids.tuxmath \\
    com.tux4kids.tuxtype \\
    org.tuxpaint.Tuxpaint




# Install Minecraft games
install-games-minecraft:
  flatpak install -y --system \\
    com.mojang.Minecraft \\
    io.mrarm.mcpelauncher \\
    org.prismlauncher.PrismLauncher

# Install Steam with MangoHud, Gamescope and Prototricks
install-games-steam:
  flatpak install -y --system \\
    org.freedesktop.Platform.VulkanLayer.MangoHud//22.08 \\
    com.github.Matoking.protontricks \\
    com.valvesoftware.Steam \\
    com.valvesoftware.Steam.Utility.gamescope

# Install virtualization stack (libvirt/virt-manager/etc)
install-virtualization:
  rpm-ostree install libvirt-client libvirt-daemon-kvm virt-install virt-manager

# Un-install virtualization stack (libvirt/virt-manager/etc)
uninstall-virtualization:
  rpm-ostree uninstall libvirt-client libvirt-daemon-kvm virt-install virt-manager