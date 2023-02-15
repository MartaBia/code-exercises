require 'example'

RSpec.describe 'music filter' do
  it 'Should return the origina soundwave when lowest and highest are not reached' do
    expect(music_filter([10, 20, 40], 10, 40)).to eq([10, 20, 40])
  end

  it 'Should filter the sound wave if it is higher thatn the highest value' do
    expect(music_filter([10, 20, 40], 10, 30)).to eq([10, 20, 30])
  end

  it 'Should filter the sound wave if it is lower thatn the lowest value' do
    expect(music_filter([10, 20, 40], 20, 40)).to eq([20, 20, 40])
  end

  it 'Should filter the soundwaves either if they are higher than the highest value or lower than the lowest value' do
    expect(music_filter([10, 20, 40], 15, 30)).to eq([15, 20, 30])
  end

  it 'Raises an error if the waves array is empty' do
    expect{ music_filter([], 10, 40) }.to raise_error('Frequencies needs to be inserted')
  end

  it 'sets the default frequency if one frequency is not applied' do
    expect(music_filter([10, 30, 50 , 70], nil, 60)).to eq([40, 40, 50, 60])
  end

  it 'sets the default frequencies if no frequencies are applied' do
    expect(music_filter([10, 20, 50, 1001], nil, nil)).to eq([40, 40, 50, 1000])
  end
end