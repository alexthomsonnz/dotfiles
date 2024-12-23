complete -c watchexec -s w -l watch -d 'Watch a specific file or directory' -r -F
complete -c watchexec -s c -l clear -d 'Clear screen before running command' -r -f -a "{clear   '',reset        ''}"
complete -c watchexec -s o -l on-busy-update -d 'What to do when receiving events while the command is running' -r -f -a "{queue        '',do-nothing'',restart       '',signal       ''}"
complete -c watchexec -s s -l signal -d 'Send a signal to the process when it\'s still running' -r
complete -c watchexec -l stop-signal -d 'Signal to send to stop the command' -r
complete -c watchexec -l stop-timeout -d 'Time to wait for the command to exit gracefully' -r
complete -c watchexec -l map-signal -d 'Translate signals from the OS to signals to send to the command' -r
complete -c watchexec -s d -l debounce -d 'Time to wait for new events before taking action' -r
complete -c watchexec -l delay-run -d 'Sleep before running the command' -r
complete -c watchexec -l poll -d 'Poll for filesystem changes' -r
complete -c watchexec -l shell -d 'Use a different shell' -r
complete -c watchexec -l emit-events-to -d 'Configure event emission' -r -f -a "{environment    '',stdio        '',file '',json-stdio   '',json-file '',none  ''}"
complete -c watchexec -s E -l env -d 'Add env vars to the command' -r
complete -c watchexec -l color -d 'When to use terminal colours' -r -f -a "{auto        '',always       '',never        ''}"
complete -c watchexec -l project-origin -d 'Set the project origin' -r -f -a "(__fish_complete_directories)"
complete -c watchexec -l workdir -d 'Set the working directory' -r -f -a "(__fish_complete_directories)"
complete -c watchexec -s e -l exts -d 'Filename extensions to filter to' -r
complete -c watchexec -s f -l filter -d 'Filename patterns to filter to' -r
complete -c watchexec -l filter-file -d 'Files to load filters from' -r -F
complete -c watchexec -s i -l ignore -d 'Filename patterns to filter out' -r
complete -c watchexec -l ignore-file -d 'Files to load ignores from' -r -F
complete -c watchexec -l fs-events -d 'Filesystem events to filter to' -r -f -a "{access        '',create       '',remove       '',rename       '',modify     '',metadata     ''}"
complete -c watchexec -l log-file -d 'Write diagnostic logs to a file' -r -F
complete -c watchexec -l completions -d 'Generate a shell completions script' -r -f -a "{bash   '',elvish       '',fish '',nu   '',powershell   '',zsh''}"
complete -c watchexec -s W -l watch-when-idle -d 'Deprecated alias for \'--on-busy-update=do-nothing\''
complete -c watchexec -s r -l restart -d 'Restart the process if it\'s still running'
complete -c watchexec -s k -l kill -d 'Hidden legacy shorthand for \'--signal=kill\''
complete -c watchexec -l stdin-quit -d 'Exit when stdin closes'
complete -c watchexec -l no-vcs-ignore -d 'Don\'t load gitignores'
complete -c watchexec -l no-project-ignore -d 'Don\'t load project-local ignores'
complete -c watchexec -l no-global-ignore -d 'Don\'t load global ignores'
complete -c watchexec -l no-default-ignore -d 'Don\'t use internal default ignores'
complete -c watchexec -l no-discover-ignore -d 'Don\'t discover ignore files at all'
complete -c watchexec -l ignore-nothing -d 'Don\'t ignore anything at all'
complete -c watchexec -s p -l postpone -d 'Wait until first change before running command'
complete -c watchexec -s n -d 'Don\'t use a shell'
complete -c watchexec -l no-shell-long -d 'Don\'t use a shell'
complete -c watchexec -l no-environment -d 'Shorthand for \'--emit-events=none\''
complete -c watchexec -l only-emit-events -d 'Only emit events to stdout, run no commands'
complete -c watchexec -l no-process-group -d 'Don\'t use a process group'
complete -c watchexec -s 1 -d 'Testing only: exit Watchexec after the first run'
complete -c watchexec -s N -l notify -d 'Alert when commands start and end'
complete -c watchexec -l timings -d 'Print how long the command took to run'
complete -c watchexec -s q -l quiet -d 'Don\'t print starting and stopping messages'
complete -c watchexec -l bell -d 'Ring the terminal bell on command completion'
complete -c watchexec -l no-meta -d 'Don\'t emit fs events for metadata changes'
complete -c watchexec -l print-events -d 'Print events that trigger actions'
complete -c watchexec -s v -l verbose -d 'Set diagnostic log level'
complete -c watchexec -l manual -d 'Show the manual page'
complete -c watchexec -s h -l help -d 'Print help (see more with \'--help\')'
complete -c watchexec -s V -l version -d 'Print version'