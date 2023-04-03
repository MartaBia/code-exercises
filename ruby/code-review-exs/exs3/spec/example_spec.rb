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

  it 'returns a string with a mix of correct and incorrect words' do
    expect(is_spell_correct('I hav one aple')).to eq('I ~hav~ one ~aple~')
  end

  it 'raise an error if no text is passed' do
    expect { is_spell_correct('') }.to raise_error('please, insert a text')
  end
end