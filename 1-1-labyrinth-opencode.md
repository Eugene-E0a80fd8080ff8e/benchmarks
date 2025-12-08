
# 1-1-labyrinth-opencode

Done on Dec 7, 2025.


Make a labyrinth game of cube blocks. ([full prompt](./1-1-labyrinth-opencode/_prompt.txt))

A solution, which demonstrates the prompt properly:  (openrouter--google--gemini-3-pro-preview-1-1765121125.html)[1-1-labyrinth-opencode/openrouter--google--gemini-3-pro-preview-1-1765121125.html]

Here I am listing only the apparent problems and divergencies from the prompt.
Also, if a bigger problem covers a smaller problem, the smaller will not be listed.
For example, if choice of colors are so bad, that I can not see a thing, I will list only that.
Or, if navigation is broken, I can not possibly test for bounding of the walls.
Also, If I mention that there is clipping on wall's corners, it is probably a sign that clipping otherwise works.

### Notes




## GLM-4.5 from z.ai API

*First run*: 2/5

- Mouse vertical movement matches to rotation around one of horizontal world axis
- WASD keys directly changes world coordinates, disregarding user's rotation.


*Second run*: 2/5

- Mouse vertical movement matches to rotation around one of horizontal world axis
- Bounding law apparently shifted to a single block somewhere (classic -1/+1 problem)

*Third run*: 1/5

- Mouse vertical movement matches to rotation around one of horizontal world axis
- Bounding law apparently shifted to a single block somewhere (classic -1/+1 problem)
- W-S movement gets inverted when the user is aligned with either of OX or OZ axis. It is direct otherwise.

## GLM-4.6 from z.ai API

*First run*: ?/5

- Walls are higher than 1 meter
- W-S controls are inverted
- WASD movement is extremely slow

*Second run*: 3/5

- Walls are higher than 1 meter
- Allows to come to a wall close enough to clip the camera through and look behind the wall.

*Third run*:  2/5

- W-S controls are inverted
- WASD movement is slow
- Allows to come to a wall close enough to clip the camera through and look behind the wall.

## grok-code-fast from x.ai API

*First run*: 0/5

- All black. Broken

*Second run*: 1/5

- Hard to pinpoint errors separately. Mostly broken, though some movement is possible.

*Third run*:  0/5

- All white. Broken


## grok-4-fast from x.ai API

*First run*: 3/5

- Mouse vertical movement matches to rotation around one of horizontal world axis
- Allows to come to a wall close enough to clip the camera through and look behind the wall.

*Second run*: 0/5

- Bad HTML came out. (this might be OpenCode problem)

*Third run*:  0/5

- Bad HTML came out. (this might be OpenCode problem)

## grok-4 from x.ai API

*First run*: 0/5

- Bad HTML came out. (this might be OpenCode problem)

*Second run*: 0/5

- Bad HTML came out. (this might be OpenCode problem)

*Third run*:  0/5

- Bad HTML came out. (this might be OpenCode problem)

## gpt-5.1 from OpenAI API

*First run*: 3/5

- W-S controls are weird. As if the AI mistakingly multiplies player's angle by 2 (or 0.5) somewhere

*Second run*: 4/5

- W-S are inverted 

*Third run*:  4/5

- Mouse's vertical axis is inverted

## gemini-3-pro from OpenRouter API

*First run*: 5/5

- Perfect!

*Second run*: 5/5

- At first gemini-3-pro refused to do the file #2 when the same folder contained similarly named file #1. I had to provide extra instuction on ignoring the other files.
- Otherwise perfect!

*Third run*:  5/5

- At first gemini-3-pro refused to do the file #3 when the same folder contained similarly named file #1. I had to provide extra instuction on ignoring the other files. Probably need to use and empty folder for every run. Maybe even inside a docker container.
- Otherwise perfect!

## haiku-4.5 from OpenRouter API

*First run*: 4/5

- W-S is inverted

*Second run*: 0/5

- All black

*Third run*:  0/5

- Player is spawed outside of labyrinth
- Can not navigate

## sonnet-4.5 from OpenRouter API

*First run*: 4/5

- W-S is inverted

*Second run*: 3/5

- Now ceiling is present, and it is too low, it obstructs view.

*Third run*:  4/5
- W-S is inverted
- The ceiling is present again, but now it is on a proper height.

## opus-4.5 from OpenRouter API

*First run*: 4/5

- A-D is inverted
- The ceiling is present. And it is too low again.

*Second run*: 4/5

- W-S is inverted
- shadows are absent for most of the cubes

*Third run*:  5/5

- shadows are absent for most of the cubes

## deepseek-reasoner (deepseek v3.2 thinking) from Deepseek API 

Deepseek is not like other AIs: it makes extensive use of todo-list, writes output the html, reads it multiple times, edits it, manages todo list, calls bash commands on that file.

Deepseek explores contents of the folder where opencode is running from. I noticed it tried to read the solution by gpt-5.1. I had to change the running script to do all the work in /tmp , where no other solutions are available.

*First run*: 0/5

- All blue. Can not navigate. Probably bad choice of colors.

*Second run*: 3/5

- Mouse' vertical movement matches to rotation around one of horizontal world axis

*Third run*:  3/5

- Both mouse axii are inverted. WASD is okay

## minimax-m2 from OpenRouter API

*First run*: 3/5

- A-D is inverted
- Mouse' vertical movement matches to rotation around one of horizontal world axis
- Allows to clip through a wall until you release one of movement button. Then slides you back if you are inside a wall.

*Second run*: 2/5

- Mouse' vertical movement matches to rotation around one of horizontal world axis
- Upon realease of a mouse button, rotation jumps to some other state.

*Third run*:  5/5

- unlike other models, does not captures the mouse cursor (but it is not in the prompt)


## kimi-k2-thinking from OpenRouter API

*First run*: 3/5

- W-S controls are weird. As if the AI mistakingly multiplies player's angle by 2 (or 0.5) somewhere

*Second run*: 3/5

- no wall clipping

*Third run*:  /5

- W-S is inverted
- Mouse' vertical movement matches to rotation around one of horizontal world axis


