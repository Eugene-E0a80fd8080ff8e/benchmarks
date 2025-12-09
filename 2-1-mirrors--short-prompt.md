
# 2-1-mirrors--short-prompt

Done on Dec 9, 2025.

Make a mirrors-in-a-labyrinth game, using the labyrinth from (1-1-labyrinth-opencode)[./1-1-labyrinth-opencode.md] as a starting point. ([full prompt](./2-1-mirrors--short-prompt/_prompt.txt))

This is a derivative of *2-mirrors*. This uses the same starting file and similar prompt. 
The prompt was significantly shortened.

A solution, which demonstrates the prompt:  TBD

Here, I am listing only the apparent problems and divergencies from the prompt.

### Notes


-----------------

## GLM-4.5 from z.ai API

*First run*: 4/5

- The state of the mirror may change multiple times for the short moment while "E" is pressed.
- Mirrors are single-sided polygon (invisible from polygon's back side)

*Second run*: 4/5

- The state of the mirror may change multiple times for the short moment while "E" is pressed.
- Mirrors are big cubes. Its simmetry makes them invariant to a 90 degress rotation

*Third run*: 2/5

- The laser ignores the mirror.
- When I get close to one mirror, all of them are highlighted

## GLM-4.6 from z.ai API

*First run*: 1/5

- Mirrors are diamond-shapes. Its simmetry makes them invariant to a 90 degress rotation
- Laser stops at the mirror

*Second run*: 1/5

- It says "puzzle solved" at the beginning. Did AI solve the puzzle for me?
- The mirror disappears if I come close to it.

*Third run*:  3/5

- Mirrors are diamond-shapes. Its simmetry makes them invariant to a 90 degress rotation
- Some "mirrors" toggle between "reflect-to-the-right" and "stop-the-light", others are fine

## grok-code-fast from x.ai API

*First run*: 3/5

- The laser goes "through" a mirror, changing its direction by 90 degrees.
- No "target" block to drive the laser to.

*Second run*: 0/5

- All black. Broken

*Third run*:  3/5

- Mirrors are single-sided rectangles (invisible from rectangle's back side)
- No "target" block to drive the laser to.

## grok-4-fast from x.ai API

*First run*: 0/5

- All black. Broken

*Second run*: 0/5

- All black. Broken

*Third run*:  0/5

- All black. Broken

## grok-4 from x.ai API

*First run*: 0/5

- No changes.

*Second run*: 0/5

- No changes.

*Third run*:  0/5

- No changes.

## gpt-5.1 from OpenAI API

*First run*: 5/5

- Perfect!

*Second run*: 1/5

- Mirrors are not togglable
- Laser travels at the height of the very top of the mirror.

*Third run*:  4/5

- The laser goes "through" a mirror, changing its direction by 90 degrees.
- You can not navigate through the window (good)
- Pallete have changed to gray-blackish

## gemini-3-pro from OpenRouter API

*First run*: 5/5

- Perfect!

*Second run*: 5/5

- Perfect!

*Third run*:  6/5

- Perfect!
- Mirrors are thick rectanles. The reflection code takes that in account and reflects it correctly at the very surface of a think block. 
  I was able to to set up mirrors in a way that at one point the laser reflected from the side edge of the mirror.

## haiku-4.5 from OpenRouter API

*First run*: 2/5

- The length of the laser is limited
- Shapes of the mirrors do not represent its states.
- The "Laser" is not a straight line
- Mirrors are single-sided 3d-objects

*Second run*: 0/5

- All black. Broken

*Third run*:  2/5

- The length of the laser is limited
- Shapes of the mirrors do not represent its states.
- The "Laser" is not a straight line
- Mirrors are single-sided 3d-objects

## sonnet-4.5 from OpenRouter API

*First run*: 2/5

- Mirrors are single-sided 3d-objects
- The length of the laser is limited (but longer than haiku)
- The "Laser" is not a straight line
- Mirrors are single-sided 3d-objects

*Second run*: 0/5

- Can not interact.

*Third run*:  4/5

- Perfect!

## opus-4.5 from OpenRouter API

*First run*: 1/5

- WTF is this?

*Second run*: 1/5

- WASD does nothing.

*Third run*:  5/5

- Perfect!

## deepseek-reasoner (deepseek v3.2 thinking) from Deepseek API 

*First run*: 3/5

- Laser goes through a wall
- When laser goes to infinity, the reflection law changes

*Second run*: 3/5

- All "\" mirrors are absent

*Third run*:  3/5

- All "\" mirrors are present with and extra one just to the east of it.
- Some wall blocks are missing.

## minimax-m2 from OpenRouter API

This time it did not forgot to copy "String.raw" part of the string literal

*First run*: 1/5

- No laser, no mirrors, just the map was updated

*Second run*: 1/5

- No laser, no mirrors, just the map was updated

*Third run*:  1/5

- No laser, no mirrors, just the map was updated


## kimi-k2-thinking from OpenRouter API

*First run*: 1/5

- No laser, no mirrors, just the map was updated

*Second run*: 1/5

- No laser, bad mirrors, just the map was updated

*Third run*:  1/5

- No laser, no mirrors, just the map was updated


