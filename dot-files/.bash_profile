# Show or hide Finder hidden files
# --------------------------------------------------------
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder'

# Show local and external IP
# --------------------------------------------------------
alias myip='echo "Local IP:";ipconfig getifaddr en0;echo "Public IP:";curl ipecho.net/plain;echo'

# Add a new space to the dock
# --------------------------------------------------------
alias addDockSpace='defaults write com.apple.dock persistent-apps -array-add '"'"'{"tile-type"="spacer-tile";}'"'"'; killall Dock'

# Restart apache server
# --------------------------------------------------------
alias apr='apache_restart'

# More apache functions
# --------------------------------------------------------
alias apache_restart='sudo apachectl -k restart'
alias apache_start='sudo apachectl start'
alias apache_check='sudo apachectl -t'
alias apache_stop='sudo apachectl stop'

# MySQL functions
# --------------------------------------------------------
alias mysql_start='mysql.server start'
alias mysql_stop='mysql.server stop'

