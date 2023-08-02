const bandPassFilter = (soundWaves, lowestValue, highestValue) => {
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