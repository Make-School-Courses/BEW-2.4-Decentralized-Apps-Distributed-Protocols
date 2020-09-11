#!/bin/bash
# ------------------------------------------------------------------------------------------ #
#                                          setupenv.sh                                       #
#                  Sets up / validates the environment for BEW 2.4 projects                  #
# ------------------------------------------------------------------------------------------ #

function log() {
    printf "%-3s %-100s\n" "   $1" " $2"
}

function banner() {
    SEPARATOR="----------------------------------------------------------------------------------"
    echo "" && echo $SEPARATOR && echo -e "$1  $2" && echo $SEPARATOR && echo ""
}

function check_cli_tools() {
    if type xcode-select 2>/dev/null >&- && xpath=$(xcode-select --print-path) 2>/dev/null && test -d "${xpath}" 2>/dev/null && test -x "${xpath}" 2>/dev/null; then
        sleep 3
    else
        log "⚠️" "XCode Command Line Tools missing; installing now..."
        log "⚠️" "Choose install to download and install the command line developer tools now."
        xcode-select --install
    fi
}

function check_node() {
    # If Node isn't installed at all, install v12:
    if ! command -v node &>/dev/null; then
        log "⚠️" "Node missing; installing now..."
        brew install --quiet node@12 >>/dev/null
        brew link --force --overwrite node@12
    fi

    # Less verbose output when installing via npm:
    npm config set loglevel error

    # Blank if `v12` not found in output
    check_version="$(node -v | grep 'v12')"
    if [[ -z $check_version ]]; then
        # Install and use Node Version Manager if Node != 12:
        if brew info nvm | grep --quiet 'Not installed'; then
            log "⚠️" "Node Version Manager (nvm) missing; installing now..."
            brew install --quiet nvm >>/dev/null
        fi

        # Install Node v12 in nvm:
        nvm install --silent 12

        # Use Node v12 by default:
        nvm alias default 12
        nvm use --silent default
    fi
}

function install_ganache() {
    if ! command -v ganache-cli &>/dev/null; then
        log "⚠️" "Ganache CLI missing; installing now..."
        export CI=true
        npm install ganache-cli --global --quiet --silent --no-warnings >>/dev/null
    fi
}

function install_brownie() {
    if ! command -v brownie &>/dev/null; then
        log "⚠️" "Brownie missing; installing now..."
        pip3 install --quiet eth-brownie >>/dev/null
    fi
}

function show_versions() {
    echo ""
    log "✅" "XCode      $(/usr/bin/xcodebuild -version | head -n 1)"
    log "✅" "Node       $(node -v | head -n 1)"
    log "✅" "Ganache    $(ganache-cli --version | head -n 1)"
    log "✅" "Brownie    $(brownie --version | head -n 1)"
}

# Show 'wait' message to user:
banner "⚙️" "Configuring your environment for DApp development, please wait..."

# Check XCode Command Line Tools:
check_cli_tools

# Check installed Node version:
check_node

# Install Ganache CLI globally:
install_ganache

# Install Brownie globally:
install_brownie

# Print versions:
show_versions

# Show 'done' message to user:
banner "🚀" "Configuration complete!"
