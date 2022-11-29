require 'rspec'
require_relative '../strength_rating.rb'


describe StrengthRating do

  describe '#calculate' do
    it 'displays the query keywords' do
      expect(described_class.calculate(1,1)).to eq (49)
    end
  end
end