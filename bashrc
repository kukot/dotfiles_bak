# Use global profile when available
if [ -f /usr/share/defaults/etc/profile ]; then
	. /usr/share/defaults/etc/profile
fi
# allow admin overrides
if [ -f /etc/profile ]; then
	. /etc/profile
fi

. "$HOME/.cargo/env"
source $HOME/.tokenrc
source $HOME/.aliasrc
source $HOME/.sdkrc
