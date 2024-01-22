
set -l commands print test all

complete -c tt -f

complete -c tt -n "not __fish_seen_subcommand_from $commands" \
        -a "help" -d 'Show all available commands'

complete -c tt -n "not __fish_seen_subcommand_from $commands" \
        -a "history" -d 'Commands history'

complete -c tt -n "not __fish_seen_subcommand_from $commands" \
        -a "ip" -d "Get public ip"
        
complete -c tt -n "not __fish_seen_subcommand_from $commands" \
        -a "localip" -d "Get local ip"

complete -c tt -n "not __fish_seen_subcommand_from $commands" \
        -a "ipdb" -d "Get ip info from Shodan InternetDB"
        
complete -c tt -n "not __fish_seen_subcommand_from $commands" \
        -a "weather" -d "Get weather via name"
        
complete -c tt -n "not __fish_seen_subcommand_from $commands" \
        -a "list-size" -d "List files/folders with size of current directory"
        
complete -c tt -n "not __fish_seen_subcommand_from $commands" \
        -a "dir-size" -d "Get directory size"
        
complete -c tt -n "not __fish_seen_subcommand_from $commands" \
        -a "monitor" -d "Listen for file updates"
        
complete -c tt -n "not __fish_seen_subcommand_from $commands" \
        -a "search" -d "Search strings in all files"
