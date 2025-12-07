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

	PROMPT="Assume OUTPUT_FILE to be ${UNSLASHED}-${INDEX}-${NOW}.html . Implement instructions from ./_prompt.txt ."

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


#runOpencode123 "zai-coding-plan/glm-4.5"
#runOpencode123 "zai-coding-plan/glm-4.6"
#runOpencode123 "xai/grok-code-fast-1"
#runOpencode123 "xai/grok-4-fast"
#runOpencode123 "xai/grok-4"
#runOpencode123 "openai/gpt-5.1"
#runOpencode123 "openrouter/google/gemini-3-pro-preview"
#runOpencode123 "openrouter/anthropic/claude-haiku-4.5"
#runOpencode123 "openrouter/anthropic/claude-sonnet-4.5"
#runOpencode123 "openrouter/anthropic/claude-opus-4.5"
#runOpencode123 "deepseek/deepseek-reasoner"
####runOpencode123 "openrouter/deepseek/deepseek-v3.2-speciale"

runOpencode123 "openrouter/minimax/minimax-m2"
runOpencode123 "openrouter/moonshotai/kimi-k2-thinking"

exit

