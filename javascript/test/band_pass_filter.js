const bandPassFilter = (soundWaves, lowestValue, highestValue) => {
  soundWave = soundWaves[0];
  if (soundWave < lowestValue) {
    return [lowestValue]
  } else {
    return soundWaves
  }
}

module.exports = bandPassFilter;