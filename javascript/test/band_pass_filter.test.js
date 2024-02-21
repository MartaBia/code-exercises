const bandPassFilter = require('./band_pass_filter')

describe("bandPassFilter", () => {
  it('returns the initial value when it is on the range', () => {
    expect(bandPassFilter([100], 40, 1000)).toEqual([100])
  })

  it('returns a modified value when the soundwave is lower than the lowest value', () => {
    expect(bandPassFilter([30], 40, 70)).toEqual([40])
  })

  it('returns a modified value when the soundwave is higher than the highest value', () => {
    expect(bandPassFilter([1001], 40, 1000)).toEqual([1000])
  })

  it('returns the original array when all the values are between the ranges', () => {
    expect(bandPassFilter([100, 60, 900], 40, 1000)).toEqual([100, 60, 900])
  })

  it('returns a modified array when some of the values are lower than the lowest value', () => {
    expect(bandPassFilter([10, 30, 45, 50], 40, 70)).toEqual([40, 40, 45, 50])
  })

  it('returns a modified array when some of the values are higher than the highest value', () => {
    expect(bandPassFilter([10, 30, 75, 80], 10, 70)).toEqual([10, 30, 70, 70])
  })

  it('raises an error when no sound wave is passed', () => {
    // expect(bandPassFilter([], 30, 60)).toThrow(Error);
    // expect(bandPassFilter([], 30, 60)).toThrow('A soundwave must be inserted');

    try {
      bandPassFilter([], 30, 60);
      expect(true).toBe(false);
    } catch (error) {
      expect(error.message).toBe('A soundwave must be inserted')
    }
  })
})