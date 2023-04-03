require 'example'

RSpec.describe 'is_spell_correct' do
  it 'returns the given string if spelled correctly' do
    expect(is_spell_correct('Hello')).to eq('Hello')
  end
end