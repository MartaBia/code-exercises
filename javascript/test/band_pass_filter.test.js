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
})