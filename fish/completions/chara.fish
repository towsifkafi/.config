complete -c chara -n "__fish_use_subcommand" -s h -l help -d 'Print help'
complete -c chara -n "__fish_use_subcommand" -s V -l version -d 'Print version'
complete -c chara -n "__fish_use_subcommand" -f -a "say" -d 'Make the character say something. Default to cow'
complete -c chara -n "__fish_use_subcommand" -f -a "completions" -d 'Generate completions for shell. Default to current shell'
complete -c chara -n "__fish_use_subcommand" -f -a "list" -d 'List all built-in charas'
complete -c chara -n "__fish_use_subcommand" -f -a "print" -d 'Print only the character. Default to cow'
complete -c chara -n "__fish_use_subcommand" -f -a "convert" -d 'TODO: Convert pixel-arts PNG to chara files'
complete -c chara -n "__fish_use_subcommand" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c chara -n "__fish_seen_subcommand_from say" -s t -l bubble-type -d 'Choose bubble type to use. Default to round' -r -f -a "{think	'',round	'',cowsay	'',ascii	'',unicode	''}"
complete -c chara -n "__fish_seen_subcommand_from say" -s w -l width -d 'Max width of speech bubble. Default to terminal width' -r
complete -c chara -n "__fish_seen_subcommand_from say" -s c -l chara -d 'Choose built-in chara' -r -f -a "{aya	'',cirno	'',clefairy	'',cow	'',eevee	'',ferris	'',ferris1	'',flareon	'',goldeen	'',growlithe	'',kirby	'',kitten	'',mario	'',mew	'',nemo	'',pikachu	'',piplup	'',psyduck	'',remilia-scarlet	'',seaking	'',togepi	'',tux	'',wartortle	''}"
complete -c chara -n "__fish_seen_subcommand_from say" -s f -l file -d 'Choose custom chara file' -r -F
complete -c chara -n "__fish_seen_subcommand_from say" -s r -l random -d 'Choose random chara'
complete -c chara -n "__fish_seen_subcommand_from say" -s a -l all -d 'Print all built-in charas'
complete -c chara -n "__fish_seen_subcommand_from say" -s h -l help -d 'Print help'
complete -c chara -n "__fish_seen_subcommand_from completions" -s s -l shell -d 'Shell syntax to use. Infer current shell when missing, fallback to bash' -r -f -a "{bash	'',elvish	'',fish	'',powershell	'',zsh	''}"
complete -c chara -n "__fish_seen_subcommand_from completions" -s h -l help -d 'Print help'
complete -c chara -n "__fish_seen_subcommand_from list" -s h -l help -d 'Print help'
complete -c chara -n "__fish_seen_subcommand_from print" -s c -l chara -d 'Choose built-in chara' -r -f -a "{aya	'',cirno	'',clefairy	'',cow	'',eevee	'',ferris	'',ferris1	'',flareon	'',goldeen	'',growlithe	'',kirby	'',kitten	'',mario	'',mew	'',nemo	'',pikachu	'',piplup	'',psyduck	'',remilia-scarlet	'',seaking	'',togepi	'',tux	'',wartortle	''}"
complete -c chara -n "__fish_seen_subcommand_from print" -s f -l file -d 'Choose custom chara file' -r -F
complete -c chara -n "__fish_seen_subcommand_from print" -s r -l random -d 'Choose random chara'
complete -c chara -n "__fish_seen_subcommand_from print" -s a -l all -d 'Print all built-in charas'
complete -c chara -n "__fish_seen_subcommand_from print" -s h -l help -d 'Print help'
complete -c chara -n "__fish_seen_subcommand_from convert" -s h -l help -d 'Print help'
complete -c chara -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from say; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from print; and not __fish_seen_subcommand_from convert; and not __fish_seen_subcommand_from help" -f -a "say" -d 'Make the character say something. Default to cow'
complete -c chara -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from say; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from print; and not __fish_seen_subcommand_from convert; and not __fish_seen_subcommand_from help" -f -a "completions" -d 'Generate completions for shell. Default to current shell'
complete -c chara -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from say; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from print; and not __fish_seen_subcommand_from convert; and not __fish_seen_subcommand_from help" -f -a "list" -d 'List all built-in charas'
complete -c chara -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from say; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from print; and not __fish_seen_subcommand_from convert; and not __fish_seen_subcommand_from help" -f -a "print" -d 'Print only the character. Default to cow'
complete -c chara -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from say; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from print; and not __fish_seen_subcommand_from convert; and not __fish_seen_subcommand_from help" -f -a "convert" -d 'TODO: Convert pixel-arts PNG to chara files'
complete -c chara -n "__fish_seen_subcommand_from help; and not __fish_seen_subcommand_from say; and not __fish_seen_subcommand_from completions; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from print; and not __fish_seen_subcommand_from convert; and not __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
