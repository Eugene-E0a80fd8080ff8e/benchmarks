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

	FILENAME="${UNSLASHED}-${INDEX}-${NOW}.html"

	PROMPT="Follow the instructions from './prompt.txt'."

	echo "start: provider: ${PROVIDER}; model: ${MODEL}; time: ${NOW} "
	echo "prompt: ${PROMPT}"

	WORKDIR="/tmp/opencodetest-${NOW}"
	mkdir $WORKDIR
	cp ./_prompt.txt ${WORKDIR}/prompt.txt
	cp ./labyrinth.html ${WORKDIR}/
	pushd $WORKDIR
	echo "pwd: $(pwd)"
	opencode --model ${FULLMODELNAME} run "${PROMPT}"
	popd
	echo "pwd: $(pwd)"
	cp "${WORKDIR}/labyrinth.html" ./${FILENAME}

	echo "finished ${PROVIDER}/${MODEL}"
}

runOpencode123() 
{
	for i in 1 2 3; do
		runOpencode "$1" "$i"
	done
}



# model names: https://models.dev/
# format "providerID/modelName"


#runOpencode "zai-coding-plan/glm-4.6" 1
#runOpencode "openrouter/anthropic/claude-sonnet-4.5" 1
#runOpencode "deepseek/deepseek-reasoner" 1
#runOpencode "openrouter/anthropic/claude-haiku-4.5" 1

#runOpencode "openrouter/google/gemini-3-pro-preview" 1

#runOpencode123 "zai-coding-plan/glm-4.6"

#exit
#runOpencode123 "zai-coding-plan/glm-4.5"
#runOpencode123 "zai-coding-plan/glm-4.6"
#runOpencode123 "xai/grok-code-fast-1"
#runOpencode123 "xai/grok-4-fast"
#runOpencode123 "xai/grok-4"
runOpencode123 "openai/gpt-5.1"
runOpencode123 "openrouter/google/gemini-3-pro-preview"
runOpencode123 "openrouter/anthropic/claude-haiku-4.5"
runOpencode123 "openrouter/anthropic/claude-sonnet-4.5"
runOpencode123 "openrouter/anthropic/claude-opus-4.5"
runOpencode123 "deepseek/deepseek-reasoner"
runOpencode123 "openrouter/minimax/minimax-m2"
runOpencode123 "openrouter/moonshotai/kimi-k2-thinking"

#runOpencode123 "openrouter/deepseek/deepseek-v3.2-speciale"
