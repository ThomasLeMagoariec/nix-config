#!/run/current-system/sw/bin/zsh

# Show custom options in wofi
CHOICE=$(echo -e "Rebuild\nRebuild No Clean\nRebuild Nix\nRebuild Home\nRebuild rosé-pine\nRebuild catppuccin\nRebuild nord" | wofi --dmenu --prompt "Choose rebuild:")

case "$CHOICE" in
    "Rebuild")
        cd .. && kitty -e zsh -c "./rebuild.sh thomas" && notify-send "Finished rebuilding!";;
    "Rebuild No Clean")
        cd .. && kitty -e zsh -c "./rebuild-noclean.sh thomas" && notify-send "Finished rebuilding without cleaning!";;
    "Rebuild Nix")
        cd .. && kitty -e zsh -c "./rebuild-nix.sh thomas" && notify-send "Finished rebuild nix!";;
    "Rebuild Home")
        cd .. && ./rebuild-home.sh thomas && notify-send "Finished rebuilding home-manager!";;
    "Rebuild rosé-pine")
        cd .. && ./rebuild-home-rosepine.sh && notify-send "Finished applying rosé-pine theme!";;
    "Rebuild catppuccin")
        cd .. && ./rebuild-home-catppuccin.sh && notify-send "Finished applying catppuccin theme!";;
    "Rebuild nord")
        cd .. && ./rebuild-home-nord.sh && notify-send "Finished applying nord theme!";;
    *)
        exit 1 ;;  # in case of no selection or exit
esac

