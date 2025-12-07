#!/usr/bin/env -S bash

set -euo pipefail


function runOpencode() 
{
	
	FULLMODELNAME="$1"
	INDEX="$2"

	NOW=$(date +%s)

	PROVIDER="${FULLMODELNAME%%/*}"
	MODEL="${FULLMODELNAME#*/}"

	# this replaces "/" in full model name to "--"
	UNSLASHED="$(perl -pe 's#/#--#g' <<< "$FULLMODELNAME")"

	PROMPT="Assume OUTPUT_FILE to be ${UNSLASHED}-${INDEX}-${NOW}.html . Implement instructions from ./_prompt-for-gemini3pro.txt ."

	echo "start: provider: ${PROVIDER}; model: ${MODEL}; time: ${NOW} "
	echo "prompt: ${PROMPT}"

	opencode --model ${FULLMODELNAME} run "${PROMPT}"

	echo "end ${PROVIDER}/${MODEL}"
}

runOpencode123() 
{
	for i in 1 2 3; do
		runOpencode "$1" "$i"
	done
}



# model names: https://models.dev/
# format "providerID/modelName"


runOpencode123 "openrouter/google/gemini-3-pro-preview"
