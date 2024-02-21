const bandPassFilter = (soundWaves, lowestValue, highestValue) => {
  if (soundWaves.length === 0) {
    throw new Error("A soundwave must be inserted");
  }

  correctedWaves = []

  soundWaves.forEach(soundWave => {
    if (soundWave < lowestValue) {
      soundWave = lowestValue
    }
    if (soundWave > highestValue) {
      soundWave = highestValue
    } 

    correctedWaves.push(soundWave)
  });
  return correctedWaves
}

module.exports = bandPassFilter;