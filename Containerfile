# Use the latest stable Bazzite KDE or GNOME base image (matching your preferred fallback layer)
FROM ghcr.io/ublue-os/bazzite-nvidia:stable

# 1. Enable the official yalter/niri COPR repository
RUN dnf copr enable -y yalter/niri

# 2. Install Niri, Quickshell, and all iNiR system-level requirements
RUN dnf install -y \
    niri \
    quickshell \
    xwayland-satellite \
    brightnessctl \
    cava \
    cliphist \
    grim \
    jq \
    kitty \
    kvantum \
    playerctl \
    qalculate \
    qt6ct \
    qt6-qtimageformats \
    qt6-qtmultimedia \
    qt6-qtsvg \
    qt6-qttools \
    qt6-qt5compat \
    slurp \
    socat \
    swappy \
    swayidle \
    swaylock \
    wf-recorder \
    wl-clipboard \
    wlsunset \
    wtype \
    ydotool \
    tesseract \
    python3-devel \
    python3-evdev \
    && dnf clean all

# 3. Optional: Set system configurations or custom tweaks if needed
