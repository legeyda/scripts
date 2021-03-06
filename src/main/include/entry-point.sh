
# env: DEBUG?
#      BASH_SOURCE?
entry-point() {
	set -eu
	if [[ true == "${DEBUG:-}" ]]; then
		set -x
	fi
	local script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
	script_dir="$script_dir" main "$@"
}

# env: BASH_SOURCE
#      0
function script-is-sourced() {
    test "${BASH_SOURCE[0]}" != "${0}" || return 1
}