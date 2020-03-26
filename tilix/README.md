## Color Scheme
Move tilix directory to ~/.config/tilix

## Backup/Restore Config file
```
# Backup
dconf dump /com/gexperts/Tilix/ > tilix.dconf

# Restore
dconf load /com/gexperts/Tilix/ < tilix.dconf
```
