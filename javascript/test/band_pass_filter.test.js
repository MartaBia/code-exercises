const bandPassFilter = require('./band_pass_filter')

describe("bandPassFilter", () => {
  it('returns the initial value when it is on the range', () => {
    expect(bandPassFilter([100], 40, 1000)).toEqual([100])
  })
})