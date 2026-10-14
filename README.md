# Keyboard-Driven Developer Desktop Configuration

A premium, keyboard-driven Linux environment built around **i3wm**, compiled with a cohesive color palette. Engineered explicitly to streamline workflows across Web Development and local AI/ML engineering environments.

## Core Features & Compliance Mapping

### 1. Consistent Visual Theme
The environment utilizes a strict theme universally inherited across the window borders, status bars, and terminal environments, reducing eye fatigue during deep-work cycles.

### 2. High-Efficiency Keyboard Bindings
Fully driven by the standard system modifier (`Mod4` / Super Key):
* `Super + Return` ── Launch GPU-accelerated Terminal Engine
* `Super + D` ── Trigger **Rofi App Launcher**
* `Super + Shift + Q` ── Terminate active application container
* `PrintScreen` ── Instant cropped screenshot via **Maim**
* `Super + [1-5]` ── Rapid dynamic workspace hopping

### 3. Real-Time Resource Analytics Module
Includes a tailored automation shell script (`scripts/sys_monitor.sh`) operating as a refreshable daemon on the top status strip. It tracks real-time CPU throttling and volatile RAM boundaries—vital parameters when validating heavy deep learning model training routines locally.

## Repository Pipeline Placement
```text
├── .config/
│   ├── i3/
│   │   └── config         # Main window engine & shortcuts
│   └── round1/
│       └── round1.conf     # Color matching terminal layers
└── scripts/
    └── sys_monitor.sh     # Resource tracking telemetry engine
```

## One-Command Sync Setup
To provision a clean workspace with this dotfile grid, clone and link the configs:
```bash
git clone https://github.com
cp -r .config/* ~/.config/
chmod +x scripts/sys_monitor.sh
i3-msg restart
```
