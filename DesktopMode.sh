#!/bin/sh
# https://old.reddit.com/r/SteamDeck/comments/uddyat/desktop_mode_within_gaming_mode/
# Desktop Mode within Gaming Mode
unset LD_PRELOAD
exec startplasma-wayland --xwayland \
    --x11-display $DISPLAY \
    --no-lockscreen \
    --width 1280 --height 800 \
    -- plasma_session
