require 'example'

RSpec.describe 'is_spell_correct' do
  it 'returns the given string if spelled correctly' do
    expect(is_spell_correct('Hello')).to eq('Hello')
  end

  it 'returns the given string with more than 1 word corrected spelled' do
    expect(is_spell_correct('Hello world')).to eq('Hello world')
  end

  it 'returns a string with one words misspelled highlighted' do
    expect(is_spell_correct('Helo world')).to eq('~Helo~ world')
  end

  it 'returns a string with all the words misspelled highlighted' do
    expect(is_spell_correct('Helo worl')).to eq('~Helo~ ~worl~')
  end
end