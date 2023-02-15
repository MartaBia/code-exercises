# Band filter pass

## The problem

The compani makes digital filters for musicians to apply into electonic music tracks.
Digital filter changes the sound of the track

Write a band pass filter that takes an input with three arguments

- Sound wave (an array of frequencies)
- Lowest value (an integer)
- Highest value (an integer)

INPUT | OUTPUT

```ruby
[10, 20, 40], 10, 40 | [10, 20, 40]
[10, 20, 40], 10, 30 | [10, 20, 30]
[10, 20, 40], 20, 40 | [20, 20, 40]
[10, 20, 40], 15, 30 | [15, 20, 30]

```
