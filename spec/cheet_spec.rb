require 'cheet'
require 'setup_test_database'

describe Chitter do
  describe '.all' do
    it 'returns a list of cheets' do
      setup_test_database
      Cheet.create(cheet: 'donald has such tiny hands')
      Cheet.create(cheet: 'sack Mourinho')

      cheets = Cheet.all
      expect(cheets.length).to eq 2
      expect(cheets.first).to be_a Cheet
      expect(cheets.first).to respond_to(:id)
      expect(cheets.first.cheet).to eq 'donald has such tiny hands'
    end
  end

  describe '.create' do
    it 'creates a new cheet' do
      cheet = Cheet.create(cheet: 'donald has such tiny hands')
      Cheet.create(cheet: 'sack Mourinho')
      cheet = Cheet.all.first

      expect(cheet).to be_a Cheet
      expect(cheet).to respond_to :id
      expect(cheet).to respond_to :time
      expect(cheet.cheet).to eq 'donald has such tiny hands'
    end
  end
end
