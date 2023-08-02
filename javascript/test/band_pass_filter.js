const bandPassFilter = (soundWaves, lowestValue, highestValue) => {
  soundWave = soundWaves[0];
  if (soundWave < lowestValue) {
    return [lowestValue]
  } else if (soundWave > highestValue) {
    return [highestValue]
  } else {
    return soundWaves
  }
}

module.exports = bandPassFilter;