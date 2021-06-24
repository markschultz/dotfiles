# needed for non-interactive. loaded on every invocation of zsh
typeset -U PATH path
path=("$HOME/bin" "$HOME/.local/bin" "$path[@]")
export PATH
export MOZ_DBUS_REMOTE=1
#export GTK_USE_PORTAL=1
export MOZ_ENABLE_WAYLAND=1
export FCEDIT="nvim"
export EDITOR="nvim"
export ALTERNATE_EDITOR=""
# volta stuff
export PATH="$PATH:$HOME/.dotnet/tools"
# Add .NET Core SDK tools
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export ASPNETCORE_Kestrel__Certificates__Default__Path="/home/eskimod/.aspnet/https/localhost.pfx"
export ASPNETCORE_Kestrel__Certificates__Default__Password="mycertificatepassword"
