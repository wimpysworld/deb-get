# Fish shell completion for deb-get

set -l subcommands update upgrade show install reinstall remove purge search cache clean list pretty_list prettylist csv_list csvlist csv fix-installed help version

# Subcommand completions (when no subcommand has been given yet)
complete -c deb-get -f -n "not __fish_seen_subcommand_from $subcommands" \
    -a "$subcommands"

# update: flags
complete -c deb-get -f -n "__fish_seen_subcommand_from update" -a "--repos-only" -d "Only update repos"
complete -c deb-get -f -n "__fish_seen_subcommand_from update" -a "--quiet" -d "Suppress output"

# show: all packages including unsupported
complete -c deb-get -f -n "__fish_seen_subcommand_from show" \
    -a "(deb-get list --include-unsupported --raw 2>/dev/null)"

# search: packages + --include-unsupported flag
complete -c deb-get -f -n "__fish_seen_subcommand_from search" \
    -a "--include-unsupported" -d "Include unsupported packages"
complete -c deb-get -f -n "__fish_seen_subcommand_from search; and not __fish_contains_opt include-unsupported" \
    -a "(deb-get list --raw 2>/dev/null)"
complete -c deb-get -f -n "__fish_seen_subcommand_from search; and __fish_contains_opt include-unsupported" \
    -a "(deb-get list --include-unsupported --raw 2>/dev/null)"

# install: packages not yet installed
complete -c deb-get -f -n "__fish_seen_subcommand_from install" \
    -a "(deb-get list --not-installed 2>/dev/null)"

# reinstall: installed packages
complete -c deb-get -f -n "__fish_seen_subcommand_from reinstall" \
    -a "(deb-get list --installed 2>/dev/null)"

# remove/purge: installed packages + --remove-repo flag
complete -c deb-get -f -n "__fish_seen_subcommand_from remove purge" \
    -a "--remove-repo" -d "Also remove the repo"
complete -c deb-get -f -n "__fish_seen_subcommand_from remove purge" \
    -a "(deb-get list --installed 2>/dev/null)"

# list: flags
complete -c deb-get -f -n "__fish_seen_subcommand_from list" -a "--include-unsupported" -d "Include unsupported packages"
complete -c deb-get -f -n "__fish_seen_subcommand_from list" -a "--raw" -d "Raw output"
complete -c deb-get -f -n "__fish_seen_subcommand_from list" -a "--installed" -d "Only installed packages"
complete -c deb-get -f -n "__fish_seen_subcommand_from list" -a "--not-installed" -d "Only not-installed packages"

# pretty_list / prettylist / csv_list / csvlist / csv: repo names
complete -c deb-get -f -n "__fish_seen_subcommand_from pretty_list prettylist csv_list csvlist csv" \
    -a "(find /etc/deb-get -maxdepth 1 \( \( -name '*.repo' ! -name '00-builtin.repo' ! -name '99-local.repo' -type f \) -o \( -name '99-local.d' -type d \) \) -printf '%f\n' 2>/dev/null | sed 's/\\.repo\$//; s/\\.d\$//')"
complete -c deb-get -f -n "__fish_seen_subcommand_from pretty_list prettylist csv_list csvlist csv" \
    -a "00-builtin 01-main"

# fix-installed: --old-apps flag
complete -c deb-get -f -n "__fish_seen_subcommand_from fix-installed" \
    -a "--old-apps" -d "Fix old app names"
