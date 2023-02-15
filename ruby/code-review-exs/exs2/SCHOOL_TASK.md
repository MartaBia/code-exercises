# School report company

comma separated string, create a report

## Input:

- String: a comma separated string
- Green, amber and red
- Example input: "Green, Green, Aber, Red, Green"

## Output:

- String
- Containig the tag of the colour
- The count of the times the colour is present
- Example: "Green, Green" => "Green: 2"

# Tests:

INPUT | OUTPUT

- "Green" | "Green: 1"
- "Amber" | "Amber: 1"
- "Red" | "Red: 1"
- "Green, Green" | "Green: 2"
- "Amber, Amber" | "Amber: 2"
- "Red, Red" | "Red: 2"
- "Green, Green, Amber" | "Green: 2,
  Amber: 1"
- "Green, Green, Amber, Amber, Red" | "Green: 2,
  Amber: 2, Red: 1"
- "Green, Green, Amber, Amber, Red, Red" | "Green: 2, Amber: 2, Red: 2"
