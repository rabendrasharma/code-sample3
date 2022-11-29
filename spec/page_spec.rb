require 'rspec'
require 'byebug'
require_relative '../page.rb'


describe Page do
  subject { described_class.new(['car','foard']) }

  describe '#new' do
    it 'creates an instance of Position' do
      expect(subject).to be_a Page
    end
  end

  describe '#all' do
    it 'displays the page keywords' do
      expect(described_class.all).to eq ({"PAGE1"=>["car", "foard"]})
    end
  end

  describe '#number' do
    it 'return page numbers' do
     expect(described_class.number).to eq  1
    end
  end

  describe '#get_web_page_having(query_key, query_value)' do
  	it 'should return query strength with respective to each page' do
  		result = described_class.get_web_page_having('QUERY1',["car", "foard"] )
  		expect(result).to eq ({"QUERY1"=>[["PAGE1", 120]]})
  	end
  end
end