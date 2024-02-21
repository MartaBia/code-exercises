# Band pass filter

filter that change the track sound

INPUT:
soundwave: an array of frequencies
lower value allowed: an integer
higher value allowed: an integer

Example
INPUT                         | OUTPUT
[10, 45, 100, 1001], 40, 1000 | [40, 45, 100, 1000]

INPUT           | OUTPUT
[100], 40, 1000 | [100]
[30], 40, 70  | [40]
[1001], 40, 1000 | [1000]
[100, 60, 900], 40, 1000  | [100, 60, 900]
[10, 30, 45, 50], 40, 70 | [40, 40, 45, 50] 
[10, 30, 75, 80], 10, 70 | [10, 30, 70, 70] 
[], 30, 60 | "A soundwave must be inserted"
[30, 100, 60, 1200], null, null | [40, 100, 60, 1000]

