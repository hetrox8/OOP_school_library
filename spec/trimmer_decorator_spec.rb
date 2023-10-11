require_relative '../trimmer_decorator'
require_relative '../capitalize_decorator'
require_relative '../person'

describe TrimmerDecorator do
  before :all do
    @person = Person.new(22, 18, name: 'maximilianus')
    @capitalized_person = CapitalizeDecorator.new(@person)
  end

  context '#correct_name' do
    it 'returns a trimmed name (chars <= 10)' do
      capitalized_trimmed_person = TrimmerDecorator.new(@capitalized_person)
      expect(capitalized_trimmed_person.correct_name).to eq 'Maximilian'
    end
  end
end
