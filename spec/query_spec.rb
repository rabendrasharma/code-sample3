require 'rspec'
require_relative '../query.rb'


describe Query do
  subject { described_class.new(['car','foard']) }

  describe '#new' do
    it 'creates an instance of Query' do
      expect(subject).to be_a described_class
    end
  end

  describe '#all' do
    it 'displays the query keywords' do
      expect(described_class.all).to eq ({"QUERY1"=> ['car','foard']})
    end
  end
end