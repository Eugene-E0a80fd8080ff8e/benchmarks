
# 2-mirrors

Done on Dec 9, 2025.

Make a mirrors-in-a-labyrinth game, using the labyrinth from (1-1-labyrinth-opencode)[./1-1-labyrinth-opencode.md] as a starting point. ([full prompt](./2-mirrors/_prompt.txt))

A solution, which demonstrates the prompt:  TBD

Here, I am listing only the apparent problems and divergencies from the prompt.

### Notes


-----------------

## GLM-4.5 from z.ai API

*First run*: 4/5

- The displayed state of a mirror does not match its reflection direction.
- For some mirrors, the laser goes "through" a mirror, changing its direction by 90 degrees.

*Second run*: 5/5

- The state of the mirror may change multiple times for the short moment while "E" is pressed.

*Third run*: 4/5

- The laser goes "through" a mirror, changing its direction by 90 degrees.

## GLM-4.6 from z.ai API

*First run*: 3/5

- The laser goes "through" a mirror, changing its direction by 90 degrees.

*Second run*: 4/5

- The laser goes "through" a mirror, changing its direction by 90 degrees.

*Third run*:  4/5

- The laser goes "through" a mirror, changing its direction by 90 degrees.

## grok-code-fast from x.ai API

*First run*: 1/5

- No laser
- Can not change the state of the mirrors

*Second run*: 0/5

- All black. Broken

*Third run*:  0/5

- All black. Broken

## grok-4-fast from x.ai API

*First run*: 0/5

- All black. Broken

*Second run*: 2/5

- All mirrors which was denoted as "\" at the map, are absent.

*Third run*:  0/5

- No changes.

## grok-4 from x.ai API

*First run*: 0/5

- No changes.

*Second run*: 1/5

- Can not interact with mirrors
- Looks like all the mirrors are shifted southwards 0.5 meters
- "Laser" is not a straight line

*Third run*:  0/5

- No changes.

## gpt-5.1 from OpenAI API

*First run*: 5/5

- Very good!
- Laser slightly clips to the other side of the mirror.

*Second run*: 4/5

- The laser goes "through" a mirror, changing its direction by 90 degrees.

*Third run*:  5/5

- Very good!
- Laser slightly clips to the other side of the mirror.

## gemini-3-pro from OpenRouter API

*First run*: 0/5

- No changes.
- Gemini 3 pro is somewhat hard to steer towards following the instructions.

*Second run*: 4/5

- The laser goes "through" a mirror, changing its direction by 90 degrees.
- Pallete was changed to gray-blackish

*Third run*:  1/5

- Does not react to mouse movement or keyboard presses.
- The laser goes "through" a mirror, changing its direction by 90 degrees.

## haiku-4.5 from OpenRouter API

*First run*: 4/5

- Laser trajectory is correct , but translate (0.5,0.5) to the boundary of the boxes.
- The laser goes "through" a mirror, changing its direction by 90 degrees (for some mirrors)

*Second run*: 4/5

- Mirrors do not change its apparent rotation, when they change their state.
- Mirrors are at 45 degrees to horizontal axes

*Third run*:  4/5

- Laser trajectory is correct , but translate (0.5,0.5) to the boundary of the boxes.
- The laser goes "through" a mirror, changing its direction by 90 degrees (for some mirrors)

## sonnet-4.5 from OpenRouter API

*First run*: 4/5

- The laser goes "through" a mirror, changing its direction by 90 degrees 

*Second run*: 4/5

- The laser goes "through" a mirror, changing its direction by 90 degrees 

*Third run*:  4/5

- The laser goes "through" a mirror, changing its direction by 90 degrees 

## opus-4.5 from OpenRouter API

*First run*: 4/5

- Laser disappears completely, if I flip a single mirror

*Second run*: 5/5

- Perfect!
- Laser slightly clips to the other side of the mirror.

*Third run*:  5/5

- Perfect!
- Laser slightly clips to the other side of the mirror.

## deepseek-reasoner (deepseek v3.2 thinking) from Deepseek API 

*First run*: 0/5

- All black. Nothing happens when I click "Play"

*Second run*: 3/5

- The laser goes "through" a mirror, changing its direction by 90 degrees 
- The laser disappears and reappears as I wander the map

*Third run*:  0/5

- All black. Nothing happens when I click "Play"

## minimax-m2 from OpenRouter API

*First run*: 1/5

- No laser
- Mirrors are not toggleable
- In code : it forgot to copy String.raw template literal of the string.

*Second run*: 1/5

- No laser
- No mirrors
- Some wall are out of place 
- In code : it forgot to copy String.raw template literal of the string.

*Third run*:  1/5

- One-sided mirrors
- No laser
- In code : it forgot to copy String.raw template literal of the string.


## kimi-k2-thinking from OpenRouter API

*First run*: 0/5

- No changes

*Second run*: 1/5

- No laser
- Single sided mirrors

*Third run*:  0/5

- No laser
- No mirrors


