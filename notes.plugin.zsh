#! /usr/bin/env zsh

notes() {
	: "${NOTES_DIRECTORY:?'NOTES_DIRECTORY not set'}"
	if [ $# -eq 0 ]; then
		if command -v bat > /dev/null 2>&1 ; then
			local batargs="--style=numbers, changes --colow always"
			local preview="bat ${barargs} ${NOTES_DIRECTORY}/{}.md"
		else
			local preview="cat ${NOTES_DIRECTORY}/{}.md"
		fi

		local file=$(find ${NOTES_DIRECTORY} -name "*.md" \
			| sed -e "s:${NOTES_DIRECTORY}/::" \
			| sed -e "s:\.md$::" \
			| fzf --multi --select-1 --exit-0 \
				--preview="${preview}" --preview-window=right:70%:wrap)
		[[ -n "${file}" ]] && \
			${VISUAL:-vim} "${NOTES_DIRECTORY}/${file}.md"
	else
		case "${1}" in
			"-d")
				rm "${NOTES_DIRECTORY}/${2}.md"
				;;
			*)
				${VISUAL:-vim} "${NOTES_DIRECTORY}/${*}.md"
				;;
		esac
	fi
}

alias n=notes
