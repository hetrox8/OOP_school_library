require_relative '../capitalize_decorator'
require_relative '../person'

describe CapitalizeDecorator do
  before :all do
    @person = Person.new(22, 18, name: 'maximilianus')
  end

  context '#correct_name' do
    it 'returns a capitalized name' do
      capitalized_person = CapitalizeDecorator.new(@person)
      expect(capitalized_person.correct_name).to eq 'Maximilianus'
    end
  end
end
