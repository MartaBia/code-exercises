# Megasoft weird

## spell checker

INPUT: sentence (expand to paragraph in future) - string
OUTPUT: Highlighted incorrect spelled word - string

example:
INPUT: "Hello worls!"
OUTPUT: "Hello ~worls~"

INPUT | OUTPUT
"Hello" | "Hello"
"Hello world" | "Hello world"
"Helo world" | "~Helo~ world" 
"Helo worl" | "~Helo~ ~worl~"
"I hav one aple" | "I ~hav~ one ~aple~"
"" | raise error: "please, insert a text"