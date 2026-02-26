# Snapshot file
# Unset all aliases to avoid conflicts with functions
unalias -a 2>/dev/null || true
# Functions
_SUSEconfig () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
__arguments () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
__bun_dynamic_comp () {
	local comp="" 
	for arg in scripts
	do
		local line
		while read -r line
		do
			local name="$line" 
			local desc="$line" 
			name="${name%$'\t'*}" 
			desc="${desc/*$'\t'/}" 
			echo
		done <<< "$arg"
	done
	return $comp
}
_a2ps () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_a2utils () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_aap () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_abcde () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_absolute_command_paths () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ack () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_acpi () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_acpitool () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_acroread () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_adb () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_add-zle-hook-widget () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_add-zsh-hook () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_alias () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_aliases () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_all_labels () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_all_matches () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_alsa-utils () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_alternative () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_analyseplugin () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ansible () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ant () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_antiword () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_apachectl () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_apm () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_approximate () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_apt () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_apt-file () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_apt-move () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_apt-show-versions () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_aptitude () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_arch_archives () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_arch_namespace () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_arg_compile () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_arguments () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_arp () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_arping () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_arrays () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_asciidoctor () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_asciinema () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_assign () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_at () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_attr () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_augeas () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_auto-apt () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_autocd () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_avahi () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_awk () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_axi-cache () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_base64 () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_basename () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_basenc () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_bash () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_bash_completions () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_baudrates () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_baz () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_be_name () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_beadm () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_beep () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_bibtex () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_bind_addresses () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_bindkey () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_bison () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_bittorrent () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_bogofilter () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_bpf_filters () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_bpython () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_brace_parameter () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_brctl () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_brew () {
	# undefined
	builtin autoload -XUz /opt/homebrew/share/zsh/site-functions
}
_bsd_disks () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_bsd_pkg () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_bsdconfig () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_bsdinstall () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_btrfs () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_bts () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_bug () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_builtin () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_bun () {
	zstyle ':completion:*:*:bun:*' group-name ''
	zstyle ':completion:*:*:bun-grouped:*' group-name ''
	zstyle ':completion:*:*:bun::descriptions' format '%F{green}-- %d --%f'
	zstyle ':completion:*:*:bun-grouped:*' format '%F{green}-- %d --%f'
	local program=bun 
	typeset -A opt_args
	local curcontext="$curcontext" state line context 
	_arguments -s '1: :->cmd' '*: :->args' && ret=0 
	case $state in
		(cmd) local -a scripts_list
			IFS=$'\n' scripts_list=($(SHELL=zsh bun getcompletes i)) 
			scripts="scripts:scripts:((${scripts_list//:/\\\\:}))" 
			IFS=$'\n' files_list=($(SHELL=zsh bun getcompletes j)) 
			main_commands=('run\:"Run JavaScript with Bun, a package.json script, or a bin" ' 'test\:"Run unit tests with Bun" ' 'x\:"Install and execute a package bin (bunx)" ' 'repl\:"Start a REPL session with Bun" ' 'init\:"Start an empty Bun project from a blank template" ' 'create\:"Create a new project from a template (bun c)" ' 'install\:"Install dependencies for a package.json (bun i)" ' 'add\:"Add a dependency to package.json (bun a)" ' 'remove\:"Remove a dependency from package.json (bun rm)" ' 'update\:"Update outdated dependencies & save to package.json" ' 'outdated\:"Display the latest versions of outdated dependencies" ' 'link\:"Link an npm package globally" ' 'unlink\:"Globally unlink an npm package" ' 'pm\:"More commands for managing packages" ' 'build\:"Bundle TypeScript & JavaScript into a single file" ' 'upgrade\:"Get the latest version of bun" ' 'help\:"Show all supported flags and commands" ') 
			main_commands=($main_commands) 
			_alternative "$scripts" "args:command:(($main_commands))" "files:files:(($files_list))" ;;
		(args) case $line[1] in
				(add | a) _bun_add_completion ;;
				(unlink) _bun_unlink_completion ;;
				(link) _bun_link_completion ;;
				(bun) _bun_bun_completion ;;
				(init) _bun_init_completion ;;
				(create | c) _bun_create_completion ;;
				(x) _arguments -s -C '1: :->cmd' '2: :->cmd2' '*: :->args' && ret=0  ;;
				(pm) _bun_pm_completion ;;
				(install | i) _bun_install_completion ;;
				(remove | rm) _bun_remove_completion ;;
				(run) _bun_run_completion ;;
				(upgrade) _bun_upgrade_completion ;;
				(build) _bun_build_completion ;;
				(update) _bun_update_completion ;;
				(outdated) _bun_outdated_completion ;;
				('test') _bun_test_completion ;;
				(help) _arguments -s -C '1: :->cmd' '2: :->cmd2' '*: :->args' && ret=0 
					case $state in
						(cmd2) curcontext="${curcontext%:*:*}:bun-grouped" 
							_alternative "args:command:(($main_commands))" ;;
						(args) case $line[2] in
								(add) _bun_add_completion ;;
								(unlink) _bun_unlink_completion ;;
								(link) _bun_link_completion ;;
								(bun) _bun_bun_completion ;;
								(init) _bun_init_completion ;;
								(create) _bun_create_completion ;;
								(x) _arguments -s -C '1: :->cmd' '2: :->cmd2' '*: :->args' && ret=0  ;;
								(pm) _bun_pm_completion ;;
								(install) _bun_install_completion ;;
								(remove) _bun_remove_completion ;;
								(run) _bun_run_completion ;;
								(upgrade) _bun_upgrade_completion ;;
								(build) _bun_build_completion ;;
								(update) _bun_update_completion ;;
								(outdated) _bun_outdated_completion ;;
								('test') _bun_test_completion ;;
							esac ;;
					esac ;;
			esac ;;
	esac
}
_bun_add_completion () {
	_arguments -s -C '1: :->cmd1' '*: :->package' '--config[Load config(bunfig.toml)]: :->config' '-c[Load config(bunfig.toml)]: :->config' '--yarn[Write a yarn.lock file (yarn v1)]' '-y[Write a yarn.lock file (yarn v1)]' '--production[Don'"'"'t install devDependencies]' '-p[Don'"'"'t install devDependencies]' '--no-save[Don'"'"'t save a lockfile]' '--save[Save to package.json]' '--dry-run[Don'"'"'t install anything]' '--frozen-lockfile[Disallow changes to lockfile]' '--force[Always request the latest versions from the registry & reinstall all dependencies]' '-f[Always request the latest versions from the registry & reinstall all dependencies]' '--cache-dir[Store & load cached data from a specific directory path]:cache-dir' '--no-cache[Ignore manifest cache entirely]' '--silent[Don'"'"'t log anything]' '--verbose[Excessively verbose logging]' '--no-progress[Disable the progress bar]' '--no-summary[Don'"'"'t print a summary]' '--no-verify[Skip verifying integrity of newly downloaded packages]' '--ignore-scripts[Skip lifecycle scripts in the package.json (dependency scripts are never run)]' '--global[Add a package globally]' '-g[Add a package globally]' '--cwd[Set a specific cwd]:cwd' '--backend[Platform-specific optimizations for installing dependencies]:backend:("copyfile" "hardlink" "symlink")' '--link-native-bins[Link "bin" from a matching platform-specific dependency instead. Default: esbuild, turbo]:link-native-bins' '--help[Print this help menu]' '--dev[Add dependence to "devDependencies]' '-d[Add dependence to "devDependencies]' '-D[]' '--development[]' '--optional[Add dependency to "optionalDependencies]' '--peer[Add dependency to "peerDependencies]' '--exact[Add the exact version instead of the ^range]' && ret=0 
	case $state in
		(config) _bun_list_bunfig_toml ;;
		(package) _bun_add_param_package_completion ;;
	esac
}
_bun_add_param_package_completion () {
	IFS=$'\n' inexact=($(history -n bun | grep -E "^bun add " | cut -c 9- | uniq)) 
	IFS=$'\n' exact=($($inexact | grep -E "^$words[$CURRENT]")) 
	IFS=$'\n' packages=($(SHELL=zsh bun getcompletes a $words[$CURRENT])) 
	to_print=$inexact 
	if [ ! -z "$exact" -a "$exact" != " " ]
	then
		to_print=$exact 
	fi
	if [ ! -z "$to_print" -a "$to_print" != " " ]
	then
		if [ ! -z "$packages" -a "$packages" != " " ]
		then
			_describe -1 -t to_print 'History' to_print
			_describe -1 -t packages "Popular" packages
			return
		fi
		_describe -1 -t to_print 'History' to_print
		return
	fi
	if [ ! -z "$packages" -a "$packages" != " " ]
	then
		_describe -1 -t packages "Popular" packages
		return
	fi
}
_bun_build_completion () {
	_arguments -s -C '1: :->cmd' '*: :->file' '--outfile[Write the output to a specific file (default: stdout)]:outfile' '--outdir[Write the output to a directory (required for splitting)]:outdir' '--minify[Enable all minification flags]' '--minify-whitespace[Remove unneeded whitespace]' '--minify-syntax[Transform code to use less syntax]' '--minify-identifiers[Shorten variable names]' '--sourcemap[Generate sourcemaps]: :->sourcemap' '--target[The intended execution environment for the bundle. "browser", "bun" or "node"]: :->target' '--splitting[Whether to enable code splitting (requires --outdir)]' '--compile[generating a standalone binary from a TypeScript or JavaScript file]' '--format[Specifies the module format to be used in the generated bundles]: :->format' && ret=0 
	case $state in
		(file) _files ;;
		(target) _alternative 'args:cmd3:((browser bun node))' ;;
		(sourcemap) _alternative 'args:cmd3:((none external inline))' ;;
		(format) _alternative 'args:cmd3:((esm cjs iife))' ;;
	esac
}
_bun_bun_completion () {
	_arguments -s -C '1: :->cmd' '*: :->file' '--version[Show version and exit]' '-V[Show version and exit]' '--cwd[Change directory]:cwd' '--help[Show command help]' '-h[Show command help]' '--use[Use a framework, e.g. "next"]:use' && ret=0 
	case $state in
		(file) _files ;;
	esac
}
_bun_create_completion () {
	_arguments -s -C '1: :->cmd' '2: :->cmd2' '*: :->args' && ret=0 
	case $state in
		(cmd2) _alternative 'args:create:((next-app\:"Next.js app" react-app\:"React app"))' ;;
		(args) case $line[2] in
				(next) pmargs=('1: :->cmd' '2: :->cmd2' '3: :->file' '--force[Overwrite existing files]' '--no-install[Don'"'"'t install node_modules]' '--no-git[Don'"'"'t create a git repository]' '--verbose[verbose]' '--no-package-json[Disable package.json transforms]' '--open[On finish, start bun & open in-browser]') 
					_arguments -s -C $pmargs && ret=0 
					case $state in
						(file) _files ;;
					esac ;;
				(react) _arguments -s -C $pmargs && ret=0 
					case $state in
						(file) _files ;;
					esac ;;
				(*) _arguments -s -C $pmargs && ret=0 
					case $state in
						(file) _files ;;
					esac ;;
			esac ;;
	esac
}
_bun_init_completion () {
	_arguments -s -C '1: :->cmd' '-y[Answer yes to all prompts]:' '--yes[Answer yes to all prompts]:' && ret=0 
}
_bun_install_completion () {
	_arguments -s -C '1: :->cmd1' '--config[Load config(bunfig.toml)]: :->config' '-c[Load config(bunfig.toml)]: :->config' '--yarn[Write a yarn.lock file (yarn v1)]' '-y[Write a yarn.lock file (yarn v1)]' '--production[Don'"'"'t install devDependencies]' '-p[Don'"'"'t install devDependencies]' '--no-save[Don'"'"'t save a lockfile]' '--save[Save to package.json]' '--dry-run[Don'"'"'t install anything]' '--frozen-lockfile[Disallow changes to lockfile]' '--force[Always request the latest versions from the registry & reinstall all dependencies]' '-f[Always request the latest versions from the registry & reinstall all dependencies]' '--cache-dir[Store & load cached data from a specific directory path]:cache-dir' '--no-cache[Ignore manifest cache entirely]' '--silent[Don'"'"'t log anything]' '--verbose[Excessively verbose logging]' '--no-progress[Disable the progress bar]' '--no-summary[Don'"'"'t print a summary]' '--no-verify[Skip verifying integrity of newly downloaded packages]' '--ignore-scripts[Skip lifecycle scripts in the package.json (dependency scripts are never run)]' '--global[Add a package globally]' '-g[Add a package globally]' '--cwd[Set a specific cwd]:cwd' '--backend[Platform-specific optimizations for installing dependencies]:backend:("copyfile" "hardlink" "symlink")' '--link-native-bins[Link "bin" from a matching platform-specific dependency instead. Default: esbuild, turbo]:link-native-bins' '--help[Print this help menu]' '--dev[Add dependence to "devDependencies]' '-d[Add dependence to "devDependencies]' '--development[]' '-D[]' '--optional[Add dependency to "optionalDependencies]' '--peer[Add dependency to "peerDependencies]' '--exact[Add the exact version instead of the ^range]' && ret=0 
	case $state in
		(config) _bun_list_bunfig_toml ;;
	esac
}
_bun_link_completion () {
	_arguments -s -C '1: :->cmd1' '*: :->package' '--config[Load config(bunfig.toml)]: :->config' '-c[Load config(bunfig.toml)]: :->config' '--yarn[Write a yarn.lock file (yarn v1)]' '-y[Write a yarn.lock file (yarn v1)]' '--production[Don'"'"'t install devDependencies]' '-p[Don'"'"'t install devDependencies]' '--no-save[Don'"'"'t save a lockfile]' '--save[Save to package.json]' '--dry-run[Don'"'"'t install anything]' '--frozen-lockfile[Disallow changes to lockfile]' '--force[Always request the latest versions from the registry & reinstall all dependencies]' '-f[Always request the latest versions from the registry & reinstall all dependencies]' '--cache-dir[Store & load cached data from a specific directory path]:cache-dir' '--no-cache[Ignore manifest cache entirely]' '--silent[Don'"'"'t log anything]' '--verbose[Excessively verbose logging]' '--no-progress[Disable the progress bar]' '--no-summary[Don'"'"'t print a summary]' '--no-verify[Skip verifying integrity of newly downloaded packages]' '--ignore-scripts[Skip lifecycle scripts in the package.json (dependency scripts are never run)]' '--global[Add a package globally]' '-g[Add a package globally]' '--cwd[Set a specific cwd]:cwd' '--backend[Platform-specific optimizations for installing dependencies]:backend:("copyfile" "hardlink" "symlink")' '--link-native-bins[Link "bin" from a matching platform-specific dependency instead. Default: esbuild, turbo]:link-native-bins' '--help[Print this help menu]' && ret=0 
	case $state in
		(config) _bun_list_bunfig_toml ;;
		(package) _bun_link_param_package_completion ;;
	esac
}
_bun_link_param_package_completion () {
	install_env=$BUN_INSTALL 
	install_dir=${(P)install_env:-$HOME/.bun} 
	global_node_modules=$install_dir/install/global/node_modules 
	local -a packages_full_path=(${global_node_modules}/*(N)) 
	packages=$(echo $packages_full_path | tr ' ' '\n' | xargs  basename) 
	_alternative "dirs:directory:(($packages))"
}
_bun_list_bunfig_toml () {
	_files
}
_bun_outdated_completion () {
	_arguments -s -C '--cwd[Set a specific cwd]:cwd' '--verbose[Excessively verbose logging]' '--no-progress[Disable the progress bar]' '--help[Print this help menu]' && ret=0 
	case $state in
		(config) _bun_list_bunfig_toml ;;
	esac
}
_bun_pm_completion () {
	_arguments -s -C '1: :->cmd' '2: :->cmd2' '*: :->args' && ret=0 
	case $state in
		(cmd2) sub_commands=('bin\:"print the path to bin folder" ' 'ls\:"list the dependency tree according to the current lockfile" ' 'hash\:"generate & print the hash of the current lockfile" ' 'hash-string\:"print the string used to hash the lockfile" ' 'hash-print\:"print the hash stored in the current lockfile" ' 'cache\:"print the path to the cache folder" ' 'version\:"bump the version in package.json and create a git tag" ') 
			_alternative "args:cmd3:(($sub_commands))" ;;
		(args) case $line[2] in
				(cache) _arguments -s -C '1: :->cmd' '2: :->cmd2' ':::(rm)' && ret=0  ;;
				(bin) pmargs=("-g[print the global path to bin folder]") 
					_arguments -s -C '1: :->cmd' '2: :->cmd2' $pmargs && ret=0  ;;
				(ls) pmargs=("--all[list the entire dependency tree according to the current lockfile]") 
					_arguments -s -C '1: :->cmd' '2: :->cmd2' $pmargs && ret=0  ;;
				(version) version_args=("patch[increment patch version]" "minor[increment minor version]" "major[increment major version]" "prepatch[increment patch version and add pre-release]" "preminor[increment minor version and add pre-release]" "premajor[increment major version and add pre-release]" "prerelease[increment pre-release version]" "from-git[use version from latest git tag]") 
					pmargs=("--no-git-tag-version[don't create a git commit and tag]" "--allow-same-version[allow bumping to the same version]" "-m[use the given message for the commit]:message" "--message[use the given message for the commit]:message" "--preid[identifier to prefix pre-release versions]:preid") 
					_arguments -s -C '1: :->cmd' '2: :->cmd2' '3: :->increment' $pmargs && ret=0 
					case $state in
						(increment) _alternative "args:increment:(($version_args))" ;;
					esac ;;
			esac ;;
	esac
}
_bun_remove_completion () {
	_arguments -s -C '1: :->cmd1' '*: :->package' '--config[Load config(bunfig.toml)]: :->config' '-c[Load config(bunfig.toml)]: :->config' '--yarn[Write a yarn.lock file (yarn v1)]' '-y[Write a yarn.lock file (yarn v1)]' '--production[Don'"'"'t install devDependencies]' '-p[Don'"'"'t install devDependencies]' '--no-save[Don'"'"'t save a lockfile]' '--save[Save to package.json]' '--dry-run[Don'"'"'t install anything]' '--frozen-lockfile[Disallow changes to lockfile]' '--force[Always request the latest versions from the registry & reinstall all dependencies]' '-f[Always request the latest versions from the registry & reinstall all dependencies]' '--cache-dir[Store & load cached data from a specific directory path]:cache-dir' '--no-cache[Ignore manifest cache entirely]' '--silent[Don'"'"'t log anything]' '--verbose[Excessively verbose logging]' '--no-progress[Disable the progress bar]' '--no-summary[Don'"'"'t print a summary]' '--no-verify[Skip verifying integrity of newly downloaded packages]' '--ignore-scripts[Skip lifecycle scripts in the package.json (dependency scripts are never run)]' '--global[Add a package globally]' '-g[Add a package globally]' '--cwd[Set a specific cwd]:cwd' '--backend[Platform-specific optimizations for installing dependencies]:backend:("copyfile" "hardlink" "symlink")' '--link-native-bins[Link "bin" from a matching platform-specific dependency instead. Default: esbuild, turbo]:link-native-bins' '--help[Print this help menu]' && ret=0 
	case $state in
		(config) _bun_list_bunfig_toml ;;
		(package) _bun_remove_param_package_completion ;;
	esac
}
_bun_remove_param_package_completion () {
	if ! command -v jq &> /dev/null
	then
		return
	fi
	if [ -f "package.json" ]
	then
		local dependencies=$(jq -r '.dependencies | keys[]' package.json) 
		local dev_dependencies=$(jq -r '.devDependencies | keys[]' package.json) 
		_alternative "deps:dependency:(($dependencies))"
		_alternative "deps:dependency:(($dev_dependencies))"
	fi
}
_bun_run_completion () {
	_arguments -s -C '1: :->cmd' '2: :->script' '*: :->other' '--help[Display this help and exit]' '-h[Display this help and exit]' '--bun[Force a script or package to use Bun'"'"'s runtime instead of Node.js (via symlinking node)]' '-b[Force a script or package to use Bun'"'"'s runtime instead of Node.js (via symlinking node)]' '--cwd[Absolute path to resolve files & entry points from. This just changes the process cwd]:cwd' '--config[Config file to load bun from (e.g. -c bunfig.toml]: :->config' '-c[Config file to load bun from (e.g. -c bunfig.toml]: :->config' '--env-file[Load environment variables from the specified file(s)]:env-file' '--extension-order[Defaults to: .tsx,.ts,.jsx,.js,.json]:extension-order' '--jsx-factory[Changes the function called when compiling JSX elements using the classic JSX runtime]:jsx-factory' '--jsx-fragment[Changes the function called when compiling JSX fragments]:jsx-fragment' '--jsx-import-source[Declares the module specifier to be used for importing the jsx and jsxs factory functions. Default: "react"]:jsx-import-source' '--jsx-runtime["automatic" (default) or "classic"]: :->jsx-runtime' '--preload[Import a module before other modules are loaded]:preload' '-r[Import a module before other modules are loaded]:preload' '--main-fields[Main fields to lookup in package.json. Defaults to --target dependent]:main-fields' '--no-summary[Don'"'"'t print a summary]' '--version[Print version and exit]' '-v[Print version and exit]' '--revision[Print version with revision and exit]' '--tsconfig-override[Load tsconfig from path instead of cwd/tsconfig.json]:tsconfig-override' '--define[Substitute K:V while parsing, e.g. --define process.env.NODE_ENV:"development". Values are parsed as JSON.]:define' '-d[Substitute K:V while parsing, e.g. --define process.env.NODE_ENV:"development". Values are parsed as JSON.]:define' '--external[Exclude module from transpilation (can use * wildcards). ex: -e react]:external' '-e[Exclude module from transpilation (can use * wildcards). ex: -e react]:external' '--loader[Parse files with .ext:loader, e.g. --loader .js:jsx. Valid loaders: js, jsx, ts, tsx, json, toml, text, file, wasm, napi]:loader' '--packages[Exclude dependencies from bundle, e.g. --packages external. Valid options: bundle, external]:packages' '-l[Parse files with .ext:loader, e.g. --loader .js:jsx. Valid loaders: js, jsx, ts, tsx, json, toml, text, file, wasm, napi]:loader' '--origin[Rewrite import URLs to start with --origin. Default: ""]:origin' '-u[Rewrite import URLs to start with --origin. Default: ""]:origin' '--port[Port to serve bun'"'"'s dev server on. Default: '"'"'3000'"'"']:port' '-p[Port to serve bun'"'"'s dev server on. Default: '"'"'3000'"'"']:port' '--smol[Use less memory, but run garbage collection more often]' '--minify[Minify (experimental)]' '--minify-syntax[Minify syntax and inline data (experimental)]' '--minify-whitespace[Minify Whitespace (experimental)]' '--minify-identifiers[Minify identifiers]' '--no-macros[Disable macros from being executed in the bundler, transpiler and runtime]' '--target[The intended execution environment for the bundle. "browser", "bun" or "node"]: :->target' '--inspect[Activate Bun'"'"'s Debugger]:inspect' '--inspect-wait[Activate Bun'"'"'s Debugger, wait for a connection before executing]:inspect-wait' '--inspect-brk[Activate Bun'"'"'s Debugger, set breakpoint on first line of code and wait]:inspect-brk' '--hot[Enable auto reload in bun'"'"'s JavaScript runtime]' '--watch[Automatically restart bun'"'"'s JavaScript runtime on file change]' '--no-install[Disable auto install in bun'"'"'s JavaScript runtime]' '--install[Install dependencies automatically when no node_modules are present, default: "auto". "force" to ignore node_modules, fallback to install any missing]: :->install_' '-i[Automatically install dependencies and use global cache in bun'"'"'s runtime, equivalent to --install=fallback'] '--prefer-offline[Skip staleness checks for packages in bun'"'"'s JavaScript runtime and resolve from disk]' '--prefer-latest[Use the latest matching versions of packages in bun'"'"'s JavaScript runtime, always checking npm]' '--silent[Don'"'"'t repeat the command for bun run]' '--dump-environment-variables[Dump environment variables from .env and process as JSON and quit. Useful for debugging]' '--dump-limits[Dump system limits. Userful for debugging]' && ret=0 
	case $state in
		(script) curcontext="${curcontext%:*:*}:bun-grouped" 
			_bun_run_param_script_completion ;;
		(jsx-runtime) _alternative 'args:cmd3:((classic automatic))' ;;
		(target) _alternative 'args:cmd3:((browser bun node))' ;;
		(install_) _alternative 'args:cmd3:((auto force fallback))' ;;
		(other) _files ;;
	esac
}
_bun_run_param_script_completion () {
	local -a scripts_list
	IFS=$'\n' scripts_list=($(SHELL=zsh bun getcompletes s)) 
	IFS=$'\n' bins=($(SHELL=zsh bun getcompletes b)) 
	_alternative "scripts:scripts:((${scripts_list//:/\\\\:}))"
	_alternative "bin:bin:((${bins//:/\\\\:}))"
	_alternative "files:file:_files -g '*.(js|ts|jsx|tsx|wasm)'"
}
_bun_test_completion () {
	_arguments -s -C '1: :->cmd1' '*: :->file' '-h[Display this help and exit]' '--help[Display this help and exit]' '-b[Force a script or package to use Bun.js instead of Node.js (via symlinking node)]' '--bun[Force a script or package to use Bun.js instead of Node.js (via symlinking node)]' '--cwd[Set a specific cwd]:cwd' '-c[Load config(bunfig.toml)]: :->config' '--config[Load config(bunfig.toml)]: :->config' '--env-file[Load environment variables from the specified file(s)]:env-file' '--extension-order[Defaults to: .tsx,.ts,.jsx,.js,.json]:extension-order' '--jsx-factory[Changes the function called when compiling JSX elements using the classic JSX runtime]:jsx-factory' '--jsx-fragment[Changes the function called when compiling JSX fragments]:jsx-fragment' '--jsx-import-source[Declares the module specifier to be used for importing the jsx and jsxs factory functions. Default: "react"]:jsx-import-source' '--jsx-runtime["automatic" (default) or "classic"]: :->jsx-runtime' '--preload[Import a module before other modules are loaded]:preload' '-r[Import a module before other modules are loaded]:preload' '--main-fields[Main fields to lookup in package.json. Defaults to --target dependent]:main-fields' '--no-summary[Don'"'"'t print a summary]' '--version[Print version and exit]' '-v[Print version and exit]' '--revision[Print version with revision and exit]' '--tsconfig-override[Load tsconfig from path instead of cwd/tsconfig.json]:tsconfig-override' '--define[Substitute K:V while parsing, e.g. --define process.env.NODE_ENV:"development". Values are parsed as JSON.]:define' '-d[Substitute K:V while parsing, e.g. --define process.env.NODE_ENV:"development". Values are parsed as JSON.]:define' '--external[Exclude module from transpilation (can use * wildcards). ex: -e react]:external' '-e[Exclude module from transpilation (can use * wildcards). ex: -e react]:external' '--loader[Parse files with .ext:loader, e.g. --loader .js:jsx. Valid loaders: js, jsx, ts, tsx, json, toml, text, file, wasm, napi]:loader' '-l[Parse files with .ext:loader, e.g. --loader .js:jsx. Valid loaders: js, jsx, ts, tsx, json, toml, text, file, wasm, napi]:loader' '--origin[Rewrite import URLs to start with --origin. Default: ""]:origin' '-u[Rewrite import URLs to start with --origin. Default: ""]:origin' '--port[Port to serve bun'"'"'s dev server on. Default: '"'"'3000'"'"']:port' '-p[Port to serve bun'"'"'s dev server on. Default: '"'"'3000'"'"']:port' '--smol[Use less memory, but run garbage collection more often]' '--minify[Minify (experimental)]' '--minify-syntax[Minify syntax and inline data (experimental)]' '--minify-identifiers[Minify identifiers]' '--no-macros[Disable macros from being executed in the bundler, transpiler and runtime]' '--target[The intended execution environment for the bundle. "browser", "bun" or "node"]: :->target' '--inspect[Activate Bun'"'"'s Debugger]:inspect' '--inspect-wait[Activate Bun'"'"'s Debugger, wait for a connection before executing]:inspect-wait' '--inspect-brk[Activate Bun'"'"'s Debugger, set breakpoint on first line of code and wait]:inspect-brk' '--watch[Automatically restart bun'"'"'s JavaScript runtime on file change]' '--timeout[Set the per-test timeout in milliseconds, default is 5000.]:timeout' '--update-snapshots[Update snapshot files]' '--rerun-each[Re-run each test file <NUMBER> times, helps catch certain bugs]:rerun' '--todo[Include tests that are marked with "test.todo()"]' '--coverage[Generate a coverage profile]' '--bail[Exit the test suite after <NUMBER> failures. If you do not specify a number, it defaults to 1.]:bail' '--test-name-pattern[Run only tests with a name that matches the given regex]:pattern' '-t[Run only tests with a name that matches the given regex]:pattern' && ret=0 
	case $state in
		(file) _bun_test_param_script_completion ;;
		(config) _files ;;
	esac
}
_bun_test_param_script_completion () {
	local -a scripts_list
	_alternative "files:file:_files -g '*(_|.)(test|spec).(js|ts|jsx|tsx)'"
}
_bun_unlink_completion () {
	_arguments -s -C '1: :->cmd1' '*: :->package' '--config[Load config(bunfig.toml)]: :->config' '-c[Load config(bunfig.toml)]: :->config' '--yarn[Write a yarn.lock file (yarn v1)]' '-y[Write a yarn.lock file (yarn v1)]' '--production[Don'"'"'t install devDependencies]' '-p[Don'"'"'t install devDependencies]' '--no-save[Don'"'"'t save a lockfile]' '--save[Save to package.json]' '--dry-run[Don'"'"'t install anything]' '--frozen-lockfile[Disallow changes to lockfile]' '--force[Always request the latest versions from the registry & reinstall all dependencies]' '-f[Always request the latest versions from the registry & reinstall all dependencies]' '--cache-dir[Store & load cached data from a specific directory path]:cache-dir' '--no-cache[Ignore manifest cache entirely]' '--silent[Don'"'"'t log anything]' '--verbose[Excessively verbose logging]' '--no-progress[Disable the progress bar]' '--no-summary[Don'"'"'t print a summary]' '--no-verify[Skip verifying integrity of newly downloaded packages]' '--ignore-scripts[Skip lifecycle scripts in the package.json (dependency scripts are never run)]' '--global[Add a package globally]' '-g[Add a package globally]' '--cwd[Set a specific cwd]:cwd' '--backend[Platform-specific optimizations for installing dependencies]:backend:("copyfile" "hardlink" "symlink")' '--link-native-bins[Link "bin" from a matching platform-specific dependency instead. Default: esbuild, turbo]:link-native-bins' '--help[Print this help menu]' && ret=0 
	case $state in
		(config) _bun_list_bunfig_toml ;;
		(package)  ;;
	esac
}
_bun_update_completion () {
	_arguments -s -C '1: :->cmd1' '-c[Load config(bunfig.toml)]: :->config' '--config[Load config(bunfig.toml)]: :->config' '-y[Write a yarn.lock file (yarn v1)]' '--yarn[Write a yarn.lock file (yarn v1)]' '-p[Don'"'"'t install devDependencies]' '--production[Don'"'"'t install devDependencies]' '--no-save[Don'"'"'t save a lockfile]' '--save[Save to package.json]' '--dry-run[Don'"'"'t install anything]' '--frozen-lockfile[Disallow changes to lockfile]' '--latest[Updates dependencies to latest version, regardless of compatibility]' '-f[Always request the latest versions from the registry & reinstall all dependencies]' '--force[Always request the latest versions from the registry & reinstall all dependencies]' '--cache-dir[Store & load cached data from a specific directory path]:cache-dir' '--no-cache[Ignore manifest cache entirely]' '--silent[Don'"'"'t log anything]' '--verbose[Excessively verbose logging]' '--no-progress[Disable the progress bar]' '--no-summary[Don'"'"'t print a summary]' '--no-verify[Skip verifying integrity of newly downloaded packages]' '--ignore-scripts[Skip lifecycle scripts in the package.json (dependency scripts are never run)]' '-g[Add a package globally]' '--global[Add a package globally]' '--cwd[Set a specific cwd]:cwd' '--backend[Platform-specific optimizations for installing dependencies]:backend:("copyfile" "hardlink" "symlink")' '--link-native-bins[Link "bin" from a matching platform-specific dependency instead. Default: esbuild, turbo]:link-native-bins' '--help[Print this help menu]' && ret=0 
	case $state in
		(config) _bun_list_bunfig_toml ;;
	esac
}
_bun_upgrade_completion () {
	_arguments -s -C '1: :->cmd' '--canary[Upgrade to canary build]' && ret=0 
}
_bzip2 () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_bzr () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cabal () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cache_invalid () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_caffeinate () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cal () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_calendar () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_call_function () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_call_program () {
	local -xi COLUMNS=999 
	local curcontext="${curcontext}" tmp err_fd=-1 clocale='_comp_locale;' 
	local -a prefix
	if [[ "$1" = -p ]]
	then
		shift
		if (( $#_comp_priv_prefix ))
		then
			curcontext="${curcontext%:*}/${${(@M)_comp_priv_prefix:#^*[^\\]=*}[1]}:" 
			zstyle -t ":completion:${curcontext}:${1}" gain-privileges && prefix=($_comp_priv_prefix) 
		fi
	elif [[ "$1" = -l ]]
	then
		shift
		clocale='' 
	fi
	if (( ${debug_fd:--1} > 2 )) || [[ ! -t 2 ]]
	then
		exec {err_fd}>&2
	else
		exec {err_fd}> /dev/null
	fi
	{
		if zstyle -s ":completion:${curcontext}:${1}" command tmp
		then
			if [[ "$tmp" = -* ]]
			then
				eval $clocale "$tmp[2,-1]" "$argv[2,-1]"
			else
				eval $clocale $prefix "$tmp"
			fi
		else
			eval $clocale $prefix "$argv[2,-1]"
		fi 2>&$err_fd
	} always {
		exec {err_fd}>&-
	}
}
_canonical_paths () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_capabilities () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cat () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ccal () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cd () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cdbs-edit-patch () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cdcd () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cdr () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cdrdao () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cdrecord () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_chattr () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_chcon () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_chflags () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_chkconfig () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_chmod () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_choom () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_chown () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_chroot () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_chrt () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_chsh () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cksum () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_clay () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cmdambivalent () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cmdstring () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cmp () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_code () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_codex () {
	# undefined
	builtin autoload -XUz /opt/homebrew/share/zsh/site-functions
}
_column () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_combination () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_comm () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_command () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_command_names () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_comp_locale () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_compadd () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_compdef () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_complete () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_complete_debug () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_complete_help () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_complete_help_generic () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_complete_tag () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_completers () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_composer () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_compress () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_condition () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_configure () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_coreadm () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_correct () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_correct_filename () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_correct_word () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cowsay () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cp () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cpio () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cplay () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cpupower () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_crontab () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cryptsetup () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cscope () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_csplit () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cssh () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_csup () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ctags () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ctags_tags () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cu () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_curl () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cut () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cvs () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cvsup () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cygcheck () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cygpath () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cygrunsrv () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cygserver () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_cygstart () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dak () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_darcs () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_date () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_date_formats () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dates () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dbus () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dchroot () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dchroot-dsa () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dconf () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dcop () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dcut () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dd () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_deb_architectures () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_deb_codenames () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_deb_files () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_deb_packages () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_debbugs_bugnumber () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_debchange () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_debcheckout () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_debdiff () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_debfoster () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_deborphan () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_debsign () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_debsnap () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_debuild () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_default () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_defaults () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_delimiters () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_describe () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_description () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_devtodo () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_df () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dhclient () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dhcpinfo () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dict () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dict_words () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_diff () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_diff3 () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_diff_options () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_diffstat () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dig () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dir_list () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_directories () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_directory_stack () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dirs () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_disable () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dispatch () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_django () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dkms () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dladm () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dlocate () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dmesg () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dmidecode () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dnf () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dns_types () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_doas () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_docker () {
	# undefined
	builtin autoload -XUz /Users/tsk/.docker/completions
}
_domains () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dos2unix () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dpatch-edit-patch () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dpkg () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dpkg-buildpackage () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dpkg-cross () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dpkg-repack () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dpkg_source () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dput () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_drill () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dropbox () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dscverify () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dsh () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dtrace () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dtruss () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_du () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dumpadm () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dumper () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dupload () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dvi () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_dynamic_directory_name () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_e2label () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ecasound () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_echotc () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_echoti () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ed () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_elfdump () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_elinks () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_email_addresses () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_emulate () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_enable () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_enscript () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_entr () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_env () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_eog () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_equal () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_espeak () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_etags () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ethtool () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_evince () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_exec () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_expand () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_expand_alias () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_expand_word () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_extensions () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_external_pwds () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_fakeroot () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_fbsd_architectures () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_fbsd_device_types () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_fc () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_feh () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_fetch () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_fetchmail () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ffmpeg () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_figlet () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_file_descriptors () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_file_flags () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_file_modes () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_file_systems () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_files () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_find () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_find_net_interfaces () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_findmnt () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_finger () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_fink () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_first () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_flac () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_flex () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_floppy () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_flowadm () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_fmadm () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_fmt () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_fold () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_fortune () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_free () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_freebsd-update () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_fs_usage () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_fsh () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_fstat () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_functions () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_fuse_arguments () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_fuse_values () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_fuser () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_fusermount () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_fw_update () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_gcc () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_gcore () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_gdb () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_geany () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_gem () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_generic () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_genisoimage () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_getclip () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_getconf () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_getent () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_getfacl () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_getmail () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_getopt () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_gh () {
	# undefined
	builtin autoload -XUz /opt/homebrew/share/zsh/site-functions
}
_ghostscript () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ghostty () {
	# undefined
	builtin autoload -XUz /opt/homebrew/share/zsh/site-functions
}
_git () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_git-buildpackage () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_global () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_global_tags () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_globflags () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_globqual_delims () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_globquals () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_gnome-gv () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_gnu_generic () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_gnupod () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_gnutls () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_go () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_gpasswd () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_gpg () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_gphoto2 () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_gprof () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_gqview () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_gradle () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_graphicsmagick () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_grep () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_grep-excuses () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_groff () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_groups () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_growisofs () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_gsettings () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_gstat () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_guard () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_guilt () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_gv () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_gzip () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_hash () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_have_glob_qual () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_hdiutil () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_head () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_hexdump () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_history () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_history_complete_word () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_history_modifiers () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_host () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_hostname () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_hosts () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_htop () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_hwinfo () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_iconv () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_iconvconfig () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_id () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ifconfig () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_iftop () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ignored () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_imagemagick () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_in_vared () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_inetadm () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_init_d () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_initctl () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_install () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_invoke-rc.d () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ionice () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_iostat () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ip () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ipadm () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ipfw () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ipsec () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ipset () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_iptables () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_irssi () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ispell () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_iwconfig () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_jail () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_jails () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_java () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_java_class () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_jexec () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_jls () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_jobs () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_jobs_bg () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_jobs_builtin () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_jobs_fg () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_joe () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_join () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_jot () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_jq () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_kdeconnect () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_kdump () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_kfmclient () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_kill () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_killall () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_kld () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_knock () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_kpartx () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ktrace () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ktrace_points () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_kvno () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_last () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ld_debug () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ldap () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ldconfig () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ldd () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_less () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_lha () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_libvirt () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_lighttpd () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_limit () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_limits () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_links () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_lintian () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_list () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_list_files () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_lldb () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ln () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_loadkeys () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_locale () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_localedef () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_locales () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_locate () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_logger () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_logical_volumes () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_login_classes () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_look () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_losetup () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_lp () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ls () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_lsattr () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_lsblk () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_lscfg () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_lsdev () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_lslv () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_lsns () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_lsof () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_lspv () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_lsusb () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_lsvg () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ltrace () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_lua () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_luarocks () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_lynx () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_lz4 () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_lzop () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mac_applications () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mac_files_for_application () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_madison () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mail () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mailboxes () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_main_complete () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_make () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_make-kpkg () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_man () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mat () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mat2 () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_match () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_math () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_math_params () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_matlab () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_md5sum () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mdadm () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mdfind () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mdls () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mdutil () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_members () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mencal () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_menu () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mere () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mergechanges () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_message () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mh () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mii-tool () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mime_types () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mixerctl () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mkdir () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mkfifo () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mknod () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mkshortcut () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mktemp () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mkzsh () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_module () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_module-assistant () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_module_math_func () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_modutils () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mondo () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_monotone () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_moosic () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mosh () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_most_recent_file () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mount () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mozilla () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mpc () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mplayer () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mt () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mtools () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mtr () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_multi_parts () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mupdf () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mutt () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mv () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_my_accounts () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_myrepos () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mysql_utils () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_mysqldiff () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_nautilus () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_nbsd_architectures () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ncftp () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_nedit () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_net_interfaces () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_netcat () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_netscape () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_netstat () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_networkmanager () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_networksetup () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_newsgroups () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_next_label () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_next_tags () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_nginx () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ngrep () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_nice () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_nkf () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_nl () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_nm () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_nmap () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_normal () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_nothing () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_nsenter () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_nslookup () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_numbers () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_numfmt () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_nvram () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_objdump () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_object_classes () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_object_files () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_obsd_architectures () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_od () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_okular () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_oldlist () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_open () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_openstack () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_opkg () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_options () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_options_set () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_options_unset () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_opustools () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_osascript () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_osc () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_other_accounts () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_otool () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_p11-kit () {
	# undefined
	builtin autoload -XUz /opt/homebrew/share/zsh/site-functions
}
_pack () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pandoc () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_parameter () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_parameters () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_paste () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_patch () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_patchutils () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_path_commands () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_path_files () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pax () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pbcopy () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pbm () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pbuilder () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pdf () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pdftk () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_perf () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_perforce () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_perl () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_perl_basepods () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_perl_modules () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_perldoc () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pfctl () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pfexec () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pgids () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pgrep () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_php () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_physical_volumes () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pick_variant () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_picocom () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pidof () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pids () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pine () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ping () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pip () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pipx () {
	# undefined
	builtin autoload -XUz /opt/homebrew/share/zsh/site-functions
}
_piuparts () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pkg-config () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pkg5 () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pkg_instance () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pkgadd () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pkgin () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pkginfo () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pkgrm () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pkgtool () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_plutil () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pmap () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pon () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_portaudit () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_portlint () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_portmaster () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ports () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_portsnap () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_postfix () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_postgresql () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_postscript () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_powerd () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pr () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_precommand () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_prefix () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_print () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_printenv () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_printers () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_process_names () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_procstat () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_prompt () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_prove () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_prstat () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ps () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ps1234 () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pscp () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pspdf () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_psutils () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ptree () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ptx () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pump () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_putclip () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pv () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pwgen () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_pydoc () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_python () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_python_modules () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_qdbus () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_qemu () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_qiv () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_qtplay () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_quilt () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_rake () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ranlib () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_rar () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_rcctl () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_rclone () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_rcs () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_rdesktop () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_read () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_read_comp () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_readelf () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_readlink () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_readshortcut () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_rebootin () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_redirect () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_regex_arguments () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_regex_words () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_remote_files () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_renice () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_reprepro () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_requested () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_retrieve_cache () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_retrieve_mac_apps () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_rg () {
	# undefined
	builtin autoload -XUz /opt/homebrew/share/zsh/site-functions
}
_ri () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_rlogin () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_rm () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_rmdir () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_route () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_routing_domains () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_routing_tables () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_rpm () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_rrdtool () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_rsync () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_rubber () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ruby () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_run-help () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_runit () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_samba () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_savecore () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_say () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sbuild () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sc_usage () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sccs () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sched () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_schedtool () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_schroot () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_scl () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_scons () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_screen () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_script () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_scselect () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_scutil () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_seafile () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sed () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_selinux_contexts () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_selinux_roles () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_selinux_types () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_selinux_users () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sep_parts () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_seq () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sequence () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_service () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_services () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_set () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_set_command () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_set_remove () {
	comm -23 <(echo $1 | sort | tr " " "\n") <(echo $2 | sort | tr " " "\n") 2> /dev/null
}
_setfacl () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_setopt () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_setpriv () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_setsid () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_setup () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_setxkbmap () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sh () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_shasum () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_showmount () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_shred () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_shuf () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_shutdown () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_signals () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_signify () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sisu () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_slabtop () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_slrn () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_smartmontools () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_smit () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_snoop () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_socket () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sockstat () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_softwareupdate () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sort () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_source () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_spamassassin () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_split () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sqlite () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sqsh () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ss () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ssh () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ssh_hosts () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sshfs () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_stat () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_stdbuf () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_stgit () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_store_cache () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_stow () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_strace () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_strftime () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_strings () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_strip () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_stty () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_su () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sub_commands () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sublimetext () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_subscript () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_subversion () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sudo () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_suffix_alias_files () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_supabase () {
	# undefined
	builtin autoload -XUz /opt/homebrew/share/zsh/site-functions
}
_surfraw () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_svcadm () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_svccfg () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_svcprop () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_svcs () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_svcs_fmri () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_svn-buildpackage () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sw_vers () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_swaks () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_swanctl () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_swift () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sys_calls () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sysclean () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sysctl () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sysmerge () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_syspatch () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sysrc () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sysstat () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_systat () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_system_profiler () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_sysupgrade () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tac () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tags () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tail () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tailscale () {
	# undefined
	builtin autoload -XUz /opt/homebrew/share/zsh/site-functions
}
_tar () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tar_archive () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tardy () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tcpdump () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tcpsys () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tcptraceroute () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tee () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_telnet () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_terminals () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tex () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_texi () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_texinfo () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tidy () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tiff () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tilde () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tilde_files () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_time_zone () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_timeout () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tin () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tla () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tload () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tmux () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_todo.sh () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_toilet () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_toolchain-source () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_top () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_topgit () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_totd () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_touch () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tpb () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tput () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tr () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tracepath () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_transmission () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_trap () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_trash () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tree () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_truncate () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_truss () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_trust () {
	# undefined
	builtin autoload -XUz /opt/homebrew/share/zsh/site-functions
}
_tty () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ttyctl () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ttys () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_tune2fs () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_twidge () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_twisted () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_typeset () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ulimit () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_uml () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_umountable () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_unace () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_uname () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_unexpand () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_unhash () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_uniq () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_unison () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_units () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_unshare () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_update-alternatives () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_update-rc.d () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_uptime () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_urls () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_urpmi () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_urxvt () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_usbconfig () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_uscan () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_user_admin () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_user_at_host () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_user_expand () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_user_math_func () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_users () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_users_on () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_uv () {
	# undefined
	builtin autoload -XUz /opt/homebrew/share/zsh/site-functions
}
_uvx () {
	# undefined
	builtin autoload -XUz /opt/homebrew/share/zsh/site-functions
}
_valgrind () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_value () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_values () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_vared () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_vars () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_vcs_info () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_vcs_info_hooks () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_vi () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_vim () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_vim-addons () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_visudo () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_vmctl () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_vmstat () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_vnc () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_volume_groups () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_vorbis () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_vpnc () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_vserver () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_w () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_w3m () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_wait () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_wajig () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_wakeup_capable_devices () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_wanna-build () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_wanted () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_watch () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_watch-snoop () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_wc () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_webbrowser () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_wget () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_whereis () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_which () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_who () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_whois () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_widgets () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_wiggle () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_wipefs () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_wpa_cli () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_x_arguments () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_x_borderwidth () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_x_color () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_x_colormapid () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_x_cursor () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_x_display () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_x_extension () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_x_font () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_x_geometry () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_x_keysym () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_x_locale () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_x_modifier () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_x_name () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_x_resource () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_x_selection_timeout () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_x_title () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_x_utils () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_x_visual () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_x_window () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xargs () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xauth () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xautolock () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xclip () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xcode-select () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xdvi () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xfig () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xft_fonts () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xinput () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xloadimage () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xmlsoft () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xmlstarlet () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xmms2 () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xmodmap () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xournal () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xpdf () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xrandr () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xscreensaver () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xset () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xt_arguments () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xt_session_id () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xterm () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xv () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xwit () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xxd () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_xz () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_yafc () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_yast () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_yodl () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_yp () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_yum () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zargs () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zattr () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zcalc () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zcalc_line () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zcat () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zcompile () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zdump () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zeal () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zed () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zfs () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zfs_dataset () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zfs_pool () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zftp () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zip () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zle () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zlogin () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zmodload () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zmv () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zoneadm () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zones () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zparseopts () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zpty () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zsh () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zsh-mime-handler () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zsocket () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zstyle () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_ztodo () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
_zypper () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
compaudit () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
compdef () {
	local opt autol type func delete eval new i ret=0 cmd svc 
	local -a match mbegin mend
	emulate -L zsh
	setopt extendedglob
	if (( ! $# ))
	then
		print -u2 "$0: I need arguments"
		return 1
	fi
	while getopts "anpPkKde" opt
	do
		case "$opt" in
			(a) autol=yes  ;;
			(n) new=yes  ;;
			([pPkK]) if [[ -n "$type" ]]
				then
					print -u2 "$0: type already set to $type"
					return 1
				fi
				if [[ "$opt" = p ]]
				then
					type=pattern 
				elif [[ "$opt" = P ]]
				then
					type=postpattern 
				elif [[ "$opt" = K ]]
				then
					type=widgetkey 
				else
					type=key 
				fi ;;
			(d) delete=yes  ;;
			(e) eval=yes  ;;
		esac
	done
	shift OPTIND-1
	if (( ! $# ))
	then
		print -u2 "$0: I need arguments"
		return 1
	fi
	if [[ -z "$delete" ]]
	then
		if [[ -z "$eval" ]] && [[ "$1" = *\=* ]]
		then
			while (( $# ))
			do
				if [[ "$1" = *\=* ]]
				then
					cmd="${1%%\=*}" 
					svc="${1#*\=}" 
					func="$_comps[${_services[(r)$svc]:-$svc}]" 
					[[ -n ${_services[$svc]} ]] && svc=${_services[$svc]} 
					[[ -z "$func" ]] && func="${${_patcomps[(K)$svc][1]}:-${_postpatcomps[(K)$svc][1]}}" 
					if [[ -n "$func" ]]
					then
						_comps[$cmd]="$func" 
						_services[$cmd]="$svc" 
					else
						print -u2 "$0: unknown command or service: $svc"
						ret=1 
					fi
				else
					print -u2 "$0: invalid argument: $1"
					ret=1 
				fi
				shift
			done
			return ret
		fi
		func="$1" 
		[[ -n "$autol" ]] && autoload -rUz "$func"
		shift
		case "$type" in
			(widgetkey) while [[ -n $1 ]]
				do
					if [[ $# -lt 3 ]]
					then
						print -u2 "$0: compdef -K requires <widget> <comp-widget> <key>"
						return 1
					fi
					[[ $1 = _* ]] || 1="_$1" 
					[[ $2 = .* ]] || 2=".$2" 
					[[ $2 = .menu-select ]] && zmodload -i zsh/complist
					zle -C "$1" "$2" "$func"
					if [[ -n $new ]]
					then
						bindkey "$3" | IFS=$' \t' read -A opt
						[[ $opt[-1] = undefined-key ]] && bindkey "$3" "$1"
					else
						bindkey "$3" "$1"
					fi
					shift 3
				done ;;
			(key) if [[ $# -lt 2 ]]
				then
					print -u2 "$0: missing keys"
					return 1
				fi
				if [[ $1 = .* ]]
				then
					[[ $1 = .menu-select ]] && zmodload -i zsh/complist
					zle -C "$func" "$1" "$func"
				else
					[[ $1 = menu-select ]] && zmodload -i zsh/complist
					zle -C "$func" ".$1" "$func"
				fi
				shift
				for i
				do
					if [[ -n $new ]]
					then
						bindkey "$i" | IFS=$' \t' read -A opt
						[[ $opt[-1] = undefined-key ]] || continue
					fi
					bindkey "$i" "$func"
				done ;;
			(*) while (( $# ))
				do
					if [[ "$1" = -N ]]
					then
						type=normal 
					elif [[ "$1" = -p ]]
					then
						type=pattern 
					elif [[ "$1" = -P ]]
					then
						type=postpattern 
					else
						case "$type" in
							(pattern) if [[ $1 = (#b)(*)=(*) ]]
								then
									_patcomps[$match[1]]="=$match[2]=$func" 
								else
									_patcomps[$1]="$func" 
								fi ;;
							(postpattern) if [[ $1 = (#b)(*)=(*) ]]
								then
									_postpatcomps[$match[1]]="=$match[2]=$func" 
								else
									_postpatcomps[$1]="$func" 
								fi ;;
							(*) if [[ "$1" = *\=* ]]
								then
									cmd="${1%%\=*}" 
									svc=yes 
								else
									cmd="$1" 
									svc= 
								fi
								if [[ -z "$new" || -z "${_comps[$1]}" ]]
								then
									_comps[$cmd]="$func" 
									[[ -n "$svc" ]] && _services[$cmd]="${1#*\=}" 
								fi ;;
						esac
					fi
					shift
				done ;;
		esac
	else
		case "$type" in
			(pattern) unset "_patcomps[$^@]" ;;
			(postpattern) unset "_postpatcomps[$^@]" ;;
			(key) print -u2 "$0: cannot restore key bindings"
				return 1 ;;
			(*) unset "_comps[$^@]" ;;
		esac
	fi
}
compdump () {
	# undefined
	builtin autoload -XUz
}
compinit () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
compinstall () {
	# undefined
	builtin autoload -XUz /usr/share/zsh/5.9/functions
}
getent () {
	if [[ $1 = hosts ]]
	then
		sed 's/#.*//' /etc/$1 | grep -w $2
	elif [[ $2 = <-> ]]
	then
		grep ":$2:[^:]*$" /etc/$1
	else
		grep "^$2:" /etc/$1
	fi
}

# setopts 2
setopt nohashdirs
setopt login

# aliases 8
alias cc=claude
alias ccs='claude --dangerously-skip-permissions'
alias claude-mem='bun "/Users/tsk/.claude/plugins/marketplaces/thedotmack/plugin/scripts/worker-service.cjs"'
alias cls=clear
alias op=opencode
alias opy='opencode -y'
alias run-help=man
alias which-command=whence

# exports 43
export ANTHROPIC_API_KEY=sk-ant-api03-cRdPtVmS2lQLHV7W1pZ5ybXFVjHu1HGJ5ZgA_m9kEGTLGWdpAddBADRt9T_vxUAoCKCrowBuaITKwzqzYunbOA
export BUN_INSTALL=/Users/tsk/.bun
export CODEX_CI=1
export CODEX_HOME=/Users/tsk/multi-cli-orchestrator/docs/probes/2026-02-26/.probe_codex_home
export CODEX_MANAGED_BY_NPM=1
export CODEX_SANDBOX_NETWORK_DISABLED=1
export CODEX_THREAD_ID=019c9783-9945-78a3-862c-2784bee5138e
export COLORTERM=truecolor
export COMMAND_MODE=unix2003
export GH_PAGER=cat
export GIT_PAGER=cat
export HOME=/Users/tsk
export HOMEBREW_API_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles/api
export HOMEBREW_CELLAR=/opt/homebrew/Cellar
export HOMEBREW_PREFIX=/opt/homebrew
export HOMEBREW_REPOSITORY=/opt/homebrew
export INFOPATH=/opt/homebrew/share/info:/opt/homebrew/share/info:/opt/homebrew/share/info:
export KITTY_INSTALLATION_DIR=/Applications/kitty.app/Contents/Resources/kitty
export KITTY_PID=34754
export KITTY_PUBLIC_KEY='1:w&PYwC`q;YH1CIWxBeH0^r<q<`6Mar;z(oklO@q$'
export KITTY_WINDOW_ID=312
export LANG=zh_CN.UTF-8
export LC_ALL=C.UTF-8
export LC_CTYPE=C.UTF-8
export LOGNAME=tsk
export NO_COLOR=1
export OSLogRateLimit=64
export PAGER=cat
export PNPM_HOME=/Users/tsk/Library/pnpm
export SHELL=/bin/zsh
export SSH_AUTH_SOCK=/private/tmp/com.apple.launchd.zLSg3OOpH4/Listeners
export TERM=xterm-kitty
export TERMINFO=/Applications/kitty.app/Contents/Resources/kitty/terminfo
export TMPDIR=/var/folders/v1/6vx82zzx32q7y_s1w4sx84j00000gn/T/
export USER=tsk
export WINDOWID=12037
export XPC_FLAGS=0x0
export XPC_SERVICE_NAME=0
export __CFBundleIdentifier=net.kovidgoyal.kitty
export __CF_USER_TEXT_ENCODING=0x1F5:0x19:0x34
export all_proxy=http://127.0.0.1:7890
export http_proxy=http://127.0.0.1:7890
export https_proxy=http://127.0.0.1:7890
