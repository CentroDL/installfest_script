#-------------------------------------------------------------------------------
# Copy over the terminal theme (settings/copy_terminal_theme.sh)
#-------------------------------------------------------------------------------

inform "Copying terminal theme to Desktop..." true
copy_files themes "$HOME/Desktop" "$SCRIPT_THEMES/TommorrowNight.terminal"
show "Complete!"
